(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708271957)
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
                                         (let ((_e282568282585_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx286721286722_))))
                                           (let ((_tl282566282590_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e282568282585_)))
                                                 (_hd282567282588_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e282568282585_))))
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
                                                      _tl282566282590_)
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
                (let ((_e282478282504_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx286739286740_))))
                  (let ((_tl282476282509_
                         (let () (declare (not safe)) (##cdr _e282478282504_)))
                        (_hd282477282507_
                         (let ()
                           (declare (not safe))
                           (##car _e282478282504_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl282476282509_))
                        (let ((_e282481282512_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl282476282509_))))
                          (let ((_tl282479282517_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e282481282512_)))
                                (_hd282480282515_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e282481282512_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd282480282515_))
                                (let ((_e282484282520_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd282480282515_))))
                                  (let ((_tl282482282525_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e282484282520_)))
                                        (_hd282483282523_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e282484282520_))))
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
                                                   _tl282482282525_))
                                                (let ((_e282487282528_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl282482282525_))))
                                                  (let ((_tl282485282533_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e282487282528_)))
                                                        (_hd282486282531_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e282487282528_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282485282533_))
                                                        (___kont286741286742_
                                                         _tl282479282517_
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
                      (let ((_e282432282442_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282428282440_))))
                        (let ((_hd282431282445_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282432282442_)))
                              (_tl282430282447_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282432282442_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl282430282447_))
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
                                       (let ((__tmp287010
                                              (let ((__tmp287011
                                                     (let ((__tmp287013
                                                            (let ((__tmp287014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287015
                                  (##structure-ref
                                   _klass282461_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp287015 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp287014)))
                   (__tmp287012
                    (let () (declare (not safe)) (cons _object282463_ '()))))
               (declare (not safe))
               (cons __tmp287013 __tmp287012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp287011))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp287010
                                          _stx282424_))
                                       (if (##structure-ref
                                            _klass282461_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp287004
                                                  (let ((__tmp287005
                                                         (let ((__tmp287007
                                                                (let ((__tmp287008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287009
                                      (##structure-ref
                                       _klass282461_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp287009 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp287008)))
                       (__tmp287006
                        (let ()
                          (declare (not safe))
                          (cons _object282463_ '()))))
                   (declare (not safe))
                   (cons __tmp287007 __tmp287006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp287005))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287004
                                              _stx282424_))
                                           (let ((__tmp286995
                                                  (let ((__tmp286996
                                                         (let ((__tmp287002
                                                                (let ((__tmp287003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287003)))
                       (__tmp286997
                        (let ((__tmp286999
                               (let ((__tmp287000
                                      (let ((__tmp287001
                                             (##structure-ref
                                              _self282423_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp287001 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp287000)))
                              (__tmp286998
                               (let ()
                                 (declare (not safe))
                                 (cons _object282463_ '()))))
                          (declare (not safe))
                          (cons __tmp286999 __tmp286998))))
                   (declare (not safe))
                   (cons __tmp287002 __tmp286997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp286996))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp286995
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
                          (let ((_e282432282442_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g282428282440_))))
                            (let ((_hd282431282445_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e282432282442_)))
                                  (_tl282430282447_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e282432282442_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl282430282447_))
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
                                           (let ((__tmp287032
                                                  (let ((__tmp287033
                                                         (let ((__tmp287035
                                                                (let ((__tmp287036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287037
                                      (##structure-ref
                                       _klass282461_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp287037 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp287036)))
                       (__tmp287034
                        (let ()
                          (declare (not safe))
                          (cons _object282463_ '()))))
                   (declare (not safe))
                   (cons __tmp287035 __tmp287034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp287033))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287032
                                              _stx282424_))
                                           (if (##structure-ref
                                                _klass282461_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp287026
                                                      (let ((__tmp287027
                                                             (let ((__tmp287029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287030
                                   (let ((__tmp287031
                                          (##structure-ref
                                           _klass282461_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp287031 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp287030)))
                           (__tmp287028
                            (let ()
                              (declare (not safe))
                              (cons _object282463_ '()))))
                       (declare (not safe))
                       (cons __tmp287029 __tmp287028))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp287027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287026
                                                  _stx282424_))
                                               (let ((__tmp287017
                                                      (let ((__tmp287018
                                                             (let ((__tmp287024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287025
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287025)))
                           (__tmp287019
                            (let ((__tmp287021
                                   (let ((__tmp287022
                                          (let ((__tmp287023
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self282423_
                                                    __id286701
                                                    __t286700
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp287023 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp287022)))
                                  (__tmp287020
                                   (let ()
                                     (declare (not safe))
                                     (cons _object282463_ '()))))
                              (declare (not safe))
                              (cons __tmp287021 __tmp287020))))
                       (declare (not safe))
                       (cons __tmp287024 __tmp287019))))
                (declare (not safe))
                (cons '%#call __tmp287018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287017
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
                          (let ((__tmp287146 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp287146)))
                         (_ctor-impl282162_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass282147_
                             _ctor282159_))))
                     (let ((__tmp287147
                            (let ((__tmp287148
                                   (let ((__tmp287216
                                          (let ((__tmp287217
                                                 (let ((__tmp287219
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj282161_
                                                                '())))
                                                       (__tmp287218
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object282153_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp287219
                                                         __tmp287218))))
                                            (declare (not safe))
                                            (cons __tmp287217 '())))
                                         (__tmp287149
                                          (let ((__tmp287150
                                                 (let ((__tmp287151
                                                        (let ((__tmp287155
                                                               (if _ctor-impl282162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287210
                                  (let ((__tmp287214
                                         (let ((__tmp287215
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl282162_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287215)))
                                        (__tmp287211
                                         (let ((__tmp287212
                                                (let ((__tmp287213
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj282161_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp287213))))
                                           (declare (not safe))
                                           (cons __tmp287212 _args282151_))))
                                    (declare (not safe))
                                    (cons __tmp287214 __tmp287211))))
                             (declare (not safe))
                             (cons '%#call __tmp287210))
                           (let* ((_$ctor282164_
                                   (let ((__tmp287156 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp287156)))
                                  (__tmp287157
                                   (let ((__tmp287192
                                          (let ((__tmp287193
                                                 (let ((__tmp287209
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor282164_
                                                                '())))
                                                       (__tmp287194
                                                        (let ((__tmp287195
                                                               (let ((__tmp287196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287207
                                     (let ((__tmp287208
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287208)))
                                    (__tmp287197
                                     (let ((__tmp287204
                                            (let ((__tmp287205
                                                   (let ((__tmp287206
                                                          (##structure-ref
                                                           _self282143_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp287206 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp287205)))
                                           (__tmp287198
                                            (let ((__tmp287202
                                                   (let ((__tmp287203
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj282161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287203)))
                                                  (__tmp287199
                                                   (let ((__tmp287200
                                                          (let ((__tmp287201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor282159_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp287201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287200 '()))))
                                              (declare (not safe))
                                              (cons __tmp287202 __tmp287199))))
                                       (declare (not safe))
                                       (cons __tmp287204 __tmp287198))))
                                (declare (not safe))
                                (cons __tmp287207 __tmp287197))))
                         (declare (not safe))
                         (cons '%#call __tmp287196))))
                  (declare (not safe))
                  (cons __tmp287195 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287209
                                                         __tmp287194))))
                                            (declare (not safe))
                                            (cons __tmp287193 '())))
                                         (__tmp287158
                                          (let ((__tmp287159
                                                 (let ((__tmp287160
                                                        (let ((__tmp287190
                                                               (let ((__tmp287191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor282164_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp287191)))
                      (__tmp287161
                       (let ((__tmp287183
                              (let ((__tmp287184
                                     (let ((__tmp287188
                                            (let ((__tmp287189
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor282164_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp287189)))
                                           (__tmp287185
                                            (let ((__tmp287186
                                                   (let ((__tmp287187
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj282161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287187))))
                                              (declare (not safe))
                                              (cons __tmp287186
                                                    _args282151_))))
                                       (declare (not safe))
                                       (cons __tmp287188 __tmp287185))))
                                (declare (not safe))
                                (cons '%#call __tmp287184)))
                             (__tmp287162
                              (let ((__tmp287163
                                     (let ((__tmp287164
                                            (let ((__tmp287181
                                                   (let ((__tmp287182
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287182)))
                                                  (__tmp287165
                                                   (let ((__tmp287179
                                                          (let ((__tmp287180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp287180)))
                 (__tmp287166
                  (let ((__tmp287177
                         (let ((__tmp287178
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp287178)))
                        (__tmp287167
                         (let ((__tmp287174
                                (let ((__tmp287175
                                       (let ((__tmp287176
                                              (##structure-ref
                                               _self282143_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp287176 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287175)))
                               (__tmp287168
                                (let ((__tmp287172
                                       (let ((__tmp287173
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp287173)))
                                      (__tmp287169
                                       (let ((__tmp287170
                                              (let ((__tmp287171
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor282159_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp287171))))
                                         (declare (not safe))
                                         (cons __tmp287170 '()))))
                                  (declare (not safe))
                                  (cons __tmp287172 __tmp287169))))
                           (declare (not safe))
                           (cons __tmp287174 __tmp287168))))
                    (declare (not safe))
                    (cons __tmp287177 __tmp287167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287179
                                                           __tmp287166))))
                                              (declare (not safe))
                                              (cons __tmp287181 __tmp287165))))
                                       (declare (not safe))
                                       (cons '%#call __tmp287164))))
                                (declare (not safe))
                                (cons __tmp287163 '()))))
                         (declare (not safe))
                         (cons __tmp287183 __tmp287162))))
                  (declare (not safe))
                  (cons __tmp287190 __tmp287161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp287160))))
                                            (declare (not safe))
                                            (cons __tmp287159 '()))))
                                     (declare (not safe))
                                     (cons __tmp287192 __tmp287158))))
                             (declare (not safe))
                             (cons '%#let-values __tmp287157))))
                      (__tmp287152
                       (let ((__tmp287153
                              (let ((__tmp287154
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj282161_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp287154))))
                         (declare (not safe))
                         (cons __tmp287153 '()))))
                  (declare (not safe))
                  (cons __tmp287155 __tmp287152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp287151))))
                                            (declare (not safe))
                                            (cons __tmp287150 '()))))
                                     (declare (not safe))
                                     (cons __tmp287216 __tmp287149))))
                              (declare (not safe))
                              (cons '%#let-values __tmp287148))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp287147 _stx282144_))))
                 _$e282156_)
                (let ((_$e282166_
                       (##structure-ref _klass282147_ '9 gxc#!class::t '#f)))
                  (if _$e282166_
                      ((lambda (_metaclass282169_)
                         (let* ((_$obj282171_
                                 (let ((__tmp287108 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp287108)))
                                (_metakons282173_
                                 (let ((__tmp287109
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx282144_
                                           _metaclass282169_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp287109
                                    'instance-init!))))
                           (let ((__tmp287110
                                  (let ((__tmp287111
                                         (let ((__tmp287142
                                                (let ((__tmp287143
                                                       (let ((__tmp287145
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj282171_ '())))
                     (__tmp287144
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object282153_ '()))))
                 (declare (not safe))
                 (cons __tmp287145 __tmp287144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287143 '())))
                                               (__tmp287112
                                                (let ((__tmp287113
                                                       (let ((__tmp287114
                                                              (let ((__tmp287118
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
                                 (let ((__tmp287119
                                        (let ((__tmp287130
                                               (let ((__tmp287131
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp287131)))
                                              (__tmp287120
                                               (let ((__tmp287127
                                                      (let ((__tmp287128
                                                             (let ((__tmp287129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self282143_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp287129 '()))))
                (declare (not safe))
                (cons '%#ref __tmp287128)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp287121
                                                      (let ((__tmp287125
                                                             (let ((__tmp287126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp287126)))
                    (__tmp287122
                     (let ((__tmp287123
                            (let ((__tmp287124
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj282171_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287124))))
                       (declare (not safe))
                       (cons __tmp287123 _args282151_))))
                (declare (not safe))
                (cons __tmp287125 __tmp287122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287127
                                                       __tmp287121))))
                                          (declare (not safe))
                                          (cons __tmp287130 __tmp287120))))
                                   (declare (not safe))
                                   (cons '%#call __tmp287119))))
                            (__tmp287115
                             (let ((__tmp287116
                                    (let ((__tmp287117
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj282171_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287117))))
                               (declare (not safe))
                               (cons __tmp287116 '()))))
                        (declare (not safe))
                        (cons __tmp287118 __tmp287115))))
                 (declare (not safe))
                 (cons '%#begin __tmp287114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287113 '()))))
                                           (declare (not safe))
                                           (cons __tmp287142 __tmp287112))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp287111))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp287110 _stx282144_))))
                       _$e282166_)
                      (if (##structure-ref _klass282147_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args282151_) _fields282149_)
                              (let ((__tmp287100
                                     (let ((__tmp287101
                                            (let ((__tmp287106
                                                   (let ((__tmp287107
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287107)))
                                                  (__tmp287102
                                                   (let ((__tmp287103
                                                          (let ((__tmp287104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287105
                                (##structure-ref
                                 _self282143_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp287105 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp287104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287103
                                                           _args282151_))))
                                              (declare (not safe))
                                              (cons __tmp287106 __tmp287102))))
                                       (declare (not safe))
                                       (cons '%#call __tmp287101))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp287100
                                 _stx282144_))
                              (let ((__tmp287099
                                     (##structure-ref
                                      _self282143_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp287098
                                     (length (##structure-ref
                                              _klass282147_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx282144_
                                 __tmp287099
                                 __tmp287098)))
                          (let ((_$obj282176_
                                 (let ((__tmp287047 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp287047))))
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
                                               (let ((__tmp287049
                                                      (let ((__tmp287050
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off282295_ _L282261_))))
                (declare (not safe))
                (cons __tmp287050 _initializers282181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp282178_
                                                  _L282260_
                                                  __tmp287049))
                                               (let ((__tmp287048
                                                      (##structure-ref
                                                       _self282143_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx282144_
                                                  __tmp287048
                                                  _slot282293_))))))
                                      (___kont286781286782_
                                       (lambda ()
                                         (let ((__tmp287051
                                                (let ((__tmp287052
                                                       (let ((__tmp287075
                                                              (let ((__tmp287076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp287078
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj282176_ '())))
                                   (__tmp287077
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object282153_ '()))))
                               (declare (not safe))
                               (cons __tmp287078 __tmp287077))))
                        (declare (not safe))
                        (cons __tmp287076 '())))
                     (__tmp287053
                      (let ((__tmp287054
                             (let ((__tmp287055
                                    (let ((__tmp287072
                                           (let ((__tmp287073
                                                  (let ((__tmp287074
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj282176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp287074))))
                                             (declare (not safe))
                                             (cons __tmp287073 '())))
                                          (__tmp287056
                                           (let ((__tmp287057
                                                  (lambda (_i282220_ _r282221_)
                                                    (let ((__tmp287058
                                                           (let ((__tmp287059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287069
                                 (let ((__tmp287070
                                        (let ((__tmp287071
                                               (##structure-ref
                                                _self282143_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp287071 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp287070)))
                                (__tmp287060
                                 (let ((__tmp287066
                                        (let ((__tmp287067
                                               (let ((__tmp287068
                                                      (car _i282220_)))
                                                 (declare (not safe))
                                                 (cons __tmp287068 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp287067)))
                                       (__tmp287061
                                        (let ((__tmp287064
                                               (let ((__tmp287065
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj282176_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp287065)))
                                              (__tmp287062
                                               (let ((__tmp287063
                                                      (cdr _i282220_)))
                                                 (declare (not safe))
                                                 (cons __tmp287063 '()))))
                                          (declare (not safe))
                                          (cons __tmp287064 __tmp287062))))
                                   (declare (not safe))
                                   (cons __tmp287066 __tmp287061))))
                            (declare (not safe))
                            (cons __tmp287069 __tmp287060))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp287059))))
              (declare (not safe))
              (cons __tmp287058 _r282221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp287057
                                                     '()
                                                     _initializers282181_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp287072 __tmp287056))))
                               (declare (not safe))
                               (cons '%#begin __tmp287055))))
                        (declare (not safe))
                        (cons __tmp287054 '()))))
                 (declare (not safe))
                 (cons __tmp287075 __tmp287053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp287052))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp287051
                                            _stx282144_))))
                                      (___kont286783286784_
                                       (lambda ()
                                         (let ((__tmp287079
                                                (let ((__tmp287080
                                                       (let ((__tmp287094
                                                              (let ((__tmp287095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp287097
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj282176_ '())))
                                   (__tmp287096
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object282153_ '()))))
                               (declare (not safe))
                               (cons __tmp287097 __tmp287096))))
                        (declare (not safe))
                        (cons __tmp287095 '())))
                     (__tmp287081
                      (let ((__tmp287082
                             (let ((__tmp287083
                                    (let ((__tmp287087
                                           (let ((__tmp287088
                                                  (let ((__tmp287092
                                                         (let ((__tmp287093
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp287093)))
                (__tmp287089
                 (let ((__tmp287090
                        (let ((__tmp287091
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj282176_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287091))))
                   (declare (not safe))
                   (cons __tmp287090 _args282151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287092
                                                          __tmp287089))))
                                             (declare (not safe))
                                             (cons '%#call __tmp287088)))
                                          (__tmp287084
                                           (let ((__tmp287085
                                                  (let ((__tmp287086
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj282176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp287086))))
                                             (declare (not safe))
                                             (cons __tmp287085 '()))))
                                      (declare (not safe))
                                      (cons __tmp287087 __tmp287084))))
                               (declare (not safe))
                               (cons '%#begin __tmp287083))))
                        (declare (not safe))
                        (cons __tmp287082 '()))))
                 (declare (not safe))
                 (cons __tmp287094 __tmp287081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp287080))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp287079
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
                                          (lambda (_e282192282228_
                                                   _hd282191282231_
                                                   _tl282190282233_
                                                   _e282195282236_
                                                   _hd282194282239_
                                                   _tl282193282241_
                                                   _e282198282244_
                                                   _hd282197282247_
                                                   _tl282196282249_
                                                   _e282201282252_
                                                   _hd282200282255_
                                                   _tl282199282257_)
                                            (let ((_L282260_ _tl282199282257_)
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
                                        (let ((_e282192282228_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx286777286778_))))
                                          (let ((_tl282190282233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e282192282228_)))
                                                (_hd282191282231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e282192282228_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd282191282231_))
                                                (let ((_e282195282236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd282191282231_))))
                                                  (let ((_tl282193282241_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e282195282236_)))
                                                        (_hd282194282239_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e282195282236_))))
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
                          (gx#stx-pair? _tl282193282241_))
                        (let ((_e282198282244_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl282193282241_))))
                          (let ((_tl282196282249_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e282198282244_)))
                                (_hd282197282247_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e282198282244_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl282196282249_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl282190282233_))
                                    (let ((_e282201282252_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl282190282233_))))
                                      (let ((_tl282199282257_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e282201282252_)))
                                            (_hd282200282255_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e282201282252_))))
                                        (___match286814286815_
                                         _e282192282228_
                                         _hd282191282231_
                                         _tl282190282233_
                                         _e282195282236_
                                         _hd282194282239_
                                         _tl282193282241_
                                         _e282198282244_
                                         _hd282197282247_
                                         _tl282196282249_
                                         _e282201282252_
                                         _hd282200282255_
                                         _tl282199282257_)))
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
                              (let ((__tmp287328 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp287328)))
                             (_ctor-impl282162_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass282147_
                                 _ctor282159_))))
                         (let ((__tmp287329
                                (let ((__tmp287330
                                       (let ((__tmp287398
                                              (let ((__tmp287399
                                                     (let ((__tmp287401
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj282161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp287400
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object282153_ '()))))
               (declare (not safe))
               (cons __tmp287401 __tmp287400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287399 '())))
                                             (__tmp287331
                                              (let ((__tmp287332
                                                     (let ((__tmp287333
                                                            (let ((__tmp287337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl282162_
                               (let ((__tmp287392
                                      (let ((__tmp287396
                                             (let ((__tmp287397
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl282162_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287397)))
                                            (__tmp287393
                                             (let ((__tmp287394
                                                    (let ((__tmp287395
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj282161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp287395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287394
                                                     _args282151_))))
                                        (declare (not safe))
                                        (cons __tmp287396 __tmp287393))))
                                 (declare (not safe))
                                 (cons '%#call __tmp287392))
                               (let* ((_$ctor282164_
                                       (let ((__tmp287338
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp287338)))
                                      (__tmp287339
                                       (let ((__tmp287374
                                              (let ((__tmp287375
                                                     (let ((__tmp287391
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor282164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp287376
                    (let ((__tmp287377
                           (let ((__tmp287378
                                  (let ((__tmp287389
                                         (let ((__tmp287390
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287390)))
                                        (__tmp287379
                                         (let ((__tmp287386
                                                (let ((__tmp287387
                                                       (let ((__tmp287388
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
                 (cons __tmp287388 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp287387)))
                                               (__tmp287380
                                                (let ((__tmp287384
                                                       (let ((__tmp287385
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj282161_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287385)))
              (__tmp287381
               (let ((__tmp287382
                      (let ((__tmp287383
                             (let ()
                               (declare (not safe))
                               (cons _ctor282159_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp287383))))
                 (declare (not safe))
                 (cons __tmp287382 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287384
                                                        __tmp287381))))
                                           (declare (not safe))
                                           (cons __tmp287386 __tmp287380))))
                                    (declare (not safe))
                                    (cons __tmp287389 __tmp287379))))
                             (declare (not safe))
                             (cons '%#call __tmp287378))))
                      (declare (not safe))
                      (cons __tmp287377 '()))))
               (declare (not safe))
               (cons __tmp287391 __tmp287376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287375 '())))
                                             (__tmp287340
                                              (let ((__tmp287341
                                                     (let ((__tmp287342
                                                            (let ((__tmp287372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287373
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor282164_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp287373)))
                          (__tmp287343
                           (let ((__tmp287365
                                  (let ((__tmp287366
                                         (let ((__tmp287370
                                                (let ((__tmp287371
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor282164_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp287371)))
                                               (__tmp287367
                                                (let ((__tmp287368
                                                       (let ((__tmp287369
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj282161_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287368
                                                        _args282151_))))
                                           (declare (not safe))
                                           (cons __tmp287370 __tmp287367))))
                                    (declare (not safe))
                                    (cons '%#call __tmp287366)))
                                 (__tmp287344
                                  (let ((__tmp287345
                                         (let ((__tmp287346
                                                (let ((__tmp287363
                                                       (let ((__tmp287364
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287364)))
              (__tmp287347
               (let ((__tmp287361
                      (let ((__tmp287362
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp287362)))
                     (__tmp287348
                      (let ((__tmp287359
                             (let ((__tmp287360
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp287360)))
                            (__tmp287349
                             (let ((__tmp287356
                                    (let ((__tmp287357
                                           (let ((__tmp287358
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self282143_
                                                     __id286704
                                                     __t286703
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp287358 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287357)))
                                   (__tmp287350
                                    (let ((__tmp287354
                                           (let ((__tmp287355
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp287355)))
                                          (__tmp287351
                                           (let ((__tmp287352
                                                  (let ((__tmp287353
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor282159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp287353))))
                                             (declare (not safe))
                                             (cons __tmp287352 '()))))
                                      (declare (not safe))
                                      (cons __tmp287354 __tmp287351))))
                               (declare (not safe))
                               (cons __tmp287356 __tmp287350))))
                        (declare (not safe))
                        (cons __tmp287359 __tmp287349))))
                 (declare (not safe))
                 (cons __tmp287361 __tmp287348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287363
                                                        __tmp287347))))
                                           (declare (not safe))
                                           (cons '%#call __tmp287346))))
                                    (declare (not safe))
                                    (cons __tmp287345 '()))))
                             (declare (not safe))
                             (cons __tmp287365 __tmp287344))))
                      (declare (not safe))
                      (cons __tmp287372 __tmp287343))))
               (declare (not safe))
               (cons '%#if __tmp287342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287341 '()))))
                                         (declare (not safe))
                                         (cons __tmp287374 __tmp287340))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp287339))))
                          (__tmp287334
                           (let ((__tmp287335
                                  (let ((__tmp287336
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj282161_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp287336))))
                             (declare (not safe))
                             (cons __tmp287335 '()))))
                      (declare (not safe))
                      (cons __tmp287337 __tmp287334))))
               (declare (not safe))
               (cons '%#begin __tmp287333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287332 '()))))
                                         (declare (not safe))
                                         (cons __tmp287398 __tmp287331))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp287330))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp287329 _stx282144_))))
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
                                     (let ((__tmp287290 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp287290)))
                                    (_metakons282173_
                                     (let ((__tmp287291
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx282144_
                                               _metaclass282169_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp287291
                                        'instance-init!))))
                               (let ((__tmp287292
                                      (let ((__tmp287293
                                             (let ((__tmp287324
                                                    (let ((__tmp287325
                                                           (let ((__tmp287327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj282171_ '())))
                         (__tmp287326
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object282153_ '()))))
                     (declare (not safe))
                     (cons __tmp287327 __tmp287326))))
              (declare (not safe))
              (cons __tmp287325 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287294
                                                    (let ((__tmp287295
                                                           (let ((__tmp287296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287300
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
                                     (let ((__tmp287301
                                            (let ((__tmp287312
                                                   (let ((__tmp287313
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287313)))
                                                  (__tmp287302
                                                   (let ((__tmp287309
                                                          (let ((__tmp287310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287311
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self282143_
                                   __id286704
                                   __t286703
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp287311 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp287310)))
                 (__tmp287303
                  (let ((__tmp287307
                         (let ((__tmp287308
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp287308)))
                        (__tmp287304
                         (let ((__tmp287305
                                (let ((__tmp287306
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj282171_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287306))))
                           (declare (not safe))
                           (cons __tmp287305 _args282151_))))
                    (declare (not safe))
                    (cons __tmp287307 __tmp287304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287309
                                                           __tmp287303))))
                                              (declare (not safe))
                                              (cons __tmp287312 __tmp287302))))
                                       (declare (not safe))
                                       (cons '%#call __tmp287301))))
                                (__tmp287297
                                 (let ((__tmp287298
                                        (let ((__tmp287299
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj282171_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp287299))))
                                   (declare (not safe))
                                   (cons __tmp287298 '()))))
                            (declare (not safe))
                            (cons __tmp287300 __tmp287297))))
                     (declare (not safe))
                     (cons '%#begin __tmp287296))))
              (declare (not safe))
              (cons __tmp287295 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287324
                                                     __tmp287294))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp287293))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp287292
                                  _stx282144_))))
                           _$e282166_)
                          (if (##structure-ref
                               _klass282147_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args282151_) _fields282149_)
                                  (let ((__tmp287282
                                         (let ((__tmp287283
                                                (let ((__tmp287288
                                                       (let ((__tmp287289
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287289)))
              (__tmp287284
               (let ((__tmp287285
                      (let ((__tmp287286
                             (let ((__tmp287287
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self282143_
                                       __id286704
                                       __t286703
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp287287 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp287286))))
                 (declare (not safe))
                 (cons __tmp287285 _args282151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287288
                                                        __tmp287284))))
                                           (declare (not safe))
                                           (cons '%#call __tmp287283))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp287282
                                     _stx282144_))
                                  (let ((__tmp287281
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self282143_
                                            __id286704
                                            __t286703
                                            '#f)))
                                        (__tmp287280
                                         (length (##structure-ref
                                                  _klass282147_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx282144_
                                     __tmp287281
                                     __tmp287280)))
                              (let ((_$obj282176_
                                     (let ((__tmp287229 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp287229))))
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
                                                   (let ((__tmp287231
                                                          (let ((__tmp287232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off282295_ _L282261_))))
                    (declare (not safe))
                    (cons __tmp287232 _initializers282181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp282178_
                                                      _L282260_
                                                      __tmp287231))
                                                   (let ((__tmp287230
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
                                                      __tmp287230
                                                      _slot282293_))))))
                                          (___kont286823286824_
                                           (lambda ()
                                             (let ((__tmp287233
                                                    (let ((__tmp287234
                                                           (let ((__tmp287257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287258
                                 (let ((__tmp287260
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj282176_ '())))
                                       (__tmp287259
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object282153_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp287260 __tmp287259))))
                            (declare (not safe))
                            (cons __tmp287258 '())))
                         (__tmp287235
                          (let ((__tmp287236
                                 (let ((__tmp287237
                                        (let ((__tmp287254
                                               (let ((__tmp287255
                                                      (let ((__tmp287256
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj282176_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp287256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287255 '())))
                                              (__tmp287238
                                               (let ((__tmp287239
                                                      (lambda (_i282220_
                                                               _r282221_)
                                                        (let ((__tmp287240
                                                               (let ((__tmp287241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287251
                                     (let ((__tmp287252
                                            (let ((__tmp287253
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self282143_
                                                      __id286704
                                                      __t286703
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp287253 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287252)))
                                    (__tmp287242
                                     (let ((__tmp287248
                                            (let ((__tmp287249
                                                   (let ((__tmp287250
                                                          (car _i282220_)))
                                                     (declare (not safe))
                                                     (cons __tmp287250 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp287249)))
                                           (__tmp287243
                                            (let ((__tmp287246
                                                   (let ((__tmp287247
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj282176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287247)))
                                                  (__tmp287244
                                                   (let ((__tmp287245
                                                          (cdr _i282220_)))
                                                     (declare (not safe))
                                                     (cons __tmp287245 '()))))
                                              (declare (not safe))
                                              (cons __tmp287246 __tmp287244))))
                                       (declare (not safe))
                                       (cons __tmp287248 __tmp287243))))
                                (declare (not safe))
                                (cons __tmp287251 __tmp287242))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp287241))))
                  (declare (not safe))
                  (cons __tmp287240 _r282221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp287239
                                                         '()
                                                         _initializers282181_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp287254
                                                  __tmp287238))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp287237))))
                            (declare (not safe))
                            (cons __tmp287236 '()))))
                     (declare (not safe))
                     (cons __tmp287257 __tmp287235))))
              (declare (not safe))
              (cons '%#let-values __tmp287234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp287233
                                                _stx282144_))))
                                          (___kont286825286826_
                                           (lambda ()
                                             (let ((__tmp287261
                                                    (let ((__tmp287262
                                                           (let ((__tmp287276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287277
                                 (let ((__tmp287279
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj282176_ '())))
                                       (__tmp287278
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object282153_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp287279 __tmp287278))))
                            (declare (not safe))
                            (cons __tmp287277 '())))
                         (__tmp287263
                          (let ((__tmp287264
                                 (let ((__tmp287265
                                        (let ((__tmp287269
                                               (let ((__tmp287270
                                                      (let ((__tmp287274
                                                             (let ((__tmp287275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp287275)))
                    (__tmp287271
                     (let ((__tmp287272
                            (let ((__tmp287273
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj282176_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287273))))
                       (declare (not safe))
                       (cons __tmp287272 _args282151_))))
                (declare (not safe))
                (cons __tmp287274 __tmp287271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp287270)))
                                              (__tmp287266
                                               (let ((__tmp287267
                                                      (let ((__tmp287268
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj282176_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp287268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287267 '()))))
                                          (declare (not safe))
                                          (cons __tmp287269 __tmp287266))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp287265))))
                            (declare (not safe))
                            (cons __tmp287264 '()))))
                     (declare (not safe))
                     (cons __tmp287276 __tmp287263))))
              (declare (not safe))
              (cons '%#let-values __tmp287262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp287261
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
                                              (lambda (_e282192282228_
                                                       _hd282191282231_
                                                       _tl282190282233_
                                                       _e282195282236_
                                                       _hd282194282239_
                                                       _tl282193282241_
                                                       _e282198282244_
                                                       _hd282197282247_
                                                       _tl282196282249_
                                                       _e282201282252_
                                                       _hd282200282255_
                                                       _tl282199282257_)
                                                (let ((_L282260_
                                                       _tl282199282257_)
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
                                            (let ((_e282192282228_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx286819286820_))))
                                              (let ((_tl282190282233_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e282192282228_)))
                                                    (_hd282191282231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e282192282228_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd282191282231_))
                                                    (let ((_e282195282236_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd282191282231_))))
                                                      (let ((_tl282193282241_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e282195282236_)))
                    (_hd282194282239_
                     (let () (declare (not safe)) (##car _e282195282236_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd282194282239_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd282194282239_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl282193282241_))
                            (let ((_e282198282244_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl282193282241_))))
                              (let ((_tl282196282249_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e282198282244_)))
                                    (_hd282197282247_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e282198282244_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl282196282249_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl282190282233_))
                                        (let ((_e282201282252_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl282190282233_))))
                                          (let ((_tl282199282257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e282201282252_)))
                                                (_hd282200282255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e282201282252_))))
                                            (___match286856286857_
                                             _e282192282228_
                                             _hd282191282231_
                                             _tl282190282233_
                                             _e282195282236_
                                             _hd282194282239_
                                             _tl282193282241_
                                             _e282198282244_
                                             _hd282197282247_
                                             _tl282196282249_
                                             _e282201282252_
                                             _hd282200282255_
                                             _tl282199282257_)))
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
                      (let ((_e281975281985_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281971281983_))))
                        (let ((_hd281974281988_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281975281985_)))
                              (_tl281973281990_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281975281985_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl281973281990_))
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
                                       (let ((__tmp287480
                                              (let ((__tmp287489
                                                     (if (##structure-ref
                                                          _self281966_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp287481
                                                     (let ((__tmp287486
                                                            (let ((__tmp287487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287488
                                  (##structure-ref
                                   _self281966_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp287488 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp287487)))
                   (__tmp287482
                    (let ((__tmp287484
                           (let ((__tmp287485
                                  (let ()
                                    (declare (not safe))
                                    (cons _field282006_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp287485)))
                          (__tmp287483
                           (let ()
                             (declare (not safe))
                             (cons _object282008_ '()))))
                      (declare (not safe))
                      (cons __tmp287484 __tmp287483))))
               (declare (not safe))
               (cons __tmp287486 __tmp287482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287489
                                                      __tmp287481))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp287480
                                          _stx281967_))
                                       (if (##structure-ref
                                            _klass282004_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp287470
                                                  (let ((__tmp287479
                                                         (if (##structure-ref
                                                              _self281966_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp287471
                                                         (let ((__tmp287476
                                                                (let ((__tmp287477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287478
                                      (##structure-ref
                                       _self281966_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp287478 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287477)))
                       (__tmp287472
                        (let ((__tmp287474
                               (let ((__tmp287475
                                      (let ()
                                        (declare (not safe))
                                        (cons _field282006_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp287475)))
                              (__tmp287473
                               (let ()
                                 (declare (not safe))
                                 (cons _object282008_ '()))))
                          (declare (not safe))
                          (cons __tmp287474 __tmp287473))))
                   (declare (not safe))
                   (cons __tmp287476 __tmp287472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287479
                                                          __tmp287471))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287470
                                              _stx281967_))
                                           (let ((_$e282011_
                                                  (let ((__tmp287404
                                                         (##structure-ref
                                                          _self281966_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass282004_
                                                     __tmp287404))))
                                             (if _$e282011_
                                                 ((lambda (_klass282014_)
                                                    (let ((__tmp287460
                                                           (let ((__tmp287469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self281966_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp287461
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
                                (__tmp287462
                                 (let ((__tmp287464
                                        (let ((__tmp287465
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field282006_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp287465)))
                                       (__tmp287463
                                        (let ()
                                          (declare (not safe))
                                          (cons _object282008_ '()))))
                                   (declare (not safe))
                                   (cons __tmp287464 __tmp287463))))
                            (declare (not safe))
                            (cons __tmp287466 __tmp287462))))
                     (declare (not safe))
                     (cons __tmp287469 __tmp287461))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp287460 _stx281967_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e282011_)
                                                 (if (##structure-ref
                                                      _self281966_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp287414
                                                            (let* ((_$obj282016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287415 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp287415)))
                           (__tmp287416
                            (let ((__tmp287456
                                   (let ((__tmp287457
                                          (let ((__tmp287459
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj282016_ '())))
                                                (__tmp287458
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object282008_ '()))))
                                            (declare (not safe))
                                            (cons __tmp287459 __tmp287458))))
                                     (declare (not safe))
                                     (cons __tmp287457 '())))
                                  (__tmp287417
                                   (let ((__tmp287418
                                          (let ((__tmp287419
                                                 (let ((__tmp287448
                                                        (let ((__tmp287449
                                                               (let ((__tmp287453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287454
                                     (let ((__tmp287455
                                            (##structure-ref
                                             _klass282004_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp287455 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp287454)))
                             (__tmp287450
                              (let ((__tmp287451
                                     (let ((__tmp287452
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj282016_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287452))))
                                (declare (not safe))
                                (cons __tmp287451 '()))))
                         (declare (not safe))
                         (cons __tmp287453 __tmp287450))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp287449)))
               (__tmp287420
                (let ((__tmp287437
                       (let ((__tmp287438
                              (let ((__tmp287445
                                     (let ((__tmp287446
                                            (let ((__tmp287447
                                                   (##structure-ref
                                                    _self281966_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp287447 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp287446)))
                                    (__tmp287439
                                     (let ((__tmp287443
                                            (let ((__tmp287444
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field282006_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp287444)))
                                           (__tmp287440
                                            (let ((__tmp287441
                                                   (let ((__tmp287442
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj282016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287442))))
                                              (declare (not safe))
                                              (cons __tmp287441 '()))))
                                       (declare (not safe))
                                       (cons __tmp287443 __tmp287440))))
                                (declare (not safe))
                                (cons __tmp287445 __tmp287439))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp287438)))
                      (__tmp287421
                       (let ((__tmp287422
                              (let ((__tmp287423
                                     (let ((__tmp287435
                                            (let ((__tmp287436
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp287436)))
                                           (__tmp287424
                                            (let ((__tmp287432
                                                   (let ((__tmp287433
                                                          (let ((__tmp287434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self281966_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp287434 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp287433)))
                                                  (__tmp287425
                                                   (let ((__tmp287430
                                                          (let ((__tmp287431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj282016_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp287431)))
                 (__tmp287426
                  (let ((__tmp287427
                         (let ((__tmp287428
                                (let ((__tmp287429
                                       (##structure-ref
                                        _self281966_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp287429 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp287428))))
                    (declare (not safe))
                    (cons __tmp287427 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287430
                                                           __tmp287426))))
                                              (declare (not safe))
                                              (cons __tmp287432 __tmp287425))))
                                       (declare (not safe))
                                       (cons __tmp287435 __tmp287424))))
                                (declare (not safe))
                                (cons '%#call __tmp287423))))
                         (declare (not safe))
                         (cons __tmp287422 '()))))
                  (declare (not safe))
                  (cons __tmp287437 __tmp287421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287448
                                                         __tmp287420))))
                                            (declare (not safe))
                                            (cons '%#if __tmp287419))))
                                     (declare (not safe))
                                     (cons __tmp287418 '()))))
                              (declare (not safe))
                              (cons __tmp287456 __tmp287417))))
                      (declare (not safe))
                      (cons '%#let-values __tmp287416))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp287414 _stx281967_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp287405
                                                            (let ((__tmp287406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287412
                                  (let ((__tmp287413
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp287413)))
                                 (__tmp287407
                                  (let ((__tmp287408
                                         (let ((__tmp287409
                                                (let ((__tmp287410
                                                       (let ((__tmp287411
                                                              (##structure-ref
                                                               _self281966_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp287411
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp287410))))
                                           (declare (not safe))
                                           (cons __tmp287409 '()))))
                                    (declare (not safe))
                                    (cons _object282008_ __tmp287408))))
                             (declare (not safe))
                             (cons __tmp287412 __tmp287407))))
                      (declare (not safe))
                      (cons '%#call __tmp287406))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp287405 _stx281967_)))))))))
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
                          (let ((_e281975281985_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g281971281983_))))
                            (let ((_hd281974281988_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281975281985_)))
                                  (_tl281973281990_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281975281985_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl281973281990_))
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
                                           (let ((__tmp287568
                                                  (let ((__tmp287577
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
                (__tmp287569
                 (let ((__tmp287574
                        (let ((__tmp287575
                               (let ((__tmp287576
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self281966_
                                         __id286709
                                         __t286706
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp287576 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287575)))
                       (__tmp287570
                        (let ((__tmp287572
                               (let ((__tmp287573
                                      (let ()
                                        (declare (not safe))
                                        (cons _field282006_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp287573)))
                              (__tmp287571
                               (let ()
                                 (declare (not safe))
                                 (cons _object282008_ '()))))
                          (declare (not safe))
                          (cons __tmp287572 __tmp287571))))
                   (declare (not safe))
                   (cons __tmp287574 __tmp287570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287577
                                                          __tmp287569))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287568
                                              _stx281967_))
                                           (if (##structure-ref
                                                _klass282004_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp287558
                                                      (let ((__tmp287567
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
                    (__tmp287559
                     (let ((__tmp287564
                            (let ((__tmp287565
                                   (let ((__tmp287566
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self281966_
                                             __id286709
                                             __t286706
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp287566 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287565)))
                           (__tmp287560
                            (let ((__tmp287562
                                   (let ((__tmp287563
                                          (let ()
                                            (declare (not safe))
                                            (cons _field282006_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp287563)))
                                  (__tmp287561
                                   (let ()
                                     (declare (not safe))
                                     (cons _object282008_ '()))))
                              (declare (not safe))
                              (cons __tmp287562 __tmp287561))))
                       (declare (not safe))
                       (cons __tmp287564 __tmp287560))))
                (declare (not safe))
                (cons __tmp287567 __tmp287559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287558
                                                  _stx281967_))
                                               (let ((_$e282011_
                                                      (let ((__tmp287492
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
                (gxc#!class-slot-find-struct _klass282004_ __tmp287492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e282011_
                                                     ((lambda (_klass282014_)
                                                        (let ((__tmp287548
                                                               (let ((__tmp287557
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
                             (__tmp287549
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
                                    (__tmp287550
                                     (let ((__tmp287552
                                            (let ((__tmp287553
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field282006_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp287553)))
                                           (__tmp287551
                                            (let ()
                                              (declare (not safe))
                                              (cons _object282008_ '()))))
                                       (declare (not safe))
                                       (cons __tmp287552 __tmp287551))))
                                (declare (not safe))
                                (cons __tmp287554 __tmp287550))))
                         (declare (not safe))
                         (cons __tmp287557 __tmp287549))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp287548 _stx281967_)))
              _$e282011_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self281966_
                                                            __checked?286707
                                                            __t286706
                                                            '#f))
                                                         (let ((__tmp287502
                                                                (let* ((_$obj282016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp287503 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp287503)))
                               (__tmp287504
                                (let ((__tmp287544
                                       (let ((__tmp287545
                                              (let ((__tmp287547
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj282016_
                                                             '())))
                                                    (__tmp287546
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object282008_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp287547
                                                      __tmp287546))))
                                         (declare (not safe))
                                         (cons __tmp287545 '())))
                                      (__tmp287505
                                       (let ((__tmp287506
                                              (let ((__tmp287507
                                                     (let ((__tmp287536
                                                            (let ((__tmp287537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287541
                                  (let ((__tmp287542
                                         (let ((__tmp287543
                                                (##structure-ref
                                                 _klass282004_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp287543 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp287542)))
                                 (__tmp287538
                                  (let ((__tmp287539
                                         (let ((__tmp287540
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj282016_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287540))))
                                    (declare (not safe))
                                    (cons __tmp287539 '()))))
                             (declare (not safe))
                             (cons __tmp287541 __tmp287538))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp287537)))
                   (__tmp287508
                    (let ((__tmp287525
                           (let ((__tmp287526
                                  (let ((__tmp287533
                                         (let ((__tmp287534
                                                (let ((__tmp287535
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self281966_
                                                          __id286709
                                                          __t286706
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp287535 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287534)))
                                        (__tmp287527
                                         (let ((__tmp287531
                                                (let ((__tmp287532
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field282006_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp287532)))
                                               (__tmp287528
                                                (let ((__tmp287529
                                                       (let ((__tmp287530
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj282016_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287529 '()))))
                                           (declare (not safe))
                                           (cons __tmp287531 __tmp287528))))
                                    (declare (not safe))
                                    (cons __tmp287533 __tmp287527))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp287526)))
                          (__tmp287509
                           (let ((__tmp287510
                                  (let ((__tmp287511
                                         (let ((__tmp287523
                                                (let ((__tmp287524
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp287524)))
                                               (__tmp287512
                                                (let ((__tmp287520
                                                       (let ((__tmp287521
                                                              (let ((__tmp287522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self281966_
                                __id286709
                                __t286706
                                '#f))))
                        (declare (not safe))
                        (cons __tmp287522 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp287521)))
              (__tmp287513
               (let ((__tmp287518
                      (let ((__tmp287519
                             (let ()
                               (declare (not safe))
                               (cons _$obj282016_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp287519)))
                     (__tmp287514
                      (let ((__tmp287515
                             (let ((__tmp287516
                                    (let ((__tmp287517
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self281966_
                                              __slot286708
                                              __t286706
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp287517 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp287516))))
                        (declare (not safe))
                        (cons __tmp287515 '()))))
                 (declare (not safe))
                 (cons __tmp287518 __tmp287514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp287520
                                                        __tmp287513))))
                                           (declare (not safe))
                                           (cons __tmp287523 __tmp287512))))
                                    (declare (not safe))
                                    (cons '%#call __tmp287511))))
                             (declare (not safe))
                             (cons __tmp287510 '()))))
                      (declare (not safe))
                      (cons __tmp287525 __tmp287509))))
               (declare (not safe))
               (cons __tmp287536 __tmp287508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp287507))))
                                         (declare (not safe))
                                         (cons __tmp287506 '()))))
                                  (declare (not safe))
                                  (cons __tmp287544 __tmp287505))))
                          (declare (not safe))
                          (cons '%#let-values __tmp287504))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp287502 _stx281967_))
                 (let ((__tmp287493
                        (let ((__tmp287494
                               (let ((__tmp287500
                                      (let ((__tmp287501
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp287501)))
                                     (__tmp287495
                                      (let ((__tmp287496
                                             (let ((__tmp287497
                                                    (let ((__tmp287498
                                                           (let ((__tmp287499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self281966_
                             __slot286708
                             __t286706
                             '#f))))
                     (declare (not safe))
                     (cons __tmp287499 '()))))
              (declare (not safe))
              (cons '%#quote __tmp287498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287497 '()))))
                                        (declare (not safe))
                                        (cons _object282008_ __tmp287496))))
                                 (declare (not safe))
                                 (cons __tmp287500 __tmp287495))))
                          (declare (not safe))
                          (cons '%#call __tmp287494))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp287493 _stx281967_)))))))))
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
                      (let ((_e281781281794_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281776281792_))))
                        (let ((_hd281780281797_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281781281794_)))
                              (_tl281779281799_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281781281794_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl281779281799_))
                              (let ((_e281784281802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl281779281799_))))
                                (let ((_hd281783281805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281784281802_)))
                                      (_tl281782281807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281784281802_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl281782281807_))
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
                                               (let ((__tmp287661
                                                      (let ((__tmp287671
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self281771_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp287662
                     (let ((__tmp287668
                            (let ((__tmp287669
                                   (let ((__tmp287670
                                          (##structure-ref
                                           _self281771_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp287670 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287669)))
                           (__tmp287663
                            (let ((__tmp287666
                                   (let ((__tmp287667
                                          (let ()
                                            (declare (not safe))
                                            (cons _field281827_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp287667)))
                                  (__tmp287664
                                   (let ((__tmp287665
                                          (let ()
                                            (declare (not safe))
                                            (cons _value281831_ '()))))
                                     (declare (not safe))
                                     (cons _object281829_ __tmp287665))))
                              (declare (not safe))
                              (cons __tmp287666 __tmp287664))))
                       (declare (not safe))
                       (cons __tmp287668 __tmp287663))))
                (declare (not safe))
                (cons __tmp287671 __tmp287662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287661
                                                  _stx281772_))
                                               (if (##structure-ref
                                                    _klass281825_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp287650
                                                          (let ((__tmp287660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self281771_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp287651
                         (let ((__tmp287657
                                (let ((__tmp287658
                                       (let ((__tmp287659
                                              (##structure-ref
                                               _self281771_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp287659 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287658)))
                               (__tmp287652
                                (let ((__tmp287655
                                       (let ((__tmp287656
                                              (let ()
                                                (declare (not safe))
                                                (cons _field281827_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp287656)))
                                      (__tmp287653
                                       (let ((__tmp287654
                                              (let ()
                                                (declare (not safe))
                                                (cons _value281831_ '()))))
                                         (declare (not safe))
                                         (cons _object281829_ __tmp287654))))
                                  (declare (not safe))
                                  (cons __tmp287655 __tmp287653))))
                           (declare (not safe))
                           (cons __tmp287657 __tmp287652))))
                    (declare (not safe))
                    (cons __tmp287660 __tmp287651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp287650
                                                      _stx281772_))
                                                   (let ((_$e281834_
                                                          (let ((__tmp287580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self281771_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass281825_ __tmp287580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e281834_
                                                         ((lambda (_klass281837_)
                                                            (let ((__tmp287639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287649
                                  (if (##structure-ref
                                       _self281771_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp287640
                                  (let ((__tmp287646
                                         (let ((__tmp287647
                                                (let ((__tmp287648
                                                       (##structure-ref
                                                        _self281771_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp287648 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp287647)))
                                        (__tmp287641
                                         (let ((__tmp287644
                                                (let ((__tmp287645
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field281827_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp287645)))
                                               (__tmp287642
                                                (let ((__tmp287643
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value281831_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object281829_
                                                        __tmp287643))))
                                           (declare (not safe))
                                           (cons __tmp287644 __tmp287642))))
                                    (declare (not safe))
                                    (cons __tmp287646 __tmp287641))))
                             (declare (not safe))
                             (cons __tmp287649 __tmp287640))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp287639 _stx281772_)))
                  _$e281834_)
                 (if (##structure-ref _self281771_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp287591
                            (let* ((_$obj281839_
                                    (let ((__tmp287592 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp287592)))
                                   (__tmp287593
                                    (let ((__tmp287635
                                           (let ((__tmp287636
                                                  (let ((__tmp287638
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj281839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp287637
                 (let () (declare (not safe)) (cons _object281829_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287638
                                                          __tmp287637))))
                                             (declare (not safe))
                                             (cons __tmp287636 '())))
                                          (__tmp287594
                                           (let ((__tmp287595
                                                  (let ((__tmp287596
                                                         (let ((__tmp287627
                                                                (let ((__tmp287628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287632
                                      (let ((__tmp287633
                                             (let ((__tmp287634
                                                    (##structure-ref
                                                     _klass281825_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp287634 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp287633)))
                                     (__tmp287629
                                      (let ((__tmp287630
                                             (let ((__tmp287631
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj281839_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287631))))
                                        (declare (not safe))
                                        (cons __tmp287630 '()))))
                                 (declare (not safe))
                                 (cons __tmp287632 __tmp287629))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp287628)))
                       (__tmp287597
                        (let ((__tmp287615
                               (let ((__tmp287616
                                      (let ((__tmp287624
                                             (let ((__tmp287625
                                                    (let ((__tmp287626
                                                           (##structure-ref
                                                            _self281771_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp287626 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287625)))
                                            (__tmp287617
                                             (let ((__tmp287622
                                                    (let ((__tmp287623
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field281827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp287623)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287618
                                                    (let ((__tmp287620
                                                           (let ((__tmp287621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj281839_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp287621)))
                  (__tmp287619
                   (let () (declare (not safe)) (cons _value281831_ '()))))
              (declare (not safe))
              (cons __tmp287620 __tmp287619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287622
                                                     __tmp287618))))
                                        (declare (not safe))
                                        (cons __tmp287624 __tmp287617))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp287616)))
                              (__tmp287598
                               (let ((__tmp287599
                                      (let ((__tmp287600
                                             (let ((__tmp287613
                                                    (let ((__tmp287614
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp287614)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287601
                                                    (let ((__tmp287610
                                                           (let ((__tmp287611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                  (__tmp287602
                   (let ((__tmp287608
                          (let ((__tmp287609
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj281839_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp287609)))
                         (__tmp287603
                          (let ((__tmp287605
                                 (let ((__tmp287606
                                        (let ((__tmp287607
                                               (##structure-ref
                                                _self281771_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp287607 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp287606)))
                                (__tmp287604
                                 (let ()
                                   (declare (not safe))
                                   (cons _value281831_ '()))))
                            (declare (not safe))
                            (cons __tmp287605 __tmp287604))))
                     (declare (not safe))
                     (cons __tmp287608 __tmp287603))))
              (declare (not safe))
              (cons __tmp287610 __tmp287602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287613
                                                     __tmp287601))))
                                        (declare (not safe))
                                        (cons '%#call __tmp287600))))
                                 (declare (not safe))
                                 (cons __tmp287599 '()))))
                          (declare (not safe))
                          (cons __tmp287615 __tmp287598))))
                   (declare (not safe))
                   (cons __tmp287627 __tmp287597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp287596))))
                                             (declare (not safe))
                                             (cons __tmp287595 '()))))
                                      (declare (not safe))
                                      (cons __tmp287635 __tmp287594))))
                              (declare (not safe))
                              (cons '%#let-values __tmp287593))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp287591 _stx281772_))
                     (let ((__tmp287581
                            (let ((__tmp287582
                                   (let ((__tmp287589
                                          (let ((__tmp287590
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp287590)))
                                         (__tmp287583
                                          (let ((__tmp287584
                                                 (let ((__tmp287586
                                                        (let ((__tmp287587
                                                               (let ((__tmp287588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self281771_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp287588 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp287587)))
               (__tmp287585
                (let () (declare (not safe)) (cons _value281831_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287586
                                                         __tmp287585))))
                                            (declare (not safe))
                                            (cons _object281829_
                                                  __tmp287584))))
                                     (declare (not safe))
                                     (cons __tmp287589 __tmp287583))))
                              (declare (not safe))
                              (cons '%#call __tmp287582))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp287581 _stx281772_)))))))))
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
        (let ((__checked?286714
               (let ((__tmp286717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286713 'checked?))))
                 (if __tmp286717
                     __tmp286717
                     (error '"Unknown slot" 'checked?))))
              (__slot286715
               (let ((__tmp286718
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286713 'slot))))
                 (if __tmp286718 __tmp286718 (error '"Unknown slot" 'slot))))
              (__id286716
               (let ((__tmp286719
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t286713 'id))))
                 (if __tmp286719 __tmp286719 (error '"Unknown slot" 'id)))))
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
                          (let ((_e281781281794_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g281776281792_))))
                            (let ((_hd281780281797_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281781281794_)))
                                  (_tl281779281799_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281781281794_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281779281799_))
                                  (let ((_e281784281802_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281779281799_))))
                                    (let ((_hd281783281805_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281784281802_)))
                                          (_tl281782281807_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281784281802_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281782281807_))
                                          ((lambda (_L281810_ _L281811_)
                                             (let* ((_klass281825_
                                                     (let ((__tmp287672
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self281771_
                                                               __id286716
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
                                                   (let ((__tmp287755
                                                          (let ((__tmp287765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self281771_
                                __checked?286714
                                __t286713
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp287756
                         (let ((__tmp287762
                                (let ((__tmp287763
                                       (let ((__tmp287764
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self281771_
                                                 __id286716
                                                 __t286713
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp287764 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp287763)))
                               (__tmp287757
                                (let ((__tmp287760
                                       (let ((__tmp287761
                                              (let ()
                                                (declare (not safe))
                                                (cons _field281827_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp287761)))
                                      (__tmp287758
                                       (let ((__tmp287759
                                              (let ()
                                                (declare (not safe))
                                                (cons _value281831_ '()))))
                                         (declare (not safe))
                                         (cons _object281829_ __tmp287759))))
                                  (declare (not safe))
                                  (cons __tmp287760 __tmp287758))))
                           (declare (not safe))
                           (cons __tmp287762 __tmp287757))))
                    (declare (not safe))
                    (cons __tmp287765 __tmp287756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp287755
                                                      _stx281772_))
                                                   (if (##structure-ref
                                                        _klass281825_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp287744
                                                              (let ((__tmp287754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self281771_
                                    __checked?286714
                                    __t286713
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp287745
                             (let ((__tmp287751
                                    (let ((__tmp287752
                                           (let ((__tmp287753
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self281771_
                                                     __id286716
                                                     __t286713
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp287753 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287752)))
                                   (__tmp287746
                                    (let ((__tmp287749
                                           (let ((__tmp287750
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field281827_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp287750)))
                                          (__tmp287747
                                           (let ((__tmp287748
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value281831_ '()))))
                                             (declare (not safe))
                                             (cons _object281829_
                                                   __tmp287748))))
                                      (declare (not safe))
                                      (cons __tmp287749 __tmp287747))))
                               (declare (not safe))
                               (cons __tmp287751 __tmp287746))))
                        (declare (not safe))
                        (cons __tmp287754 __tmp287745))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp287744 _stx281772_))
               (let ((_$e281834_
                      (let ((__tmp287674
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
                         __tmp287674))))
                 (if _$e281834_
                     ((lambda (_klass281837_)
                        (let ((__tmp287733
                               (let ((__tmp287743
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self281771_
                                             __checked?286714
                                             __t286713
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp287734
                                      (let ((__tmp287740
                                             (let ((__tmp287741
                                                    (let ((__tmp287742
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self281771_
                                                              __id286716
                                                              __t286713
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp287742 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp287741)))
                                            (__tmp287735
                                             (let ((__tmp287738
                                                    (let ((__tmp287739
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field281827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp287739)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287736
                                                    (let ((__tmp287737
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value281831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object281829_ __tmp287737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287738
                                                     __tmp287736))))
                                        (declare (not safe))
                                        (cons __tmp287740 __tmp287735))))
                                 (declare (not safe))
                                 (cons __tmp287743 __tmp287734))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp287733 _stx281772_)))
                      _$e281834_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self281771_
                            __checked?286714
                            __t286713
                            '#f))
                         (let ((__tmp287685
                                (let* ((_$obj281839_
                                        (let ((__tmp287686 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp287686)))
                                       (__tmp287687
                                        (let ((__tmp287729
                                               (let ((__tmp287730
                                                      (let ((__tmp287732
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj281839_ '())))
                    (__tmp287731
                     (let () (declare (not safe)) (cons _object281829_ '()))))
                (declare (not safe))
                (cons __tmp287732 __tmp287731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287730 '())))
                                              (__tmp287688
                                               (let ((__tmp287689
                                                      (let ((__tmp287690
                                                             (let ((__tmp287721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287722
                                   (let ((__tmp287726
                                          (let ((__tmp287727
                                                 (let ((__tmp287728
                                                        (##structure-ref
                                                         _klass281825_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp287728 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp287727)))
                                         (__tmp287723
                                          (let ((__tmp287724
                                                 (let ((__tmp287725
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj281839_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp287725))))
                                            (declare (not safe))
                                            (cons __tmp287724 '()))))
                                     (declare (not safe))
                                     (cons __tmp287726 __tmp287723))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp287722)))
                           (__tmp287691
                            (let ((__tmp287709
                                   (let ((__tmp287710
                                          (let ((__tmp287718
                                                 (let ((__tmp287719
                                                        (let ((__tmp287720
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self281771_
                          __id286716
                          __t286713
                          '#f))))
                  (declare (not safe))
                  (cons __tmp287720 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp287719)))
                                                (__tmp287711
                                                 (let ((__tmp287716
                                                        (let ((__tmp287717
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field281827_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp287717)))
               (__tmp287712
                (let ((__tmp287714
                       (let ((__tmp287715
                              (let ()
                                (declare (not safe))
                                (cons _$obj281839_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp287715)))
                      (__tmp287713
                       (let () (declare (not safe)) (cons _value281831_ '()))))
                  (declare (not safe))
                  (cons __tmp287714 __tmp287713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287716
                                                         __tmp287712))))
                                            (declare (not safe))
                                            (cons __tmp287718 __tmp287711))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp287710)))
                                  (__tmp287692
                                   (let ((__tmp287693
                                          (let ((__tmp287694
                                                 (let ((__tmp287707
                                                        (let ((__tmp287708
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp287708)))
               (__tmp287695
                (let ((__tmp287704
                       (let ((__tmp287705
                              (let ((__tmp287706
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self281771_
                                        __id286716
                                        __t286713
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp287706 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp287705)))
                      (__tmp287696
                       (let ((__tmp287702
                              (let ((__tmp287703
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj281839_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp287703)))
                             (__tmp287697
                              (let ((__tmp287699
                                     (let ((__tmp287700
                                            (let ((__tmp287701
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self281771_
                                                      __slot286715
                                                      __t286713
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp287701 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp287700)))
                                    (__tmp287698
                                     (let ()
                                       (declare (not safe))
                                       (cons _value281831_ '()))))
                                (declare (not safe))
                                (cons __tmp287699 __tmp287698))))
                         (declare (not safe))
                         (cons __tmp287702 __tmp287697))))
                  (declare (not safe))
                  (cons __tmp287704 __tmp287696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287707
                                                         __tmp287695))))
                                            (declare (not safe))
                                            (cons '%#call __tmp287694))))
                                     (declare (not safe))
                                     (cons __tmp287693 '()))))
                              (declare (not safe))
                              (cons __tmp287709 __tmp287692))))
                       (declare (not safe))
                       (cons __tmp287721 __tmp287691))))
                (declare (not safe))
                (cons '%#if __tmp287690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287689 '()))))
                                          (declare (not safe))
                                          (cons __tmp287729 __tmp287688))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp287687))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp287685 _stx281772_))
                         (let ((__tmp287675
                                (let ((__tmp287676
                                       (let ((__tmp287683
                                              (let ((__tmp287684
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp287684)))
                                             (__tmp287677
                                              (let ((__tmp287678
                                                     (let ((__tmp287680
                                                            (let ((__tmp287681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287682
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self281771_
                                     __slot286715
                                     __t286713
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp287682 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp287681)))
                   (__tmp287679
                    (let () (declare (not safe)) (cons _value281831_ '()))))
               (declare (not safe))
               (cons __tmp287680 __tmp287679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object281829_
                                                      __tmp287678))))
                                         (declare (not safe))
                                         (cons __tmp287683 __tmp287677))))
                                  (declare (not safe))
                                  (cons '%#call __tmp287676))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp287675
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
                        (let ((__tmp287771
                               (let ((__tmp287772
                                      (_inline281624_ _stx281606_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp287772
                                  _stx281606_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp287771)))
                      (if _dispatch281625_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch281625_))
                            (let ((__tmp287766
                                   (let ((__tmp287767
                                          (let ((__tmp287768
                                                 (let ((__tmp287769
                                                        (let ((__tmp287770
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch281625_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp287770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp287769
                                                         _args281607_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp287768))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp287767
                                      _stx281606_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp287766)))
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
                                          (let ((__tmp287828
                                                 (let ((__tmp287829
                                                        (let ((__tmp287830
                                                               (let ((__tmp287835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287836
                                     (let ()
                                       (declare (not safe))
                                       (cons _main281183_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp287836)))
                             (__tmp287831
                              (let ((__tmp287833
                                     (let ((__tmp287834
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp287834)))
                                    (__tmp287832
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs281186_
                                               _xargs281194_))))
                                (declare (not safe))
                                (cons __tmp287833 __tmp287832))))
                         (declare (not safe))
                         (cons __tmp287835 __tmp287831))))
                  (declare (not safe))
                  (cons '%#call __tmp287830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp287829
                                                    _stx281144_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp287828)))
                                        (let* ((_kwt281198_
                                                (let ((__tmp287777
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp287777)))
                                               (_kwvars281201_
                                                (map (lambda (_g287778_)
                                                       (let ((__tmp287779
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp287779)))
                                                     _kwargs281187_))
                                               (_kwbind281206_
                                                (map (lambda (_kw281203_
                                                              _kwvar281204_)
                                                       (let ((__tmp287782
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar281204_ '())))
                     (__tmp287780
                      (let ((__tmp287781 (cdr _kw281203_)))
                        (declare (not safe))
                        (cons __tmp287781 '()))))
                 (declare (not safe))
                 (cons __tmp287782 __tmp287780)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs281187_
                                                     _kwvars281201_))
                                               (_kwset281211_
                                                (map (lambda (_kw281208_
                                                              _kwvar281209_)
                                                       (let ((__tmp287783
                                                              (let ((__tmp287784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp287792
                                    (let ((__tmp287793
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt281198_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp287793)))
                                   (__tmp287785
                                    (let ((__tmp287789
                                           (let ((__tmp287790
                                                  (let ((__tmp287791
                                                         (car _kw281208_)))
                                                    (declare (not safe))
                                                    (cons __tmp287791 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp287790)))
                                          (__tmp287786
                                           (let ((__tmp287787
                                                  (let ((__tmp287788
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar281209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp287788))))
                                             (declare (not safe))
                                             (cons __tmp287787 '()))))
                                      (declare (not safe))
                                      (cons __tmp287789 __tmp287786))))
                               (declare (not safe))
                               (cons __tmp287792 __tmp287785))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp287784))))
                 (declare (not safe))
                 (cons '%#call __tmp287783)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs281187_
                                                     _kwvars281201_))
                                               (_xkwargs281216_
                                                (map (lambda (_kw281213_
                                                              _kwvar281214_)
                                                       (let ((__tmp287796
                                                              (car _kw281213_))
                                                             (__tmp287794
                                                              (let ((__tmp287795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar281214_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp287795))))
                 (declare (not safe))
                 (cons __tmp287796 __tmp287794)))
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
                                          (let ((__tmp287797
                                                 (let ((__tmp287798
                                                        (let ((__tmp287799
                                                               (let ((__tmp287800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287801
                                     (let ((__tmp287802
                                            (let ((__tmp287816
                                                   (let ((__tmp287817
                                                          (let ((__tmp287827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt281198_ '())))
                        (__tmp287818
                         (let ((__tmp287819
                                (let ((__tmp287820
                                       (let ((__tmp287821
                                              (let ((__tmp287822
                                                     (let ((__tmp287824
                                                            (let ((__tmp287825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287826 (length _kwargs281187_)))
                             (declare (not safe))
                             (cons __tmp287826 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp287825)))
                   (__tmp287823
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp287824 __tmp287823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp287822))))
                                         (declare (not safe))
                                         (cons '%#call __tmp287821))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp287820
                                   _stx281144_))))
                           (declare (not safe))
                           (cons __tmp287819 '()))))
                    (declare (not safe))
                    (cons __tmp287827 __tmp287818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287817 '())))
                                                  (__tmp287803
                                                   (let ((__tmp287804
                                                          (let ((__tmp287805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287806
                                (let ((__tmp287807
                                       (let ((__tmp287808
                                              (let ((__tmp287809
                                                     (let ((__tmp287814
                                                            (let ((__tmp287815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main281183_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp287815)))
                   (__tmp287810
                    (let ((__tmp287812
                           (let ((__tmp287813
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt281198_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp287813)))
                          (__tmp287811
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs281186_ _xargs281223_))))
                      (declare (not safe))
                      (cons __tmp287812 __tmp287811))))
               (declare (not safe))
               (cons __tmp287814 __tmp287810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp287809))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp287808
                                          _stx281144_))))
                                  (declare (not safe))
                                  (cons __tmp287807 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp287806 _kwset281211_))))
                    (declare (not safe))
                    (cons '%#begin __tmp287805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp287804 '()))))
                                              (declare (not safe))
                                              (cons __tmp287816 __tmp287803))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp287802))))
                                (declare (not safe))
                                (cons __tmp287801 '()))))
                         (declare (not safe))
                         (cons _kwbind281206_ __tmp287800))))
                  (declare (not safe))
                  (cons '%#let-values __tmp287799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp287798
                                                    _stx281144_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp287797)))))))))))
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
                      (lambda (_e280802280861_
                               _hd280801280864_
                               _tl280800280866_
                               _e280805280869_
                               _hd280804280872_
                               _tl280803280874_
                               _e280808280877_
                               _hd280807280880_
                               _tl280806280882_
                               _e280811280885_
                               _hd280810280888_
                               _tl280809280890_)
                        (let ((_L280893_ _tl280809280890_)
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
                               _tl280800280866_
                               _hd280801280864_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx286870286871_))
                    (let ((_e280775280965_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx286870286871_))))
                      (let ((_tl280773280970_
                             (let ()
                               (declare (not safe))
                               (##cdr _e280775280965_)))
                            (_hd280774280968_
                             (let ()
                               (declare (not safe))
                               (##car _e280775280965_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd280774280968_))
                            (let ((_e280778280973_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd280774280968_))))
                              (let ((_tl280776280978_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e280778280973_)))
                                    (_hd280777280976_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e280778280973_))))
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
                                              (gx#stx-pair? _tl280776280978_))
                                            (let ((_e280781280981_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl280776280978_))))
                                              (let ((_tl280779280986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e280781280981_)))
                                                    (_hd280780280984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e280781280981_))))
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
                        (gx#stx-null? _tl280779280986_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl280773280970_))
                          (let ((_e280785280992_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl280773280970_))))
                            (let ((_tl280783280997_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e280785280992_)))
                                  (_hd280784280995_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e280785280992_))))
                              (___kont286872286873_
                               _tl280783280997_
                               _hd280784280995_)))
                          (___kont286878286879_
                           _tl280773280970_
                           _hd280774280968_))
                      (___kont286878286879_ _tl280773280970_ _hd280774280968_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e280782280989_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl280779280986_))
                          (___kont286874286875_ _tl280773280970_)
                          (___kont286878286879_
                           _tl280773280970_
                           _hd280774280968_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl280779280986_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl280773280970_))
                              (let ((_e280811280885_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl280773280970_))))
                                (let ((_tl280809280890_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e280811280885_)))
                                      (_hd280810280888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e280811280885_))))
                                  (___match286977286978_
                                   _e280775280965_
                                   _hd280774280968_
                                   _tl280773280970_
                                   _e280778280973_
                                   _hd280777280976_
                                   _tl280776280978_
                                   _e280781280981_
                                   _hd280780280984_
                                   _tl280779280986_
                                   _e280811280885_
                                   _hd280810280888_
                                   _tl280809280890_)))
                              (___kont286878286879_
                               _tl280773280970_
                               _hd280774280968_))
                          (___kont286878286879_
                           _tl280773280970_
                           _hd280774280968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl280779280986_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl280773280970_))
                                                            (let ((_e280811280885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl280773280970_))))
                      (let ((_tl280809280890_
                             (let ()
                               (declare (not safe))
                               (##cdr _e280811280885_)))
                            (_hd280810280888_
                             (let ()
                               (declare (not safe))
                               (##car _e280811280885_))))
                        (___match286977286978_
                         _e280775280965_
                         _hd280774280968_
                         _tl280773280970_
                         _e280778280973_
                         _hd280777280976_
                         _tl280776280978_
                         _e280781280981_
                         _hd280780280984_
                         _tl280779280986_
                         _e280811280885_
                         _hd280810280888_
                         _tl280809280890_)))
                    (___kont286878286879_ _tl280773280970_ _hd280774280968_))
                (___kont286878286879_ _tl280773280970_ _hd280774280968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont286878286879_
                                             _tl280773280970_
                                             _hd280774280968_))
                                        (___kont286878286879_
                                         _tl280773280970_
                                         _hd280774280968_))
                                    (___kont286878286879_
                                     _tl280773280970_
                                     _hd280774280968_))))
                            (___kont286878286879_
                             _tl280773280970_
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
