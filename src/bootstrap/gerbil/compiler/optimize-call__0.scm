(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708271189)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl282631_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp286989 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl282631_ __tmp286989))
           (let ()
             (declare (not safe))
             (hash-put! _tbl282631_ '%#call gxc#optimize-call%))
           _tbl282631_))))
    (define gxc#apply-optimize-call
      (lambda (_stx282614_ . _args282616_)
        (let ((__tmp286991
               (lambda ()
                 (declare (not safe))
                 (if (null? _args282616_)
                     (gxc#compile-e__0 _stx282614_)
                     (let ((_arg1282621_ (car _args282616_))
                           (_rest282623_ (cdr _args282616_)))
                       (if (null? _rest282623_)
                           (gxc#compile-e__1 _stx282614_ _arg1282621_)
                           (let ((_arg2282626_ (car _rest282623_))
                                 (_rest282628_ (cdr _rest282623_)))
                             (if (null? _rest282628_)
                                 (gxc#compile-e__2
                                  _stx282614_
                                  _arg1282621_
                                  _arg2282626_)
                                 (apply gxc#compile-e
                                        _stx282614_
                                        _arg1282621_
                                        _arg2282626_
                                        _rest282628_))))))))
              (__tmp286990 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp286991
           gxc#current-compile-methods
           __tmp286990))))
    (define gxc#optimize-call%
      (lambda (_stx282469_)
        (let* ((___stx286739286740_ _stx282469_)
               (_g282472282492_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx286739286740_)))))
          (let ((___kont286741286742_
                 (lambda (_L282536_ _L282537_)
                   (let* ((_rator-id282555_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L282537_)))
                          (_rator-type282557_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id282555_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type282557_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp286992
                                  (##structure-ref
                                   _rator-type282557_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id282555_
                              '" => "
                              _rator-type282557_
                              '" "
                              __tmp286992))
                           (let ((_optimized282560_
                                  (let ((__method286987
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type282557_
                                            'optimize-call))))
                                    (if __method286987
                                        (__method286987
                                         _rator-type282557_
                                         _stx282469_
                                         _L282536_)
                                        (error '"Missing method"
                                               _rator-type282557_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type282557_))
                                 _optimized282560_
                                 (let* ((___stx286721286722_ _optimized282560_)
                                        (_g282563282573_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx286721286722_)))))
                                   (let ((___kont286723286724_
                                          (lambda (_L282593_)
                                            (let ((__tmp286993
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L282593_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp286993
                                               _stx282469_))))
                                         (___kont286725286726_
                                          (lambda () _optimized282560_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx286721286722_))
                                         (let ((_e282566282585_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx286721286722_))))
                                           (let ((_tl282568282590_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e282566282585_)))
                                                 (_hd282567282588_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e282566282585_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd282567282588_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd282567282588_))
                                                     (___kont286723286724_
                                                      _tl282568282590_)
                                                     (___kont286725286726_))
                                                 (___kont286725286726_))))
                                         (___kont286725286726_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type282557_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx282469_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx282469_
                                _rator-type282557_)))))))
                (___kont286743286744_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx282469_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx286739286740_))
                (let ((_e282476282504_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx286739286740_))))
                  (let ((_tl282478282509_
                         (let () (declare (not safe)) (##cdr _e282476282504_)))
                        (_hd282477282507_
                         (let ()
                           (declare (not safe))
                           (##car _e282476282504_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl282478282509_))
                        (let ((_e282479282512_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl282478282509_))))
                          (let ((_tl282481282517_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e282479282512_)))
                                (_hd282480282515_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e282479282512_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd282480282515_))
                                (let ((_e282482282520_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd282480282515_))))
                                  (let ((_tl282484282525_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e282482282520_)))
                                        (_hd282483282523_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e282482282520_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd282483282523_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd282483282523_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl282484282525_))
                                                (let ((_e282485282528_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl282484282525_))))
                                                  (let ((_tl282487282533_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e282485282528_)))
                                                        (_hd282486282531_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e282485282528_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282487282533_))
                                                        (___kont286741286742_
                                                         _tl282481282517_
                                                         _hd282486282531_)
                                                        (___kont286743286744_))))
                                                (___kont286743286744_))
                                            (___kont286743286744_))
                                        (___kont286743286744_))))
                                (___kont286743286744_))))
                        (___kont286743286744_))))
                (___kont286743286744_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self282423_ _stx282424_ _args282425_)
        (let* ((_g282427282437_
                (lambda (_g282428282434_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282428282434_))))
               (_g282426282466_
                (lambda (_g282428282440_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282428282440_))
                      (let ((_e282430282442_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282428282440_))))
                        (let ((_hd282431282445_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282430282442_)))
                              (_tl282432282447_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282430282442_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl282432282447_))
                              ((lambda (_L282450_)
                                 (let* ((_klass282461_
                                         (let ((__tmp286994
                                                (##structure-ref
                                                 _self282423_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx282424_
                                            __tmp286994)))
                                        (_object282463_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L282450_))))
                                   (if (##structure-ref
                                        _klass282461_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp286995
                                              (let ((__tmp286996
                                                     (let ((__tmp286998
                                                            (let ((__tmp286999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287000
                                  (##structure-ref
                                   _klass282461_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp287000 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp286999)))
                   (__tmp286997
                    (let () (declare (not safe)) (cons _object282463_ '()))))
               (declare (not safe))
               (cons __tmp286998 __tmp286997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp286996))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp286995
                                          _stx282424_))
                                       (if (##structure-ref
                                            _klass282461_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp287001
                                                  (let ((__tmp287002
                                                         (let ((__tmp287004
                                                                (let ((__tmp287005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287006
                                      (##structure-ref
                                       _klass282461_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp287006 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp287005)))
                       (__tmp287003
                        (let ()
                          (declare (not safe))
                          (cons _object282463_ '()))))
                   (declare (not safe))
                   (cons __tmp287004 __tmp287003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp287002))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287001
                                              _stx282424_))
                                           (let ((__tmp287007
                                                  (let ((__tmp287008
                                                         (let ((__tmp287014
                                                                (let ((__tmp287015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287015)))
                       (__tmp287009
                        (let ((__tmp287011
                               (let ((__tmp287012
                                      (let ((__tmp287013
                                             (##structure-ref
                                              _self282423_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp287013 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp287012)))
                              (__tmp287010
                               (let ()
                                 (declare (not safe))
                                 (cons _object282463_ '()))))
                          (declare (not safe))
                          (cons __tmp287011 __tmp287010))))
                   (declare (not safe))
                   (cons __tmp287014 __tmp287009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp287008))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287007
                                              _stx282424_))))))
                               _hd282431282445_)
                              (let ()
                                (declare (not safe))
                                (_g282427282437_ _g282428282440_)))))
                      (let ()
                        (declare (not safe))
                        (_g282427282437_ _g282428282440_))))))
          (declare (not safe))
          (_g282426282466_ _args282425_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t286700)
        (let ((__id286701
               (let ((__tmp286702
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286700 'id))))
                 (if __tmp286702 __tmp286702 (error '"Unknown slot" 'id)))))
          (lambda (_self282423_ _stx282424_ _args282425_)
            (let* ((_g282427282437_
                    (lambda (_g282428282434_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g282428282434_))))
                   (_g282426282466_
                    (lambda (_g282428282440_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g282428282440_))
                          (let ((_e282430282442_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g282428282440_))))
                            (let ((_hd282431282445_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e282430282442_)))
                                  (_tl282432282447_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e282430282442_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl282432282447_))
                                  ((lambda (_L282450_)
                                     (let* ((_klass282461_
                                             (let ((__tmp287016
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self282423_
                                                       __id286701
                                                       __t286700
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx282424_
                                                __tmp287016)))
                                            (_object282463_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L282450_))))
                                       (if (##structure-ref
                                            _klass282461_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp287017
                                                  (let ((__tmp287018
                                                         (let ((__tmp287020
                                                                (let ((__tmp287021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287022
                                      (##structure-ref
                                       _klass282461_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp287022 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp287021)))
                       (__tmp287019
                        (let ()
                          (declare (not safe))
                          (cons _object282463_ '()))))
                   (declare (not safe))
                   (cons __tmp287020 __tmp287019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp287018))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287017
                                              _stx282424_))
                                           (if (##structure-ref
                                                _klass282461_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp287023
                                                      (let ((__tmp287024
                                                             (let ((__tmp287026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287027
                                   (let ((__tmp287028
                                          (##structure-ref
                                           _klass282461_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp287028 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp287027)))
                           (__tmp287025
                            (let ()
                              (declare (not safe))
                              (cons _object282463_ '()))))
                       (declare (not safe))
                       (cons __tmp287026 __tmp287025))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp287024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287023
                                                  _stx282424_))
                                               (let ((__tmp287029
                                                      (let ((__tmp287030
                                                             (let ((__tmp287036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287037
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287037)))
                           (__tmp287031
                            (let ((__tmp287033
                                   (let ((__tmp287034
                                          (let ((__tmp287035
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self282423_
                                                    __id286701
                                                    __t286700
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp287035 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp287034)))
                                  (__tmp287032
                                   (let ()
                                     (declare (not safe))
                                     (cons _object282463_ '()))))
                              (declare (not safe))
                              (cons __tmp287033 __tmp287032))))
                       (declare (not safe))
                       (cons __tmp287036 __tmp287031))))
                (declare (not safe))
                (cons '%#call __tmp287030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287029
                                                  _stx282424_))))))
                                   _hd282431282445_)
                                  (let ()
                                    (declare (not safe))
                                    (_g282427282437_ _g282428282440_)))))
                          (let ()
                            (declare (not safe))
                            (_g282427282437_ _g282428282440_))))))
              (declare (not safe))
              (_g282426282466_ _args282425_))))))
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
      (lambda (_self282143_ _stx282144_ _args282145_)
        (let* ((_klass282147_
                (let ((__tmp287038
                       (##structure-ref _self282143_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx282144_ __tmp287038)))
               (_fields282149_
                (length (##structure-ref _klass282147_ '5 gxc#!class::t '#f)))
               (_args282151_ (map gxc#compile-e _args282145_))
               (_inline-make-object282153_
                (let ((__tmp287039
                       (let ((__tmp287045
                              (let ((__tmp287046
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp287046)))
                             (__tmp287040
                              (let ((__tmp287042
                                     (let ((__tmp287043
                                            (let ((__tmp287044
                                                   (##structure-ref
                                                    _self282143_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp287044 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287043)))
                                    (__tmp287041
                                     (make-list _fields282149_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp287042 __tmp287041))))
                         (declare (not safe))
                         (cons __tmp287045 __tmp287040))))
                  (declare (not safe))
                  (cons '%#call __tmp287039))))
          (let ((_$e282156_
                 (##structure-ref _klass282147_ '6 gxc#!class::t '#f)))
            (if _$e282156_
                ((lambda (_ctor282159_)
                   (let ((_$obj282161_
                          (let ((__tmp287047 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp287047)))
                         (_ctor-impl282162_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass282147_
                             _ctor282159_))))
                     (let ((__tmp287048
                            (let ((__tmp287049
                                   (let ((__tmp287117
                                          (let ((__tmp287118
                                                 (let ((__tmp287120
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj282161_
                                                                '())))
                                                       (__tmp287119
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object282153_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp287120
                                                         __tmp287119))))
                                            (declare (not safe))
                                            (cons __tmp287118 '())))
                                         (__tmp287050
                                          (let ((__tmp287051
                                                 (let ((__tmp287052
                                                        (let ((__tmp287056
                                                               (if _ctor-impl282162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287057
                                  (let ((__tmp287061
                                         (let ((__tmp287062
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl282162_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287062)))
                                        (__tmp287058
                                         (let ((__tmp287059
                                                (let ((__tmp287060
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj282161_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp287060))))
                                           (declare (not safe))
                                           (cons __tmp287059 _args282151_))))
                                    (declare (not safe))
                                    (cons __tmp287061 __tmp287058))))
                             (declare (not safe))
                             (cons '%#call __tmp287057))
                           (let* ((_$ctor282164_
                                   (let ((__tmp287063 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp287063)))
                                  (__tmp287064
                                   (let ((__tmp287099
                                          (let ((__tmp287100
                                                 (let ((__tmp287116
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor282164_
                                                                '())))
                                                       (__tmp287101
                                                        (let ((__tmp287102
                                                               (let ((__tmp287103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287114
                                     (let ((__tmp287115
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287115)))
                                    (__tmp287104
                                     (let ((__tmp287111
                                            (let ((__tmp287112
                                                   (let ((__tmp287113
                                                          (##structure-ref
                                                           _self282143_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp287113 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp287112)))
                                           (__tmp287105
                                            (let ((__tmp287109
                                                   (let ((__tmp287110
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj282161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287110)))
                                                  (__tmp287106
                                                   (let ((__tmp287107
                                                          (let ((__tmp287108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor282159_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp287108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287107 '()))))
                                              (declare (not safe))
                                              (cons __tmp287109 __tmp287106))))
                                       (declare (not safe))
                                       (cons __tmp287111 __tmp287105))))
                                (declare (not safe))
                                (cons __tmp287114 __tmp287104))))
                         (declare (not safe))
                         (cons '%#call __tmp287103))))
                  (declare (not safe))
                  (cons __tmp287102 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287116
                                                         __tmp287101))))
                                            (declare (not safe))
                                            (cons __tmp287100 '())))
                                         (__tmp287065
                                          (let ((__tmp287066
                                                 (let ((__tmp287067
                                                        (let ((__tmp287097
                                                               (let ((__tmp287098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor282164_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp287098)))
                      (__tmp287068
                       (let ((__tmp287090
                              (let ((__tmp287091
                                     (let ((__tmp287095
                                            (let ((__tmp287096
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor282164_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp287096)))
                                           (__tmp287092
                                            (let ((__tmp287093
                                                   (let ((__tmp287094
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj282161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287094))))
                                              (declare (not safe))
                                              (cons __tmp287093
                                                    _args282151_))))
                                       (declare (not safe))
                                       (cons __tmp287095 __tmp287092))))
                                (declare (not safe))
                                (cons '%#call __tmp287091)))
                             (__tmp287069
                              (let ((__tmp287070
                                     (let ((__tmp287071
                                            (let ((__tmp287088
                                                   (let ((__tmp287089
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287089)))
                                                  (__tmp287072
                                                   (let ((__tmp287086
                                                          (let ((__tmp287087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp287087)))
                 (__tmp287073
                  (let ((__tmp287084
                         (let ((__tmp287085
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp287085)))
                        (__tmp287074
                         (let ((__tmp287081
                                (let ((__tmp287082
                                       (let ((__tmp287083
                                              (##structure-ref
                                               _self282143_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp287083 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287082)))
                               (__tmp287075
                                (let ((__tmp287079
                                       (let ((__tmp287080
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp287080)))
                                      (__tmp287076
                                       (let ((__tmp287077
                                              (let ((__tmp287078
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor282159_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp287078))))
                                         (declare (not safe))
                                         (cons __tmp287077 '()))))
                                  (declare (not safe))
                                  (cons __tmp287079 __tmp287076))))
                           (declare (not safe))
                           (cons __tmp287081 __tmp287075))))
                    (declare (not safe))
                    (cons __tmp287084 __tmp287074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287086
                                                           __tmp287073))))
                                              (declare (not safe))
                                              (cons __tmp287088 __tmp287072))))
                                       (declare (not safe))
                                       (cons '%#call __tmp287071))))
                                (declare (not safe))
                                (cons __tmp287070 '()))))
                         (declare (not safe))
                         (cons __tmp287090 __tmp287069))))
                  (declare (not safe))
                  (cons __tmp287097 __tmp287068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp287067))))
                                            (declare (not safe))
                                            (cons __tmp287066 '()))))
                                     (declare (not safe))
                                     (cons __tmp287099 __tmp287065))))
                             (declare (not safe))
                             (cons '%#let-values __tmp287064))))
                      (__tmp287053
                       (let ((__tmp287054
                              (let ((__tmp287055
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj282161_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp287055))))
                         (declare (not safe))
                         (cons __tmp287054 '()))))
                  (declare (not safe))
                  (cons __tmp287056 __tmp287053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp287052))))
                                            (declare (not safe))
                                            (cons __tmp287051 '()))))
                                     (declare (not safe))
                                     (cons __tmp287117 __tmp287050))))
                              (declare (not safe))
                              (cons '%#let-values __tmp287049))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp287048 _stx282144_))))
                 _$e282156_)
                (let ((_$e282166_
                       (##structure-ref _klass282147_ '9 gxc#!class::t '#f)))
                  (if _$e282166_
                      ((lambda (_metaclass282169_)
                         (let* ((_$obj282171_
                                 (let ((__tmp287121 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp287121)))
                                (_metakons282173_
                                 (let ((__tmp287122
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx282144_
                                           _metaclass282169_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp287122
                                    'instance-init!))))
                           (let ((__tmp287123
                                  (let ((__tmp287124
                                         (let ((__tmp287155
                                                (let ((__tmp287156
                                                       (let ((__tmp287158
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj282171_ '())))
                     (__tmp287157
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object282153_ '()))))
                 (declare (not safe))
                 (cons __tmp287158 __tmp287157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287156 '())))
                                               (__tmp287125
                                                (let ((__tmp287126
                                                       (let ((__tmp287127
                                                              (let ((__tmp287131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons282173_
                                 (let ((__tmp287132
                                        (let ((__tmp287140
                                               (let ((__tmp287141
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons282173_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp287141)))
                                              (__tmp287133
                                               (let ((__tmp287137
                                                      (let ((__tmp287138
                                                             (let ((__tmp287139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self282143_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp287139 '()))))
                (declare (not safe))
                (cons '%#ref __tmp287138)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp287134
                                                      (let ((__tmp287135
                                                             (let ((__tmp287136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj282171_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp287136))))
                (declare (not safe))
                (cons __tmp287135 _args282151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287137
                                                       __tmp287134))))
                                          (declare (not safe))
                                          (cons __tmp287140 __tmp287133))))
                                   (declare (not safe))
                                   (cons '%#call __tmp287132))
                                 (let ((__tmp287142
                                        (let ((__tmp287153
                                               (let ((__tmp287154
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp287154)))
                                              (__tmp287143
                                               (let ((__tmp287150
                                                      (let ((__tmp287151
                                                             (let ((__tmp287152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self282143_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp287152 '()))))
                (declare (not safe))
                (cons '%#ref __tmp287151)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp287144
                                                      (let ((__tmp287148
                                                             (let ((__tmp287149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp287149)))
                    (__tmp287145
                     (let ((__tmp287146
                            (let ((__tmp287147
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj282171_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287147))))
                       (declare (not safe))
                       (cons __tmp287146 _args282151_))))
                (declare (not safe))
                (cons __tmp287148 __tmp287145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287150
                                                       __tmp287144))))
                                          (declare (not safe))
                                          (cons __tmp287153 __tmp287143))))
                                   (declare (not safe))
                                   (cons '%#call __tmp287142))))
                            (__tmp287128
                             (let ((__tmp287129
                                    (let ((__tmp287130
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj282171_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287130))))
                               (declare (not safe))
                               (cons __tmp287129 '()))))
                        (declare (not safe))
                        (cons __tmp287131 __tmp287128))))
                 (declare (not safe))
                 (cons '%#begin __tmp287127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287126 '()))))
                                           (declare (not safe))
                                           (cons __tmp287155 __tmp287125))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp287124))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp287123 _stx282144_))))
                       _$e282166_)
                      (if (##structure-ref _klass282147_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args282151_) _fields282149_)
                              (let ((__tmp287159
                                     (let ((__tmp287160
                                            (let ((__tmp287165
                                                   (let ((__tmp287166
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287166)))
                                                  (__tmp287161
                                                   (let ((__tmp287162
                                                          (let ((__tmp287163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287164
                                (##structure-ref
                                 _self282143_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp287164 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp287163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287162
                                                           _args282151_))))
                                              (declare (not safe))
                                              (cons __tmp287165 __tmp287161))))
                                       (declare (not safe))
                                       (cons '%#call __tmp287160))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp287159
                                 _stx282144_))
                              (let ((__tmp287168
                                     (##structure-ref
                                      _self282143_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp287167
                                     (length (##structure-ref
                                              _klass282147_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx282144_
                                 __tmp287168
                                 __tmp287167)))
                          (let ((_$obj282176_
                                 (let ((__tmp287169 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp287169))))
                            (let _lp282178_ ((_rest282180_ _args282151_)
                                             (_initializers282181_ '()))
                              (let* ((___stx286777286778_ _rest282180_)
                                     (_g282185282206_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx286777286778_)))))
                                (let ((___kont286779286780_
                                       (lambda (_L282260_ _L282261_ _L282262_)
                                         (let* ((_slot282293_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L282262_))))
                                                (_off282295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass282147_
                                                    _slot282293_))))
                                           (if _off282295_
                                               (let ((__tmp287170
                                                      (let ((__tmp287171
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off282295_ _L282261_))))
                (declare (not safe))
                (cons __tmp287171 _initializers282181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp282178_
                                                  _L282260_
                                                  __tmp287170))
                                               (let ((__tmp287172
                                                      (##structure-ref
                                                       _self282143_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx282144_
                                                  __tmp287172
                                                  _slot282293_))))))
                                      (___kont286781286782_
                                       (lambda ()
                                         (let ((__tmp287173
                                                (let ((__tmp287174
                                                       (let ((__tmp287197
                                                              (let ((__tmp287198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp287200
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj282176_ '())))
                                   (__tmp287199
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object282153_ '()))))
                               (declare (not safe))
                               (cons __tmp287200 __tmp287199))))
                        (declare (not safe))
                        (cons __tmp287198 '())))
                     (__tmp287175
                      (let ((__tmp287176
                             (let ((__tmp287177
                                    (let ((__tmp287194
                                           (let ((__tmp287195
                                                  (let ((__tmp287196
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj282176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp287196))))
                                             (declare (not safe))
                                             (cons __tmp287195 '())))
                                          (__tmp287178
                                           (let ((__tmp287179
                                                  (lambda (_i282220_ _r282221_)
                                                    (let ((__tmp287180
                                                           (let ((__tmp287181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287191
                                 (let ((__tmp287192
                                        (let ((__tmp287193
                                               (##structure-ref
                                                _self282143_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp287193 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp287192)))
                                (__tmp287182
                                 (let ((__tmp287188
                                        (let ((__tmp287189
                                               (let ((__tmp287190
                                                      (car _i282220_)))
                                                 (declare (not safe))
                                                 (cons __tmp287190 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp287189)))
                                       (__tmp287183
                                        (let ((__tmp287186
                                               (let ((__tmp287187
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj282176_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp287187)))
                                              (__tmp287184
                                               (let ((__tmp287185
                                                      (cdr _i282220_)))
                                                 (declare (not safe))
                                                 (cons __tmp287185 '()))))
                                          (declare (not safe))
                                          (cons __tmp287186 __tmp287184))))
                                   (declare (not safe))
                                   (cons __tmp287188 __tmp287183))))
                            (declare (not safe))
                            (cons __tmp287191 __tmp287182))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp287181))))
              (declare (not safe))
              (cons __tmp287180 _r282221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp287179
                                                     '()
                                                     _initializers282181_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp287194 __tmp287178))))
                               (declare (not safe))
                               (cons '%#begin __tmp287177))))
                        (declare (not safe))
                        (cons __tmp287176 '()))))
                 (declare (not safe))
                 (cons __tmp287197 __tmp287175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp287174))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp287173
                                            _stx282144_))))
                                      (___kont286783286784_
                                       (lambda ()
                                         (let ((__tmp287201
                                                (let ((__tmp287202
                                                       (let ((__tmp287216
                                                              (let ((__tmp287217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp287219
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj282176_ '())))
                                   (__tmp287218
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object282153_ '()))))
                               (declare (not safe))
                               (cons __tmp287219 __tmp287218))))
                        (declare (not safe))
                        (cons __tmp287217 '())))
                     (__tmp287203
                      (let ((__tmp287204
                             (let ((__tmp287205
                                    (let ((__tmp287209
                                           (let ((__tmp287210
                                                  (let ((__tmp287214
                                                         (let ((__tmp287215
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp287215)))
                (__tmp287211
                 (let ((__tmp287212
                        (let ((__tmp287213
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj282176_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287213))))
                   (declare (not safe))
                   (cons __tmp287212 _args282151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287214
                                                          __tmp287211))))
                                             (declare (not safe))
                                             (cons '%#call __tmp287210)))
                                          (__tmp287206
                                           (let ((__tmp287207
                                                  (let ((__tmp287208
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj282176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp287208))))
                                             (declare (not safe))
                                             (cons __tmp287207 '()))))
                                      (declare (not safe))
                                      (cons __tmp287209 __tmp287206))))
                               (declare (not safe))
                               (cons '%#begin __tmp287205))))
                        (declare (not safe))
                        (cons __tmp287204 '()))))
                 (declare (not safe))
                 (cons __tmp287216 __tmp287203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp287202))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp287201
                                            _stx282144_)))))
                                  (let* ((_g282183282223_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx286777286778_))
                                                (___kont286781286782_)
                                                (___kont286783286784_))))
                                         (___match286814286815_
                                          (lambda (_e282190282228_
                                                   _hd282191282231_
                                                   _tl282192282233_
                                                   _e282193282236_
                                                   _hd282194282239_
                                                   _tl282195282241_
                                                   _e282196282244_
                                                   _hd282197282247_
                                                   _tl282198282249_
                                                   _e282199282252_
                                                   _hd282200282255_
                                                   _tl282201282257_)
                                            (let ((_L282260_ _tl282201282257_)
                                                  (_L282261_ _hd282200282255_)
                                                  (_L282262_ _hd282197282247_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L282262_))
                                                  (___kont286779286780_
                                                   _L282260_
                                                   _L282261_
                                                   _L282262_)
                                                  (___kont286783286784_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx286777286778_))
                                        (let ((_e282190282228_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx286777286778_))))
                                          (let ((_tl282192282233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e282190282228_)))
                                                (_hd282191282231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e282190282228_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd282191282231_))
                                                (let ((_e282193282236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd282191282231_))))
                                                  (let ((_tl282195282241_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e282193282236_)))
                                                        (_hd282194282239_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e282193282236_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd282194282239_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd282194282239_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl282195282241_))
                        (let ((_e282196282244_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl282195282241_))))
                          (let ((_tl282198282249_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e282196282244_)))
                                (_hd282197282247_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e282196282244_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl282198282249_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl282192282233_))
                                    (let ((_e282199282252_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl282192282233_))))
                                      (let ((_tl282201282257_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e282199282252_)))
                                            (_hd282200282255_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e282199282252_))))
                                        (___match286814286815_
                                         _e282190282228_
                                         _hd282191282231_
                                         _tl282192282233_
                                         _e282193282236_
                                         _hd282194282239_
                                         _tl282195282241_
                                         _e282196282244_
                                         _hd282197282247_
                                         _tl282198282249_
                                         _e282199282252_
                                         _hd282200282255_
                                         _tl282201282257_)))
                                    (___kont286783286784_))
                                (___kont286783286784_))))
                        (___kont286783286784_))
                    (___kont286783286784_))
                (___kont286783286784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont286783286784_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g282183282223_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t286703)
        (let ((__id286704
               (let ((__tmp286705
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286703 'id))))
                 (if __tmp286705 __tmp286705 (error '"Unknown slot" 'id)))))
          (lambda (_self282143_ _stx282144_ _args282145_)
            (let* ((_klass282147_
                    (let ((__tmp287220
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self282143_
                              __id286704
                              __t286703
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx282144_ __tmp287220)))
                   (_fields282149_
                    (length (##structure-ref
                             _klass282147_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args282151_ (map gxc#compile-e _args282145_))
                   (_inline-make-object282153_
                    (let ((__tmp287221
                           (let ((__tmp287227
                                  (let ((__tmp287228
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp287228)))
                                 (__tmp287222
                                  (let ((__tmp287224
                                         (let ((__tmp287225
                                                (let ((__tmp287226
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self282143_
                                                          __id286704
                                                          __t286703
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp287226 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287225)))
                                        (__tmp287223
                                         (make-list
                                          _fields282149_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp287224 __tmp287223))))
                             (declare (not safe))
                             (cons __tmp287227 __tmp287222))))
                      (declare (not safe))
                      (cons '%#call __tmp287221))))
              (let ((_$e282156_
                     (##structure-ref _klass282147_ '6 gxc#!class::t '#f)))
                (if _$e282156_
                    ((lambda (_ctor282159_)
                       (let ((_$obj282161_
                              (let ((__tmp287229 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp287229)))
                             (_ctor-impl282162_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass282147_
                                 _ctor282159_))))
                         (let ((__tmp287230
                                (let ((__tmp287231
                                       (let ((__tmp287299
                                              (let ((__tmp287300
                                                     (let ((__tmp287302
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj282161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp287301
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object282153_ '()))))
               (declare (not safe))
               (cons __tmp287302 __tmp287301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287300 '())))
                                             (__tmp287232
                                              (let ((__tmp287233
                                                     (let ((__tmp287234
                                                            (let ((__tmp287238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl282162_
                               (let ((__tmp287239
                                      (let ((__tmp287243
                                             (let ((__tmp287244
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl282162_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287244)))
                                            (__tmp287240
                                             (let ((__tmp287241
                                                    (let ((__tmp287242
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj282161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp287242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287241
                                                     _args282151_))))
                                        (declare (not safe))
                                        (cons __tmp287243 __tmp287240))))
                                 (declare (not safe))
                                 (cons '%#call __tmp287239))
                               (let* ((_$ctor282164_
                                       (let ((__tmp287245
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp287245)))
                                      (__tmp287246
                                       (let ((__tmp287281
                                              (let ((__tmp287282
                                                     (let ((__tmp287298
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor282164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp287283
                    (let ((__tmp287284
                           (let ((__tmp287285
                                  (let ((__tmp287296
                                         (let ((__tmp287297
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287297)))
                                        (__tmp287286
                                         (let ((__tmp287293
                                                (let ((__tmp287294
                                                       (let ((__tmp287295
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self282143_
                         __id286704
                         __t286703
                         '#f))))
                 (declare (not safe))
                 (cons __tmp287295 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp287294)))
                                               (__tmp287287
                                                (let ((__tmp287291
                                                       (let ((__tmp287292
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj282161_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287292)))
              (__tmp287288
               (let ((__tmp287289
                      (let ((__tmp287290
                             (let ()
                               (declare (not safe))
                               (cons _ctor282159_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp287290))))
                 (declare (not safe))
                 (cons __tmp287289 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287291
                                                        __tmp287288))))
                                           (declare (not safe))
                                           (cons __tmp287293 __tmp287287))))
                                    (declare (not safe))
                                    (cons __tmp287296 __tmp287286))))
                             (declare (not safe))
                             (cons '%#call __tmp287285))))
                      (declare (not safe))
                      (cons __tmp287284 '()))))
               (declare (not safe))
               (cons __tmp287298 __tmp287283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287282 '())))
                                             (__tmp287247
                                              (let ((__tmp287248
                                                     (let ((__tmp287249
                                                            (let ((__tmp287279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287280
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor282164_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp287280)))
                          (__tmp287250
                           (let ((__tmp287272
                                  (let ((__tmp287273
                                         (let ((__tmp287277
                                                (let ((__tmp287278
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor282164_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp287278)))
                                               (__tmp287274
                                                (let ((__tmp287275
                                                       (let ((__tmp287276
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj282161_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287275
                                                        _args282151_))))
                                           (declare (not safe))
                                           (cons __tmp287277 __tmp287274))))
                                    (declare (not safe))
                                    (cons '%#call __tmp287273)))
                                 (__tmp287251
                                  (let ((__tmp287252
                                         (let ((__tmp287253
                                                (let ((__tmp287270
                                                       (let ((__tmp287271
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287271)))
              (__tmp287254
               (let ((__tmp287268
                      (let ((__tmp287269
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp287269)))
                     (__tmp287255
                      (let ((__tmp287266
                             (let ((__tmp287267
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp287267)))
                            (__tmp287256
                             (let ((__tmp287263
                                    (let ((__tmp287264
                                           (let ((__tmp287265
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self282143_
                                                     __id286704
                                                     __t286703
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp287265 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287264)))
                                   (__tmp287257
                                    (let ((__tmp287261
                                           (let ((__tmp287262
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp287262)))
                                          (__tmp287258
                                           (let ((__tmp287259
                                                  (let ((__tmp287260
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor282159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp287260))))
                                             (declare (not safe))
                                             (cons __tmp287259 '()))))
                                      (declare (not safe))
                                      (cons __tmp287261 __tmp287258))))
                               (declare (not safe))
                               (cons __tmp287263 __tmp287257))))
                        (declare (not safe))
                        (cons __tmp287266 __tmp287256))))
                 (declare (not safe))
                 (cons __tmp287268 __tmp287255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287270
                                                        __tmp287254))))
                                           (declare (not safe))
                                           (cons '%#call __tmp287253))))
                                    (declare (not safe))
                                    (cons __tmp287252 '()))))
                             (declare (not safe))
                             (cons __tmp287272 __tmp287251))))
                      (declare (not safe))
                      (cons __tmp287279 __tmp287250))))
               (declare (not safe))
               (cons '%#if __tmp287249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287248 '()))))
                                         (declare (not safe))
                                         (cons __tmp287281 __tmp287247))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp287246))))
                          (__tmp287235
                           (let ((__tmp287236
                                  (let ((__tmp287237
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj282161_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp287237))))
                             (declare (not safe))
                             (cons __tmp287236 '()))))
                      (declare (not safe))
                      (cons __tmp287238 __tmp287235))))
               (declare (not safe))
               (cons '%#begin __tmp287234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287233 '()))))
                                         (declare (not safe))
                                         (cons __tmp287299 __tmp287232))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp287231))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp287230 _stx282144_))))
                     _$e282156_)
                    (let ((_$e282166_
                           (##structure-ref
                            _klass282147_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e282166_
                          ((lambda (_metaclass282169_)
                             (let* ((_$obj282171_
                                     (let ((__tmp287303 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp287303)))
                                    (_metakons282173_
                                     (let ((__tmp287304
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx282144_
                                               _metaclass282169_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp287304
                                        'instance-init!))))
                               (let ((__tmp287305
                                      (let ((__tmp287306
                                             (let ((__tmp287337
                                                    (let ((__tmp287338
                                                           (let ((__tmp287340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj282171_ '())))
                         (__tmp287339
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object282153_ '()))))
                     (declare (not safe))
                     (cons __tmp287340 __tmp287339))))
              (declare (not safe))
              (cons __tmp287338 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287307
                                                    (let ((__tmp287308
                                                           (let ((__tmp287309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287313
                                 (if _metakons282173_
                                     (let ((__tmp287314
                                            (let ((__tmp287322
                                                   (let ((__tmp287323
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons282173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287323)))
                                                  (__tmp287315
                                                   (let ((__tmp287319
                                                          (let ((__tmp287320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287321
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self282143_
                                   __id286704
                                   __t286703
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp287321 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp287320)))
                 (__tmp287316
                  (let ((__tmp287317
                         (let ((__tmp287318
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj282171_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp287318))))
                    (declare (not safe))
                    (cons __tmp287317 _args282151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287319
                                                           __tmp287316))))
                                              (declare (not safe))
                                              (cons __tmp287322 __tmp287315))))
                                       (declare (not safe))
                                       (cons '%#call __tmp287314))
                                     (let ((__tmp287324
                                            (let ((__tmp287335
                                                   (let ((__tmp287336
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287336)))
                                                  (__tmp287325
                                                   (let ((__tmp287332
                                                          (let ((__tmp287333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287334
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self282143_
                                   __id286704
                                   __t286703
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp287334 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp287333)))
                 (__tmp287326
                  (let ((__tmp287330
                         (let ((__tmp287331
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp287331)))
                        (__tmp287327
                         (let ((__tmp287328
                                (let ((__tmp287329
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj282171_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287329))))
                           (declare (not safe))
                           (cons __tmp287328 _args282151_))))
                    (declare (not safe))
                    (cons __tmp287330 __tmp287327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287332
                                                           __tmp287326))))
                                              (declare (not safe))
                                              (cons __tmp287335 __tmp287325))))
                                       (declare (not safe))
                                       (cons '%#call __tmp287324))))
                                (__tmp287310
                                 (let ((__tmp287311
                                        (let ((__tmp287312
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj282171_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp287312))))
                                   (declare (not safe))
                                   (cons __tmp287311 '()))))
                            (declare (not safe))
                            (cons __tmp287313 __tmp287310))))
                     (declare (not safe))
                     (cons '%#begin __tmp287309))))
              (declare (not safe))
              (cons __tmp287308 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287337
                                                     __tmp287307))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp287306))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp287305
                                  _stx282144_))))
                           _$e282166_)
                          (if (##structure-ref
                               _klass282147_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args282151_) _fields282149_)
                                  (let ((__tmp287341
                                         (let ((__tmp287342
                                                (let ((__tmp287347
                                                       (let ((__tmp287348
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287348)))
              (__tmp287343
               (let ((__tmp287344
                      (let ((__tmp287345
                             (let ((__tmp287346
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self282143_
                                       __id286704
                                       __t286703
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp287346 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp287345))))
                 (declare (not safe))
                 (cons __tmp287344 _args282151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287347
                                                        __tmp287343))))
                                           (declare (not safe))
                                           (cons '%#call __tmp287342))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp287341
                                     _stx282144_))
                                  (let ((__tmp287350
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self282143_
                                            __id286704
                                            __t286703
                                            '#f)))
                                        (__tmp287349
                                         (length (##structure-ref
                                                  _klass282147_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx282144_
                                     __tmp287350
                                     __tmp287349)))
                              (let ((_$obj282176_
                                     (let ((__tmp287351 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp287351))))
                                (let _lp282178_ ((_rest282180_ _args282151_)
                                                 (_initializers282181_ '()))
                                  (let* ((___stx286819286820_ _rest282180_)
                                         (_g282185282206_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx286819286820_)))))
                                    (let ((___kont286821286822_
                                           (lambda (_L282260_
                                                    _L282261_
                                                    _L282262_)
                                             (let* ((_slot282293_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L282262_))))
                                                    (_off282295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass282147_
                                                        _slot282293_))))
                                               (if _off282295_
                                                   (let ((__tmp287352
                                                          (let ((__tmp287353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off282295_ _L282261_))))
                    (declare (not safe))
                    (cons __tmp287353 _initializers282181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp282178_
                                                      _L282260_
                                                      __tmp287352))
                                                   (let ((__tmp287354
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self282143_
                                                             __id286704
                                                             __t286703
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx282144_
                                                      __tmp287354
                                                      _slot282293_))))))
                                          (___kont286823286824_
                                           (lambda ()
                                             (let ((__tmp287355
                                                    (let ((__tmp287356
                                                           (let ((__tmp287379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287380
                                 (let ((__tmp287382
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj282176_ '())))
                                       (__tmp287381
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object282153_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp287382 __tmp287381))))
                            (declare (not safe))
                            (cons __tmp287380 '())))
                         (__tmp287357
                          (let ((__tmp287358
                                 (let ((__tmp287359
                                        (let ((__tmp287376
                                               (let ((__tmp287377
                                                      (let ((__tmp287378
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj282176_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp287378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287377 '())))
                                              (__tmp287360
                                               (let ((__tmp287361
                                                      (lambda (_i282220_
                                                               _r282221_)
                                                        (let ((__tmp287362
                                                               (let ((__tmp287363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287373
                                     (let ((__tmp287374
                                            (let ((__tmp287375
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self282143_
                                                      __id286704
                                                      __t286703
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp287375 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287374)))
                                    (__tmp287364
                                     (let ((__tmp287370
                                            (let ((__tmp287371
                                                   (let ((__tmp287372
                                                          (car _i282220_)))
                                                     (declare (not safe))
                                                     (cons __tmp287372 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp287371)))
                                           (__tmp287365
                                            (let ((__tmp287368
                                                   (let ((__tmp287369
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj282176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287369)))
                                                  (__tmp287366
                                                   (let ((__tmp287367
                                                          (cdr _i282220_)))
                                                     (declare (not safe))
                                                     (cons __tmp287367 '()))))
                                              (declare (not safe))
                                              (cons __tmp287368 __tmp287366))))
                                       (declare (not safe))
                                       (cons __tmp287370 __tmp287365))))
                                (declare (not safe))
                                (cons __tmp287373 __tmp287364))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp287363))))
                  (declare (not safe))
                  (cons __tmp287362 _r282221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp287361
                                                         '()
                                                         _initializers282181_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp287376
                                                  __tmp287360))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp287359))))
                            (declare (not safe))
                            (cons __tmp287358 '()))))
                     (declare (not safe))
                     (cons __tmp287379 __tmp287357))))
              (declare (not safe))
              (cons '%#let-values __tmp287356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp287355
                                                _stx282144_))))
                                          (___kont286825286826_
                                           (lambda ()
                                             (let ((__tmp287383
                                                    (let ((__tmp287384
                                                           (let ((__tmp287398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287399
                                 (let ((__tmp287401
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj282176_ '())))
                                       (__tmp287400
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object282153_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp287401 __tmp287400))))
                            (declare (not safe))
                            (cons __tmp287399 '())))
                         (__tmp287385
                          (let ((__tmp287386
                                 (let ((__tmp287387
                                        (let ((__tmp287391
                                               (let ((__tmp287392
                                                      (let ((__tmp287396
                                                             (let ((__tmp287397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp287397)))
                    (__tmp287393
                     (let ((__tmp287394
                            (let ((__tmp287395
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj282176_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287395))))
                       (declare (not safe))
                       (cons __tmp287394 _args282151_))))
                (declare (not safe))
                (cons __tmp287396 __tmp287393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp287392)))
                                              (__tmp287388
                                               (let ((__tmp287389
                                                      (let ((__tmp287390
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj282176_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp287390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287389 '()))))
                                          (declare (not safe))
                                          (cons __tmp287391 __tmp287388))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp287387))))
                            (declare (not safe))
                            (cons __tmp287386 '()))))
                     (declare (not safe))
                     (cons __tmp287398 __tmp287385))))
              (declare (not safe))
              (cons '%#let-values __tmp287384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp287383
                                                _stx282144_)))))
                                      (let* ((_g282183282223_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx286819286820_))
                                                    (___kont286823286824_)
                                                    (___kont286825286826_))))
                                             (___match286856286857_
                                              (lambda (_e282190282228_
                                                       _hd282191282231_
                                                       _tl282192282233_
                                                       _e282193282236_
                                                       _hd282194282239_
                                                       _tl282195282241_
                                                       _e282196282244_
                                                       _hd282197282247_
                                                       _tl282198282249_
                                                       _e282199282252_
                                                       _hd282200282255_
                                                       _tl282201282257_)
                                                (let ((_L282260_
                                                       _tl282201282257_)
                                                      (_L282261_
                                                       _hd282200282255_)
                                                      (_L282262_
                                                       _hd282197282247_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L282262_))
                                                      (___kont286821286822_
                                                       _L282260_
                                                       _L282261_
                                                       _L282262_)
                                                      (___kont286825286826_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx286819286820_))
                                            (let ((_e282190282228_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx286819286820_))))
                                              (let ((_tl282192282233_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e282190282228_)))
                                                    (_hd282191282231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e282190282228_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd282191282231_))
                                                    (let ((_e282193282236_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd282191282231_))))
                                                      (let ((_tl282195282241_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e282193282236_)))
                    (_hd282194282239_
                     (let () (declare (not safe)) (##car _e282193282236_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd282194282239_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd282194282239_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl282195282241_))
                            (let ((_e282196282244_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl282195282241_))))
                              (let ((_tl282198282249_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e282196282244_)))
                                    (_hd282197282247_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e282196282244_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl282198282249_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl282192282233_))
                                        (let ((_e282199282252_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl282192282233_))))
                                          (let ((_tl282201282257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e282199282252_)))
                                                (_hd282200282255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e282199282252_))))
                                            (___match286856286857_
                                             _e282190282228_
                                             _hd282191282231_
                                             _tl282192282233_
                                             _e282193282236_
                                             _hd282194282239_
                                             _tl282195282241_
                                             _e282196282244_
                                             _hd282197282247_
                                             _tl282198282249_
                                             _e282199282252_
                                             _hd282200282255_
                                             _tl282201282257_)))
                                        (___kont286825286826_))
                                    (___kont286825286826_))))
                            (___kont286825286826_))
                        (___kont286825286826_))
                    (___kont286825286826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont286825286826_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g282183282223_))))))))))))))))))
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
      (lambda (_self281966_ _stx281967_ _args281968_)
        (let* ((_g281970281980_
                (lambda (_g281971281977_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g281971281977_))))
               (_g281969282018_
                (lambda (_g281971281983_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g281971281983_))
                      (let ((_e281973281985_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281971281983_))))
                        (let ((_hd281974281988_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281973281985_)))
                              (_tl281975281990_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281973281985_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl281975281990_))
                              ((lambda (_L281993_)
                                 (let* ((_klass282004_
                                         (let ((__tmp287402
                                                (##structure-ref
                                                 _self281966_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx281967_
                                            __tmp287402)))
                                        (_field282006_
                                         (let ((__tmp287403
                                                (##structure-ref
                                                 _self281966_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass282004_
                                            __tmp287403)))
                                        (_object282008_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L281993_))))
                                   (if (##structure-ref
                                        _klass282004_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp287404
                                              (let ((__tmp287413
                                                     (if (##structure-ref
                                                          _self281966_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp287405
                                                     (let ((__tmp287410
                                                            (let ((__tmp287411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287412
                                  (##structure-ref
                                   _self281966_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp287412 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp287411)))
                   (__tmp287406
                    (let ((__tmp287408
                           (let ((__tmp287409
                                  (let ()
                                    (declare (not safe))
                                    (cons _field282006_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp287409)))
                          (__tmp287407
                           (let ()
                             (declare (not safe))
                             (cons _object282008_ '()))))
                      (declare (not safe))
                      (cons __tmp287408 __tmp287407))))
               (declare (not safe))
               (cons __tmp287410 __tmp287406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287413
                                                      __tmp287405))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp287404
                                          _stx281967_))
                                       (if (##structure-ref
                                            _klass282004_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp287414
                                                  (let ((__tmp287423
                                                         (if (##structure-ref
                                                              _self281966_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp287415
                                                         (let ((__tmp287420
                                                                (let ((__tmp287421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287422
                                      (##structure-ref
                                       _self281966_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp287422 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287421)))
                       (__tmp287416
                        (let ((__tmp287418
                               (let ((__tmp287419
                                      (let ()
                                        (declare (not safe))
                                        (cons _field282006_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp287419)))
                              (__tmp287417
                               (let ()
                                 (declare (not safe))
                                 (cons _object282008_ '()))))
                          (declare (not safe))
                          (cons __tmp287418 __tmp287417))))
                   (declare (not safe))
                   (cons __tmp287420 __tmp287416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287423
                                                          __tmp287415))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287414
                                              _stx281967_))
                                           (let ((_$e282011_
                                                  (let ((__tmp287424
                                                         (##structure-ref
                                                          _self281966_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass282004_
                                                     __tmp287424))))
                                             (if _$e282011_
                                                 ((lambda (_klass282014_)
                                                    (let ((__tmp287425
                                                           (let ((__tmp287434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self281966_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp287426
                          (let ((__tmp287431
                                 (let ((__tmp287432
                                        (let ((__tmp287433
                                               (##structure-ref
                                                _self281966_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp287433 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp287432)))
                                (__tmp287427
                                 (let ((__tmp287429
                                        (let ((__tmp287430
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field282006_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp287430)))
                                       (__tmp287428
                                        (let ()
                                          (declare (not safe))
                                          (cons _object282008_ '()))))
                                   (declare (not safe))
                                   (cons __tmp287429 __tmp287428))))
                            (declare (not safe))
                            (cons __tmp287431 __tmp287427))))
                     (declare (not safe))
                     (cons __tmp287434 __tmp287426))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp287425 _stx281967_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e282011_)
                                                 (if (##structure-ref
                                                      _self281966_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp287435
                                                            (let* ((_$obj282016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287436 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp287436)))
                           (__tmp287437
                            (let ((__tmp287477
                                   (let ((__tmp287478
                                          (let ((__tmp287480
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj282016_ '())))
                                                (__tmp287479
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object282008_ '()))))
                                            (declare (not safe))
                                            (cons __tmp287480 __tmp287479))))
                                     (declare (not safe))
                                     (cons __tmp287478 '())))
                                  (__tmp287438
                                   (let ((__tmp287439
                                          (let ((__tmp287440
                                                 (let ((__tmp287469
                                                        (let ((__tmp287470
                                                               (let ((__tmp287474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287475
                                     (let ((__tmp287476
                                            (##structure-ref
                                             _klass282004_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp287476 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp287475)))
                             (__tmp287471
                              (let ((__tmp287472
                                     (let ((__tmp287473
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj282016_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287473))))
                                (declare (not safe))
                                (cons __tmp287472 '()))))
                         (declare (not safe))
                         (cons __tmp287474 __tmp287471))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp287470)))
               (__tmp287441
                (let ((__tmp287458
                       (let ((__tmp287459
                              (let ((__tmp287466
                                     (let ((__tmp287467
                                            (let ((__tmp287468
                                                   (##structure-ref
                                                    _self281966_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp287468 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287467)))
                                    (__tmp287460
                                     (let ((__tmp287464
                                            (let ((__tmp287465
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field282006_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp287465)))
                                           (__tmp287461
                                            (let ((__tmp287462
                                                   (let ((__tmp287463
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj282016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287463))))
                                              (declare (not safe))
                                              (cons __tmp287462 '()))))
                                       (declare (not safe))
                                       (cons __tmp287464 __tmp287461))))
                                (declare (not safe))
                                (cons __tmp287466 __tmp287460))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp287459)))
                      (__tmp287442
                       (let ((__tmp287443
                              (let ((__tmp287444
                                     (let ((__tmp287456
                                            (let ((__tmp287457
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp287457)))
                                           (__tmp287445
                                            (let ((__tmp287453
                                                   (let ((__tmp287454
                                                          (let ((__tmp287455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self281966_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp287455 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287454)))
                                                  (__tmp287446
                                                   (let ((__tmp287451
                                                          (let ((__tmp287452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj282016_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp287452)))
                 (__tmp287447
                  (let ((__tmp287448
                         (let ((__tmp287449
                                (let ((__tmp287450
                                       (##structure-ref
                                        _self281966_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp287450 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp287449))))
                    (declare (not safe))
                    (cons __tmp287448 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287451
                                                           __tmp287447))))
                                              (declare (not safe))
                                              (cons __tmp287453 __tmp287446))))
                                       (declare (not safe))
                                       (cons __tmp287456 __tmp287445))))
                                (declare (not safe))
                                (cons '%#call __tmp287444))))
                         (declare (not safe))
                         (cons __tmp287443 '()))))
                  (declare (not safe))
                  (cons __tmp287458 __tmp287442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287469
                                                         __tmp287441))))
                                            (declare (not safe))
                                            (cons '%#if __tmp287440))))
                                     (declare (not safe))
                                     (cons __tmp287439 '()))))
                              (declare (not safe))
                              (cons __tmp287477 __tmp287438))))
                      (declare (not safe))
                      (cons '%#let-values __tmp287437))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp287435 _stx281967_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp287481
                                                            (let ((__tmp287482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287488
                                  (let ((__tmp287489
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp287489)))
                                 (__tmp287483
                                  (let ((__tmp287484
                                         (let ((__tmp287485
                                                (let ((__tmp287486
                                                       (let ((__tmp287487
                                                              (##structure-ref
                                                               _self281966_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp287487
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp287486))))
                                           (declare (not safe))
                                           (cons __tmp287485 '()))))
                                    (declare (not safe))
                                    (cons _object282008_ __tmp287484))))
                             (declare (not safe))
                             (cons __tmp287488 __tmp287483))))
                      (declare (not safe))
                      (cons '%#call __tmp287482))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp287481 _stx281967_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd281974281988_)
                              (let ()
                                (declare (not safe))
                                (_g281970281980_ _g281971281983_)))))
                      (let ()
                        (declare (not safe))
                        (_g281970281980_ _g281971281983_))))))
          (declare (not safe))
          (_g281969282018_ _args281968_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t286706)
        (let ((__checked?286707
               (let ((__tmp286710
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286706 'checked?))))
                 (if __tmp286710
                     __tmp286710
                     (error '"Unknown slot" 'checked?))))
              (__slot286708
               (let ((__tmp286711
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286706 'slot))))
                 (if __tmp286711 __tmp286711 (error '"Unknown slot" 'slot))))
              (__id286709
               (let ((__tmp286712
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286706 'id))))
                 (if __tmp286712 __tmp286712 (error '"Unknown slot" 'id)))))
          (lambda (_self281966_ _stx281967_ _args281968_)
            (let* ((_g281970281980_
                    (lambda (_g281971281977_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g281971281977_))))
                   (_g281969282018_
                    (lambda (_g281971281983_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g281971281983_))
                          (let ((_e281973281985_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g281971281983_))))
                            (let ((_hd281974281988_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281973281985_)))
                                  (_tl281975281990_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281973281985_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl281975281990_))
                                  ((lambda (_L281993_)
                                     (let* ((_klass282004_
                                             (let ((__tmp287490
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self281966_
                                                       __id286709
                                                       __t286706
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx281967_
                                                __tmp287490)))
                                            (_field282006_
                                             (let ((__tmp287491
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self281966_
                                                       __slot286708
                                                       __t286706
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass282004_
                                                __tmp287491)))
                                            (_object282008_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L281993_))))
                                       (if (##structure-ref
                                            _klass282004_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp287492
                                                  (let ((__tmp287501
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self281966_
                        __checked?286707
                        __t286706
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp287493
                 (let ((__tmp287498
                        (let ((__tmp287499
                               (let ((__tmp287500
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self281966_
                                         __id286709
                                         __t286706
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp287500 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287499)))
                       (__tmp287494
                        (let ((__tmp287496
                               (let ((__tmp287497
                                      (let ()
                                        (declare (not safe))
                                        (cons _field282006_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp287497)))
                              (__tmp287495
                               (let ()
                                 (declare (not safe))
                                 (cons _object282008_ '()))))
                          (declare (not safe))
                          (cons __tmp287496 __tmp287495))))
                   (declare (not safe))
                   (cons __tmp287498 __tmp287494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287501
                                                          __tmp287493))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287492
                                              _stx281967_))
                                           (if (##structure-ref
                                                _klass282004_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp287502
                                                      (let ((__tmp287511
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self281966_
                            __checked?286707
                            __t286706
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp287503
                     (let ((__tmp287508
                            (let ((__tmp287509
                                   (let ((__tmp287510
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self281966_
                                             __id286709
                                             __t286706
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp287510 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287509)))
                           (__tmp287504
                            (let ((__tmp287506
                                   (let ((__tmp287507
                                          (let ()
                                            (declare (not safe))
                                            (cons _field282006_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp287507)))
                                  (__tmp287505
                                   (let ()
                                     (declare (not safe))
                                     (cons _object282008_ '()))))
                              (declare (not safe))
                              (cons __tmp287506 __tmp287505))))
                       (declare (not safe))
                       (cons __tmp287508 __tmp287504))))
                (declare (not safe))
                (cons __tmp287511 __tmp287503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287502
                                                  _stx281967_))
                                               (let ((_$e282011_
                                                      (let ((__tmp287512
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self281966_
                        __slot286708
                        __t286706
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass282004_ __tmp287512))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e282011_
                                                     ((lambda (_klass282014_)
                                                        (let ((__tmp287513
                                                               (let ((__tmp287522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self281966_
                                     __checked?286707
                                     __t286706
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp287514
                              (let ((__tmp287519
                                     (let ((__tmp287520
                                            (let ((__tmp287521
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self281966_
                                                      __id286709
                                                      __t286706
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp287521 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287520)))
                                    (__tmp287515
                                     (let ((__tmp287517
                                            (let ((__tmp287518
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field282006_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp287518)))
                                           (__tmp287516
                                            (let ()
                                              (declare (not safe))
                                              (cons _object282008_ '()))))
                                       (declare (not safe))
                                       (cons __tmp287517 __tmp287516))))
                                (declare (not safe))
                                (cons __tmp287519 __tmp287515))))
                         (declare (not safe))
                         (cons __tmp287522 __tmp287514))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp287513 _stx281967_)))
              _$e282011_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self281966_
                                                            __checked?286707
                                                            __t286706
                                                            '#f))
                                                         (let ((__tmp287523
                                                                (let* ((_$obj282016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp287524 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp287524)))
                               (__tmp287525
                                (let ((__tmp287565
                                       (let ((__tmp287566
                                              (let ((__tmp287568
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj282016_
                                                             '())))
                                                    (__tmp287567
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object282008_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp287568
                                                      __tmp287567))))
                                         (declare (not safe))
                                         (cons __tmp287566 '())))
                                      (__tmp287526
                                       (let ((__tmp287527
                                              (let ((__tmp287528
                                                     (let ((__tmp287557
                                                            (let ((__tmp287558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287562
                                  (let ((__tmp287563
                                         (let ((__tmp287564
                                                (##structure-ref
                                                 _klass282004_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp287564 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp287563)))
                                 (__tmp287559
                                  (let ((__tmp287560
                                         (let ((__tmp287561
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj282016_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287561))))
                                    (declare (not safe))
                                    (cons __tmp287560 '()))))
                             (declare (not safe))
                             (cons __tmp287562 __tmp287559))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp287558)))
                   (__tmp287529
                    (let ((__tmp287546
                           (let ((__tmp287547
                                  (let ((__tmp287554
                                         (let ((__tmp287555
                                                (let ((__tmp287556
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self281966_
                                                          __id286709
                                                          __t286706
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp287556 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287555)))
                                        (__tmp287548
                                         (let ((__tmp287552
                                                (let ((__tmp287553
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field282006_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp287553)))
                                               (__tmp287549
                                                (let ((__tmp287550
                                                       (let ((__tmp287551
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj282016_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287550 '()))))
                                           (declare (not safe))
                                           (cons __tmp287552 __tmp287549))))
                                    (declare (not safe))
                                    (cons __tmp287554 __tmp287548))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp287547)))
                          (__tmp287530
                           (let ((__tmp287531
                                  (let ((__tmp287532
                                         (let ((__tmp287544
                                                (let ((__tmp287545
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp287545)))
                                               (__tmp287533
                                                (let ((__tmp287541
                                                       (let ((__tmp287542
                                                              (let ((__tmp287543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self281966_
                                __id286709
                                __t286706
                                '#f))))
                        (declare (not safe))
                        (cons __tmp287543 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287542)))
              (__tmp287534
               (let ((__tmp287539
                      (let ((__tmp287540
                             (let ()
                               (declare (not safe))
                               (cons _$obj282016_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp287540)))
                     (__tmp287535
                      (let ((__tmp287536
                             (let ((__tmp287537
                                    (let ((__tmp287538
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self281966_
                                              __slot286708
                                              __t286706
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp287538 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp287537))))
                        (declare (not safe))
                        (cons __tmp287536 '()))))
                 (declare (not safe))
                 (cons __tmp287539 __tmp287535))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287541
                                                        __tmp287534))))
                                           (declare (not safe))
                                           (cons __tmp287544 __tmp287533))))
                                    (declare (not safe))
                                    (cons '%#call __tmp287532))))
                             (declare (not safe))
                             (cons __tmp287531 '()))))
                      (declare (not safe))
                      (cons __tmp287546 __tmp287530))))
               (declare (not safe))
               (cons __tmp287557 __tmp287529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp287528))))
                                         (declare (not safe))
                                         (cons __tmp287527 '()))))
                                  (declare (not safe))
                                  (cons __tmp287565 __tmp287526))))
                          (declare (not safe))
                          (cons '%#let-values __tmp287525))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp287523 _stx281967_))
                 (let ((__tmp287569
                        (let ((__tmp287570
                               (let ((__tmp287576
                                      (let ((__tmp287577
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp287577)))
                                     (__tmp287571
                                      (let ((__tmp287572
                                             (let ((__tmp287573
                                                    (let ((__tmp287574
                                                           (let ((__tmp287575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self281966_
                             __slot286708
                             __t286706
                             '#f))))
                     (declare (not safe))
                     (cons __tmp287575 '()))))
              (declare (not safe))
              (cons '%#quote __tmp287574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287573 '()))))
                                        (declare (not safe))
                                        (cons _object282008_ __tmp287572))))
                                 (declare (not safe))
                                 (cons __tmp287576 __tmp287571))))
                          (declare (not safe))
                          (cons '%#call __tmp287570))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp287569 _stx281967_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd281974281988_)
                                  (let ()
                                    (declare (not safe))
                                    (_g281970281980_ _g281971281983_)))))
                          (let ()
                            (declare (not safe))
                            (_g281970281980_ _g281971281983_))))))
              (declare (not safe))
              (_g281969282018_ _args281968_))))))
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
      (lambda (_self281771_ _stx281772_ _args281773_)
        (let* ((_g281775281789_
                (lambda (_g281776281786_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g281776281786_))))
               (_g281774281841_
                (lambda (_g281776281792_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g281776281792_))
                      (let ((_e281779281794_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281776281792_))))
                        (let ((_hd281780281797_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281779281794_)))
                              (_tl281781281799_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281779281794_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl281781281799_))
                              (let ((_e281782281802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl281781281799_))))
                                (let ((_hd281783281805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281782281802_)))
                                      (_tl281784281807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281782281802_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl281784281807_))
                                      ((lambda (_L281810_ _L281811_)
                                         (let* ((_klass281825_
                                                 (let ((__tmp287578
                                                        (##structure-ref
                                                         _self281771_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx281772_
                                                    __tmp287578)))
                                                (_field281827_
                                                 (let ((__tmp287579
                                                        (##structure-ref
                                                         _self281771_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass281825_
                                                    __tmp287579)))
                                                (_object281829_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L281811_)))
                                                (_value281831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L281810_))))
                                           (if (##structure-ref
                                                _klass281825_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp287580
                                                      (let ((__tmp287590
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self281771_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp287581
                     (let ((__tmp287587
                            (let ((__tmp287588
                                   (let ((__tmp287589
                                          (##structure-ref
                                           _self281771_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp287589 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287588)))
                           (__tmp287582
                            (let ((__tmp287585
                                   (let ((__tmp287586
                                          (let ()
                                            (declare (not safe))
                                            (cons _field281827_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp287586)))
                                  (__tmp287583
                                   (let ((__tmp287584
                                          (let ()
                                            (declare (not safe))
                                            (cons _value281831_ '()))))
                                     (declare (not safe))
                                     (cons _object281829_ __tmp287584))))
                              (declare (not safe))
                              (cons __tmp287585 __tmp287583))))
                       (declare (not safe))
                       (cons __tmp287587 __tmp287582))))
                (declare (not safe))
                (cons __tmp287590 __tmp287581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287580
                                                  _stx281772_))
                                               (if (##structure-ref
                                                    _klass281825_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp287591
                                                          (let ((__tmp287601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self281771_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp287592
                         (let ((__tmp287598
                                (let ((__tmp287599
                                       (let ((__tmp287600
                                              (##structure-ref
                                               _self281771_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp287600 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287599)))
                               (__tmp287593
                                (let ((__tmp287596
                                       (let ((__tmp287597
                                              (let ()
                                                (declare (not safe))
                                                (cons _field281827_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp287597)))
                                      (__tmp287594
                                       (let ((__tmp287595
                                              (let ()
                                                (declare (not safe))
                                                (cons _value281831_ '()))))
                                         (declare (not safe))
                                         (cons _object281829_ __tmp287595))))
                                  (declare (not safe))
                                  (cons __tmp287596 __tmp287594))))
                           (declare (not safe))
                           (cons __tmp287598 __tmp287593))))
                    (declare (not safe))
                    (cons __tmp287601 __tmp287592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp287591
                                                      _stx281772_))
                                                   (let ((_$e281834_
                                                          (let ((__tmp287602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self281771_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass281825_ __tmp287602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e281834_
                                                         ((lambda (_klass281837_)
                                                            (let ((__tmp287603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287613
                                  (if (##structure-ref
                                       _self281771_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp287604
                                  (let ((__tmp287610
                                         (let ((__tmp287611
                                                (let ((__tmp287612
                                                       (##structure-ref
                                                        _self281771_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp287612 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287611)))
                                        (__tmp287605
                                         (let ((__tmp287608
                                                (let ((__tmp287609
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field281827_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp287609)))
                                               (__tmp287606
                                                (let ((__tmp287607
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value281831_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object281829_
                                                        __tmp287607))))
                                           (declare (not safe))
                                           (cons __tmp287608 __tmp287606))))
                                    (declare (not safe))
                                    (cons __tmp287610 __tmp287605))))
                             (declare (not safe))
                             (cons __tmp287613 __tmp287604))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp287603 _stx281772_)))
                  _$e281834_)
                 (if (##structure-ref _self281771_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp287614
                            (let* ((_$obj281839_
                                    (let ((__tmp287615 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp287615)))
                                   (__tmp287616
                                    (let ((__tmp287658
                                           (let ((__tmp287659
                                                  (let ((__tmp287661
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj281839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp287660
                 (let () (declare (not safe)) (cons _object281829_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287661
                                                          __tmp287660))))
                                             (declare (not safe))
                                             (cons __tmp287659 '())))
                                          (__tmp287617
                                           (let ((__tmp287618
                                                  (let ((__tmp287619
                                                         (let ((__tmp287650
                                                                (let ((__tmp287651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287655
                                      (let ((__tmp287656
                                             (let ((__tmp287657
                                                    (##structure-ref
                                                     _klass281825_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp287657 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp287656)))
                                     (__tmp287652
                                      (let ((__tmp287653
                                             (let ((__tmp287654
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj281839_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287654))))
                                        (declare (not safe))
                                        (cons __tmp287653 '()))))
                                 (declare (not safe))
                                 (cons __tmp287655 __tmp287652))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp287651)))
                       (__tmp287620
                        (let ((__tmp287638
                               (let ((__tmp287639
                                      (let ((__tmp287647
                                             (let ((__tmp287648
                                                    (let ((__tmp287649
                                                           (##structure-ref
                                                            _self281771_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp287649 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287648)))
                                            (__tmp287640
                                             (let ((__tmp287645
                                                    (let ((__tmp287646
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field281827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp287646)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287641
                                                    (let ((__tmp287643
                                                           (let ((__tmp287644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj281839_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp287644)))
                  (__tmp287642
                   (let () (declare (not safe)) (cons _value281831_ '()))))
              (declare (not safe))
              (cons __tmp287643 __tmp287642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287645
                                                     __tmp287641))))
                                        (declare (not safe))
                                        (cons __tmp287647 __tmp287640))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp287639)))
                              (__tmp287621
                               (let ((__tmp287622
                                      (let ((__tmp287623
                                             (let ((__tmp287636
                                                    (let ((__tmp287637
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp287637)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287624
                                                    (let ((__tmp287633
                                                           (let ((__tmp287634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287635
                                 (##structure-ref
                                  _self281771_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp287635 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp287634)))
                  (__tmp287625
                   (let ((__tmp287631
                          (let ((__tmp287632
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj281839_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp287632)))
                         (__tmp287626
                          (let ((__tmp287628
                                 (let ((__tmp287629
                                        (let ((__tmp287630
                                               (##structure-ref
                                                _self281771_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp287630 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp287629)))
                                (__tmp287627
                                 (let ()
                                   (declare (not safe))
                                   (cons _value281831_ '()))))
                            (declare (not safe))
                            (cons __tmp287628 __tmp287627))))
                     (declare (not safe))
                     (cons __tmp287631 __tmp287626))))
              (declare (not safe))
              (cons __tmp287633 __tmp287625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287636
                                                     __tmp287624))))
                                        (declare (not safe))
                                        (cons '%#call __tmp287623))))
                                 (declare (not safe))
                                 (cons __tmp287622 '()))))
                          (declare (not safe))
                          (cons __tmp287638 __tmp287621))))
                   (declare (not safe))
                   (cons __tmp287650 __tmp287620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp287619))))
                                             (declare (not safe))
                                             (cons __tmp287618 '()))))
                                      (declare (not safe))
                                      (cons __tmp287658 __tmp287617))))
                              (declare (not safe))
                              (cons '%#let-values __tmp287616))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp287614 _stx281772_))
                     (let ((__tmp287662
                            (let ((__tmp287663
                                   (let ((__tmp287670
                                          (let ((__tmp287671
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp287671)))
                                         (__tmp287664
                                          (let ((__tmp287665
                                                 (let ((__tmp287667
                                                        (let ((__tmp287668
                                                               (let ((__tmp287669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self281771_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp287669 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp287668)))
               (__tmp287666
                (let () (declare (not safe)) (cons _value281831_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287667
                                                         __tmp287666))))
                                            (declare (not safe))
                                            (cons _object281829_
                                                  __tmp287665))))
                                     (declare (not safe))
                                     (cons __tmp287670 __tmp287664))))
                              (declare (not safe))
                              (cons '%#call __tmp287663))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp287662 _stx281772_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd281783281805_
                                       _hd281780281797_)
                                      (let ()
                                        (declare (not safe))
                                        (_g281775281789_ _g281776281792_)))))
                              (let ()
                                (declare (not safe))
                                (_g281775281789_ _g281776281792_)))))
                      (let ()
                        (declare (not safe))
                        (_g281775281789_ _g281776281792_))))))
          (declare (not safe))
          (_g281774281841_ _args281773_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t286713)
        (let ((__id286714
               (let ((__tmp286717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286713 'id))))
                 (if __tmp286717 __tmp286717 (error '"Unknown slot" 'id))))
              (__slot286715
               (let ((__tmp286718
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286713 'slot))))
                 (if __tmp286718 __tmp286718 (error '"Unknown slot" 'slot))))
              (__checked?286716
               (let ((__tmp286719
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286713 'checked?))))
                 (if __tmp286719
                     __tmp286719
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self281771_ _stx281772_ _args281773_)
            (let* ((_g281775281789_
                    (lambda (_g281776281786_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g281776281786_))))
                   (_g281774281841_
                    (lambda (_g281776281792_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g281776281792_))
                          (let ((_e281779281794_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g281776281792_))))
                            (let ((_hd281780281797_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281779281794_)))
                                  (_tl281781281799_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281779281794_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281781281799_))
                                  (let ((_e281782281802_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281781281799_))))
                                    (let ((_hd281783281805_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281782281802_)))
                                          (_tl281784281807_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281782281802_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281784281807_))
                                          ((lambda (_L281810_ _L281811_)
                                             (let* ((_klass281825_
                                                     (let ((__tmp287672
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self281771_
                                                               __id286714
                                                               __t286713
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx281772_
                                                        __tmp287672)))
                                                    (_field281827_
                                                     (let ((__tmp287673
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self281771_
                                                               __slot286715
                                                               __t286713
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass281825_
                                                        __tmp287673)))
                                                    (_object281829_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L281811_)))
                                                    (_value281831_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L281810_))))
                                               (if (##structure-ref
                                                    _klass281825_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp287674
                                                          (let ((__tmp287684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self281771_
                                __checked?286716
                                __t286713
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp287675
                         (let ((__tmp287681
                                (let ((__tmp287682
                                       (let ((__tmp287683
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self281771_
                                                 __id286714
                                                 __t286713
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp287683 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287682)))
                               (__tmp287676
                                (let ((__tmp287679
                                       (let ((__tmp287680
                                              (let ()
                                                (declare (not safe))
                                                (cons _field281827_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp287680)))
                                      (__tmp287677
                                       (let ((__tmp287678
                                              (let ()
                                                (declare (not safe))
                                                (cons _value281831_ '()))))
                                         (declare (not safe))
                                         (cons _object281829_ __tmp287678))))
                                  (declare (not safe))
                                  (cons __tmp287679 __tmp287677))))
                           (declare (not safe))
                           (cons __tmp287681 __tmp287676))))
                    (declare (not safe))
                    (cons __tmp287684 __tmp287675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp287674
                                                      _stx281772_))
                                                   (if (##structure-ref
                                                        _klass281825_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp287685
                                                              (let ((__tmp287695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self281771_
                                    __checked?286716
                                    __t286713
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp287686
                             (let ((__tmp287692
                                    (let ((__tmp287693
                                           (let ((__tmp287694
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self281771_
                                                     __id286714
                                                     __t286713
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp287694 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287693)))
                                   (__tmp287687
                                    (let ((__tmp287690
                                           (let ((__tmp287691
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field281827_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp287691)))
                                          (__tmp287688
                                           (let ((__tmp287689
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value281831_ '()))))
                                             (declare (not safe))
                                             (cons _object281829_
                                                   __tmp287689))))
                                      (declare (not safe))
                                      (cons __tmp287690 __tmp287688))))
                               (declare (not safe))
                               (cons __tmp287692 __tmp287687))))
                        (declare (not safe))
                        (cons __tmp287695 __tmp287686))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp287685 _stx281772_))
               (let ((_$e281834_
                      (let ((__tmp287696
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self281771_
                                __slot286715
                                __t286713
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass281825_
                         __tmp287696))))
                 (if _$e281834_
                     ((lambda (_klass281837_)
                        (let ((__tmp287697
                               (let ((__tmp287707
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self281771_
                                             __checked?286716
                                             __t286713
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp287698
                                      (let ((__tmp287704
                                             (let ((__tmp287705
                                                    (let ((__tmp287706
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self281771_
                                                              __id286714
                                                              __t286713
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp287706 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287705)))
                                            (__tmp287699
                                             (let ((__tmp287702
                                                    (let ((__tmp287703
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field281827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp287703)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287700
                                                    (let ((__tmp287701
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value281831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object281829_ __tmp287701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287702
                                                     __tmp287700))))
                                        (declare (not safe))
                                        (cons __tmp287704 __tmp287699))))
                                 (declare (not safe))
                                 (cons __tmp287707 __tmp287698))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp287697 _stx281772_)))
                      _$e281834_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self281771_
                            __checked?286716
                            __t286713
                            '#f))
                         (let ((__tmp287708
                                (let* ((_$obj281839_
                                        (let ((__tmp287709 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp287709)))
                                       (__tmp287710
                                        (let ((__tmp287752
                                               (let ((__tmp287753
                                                      (let ((__tmp287755
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj281839_ '())))
                    (__tmp287754
                     (let () (declare (not safe)) (cons _object281829_ '()))))
                (declare (not safe))
                (cons __tmp287755 __tmp287754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287753 '())))
                                              (__tmp287711
                                               (let ((__tmp287712
                                                      (let ((__tmp287713
                                                             (let ((__tmp287744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287745
                                   (let ((__tmp287749
                                          (let ((__tmp287750
                                                 (let ((__tmp287751
                                                        (##structure-ref
                                                         _klass281825_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp287751 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp287750)))
                                         (__tmp287746
                                          (let ((__tmp287747
                                                 (let ((__tmp287748
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj281839_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp287748))))
                                            (declare (not safe))
                                            (cons __tmp287747 '()))))
                                     (declare (not safe))
                                     (cons __tmp287749 __tmp287746))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp287745)))
                           (__tmp287714
                            (let ((__tmp287732
                                   (let ((__tmp287733
                                          (let ((__tmp287741
                                                 (let ((__tmp287742
                                                        (let ((__tmp287743
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self281771_
                          __id286714
                          __t286713
                          '#f))))
                  (declare (not safe))
                  (cons __tmp287743 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp287742)))
                                                (__tmp287734
                                                 (let ((__tmp287739
                                                        (let ((__tmp287740
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field281827_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp287740)))
               (__tmp287735
                (let ((__tmp287737
                       (let ((__tmp287738
                              (let ()
                                (declare (not safe))
                                (cons _$obj281839_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp287738)))
                      (__tmp287736
                       (let () (declare (not safe)) (cons _value281831_ '()))))
                  (declare (not safe))
                  (cons __tmp287737 __tmp287736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287739
                                                         __tmp287735))))
                                            (declare (not safe))
                                            (cons __tmp287741 __tmp287734))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp287733)))
                                  (__tmp287715
                                   (let ((__tmp287716
                                          (let ((__tmp287717
                                                 (let ((__tmp287730
                                                        (let ((__tmp287731
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp287731)))
               (__tmp287718
                (let ((__tmp287727
                       (let ((__tmp287728
                              (let ((__tmp287729
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self281771_
                                        __id286714
                                        __t286713
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp287729 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp287728)))
                      (__tmp287719
                       (let ((__tmp287725
                              (let ((__tmp287726
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj281839_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp287726)))
                             (__tmp287720
                              (let ((__tmp287722
                                     (let ((__tmp287723
                                            (let ((__tmp287724
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self281771_
                                                      __slot286715
                                                      __t286713
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp287724 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp287723)))
                                    (__tmp287721
                                     (let ()
                                       (declare (not safe))
                                       (cons _value281831_ '()))))
                                (declare (not safe))
                                (cons __tmp287722 __tmp287721))))
                         (declare (not safe))
                         (cons __tmp287725 __tmp287720))))
                  (declare (not safe))
                  (cons __tmp287727 __tmp287719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287730
                                                         __tmp287718))))
                                            (declare (not safe))
                                            (cons '%#call __tmp287717))))
                                     (declare (not safe))
                                     (cons __tmp287716 '()))))
                              (declare (not safe))
                              (cons __tmp287732 __tmp287715))))
                       (declare (not safe))
                       (cons __tmp287744 __tmp287714))))
                (declare (not safe))
                (cons '%#if __tmp287713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287712 '()))))
                                          (declare (not safe))
                                          (cons __tmp287752 __tmp287711))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp287710))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp287708 _stx281772_))
                         (let ((__tmp287756
                                (let ((__tmp287757
                                       (let ((__tmp287764
                                              (let ((__tmp287765
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp287765)))
                                             (__tmp287758
                                              (let ((__tmp287759
                                                     (let ((__tmp287761
                                                            (let ((__tmp287762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287763
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self281771_
                                     __slot286715
                                     __t286713
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp287763 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp287762)))
                   (__tmp287760
                    (let () (declare (not safe)) (cons _value281831_ '()))))
               (declare (not safe))
               (cons __tmp287761 __tmp287760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object281829_
                                                      __tmp287759))))
                                         (declare (not safe))
                                         (cons __tmp287764 __tmp287758))))
                                  (declare (not safe))
                                  (cons '%#call __tmp287757))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp287756
                            _stx281772_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd281783281805_
                                           _hd281780281797_)
                                          (let ()
                                            (declare (not safe))
                                            (_g281775281789_
                                             _g281776281792_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g281775281789_ _g281776281792_)))))
                          (let ()
                            (declare (not safe))
                            (_g281775281789_ _g281776281792_))))))
              (declare (not safe))
              (_g281774281841_ _args281773_))))))
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
      (lambda (_self281605_ _stx281606_ _args281607_)
        (let* ((_self281608281617_ _self281605_)
               (_E281610281621_
                (lambda () (error '"No clause matching" _self281608281617_)))
               (_K281611281628_
                (lambda (_inline281624_ _dispatch281625_ _arity281626_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self281605_ _args281607_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx281606_
                         _arity281626_)))
                  (if _inline281624_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp287766
                               (let ((__tmp287767
                                      (_inline281624_ _stx281606_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp287767
                                  _stx281606_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp287766)))
                      (if _dispatch281625_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch281625_))
                            (let ((__tmp287768
                                   (let ((__tmp287769
                                          (let ((__tmp287770
                                                 (let ((__tmp287771
                                                        (let ((__tmp287772
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch281625_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp287772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287771
                                                         _args281607_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp287770))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp287769
                                      _stx281606_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp287768)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx281606_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281608281617_ 'gxc#!lambda::t))
              (let* ((_e281612281631_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281608281617_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e281613281634_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281608281617_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity281637_ _e281613281634_)
                     (_e281614281639_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281608281617_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch281642_ _e281614281639_)
                     (_e281615281644_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281608281617_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline281647_ _e281615281644_))
                (declare (not safe))
                (_K281611281628_
                 _inline281647_
                 _dispatch281642_
                 _arity281637_))
              (let () (declare (not safe)) (_E281610281621_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self281444_ _stx281445_ _args281446_)
        (let* ((_self281447281454_ _self281444_)
               (_E281449281458_
                (lambda () (error '"No clause matching" _self281447281454_)))
               (_K281450281472_
                (lambda (_clauses281461_)
                  (let ((_$e281467_
                         (let ((__tmp287773
                                (lambda (_g281462281464_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g281462281464_
                                     _args281446_)))))
                           (declare (not safe))
                           (find __tmp287773 _clauses281461_))))
                    (if _$e281467_
                        ((lambda (_clause281470_)
                           (let ((__method286988
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause281470_
                                     'optimize-call))))
                             (if __method286988
                                 (__method286988
                                  _clause281470_
                                  _stx281445_
                                  _args281446_)
                                 (error '"Missing method"
                                        _clause281470_
                                        'optimize-call))))
                         _$e281467_)
                        (let ((__tmp287774
                               (map gxc#!lambda-arity _clauses281461_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx281445_
                           __tmp287774)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281447281454_
                 'gxc#!case-lambda::t))
              (let* ((_e281451281475_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281447281454_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e281452281478_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281447281454_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses281481_ _e281452281478_))
                (declare (not safe))
                (_K281450281472_ _clauses281481_))
              (let () (declare (not safe)) (_E281449281458_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self281258_ _args281259_)
        (let* ((_self281260281267_ _self281258_)
               (_E281262281271_
                (lambda () (error '"No clause matching" _self281260281267_)))
               (_K281263281311_
                (lambda (_arity281274_)
                  (let* ((_arity281275281284_ _arity281274_)
                         (_E281278281288_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity281275281284_))))
                    (let ((_K281282281308_
                           (lambda ()
                             (fx= (length _args281259_) _arity281274_)))
                          (_K281279281294_
                           (lambda (_arity281292_)
                             (fx>= (length _args281259_) _arity281292_))))
                      (let ((_try-match281277281304_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity281275281284_))
                                   (let ((_tl281281281299_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity281275281284_)))
                                         (_hd281280281297_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity281275281284_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl281281281299_))
                                         (let ((_arity281302_
                                                _hd281280281297_))
                                           (declare (not safe))
                                           (_K281279281294_ _arity281302_))
                                         (let ()
                                           (declare (not safe))
                                           (_E281278281288_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E281278281288_))))))
                        (if (fixnum? _arity281275281284_)
                            (let () (declare (not safe)) (_K281282281308_))
                            (let ()
                              (declare (not safe))
                              (_try-match281277281304_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281260281267_ 'gxc#!lambda::t))
              (let* ((_e281264281314_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281260281267_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e281265281317_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281260281267_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity281320_ _e281265281317_))
                (declare (not safe))
                (_K281263281311_ _arity281320_))
              (let () (declare (not safe)) (_E281262281271_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self281143_ _stx281144_ _args281145_)
        (let* ((_self281146281154_ _self281143_)
               (_E281148281158_
                (lambda () (error '"No clause matching" _self281146281154_)))
               (_K281149281242_
                (lambda (_dispatch281161_ _table281162_)
                  (let* ((_g281163281172_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch281161_)))
                         (_else281165281180_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch281161_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx281144_))))
                         (_K281167281226_
                          (lambda (_main281183_ _keys281184_)
                            (let ((_g287775_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx281144_
                                      _args281145_))))
                              (begin
                                (let ((_g287776_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g287775_)
                                             (##vector-length _g287775_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g287776_ 2)))
                                      (error "Context expects 2 values"
                                             _g287776_)))
                                (let ((_pargs281186_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g287775_ 0)))
                                      (_kwargs281187_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g287775_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main281183_))
                                    (if _table281162_
                                        (let ((_xargs281194_
                                               (map (lambda (_key281189_)
                                                      (let ((_$e281191_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key281189_ _kwargs281187_))))
                (if _$e281191_ (values _$e281191_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys281184_)))
                                          (for-each
                                           (lambda (_kw281196_)
                                             (if (memq (car _kw281196_)
                                                       _keys281184_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx281144_
                                                    _keys281184_
                                                    _kw281196_))))
                                           _kwargs281187_)
                                          (let ((__tmp287777
                                                 (let ((__tmp287778
                                                        (let ((__tmp287779
                                                               (let ((__tmp287784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287785
                                     (let ()
                                       (declare (not safe))
                                       (cons _main281183_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp287785)))
                             (__tmp287780
                              (let ((__tmp287782
                                     (let ((__tmp287783
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp287783)))
                                    (__tmp287781
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs281186_
                                               _xargs281194_))))
                                (declare (not safe))
                                (cons __tmp287782 __tmp287781))))
                         (declare (not safe))
                         (cons __tmp287784 __tmp287780))))
                  (declare (not safe))
                  (cons '%#call __tmp287779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp287778
                                                    _stx281144_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp287777)))
                                        (let* ((_kwt281198_
                                                (let ((__tmp287786
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp287786)))
                                               (_kwvars281201_
                                                (map (lambda (_g287787_)
                                                       (let ((__tmp287788
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp287788)))
                                                     _kwargs281187_))
                                               (_kwbind281206_
                                                (map (lambda (_kw281203_
                                                              _kwvar281204_)
                                                       (let ((__tmp287791
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar281204_ '())))
                     (__tmp287789
                      (let ((__tmp287790 (cdr _kw281203_)))
                        (declare (not safe))
                        (cons __tmp287790 '()))))
                 (declare (not safe))
                 (cons __tmp287791 __tmp287789)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs281187_
                                                     _kwvars281201_))
                                               (_kwset281211_
                                                (map (lambda (_kw281208_
                                                              _kwvar281209_)
                                                       (let ((__tmp287792
                                                              (let ((__tmp287793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp287801
                                    (let ((__tmp287802
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt281198_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287802)))
                                   (__tmp287794
                                    (let ((__tmp287798
                                           (let ((__tmp287799
                                                  (let ((__tmp287800
                                                         (car _kw281208_)))
                                                    (declare (not safe))
                                                    (cons __tmp287800 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp287799)))
                                          (__tmp287795
                                           (let ((__tmp287796
                                                  (let ((__tmp287797
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar281209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp287797))))
                                             (declare (not safe))
                                             (cons __tmp287796 '()))))
                                      (declare (not safe))
                                      (cons __tmp287798 __tmp287795))))
                               (declare (not safe))
                               (cons __tmp287801 __tmp287794))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp287793))))
                 (declare (not safe))
                 (cons '%#call __tmp287792)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs281187_
                                                     _kwvars281201_))
                                               (_xkwargs281216_
                                                (map (lambda (_kw281213_
                                                              _kwvar281214_)
                                                       (let ((__tmp287805
                                                              (car _kw281213_))
                                                             (__tmp287803
                                                              (let ((__tmp287804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar281214_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp287804))))
                 (declare (not safe))
                 (cons __tmp287805 __tmp287803)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs281187_
                                                     _kwvars281201_))
                                               (_xargs281223_
                                                (map (lambda (_key281218_)
                                                       (let ((_$e281220_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key281218_ _xkwargs281216_))))
                 (if _$e281220_ (values _$e281220_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys281184_)))
                                          (let ((__tmp287806
                                                 (let ((__tmp287807
                                                        (let ((__tmp287808
                                                               (let ((__tmp287809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287810
                                     (let ((__tmp287811
                                            (let ((__tmp287825
                                                   (let ((__tmp287826
                                                          (let ((__tmp287836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt281198_ '())))
                        (__tmp287827
                         (let ((__tmp287828
                                (let ((__tmp287829
                                       (let ((__tmp287830
                                              (let ((__tmp287831
                                                     (let ((__tmp287833
                                                            (let ((__tmp287834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287835 (length _kwargs281187_)))
                             (declare (not safe))
                             (cons __tmp287835 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp287834)))
                   (__tmp287832
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp287833 __tmp287832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp287831))))
                                         (declare (not safe))
                                         (cons '%#call __tmp287830))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp287829
                                   _stx281144_))))
                           (declare (not safe))
                           (cons __tmp287828 '()))))
                    (declare (not safe))
                    (cons __tmp287836 __tmp287827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287826 '())))
                                                  (__tmp287812
                                                   (let ((__tmp287813
                                                          (let ((__tmp287814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287815
                                (let ((__tmp287816
                                       (let ((__tmp287817
                                              (let ((__tmp287818
                                                     (let ((__tmp287823
                                                            (let ((__tmp287824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main281183_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp287824)))
                   (__tmp287819
                    (let ((__tmp287821
                           (let ((__tmp287822
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt281198_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp287822)))
                          (__tmp287820
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs281186_ _xargs281223_))))
                      (declare (not safe))
                      (cons __tmp287821 __tmp287820))))
               (declare (not safe))
               (cons __tmp287823 __tmp287819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp287818))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp287817
                                          _stx281144_))))
                                  (declare (not safe))
                                  (cons __tmp287816 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp287815 _kwset281211_))))
                    (declare (not safe))
                    (cons '%#begin __tmp287814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287813 '()))))
                                              (declare (not safe))
                                              (cons __tmp287825 __tmp287812))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp287811))))
                                (declare (not safe))
                                (cons __tmp287810 '()))))
                         (declare (not safe))
                         (cons _kwbind281206_ __tmp287809))))
                  (declare (not safe))
                  (cons '%#let-values __tmp287808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp287807
                                                    _stx281144_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp287806)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g281163281172_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e281168281229_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g281163281172_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e281169281232_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g281163281172_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys281235_ _e281169281232_)
                               (_e281170281237_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g281163281172_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main281240_ _e281170281237_))
                          (declare (not safe))
                          (_K281167281226_ _main281240_ _keys281235_))
                        (let () (declare (not safe)) (_else281165281180_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281146281154_
                 'gxc#!kw-lambda::t))
              (let* ((_e281150281245_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281146281154_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e281151281248_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281146281154_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table281251_ _e281151281248_)
                     (_e281152281253_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281146281154_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch281256_ _e281152281253_))
                (declare (not safe))
                (_K281149281242_ _dispatch281256_ _table281251_))
              (let () (declare (not safe)) (_E281148281158_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx280756_ _args280757_)
        (let _lp280759_ ((_rest280761_ _args280757_)
                         (_pargs280762_ '())
                         (_kwargs280763_ '()))
          (let* ((___stx286870286871_ _rest280761_)
                 (_g280769280821_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx286870286871_)))))
            (let ((___kont286872286873_
                   (lambda (_L281000_ _L281001_)
                     (let ((__tmp287837
                            (let ()
                              (declare (not safe))
                              (cons _L281001_ _pargs280762_))))
                       (declare (not safe))
                       (_lp280759_ _L281000_ __tmp287837 _kwargs280763_))))
                  (___kont286874286875_
                   (lambda (_L280946_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L280946_ _pargs280762_))
                             (reverse _kwargs280763_))))
                  (___kont286876286877_
                   (lambda (_L280893_ _L280894_ _L280895_)
                     (let ((_kw280912_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L280895_))))
                       (if (assq _kw280912_ _kwargs280763_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx280756_
                              _kw280912_))
                           (let ((__tmp287838
                                  (let ((__tmp287839
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw280912_ _L280894_))))
                                    (declare (not safe))
                                    (cons __tmp287839 _kwargs280763_))))
                             (declare (not safe))
                             (_lp280759_
                              _L280893_
                              _pargs280762_
                              __tmp287838))))))
                  (___kont286878286879_
                   (lambda (_L280841_ _L280842_)
                     (let ((__tmp287840
                            (let ()
                              (declare (not safe))
                              (cons _L280842_ _pargs280762_))))
                       (declare (not safe))
                       (_lp280759_ _L280841_ __tmp287840 _kwargs280763_))))
                  (___kont286880286881_
                   (lambda ()
                     (values (reverse _pargs280762_)
                             (reverse _kwargs280763_)))))
              (let* ((_g280768280828_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx286870286871_))
                            (___kont286880286881_)
                            (let () (declare (not safe)) (_g280769280821_)))))
                     (___match286977286978_
                      (lambda (_e280800280861_
                               _hd280801280864_
                               _tl280802280866_
                               _e280803280869_
                               _hd280804280872_
                               _tl280805280874_
                               _e280806280877_
                               _hd280807280880_
                               _tl280808280882_
                               _e280809280885_
                               _hd280810280888_
                               _tl280811280890_)
                        (let ((_L280893_ _tl280811280890_)
                              (_L280894_ _hd280810280888_)
                              (_L280895_ _hd280807280880_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L280895_))
                              (___kont286876286877_
                               _L280893_
                               _L280894_
                               _L280895_)
                              (___kont286878286879_
                               _tl280802280866_
                               _hd280801280864_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx286870286871_))
                    (let ((_e280773280965_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx286870286871_))))
                      (let ((_tl280775280970_
                             (let ()
                               (declare (not safe))
                               (##cdr _e280773280965_)))
                            (_hd280774280968_
                             (let ()
                               (declare (not safe))
                               (##car _e280773280965_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd280774280968_))
                            (let ((_e280776280973_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd280774280968_))))
                              (let ((_tl280778280978_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e280776280973_)))
                                    (_hd280777280976_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e280776280973_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd280777280976_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd280777280976_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl280778280978_))
                                            (let ((_e280779280981_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl280778280978_))))
                                              (let ((_tl280781280986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e280779280981_)))
                                                    (_hd280780280984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e280779280981_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd280780280984_))
                                                    (let ((_e280782280989_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd280780280984_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e280782280989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl280781280986_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl280775280970_))
                          (let ((_e280783280992_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl280775280970_))))
                            (let ((_tl280785280997_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e280783280992_)))
                                  (_hd280784280995_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e280783280992_))))
                              (___kont286872286873_
                               _tl280785280997_
                               _hd280784280995_)))
                          (___kont286878286879_
                           _tl280775280970_
                           _hd280774280968_))
                      (___kont286878286879_ _tl280775280970_ _hd280774280968_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e280782280989_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl280781280986_))
                          (___kont286874286875_ _tl280775280970_)
                          (___kont286878286879_
                           _tl280775280970_
                           _hd280774280968_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl280781280986_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl280775280970_))
                              (let ((_e280809280885_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl280775280970_))))
                                (let ((_tl280811280890_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e280809280885_)))
                                      (_hd280810280888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e280809280885_))))
                                  (___match286977286978_
                                   _e280773280965_
                                   _hd280774280968_
                                   _tl280775280970_
                                   _e280776280973_
                                   _hd280777280976_
                                   _tl280778280978_
                                   _e280779280981_
                                   _hd280780280984_
                                   _tl280781280986_
                                   _e280809280885_
                                   _hd280810280888_
                                   _tl280811280890_)))
                              (___kont286878286879_
                               _tl280775280970_
                               _hd280774280968_))
                          (___kont286878286879_
                           _tl280775280970_
                           _hd280774280968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl280781280986_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl280775280970_))
                                                            (let ((_e280809280885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl280775280970_))))
                      (let ((_tl280811280890_
                             (let ()
                               (declare (not safe))
                               (##cdr _e280809280885_)))
                            (_hd280810280888_
                             (let ()
                               (declare (not safe))
                               (##car _e280809280885_))))
                        (___match286977286978_
                         _e280773280965_
                         _hd280774280968_
                         _tl280775280970_
                         _e280776280973_
                         _hd280777280976_
                         _tl280778280978_
                         _e280779280981_
                         _hd280780280984_
                         _tl280781280986_
                         _e280809280885_
                         _hd280810280888_
                         _tl280811280890_)))
                    (___kont286878286879_ _tl280775280970_ _hd280774280968_))
                (___kont286878286879_ _tl280775280970_ _hd280774280968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont286878286879_
                                             _tl280775280970_
                                             _hd280774280968_))
                                        (___kont286878286879_
                                         _tl280775280970_
                                         _hd280774280968_))
                                    (___kont286878286879_
                                     _tl280775280970_
                                     _hd280774280968_))))
                            (___kont286878286879_
                             _tl280775280970_
                             _hd280774280968_))))
                    (let () (declare (not safe)) (_g280768280828_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self280752_ _stx280753_ _args280754_)
        (let () (declare (not safe)) (gxc#xform-call% _stx280753_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
