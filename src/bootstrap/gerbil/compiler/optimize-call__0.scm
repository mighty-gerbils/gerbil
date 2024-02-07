(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707346624)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl275461_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp280144 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl275461_ __tmp280144))
           (let ()
             (declare (not safe))
             (table-set! _tbl275461_ '%#call gxc#optimize-call%))
           _tbl275461_))))
    (define gxc#apply-optimize-call
      (lambda (_stx275444_ . _args275446_)
        (let ((__tmp280146
               (lambda ()
                 (declare (not safe))
                 (if (null? _args275446_)
                     (gxc#compile-e__0 _stx275444_)
                     (let ((_arg1275451_ (car _args275446_))
                           (_rest275453_ (cdr _args275446_)))
                       (if (null? _rest275453_)
                           (gxc#compile-e__1 _stx275444_ _arg1275451_)
                           (let ((_arg2275456_ (car _rest275453_))
                                 (_rest275458_ (cdr _rest275453_)))
                             (if (null? _rest275458_)
                                 (gxc#compile-e__2
                                  _stx275444_
                                  _arg1275451_
                                  _arg2275456_)
                                 (apply gxc#compile-e
                                        _stx275444_
                                        _arg1275451_
                                        _arg2275456_
                                        _rest275458_))))))))
              (__tmp280145 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp280146
           gxc#current-compile-methods
           __tmp280145))))
    (define gxc#optimize-call%
      (lambda (_stx275299_)
        (let* ((___stx279696279697_ _stx275299_)
               (_g275302275322_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx279696279697_)))))
          (let ((___kont279698279699_
                 (lambda (_L275366_ _L275367_)
                   (let* ((_rator-id275385_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L275367_)))
                          (_rator-type275387_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id275385_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type275387_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp280147
                                  (##structure-ref
                                   _rator-type275387_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id275385_
                              '" => "
                              _rator-type275387_
                              '" "
                              __tmp280147))
                           (let ((_optimized275390_
                                  (let ((__method280142
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type275387_
                                            'optimize-call))))
                                    (if __method280142
                                        (__method280142
                                         _rator-type275387_
                                         _stx275299_
                                         _L275366_)
                                        (error '"Missing method"
                                               _rator-type275387_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type275387_))
                                 _optimized275390_
                                 (let* ((___stx279678279679_ _optimized275390_)
                                        (_g275393275403_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx279678279679_)))))
                                   (let ((___kont279680279681_
                                          (lambda (_L275423_)
                                            (let ((__tmp280148
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L275423_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp280148
                                               _stx275299_))))
                                         (___kont279682279683_
                                          (lambda () _optimized275390_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx279678279679_))
                                         (let ((_e275398275415_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx279678279679_))))
                                           (let ((_tl275396275420_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e275398275415_)))
                                                 (_hd275397275418_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e275398275415_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd275397275418_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd275397275418_))
                                                     (___kont279680279681_
                                                      _tl275396275420_)
                                                     (___kont279682279683_))
                                                 (___kont279682279683_))))
                                         (___kont279682279683_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type275387_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx275299_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx275299_
                                _rator-type275387_)))))))
                (___kont279700279701_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx275299_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx279696279697_))
                (let ((_e275308275334_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx279696279697_))))
                  (let ((_tl275306275339_
                         (let () (declare (not safe)) (##cdr _e275308275334_)))
                        (_hd275307275337_
                         (let ()
                           (declare (not safe))
                           (##car _e275308275334_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl275306275339_))
                        (let ((_e275311275342_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl275306275339_))))
                          (let ((_tl275309275347_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e275311275342_)))
                                (_hd275310275345_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e275311275342_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd275310275345_))
                                (let ((_e275314275350_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd275310275345_))))
                                  (let ((_tl275312275355_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e275314275350_)))
                                        (_hd275313275353_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e275314275350_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd275313275353_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd275313275353_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl275312275355_))
                                                (let ((_e275317275358_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl275312275355_))))
                                                  (let ((_tl275315275363_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e275317275358_)))
                                                        (_hd275316275361_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e275317275358_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl275315275363_))
                                                        (___kont279698279699_
                                                         _tl275309275347_
                                                         _hd275316275361_)
                                                        (___kont279700279701_))))
                                                (___kont279700279701_))
                                            (___kont279700279701_))
                                        (___kont279700279701_))))
                                (___kont279700279701_))))
                        (___kont279700279701_))))
                (___kont279700279701_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self275253_ _stx275254_ _args275255_)
        (let* ((_g275257275267_
                (lambda (_g275258275264_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g275258275264_))))
               (_g275256275296_
                (lambda (_g275258275270_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g275258275270_))
                      (let ((_e275262275272_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g275258275270_))))
                        (let ((_hd275261275275_
                               (let ()
                                 (declare (not safe))
                                 (##car _e275262275272_)))
                              (_tl275260275277_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e275262275272_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl275260275277_))
                              ((lambda (_L275280_)
                                 (let* ((_klass275291_
                                         (let ((__tmp280149
                                                (##structure-ref
                                                 _self275253_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx275254_
                                            __tmp280149)))
                                        (_object275293_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L275280_))))
                                   (if (##structure-ref
                                        _klass275291_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp280165
                                              (let ((__tmp280166
                                                     (let ((__tmp280168
                                                            (let ((__tmp280169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280170
                                  (##structure-ref
                                   _klass275291_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp280170 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp280169)))
                   (__tmp280167
                    (let () (declare (not safe)) (cons _object275293_ '()))))
               (declare (not safe))
               (cons __tmp280168 __tmp280167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp280166))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp280165
                                          _stx275254_))
                                       (if (##structure-ref
                                            _klass275291_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp280159
                                                  (let ((__tmp280160
                                                         (let ((__tmp280162
                                                                (let ((__tmp280163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp280164
                                      (##structure-ref
                                       _klass275291_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp280164 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp280163)))
                       (__tmp280161
                        (let ()
                          (declare (not safe))
                          (cons _object275293_ '()))))
                   (declare (not safe))
                   (cons __tmp280162 __tmp280161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp280160))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp280159
                                              _stx275254_))
                                           (let ((__tmp280150
                                                  (let ((__tmp280151
                                                         (let ((__tmp280157
                                                                (let ((__tmp280158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp280158)))
                       (__tmp280152
                        (let ((__tmp280154
                               (let ((__tmp280155
                                      (let ((__tmp280156
                                             (##structure-ref
                                              _self275253_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp280156 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp280155)))
                              (__tmp280153
                               (let ()
                                 (declare (not safe))
                                 (cons _object275293_ '()))))
                          (declare (not safe))
                          (cons __tmp280154 __tmp280153))))
                   (declare (not safe))
                   (cons __tmp280157 __tmp280152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp280151))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp280150
                                              _stx275254_))))))
                               _hd275261275275_)
                              (let ()
                                (declare (not safe))
                                (_g275257275267_ _g275258275270_)))))
                      (let ()
                        (declare (not safe))
                        (_g275257275267_ _g275258275270_))))))
          (declare (not safe))
          (_g275256275296_ _args275255_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t279657)
        (let ((__id279658
               (let ((__tmp279659
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t279657 'id))))
                 (if __tmp279659 __tmp279659 (error '"Unknown slot" 'id)))))
          (lambda (_self275253_ _stx275254_ _args275255_)
            (let* ((_g275257275267_
                    (lambda (_g275258275264_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g275258275264_))))
                   (_g275256275296_
                    (lambda (_g275258275270_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g275258275270_))
                          (let ((_e275262275272_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g275258275270_))))
                            (let ((_hd275261275275_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e275262275272_)))
                                  (_tl275260275277_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e275262275272_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl275260275277_))
                                  ((lambda (_L275280_)
                                     (let* ((_klass275291_
                                             (let ((__tmp280171
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self275253_
                                                       __id279658
                                                       __t279657
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx275254_
                                                __tmp280171)))
                                            (_object275293_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L275280_))))
                                       (if (##structure-ref
                                            _klass275291_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp280187
                                                  (let ((__tmp280188
                                                         (let ((__tmp280190
                                                                (let ((__tmp280191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp280192
                                      (##structure-ref
                                       _klass275291_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp280192 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp280191)))
                       (__tmp280189
                        (let ()
                          (declare (not safe))
                          (cons _object275293_ '()))))
                   (declare (not safe))
                   (cons __tmp280190 __tmp280189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp280188))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp280187
                                              _stx275254_))
                                           (if (##structure-ref
                                                _klass275291_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp280181
                                                      (let ((__tmp280182
                                                             (let ((__tmp280184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp280185
                                   (let ((__tmp280186
                                          (##structure-ref
                                           _klass275291_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp280186 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp280185)))
                           (__tmp280183
                            (let ()
                              (declare (not safe))
                              (cons _object275293_ '()))))
                       (declare (not safe))
                       (cons __tmp280184 __tmp280183))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp280182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp280181
                                                  _stx275254_))
                                               (let ((__tmp280172
                                                      (let ((__tmp280173
                                                             (let ((__tmp280179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp280180
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp280180)))
                           (__tmp280174
                            (let ((__tmp280176
                                   (let ((__tmp280177
                                          (let ((__tmp280178
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self275253_
                                                    __id279658
                                                    __t279657
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp280178 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp280177)))
                                  (__tmp280175
                                   (let ()
                                     (declare (not safe))
                                     (cons _object275293_ '()))))
                              (declare (not safe))
                              (cons __tmp280176 __tmp280175))))
                       (declare (not safe))
                       (cons __tmp280179 __tmp280174))))
                (declare (not safe))
                (cons '%#call __tmp280173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp280172
                                                  _stx275254_))))))
                                   _hd275261275275_)
                                  (let ()
                                    (declare (not safe))
                                    (_g275257275267_ _g275258275270_)))))
                          (let ()
                            (declare (not safe))
                            (_g275257275267_ _g275258275270_))))))
              (declare (not safe))
              (_g275256275296_ _args275255_))))))
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
      (lambda (_self274987_ _stx274988_ _args274989_)
        (let* ((_klass274991_
                (let ((__tmp280193
                       (##structure-ref _self274987_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx274988_ __tmp280193)))
               (_fields274993_
                (let ((__tmp280194
                       (length (##structure-ref
                                _klass274991_
                                '5
                                gxc#!class::t
                                '#f))))
                  (declare (not safe))
                  (fx+ __tmp280194 '1)))
               (_args274995_ (map gxc#compile-e _args274989_)))
          (let ((_$e274998_
                 (##structure-ref _klass274991_ '6 gxc#!class::t '#f)))
            (if _$e274998_
                ((lambda (_ctor275001_)
                   (let ((_$obj275003_
                          (let ((__tmp280278 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp280278)))
                         (_ctor-impl275004_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass274991_
                             _ctor275001_))))
                     (let ((__tmp280279
                            (let ((__tmp280280
                                   (let ((__tmp280345
                                          (let ((__tmp280346
                                                 (let ((__tmp280359
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj275003_
                                                                '())))
                                                       (__tmp280347
                                                        (let ((__tmp280348
                                                               (let ((__tmp280349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280357
                                     (let ((__tmp280358
                                            (let ()
                                              (declare (not safe))
                                              (cons 'make-object* '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp280358)))
                                    (__tmp280350
                                     (let ((__tmp280354
                                            (let ((__tmp280355
                                                   (let ((__tmp280356
                                                          (##structure-ref
                                                           _self274987_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp280356 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp280355)))
                                           (__tmp280351
                                            (let ((__tmp280352
                                                   (let ((__tmp280353
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _fields274993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp280353))))
                                              (declare (not safe))
                                              (cons __tmp280352 '()))))
                                       (declare (not safe))
                                       (cons __tmp280354 __tmp280351))))
                                (declare (not safe))
                                (cons __tmp280357 __tmp280350))))
                         (declare (not safe))
                         (cons '%#call __tmp280349))))
                  (declare (not safe))
                  (cons __tmp280348 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280359
                                                         __tmp280347))))
                                            (declare (not safe))
                                            (cons __tmp280346 '())))
                                         (__tmp280281
                                          (let ((__tmp280282
                                                 (let ((__tmp280283
                                                        (let ((__tmp280287
                                                               (if _ctor-impl275004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280339
                                  (let ((__tmp280343
                                         (let ((__tmp280344
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl275004_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp280344)))
                                        (__tmp280340
                                         (let ((__tmp280341
                                                (let ((__tmp280342
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj275003_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp280342))))
                                           (declare (not safe))
                                           (cons __tmp280341 _args274995_))))
                                    (declare (not safe))
                                    (cons __tmp280343 __tmp280340))))
                             (declare (not safe))
                             (cons '%#call __tmp280339))
                           (let* ((_$ctor275006_
                                   (let ((__tmp280288 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp280288)))
                                  (__tmp280289
                                   (let ((__tmp280324
                                          (let ((__tmp280325
                                                 (let ((__tmp280338
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor275006_
                                                                '())))
                                                       (__tmp280326
                                                        (let ((__tmp280327
                                                               (let ((__tmp280328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280336
                                     (let ((__tmp280337
                                            (let ()
                                              (declare (not safe))
                                              (cons 'find-method '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp280337)))
                                    (__tmp280329
                                     (let ((__tmp280333
                                            (let ((__tmp280334
                                                   (let ((__tmp280335
                                                          (##structure-ref
                                                           _self274987_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp280335 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp280334)))
                                           (__tmp280330
                                            (let ((__tmp280331
                                                   (let ((__tmp280332
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor275001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp280332))))
                                              (declare (not safe))
                                              (cons __tmp280331 '()))))
                                       (declare (not safe))
                                       (cons __tmp280333 __tmp280330))))
                                (declare (not safe))
                                (cons __tmp280336 __tmp280329))))
                         (declare (not safe))
                         (cons '%#call __tmp280328))))
                  (declare (not safe))
                  (cons __tmp280327 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280338
                                                         __tmp280326))))
                                            (declare (not safe))
                                            (cons __tmp280325 '())))
                                         (__tmp280290
                                          (let ((__tmp280291
                                                 (let ((__tmp280292
                                                        (let ((__tmp280322
                                                               (let ((__tmp280323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor275006_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp280323)))
                      (__tmp280293
                       (let ((__tmp280315
                              (let ((__tmp280316
                                     (let ((__tmp280320
                                            (let ((__tmp280321
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor275006_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp280321)))
                                           (__tmp280317
                                            (let ((__tmp280318
                                                   (let ((__tmp280319
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj275003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp280319))))
                                              (declare (not safe))
                                              (cons __tmp280318
                                                    _args274995_))))
                                       (declare (not safe))
                                       (cons __tmp280320 __tmp280317))))
                                (declare (not safe))
                                (cons '%#call __tmp280316)))
                             (__tmp280294
                              (let ((__tmp280295
                                     (let ((__tmp280296
                                            (let ((__tmp280313
                                                   (let ((__tmp280314
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp280314)))
                                                  (__tmp280297
                                                   (let ((__tmp280311
                                                          (let ((__tmp280312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp280312)))
                 (__tmp280298
                  (let ((__tmp280309
                         (let ((__tmp280310
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp280310)))
                        (__tmp280299
                         (let ((__tmp280306
                                (let ((__tmp280307
                                       (let ((__tmp280308
                                              (##structure-ref
                                               _self274987_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp280308 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp280307)))
                               (__tmp280300
                                (let ((__tmp280304
                                       (let ((__tmp280305
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp280305)))
                                      (__tmp280301
                                       (let ((__tmp280302
                                              (let ((__tmp280303
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor275001_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp280303))))
                                         (declare (not safe))
                                         (cons __tmp280302 '()))))
                                  (declare (not safe))
                                  (cons __tmp280304 __tmp280301))))
                           (declare (not safe))
                           (cons __tmp280306 __tmp280300))))
                    (declare (not safe))
                    (cons __tmp280309 __tmp280299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280311
                                                           __tmp280298))))
                                              (declare (not safe))
                                              (cons __tmp280313 __tmp280297))))
                                       (declare (not safe))
                                       (cons '%#call __tmp280296))))
                                (declare (not safe))
                                (cons __tmp280295 '()))))
                         (declare (not safe))
                         (cons __tmp280315 __tmp280294))))
                  (declare (not safe))
                  (cons __tmp280322 __tmp280293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp280292))))
                                            (declare (not safe))
                                            (cons __tmp280291 '()))))
                                     (declare (not safe))
                                     (cons __tmp280324 __tmp280290))))
                             (declare (not safe))
                             (cons '%#let-values __tmp280289))))
                      (__tmp280284
                       (let ((__tmp280285
                              (let ((__tmp280286
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj275003_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp280286))))
                         (declare (not safe))
                         (cons __tmp280285 '()))))
                  (declare (not safe))
                  (cons __tmp280287 __tmp280284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp280283))))
                                            (declare (not safe))
                                            (cons __tmp280282 '()))))
                                     (declare (not safe))
                                     (cons __tmp280345 __tmp280281))))
                              (declare (not safe))
                              (cons '%#let-values __tmp280280))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp280279 _stx274988_))))
                 _$e274998_)
                (if (##structure-ref _klass274991_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args274995_)
                             (let ()
                               (declare (not safe))
                               (fx- _fields274993_ '1)))
                        (let ((__tmp280270
                               (let ((__tmp280271
                                      (let ((__tmp280276
                                             (let ((__tmp280277
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp280277)))
                                            (__tmp280272
                                             (let ((__tmp280273
                                                    (let ((__tmp280274
                                                           (let ((__tmp280275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self274987_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp280275 '()))))
              (declare (not safe))
              (cons '%#ref __tmp280274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp280273
                                                     _args274995_))))
                                        (declare (not safe))
                                        (cons __tmp280276 __tmp280272))))
                                 (declare (not safe))
                                 (cons '%#call __tmp280271))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp280270 _stx274988_))
                        (let ((__tmp280269
                               (##structure-ref
                                _self274987_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp280268
                               (length (##structure-ref
                                        _klass274991_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx274988_
                           __tmp280269
                           __tmp280268)))
                    (let ((_$obj275008_
                           (let ((__tmp280195 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp280195))))
                      (let _lp275010_ ((_rest275012_ _args274995_)
                                       (_initializers275013_ '()))
                        (let* ((___stx279734279735_ _rest275012_)
                               (_g275017275038_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx279734279735_)))))
                          (let ((___kont279736279737_
                                 (lambda (_L275092_ _L275093_ _L275094_)
                                   (let* ((_slot275123_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L275094_))))
                                          (_off275125_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass274991_
                                              _slot275123_))))
                                     (if _off275125_
                                         (let ((__tmp280197
                                                (let ((__tmp280198
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off275125_
                                                               _L275093_))))
                                                  (declare (not safe))
                                                  (cons __tmp280198
                                                        _initializers275013_))))
                                           (declare (not safe))
                                           (_lp275010_ _L275092_ __tmp280197))
                                         (let ((__tmp280196
                                                (##structure-ref
                                                 _self274987_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx274988_
                                            __tmp280196
                                            _slot275123_))))))
                                (___kont279738279739_
                                 (lambda ()
                                   (let ((__tmp280199
                                          (let ((__tmp280200
                                                 (let ((__tmp280223
                                                        (let ((__tmp280224
                                                               (let ((__tmp280237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj275008_ '())))
                             (__tmp280225
                              (let ((__tmp280226
                                     (let ((__tmp280227
                                            (let ((__tmp280235
                                                   (let ((__tmp280236
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-object*
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp280236)))
                                                  (__tmp280228
                                                   (let ((__tmp280232
                                                          (let ((__tmp280233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp280234
                                (##structure-ref
                                 _self274987_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp280234 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp280233)))
                 (__tmp280229
                  (let ((__tmp280230
                         (let ((__tmp280231
                                (let ()
                                  (declare (not safe))
                                  (cons _fields274993_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp280231))))
                    (declare (not safe))
                    (cons __tmp280230 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280232
                                                           __tmp280229))))
                                              (declare (not safe))
                                              (cons __tmp280235 __tmp280228))))
                                       (declare (not safe))
                                       (cons '%#call __tmp280227))))
                                (declare (not safe))
                                (cons __tmp280226 '()))))
                         (declare (not safe))
                         (cons __tmp280237 __tmp280225))))
                  (declare (not safe))
                  (cons __tmp280224 '())))
               (__tmp280201
                (let ((__tmp280202
                       (let ((__tmp280203
                              (let ((__tmp280220
                                     (let ((__tmp280221
                                            (let ((__tmp280222
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj275008_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp280222))))
                                       (declare (not safe))
                                       (cons __tmp280221 '())))
                                    (__tmp280204
                                     (let ((__tmp280205
                                            (lambda (_i275052_ _r275053_)
                                              (let ((__tmp280206
                                                     (let ((__tmp280207
                                                            (let ((__tmp280217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280218
                                  (let ((__tmp280219
                                         (##structure-ref
                                          _self274987_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp280219 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280218)))
                          (__tmp280208
                           (let ((__tmp280214
                                  (let ((__tmp280215
                                         (let ((__tmp280216 (car _i275052_)))
                                           (declare (not safe))
                                           (cons __tmp280216 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp280215)))
                                 (__tmp280209
                                  (let ((__tmp280212
                                         (let ((__tmp280213
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj275008_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp280213)))
                                        (__tmp280210
                                         (let ((__tmp280211 (cdr _i275052_)))
                                           (declare (not safe))
                                           (cons __tmp280211 '()))))
                                    (declare (not safe))
                                    (cons __tmp280212 __tmp280210))))
                             (declare (not safe))
                             (cons __tmp280214 __tmp280209))))
                      (declare (not safe))
                      (cons __tmp280217 __tmp280208))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp280207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp280206
                                                      _r275053_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp280205
                                               '()
                                               _initializers275013_))))
                                (declare (not safe))
                                (foldr1 cons __tmp280220 __tmp280204))))
                         (declare (not safe))
                         (cons '%#begin __tmp280203))))
                  (declare (not safe))
                  (cons __tmp280202 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280223
                                                         __tmp280201))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp280200))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp280199
                                      _stx274988_))))
                                (___kont279740279741_
                                 (lambda ()
                                   (let ((__tmp280238
                                          (let ((__tmp280239
                                                 (let ((__tmp280253
                                                        (let ((__tmp280254
                                                               (let ((__tmp280267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj275008_ '())))
                             (__tmp280255
                              (let ((__tmp280256
                                     (let ((__tmp280257
                                            (let ((__tmp280265
                                                   (let ((__tmp280266
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-object*
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp280266)))
                                                  (__tmp280258
                                                   (let ((__tmp280262
                                                          (let ((__tmp280263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp280264
                                (##structure-ref
                                 _self274987_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp280264 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp280263)))
                 (__tmp280259
                  (let ((__tmp280260
                         (let ((__tmp280261
                                (let ()
                                  (declare (not safe))
                                  (cons _fields274993_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp280261))))
                    (declare (not safe))
                    (cons __tmp280260 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280262
                                                           __tmp280259))))
                                              (declare (not safe))
                                              (cons __tmp280265 __tmp280258))))
                                       (declare (not safe))
                                       (cons '%#call __tmp280257))))
                                (declare (not safe))
                                (cons __tmp280256 '()))))
                         (declare (not safe))
                         (cons __tmp280267 __tmp280255))))
                  (declare (not safe))
                  (cons __tmp280254 '())))
               (__tmp280240
                (let ((__tmp280241
                       (let ((__tmp280242
                              (let ((__tmp280246
                                     (let ((__tmp280247
                                            (let ((__tmp280251
                                                   (let ((__tmp280252
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp280252)))
                                                  (__tmp280248
                                                   (let ((__tmp280249
                                                          (let ((__tmp280250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj275008_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp280250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280249
                                                           _args274995_))))
                                              (declare (not safe))
                                              (cons __tmp280251 __tmp280248))))
                                       (declare (not safe))
                                       (cons '%#call __tmp280247)))
                                    (__tmp280243
                                     (let ((__tmp280244
                                            (let ((__tmp280245
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj275008_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp280245))))
                                       (declare (not safe))
                                       (cons __tmp280244 '()))))
                                (declare (not safe))
                                (cons __tmp280246 __tmp280243))))
                         (declare (not safe))
                         (cons '%#begin __tmp280242))))
                  (declare (not safe))
                  (cons __tmp280241 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280253
                                                         __tmp280240))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp280239))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp280238
                                      _stx274988_)))))
                            (let* ((_g275015275055_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx279734279735_))
                                          (___kont279738279739_)
                                          (___kont279740279741_))))
                                   (___match279771279772_
                                    (lambda (_e275024275060_
                                             _hd275023275063_
                                             _tl275022275065_
                                             _e275027275068_
                                             _hd275026275071_
                                             _tl275025275073_
                                             _e275030275076_
                                             _hd275029275079_
                                             _tl275028275081_
                                             _e275033275084_
                                             _hd275032275087_
                                             _tl275031275089_)
                                      (let ((_L275092_ _tl275031275089_)
                                            (_L275093_ _hd275032275087_)
                                            (_L275094_ _hd275029275079_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L275094_))
                                            (___kont279736279737_
                                             _L275092_
                                             _L275093_
                                             _L275094_)
                                            (___kont279740279741_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx279734279735_))
                                  (let ((_e275024275060_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx279734279735_))))
                                    (let ((_tl275022275065_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e275024275060_)))
                                          (_hd275023275063_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e275024275060_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd275023275063_))
                                          (let ((_e275027275068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd275023275063_))))
                                            (let ((_tl275025275073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e275027275068_)))
                                                  (_hd275026275071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e275027275068_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd275026275071_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd275026275071_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl275025275073_))
                                                          (let ((_e275030275076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl275025275073_))))
                    (let ((_tl275028275081_
                           (let ()
                             (declare (not safe))
                             (##cdr _e275030275076_)))
                          (_hd275029275079_
                           (let ()
                             (declare (not safe))
                             (##car _e275030275076_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275028275081_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl275022275065_))
                              (let ((_e275033275084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl275022275065_))))
                                (let ((_tl275031275089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e275033275084_)))
                                      (_hd275032275087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e275033275084_))))
                                  (___match279771279772_
                                   _e275024275060_
                                   _hd275023275063_
                                   _tl275022275065_
                                   _e275027275068_
                                   _hd275026275071_
                                   _tl275025275073_
                                   _e275030275076_
                                   _hd275029275079_
                                   _tl275028275081_
                                   _e275033275084_
                                   _hd275032275087_
                                   _tl275031275089_)))
                              (___kont279740279741_))
                          (___kont279740279741_))))
                  (___kont279740279741_))
              (___kont279740279741_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont279740279741_))))
                                          (___kont279740279741_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g275015275055_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t279660)
        (let ((__id279661
               (let ((__tmp279662
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t279660 'id))))
                 (if __tmp279662 __tmp279662 (error '"Unknown slot" 'id)))))
          (lambda (_self274987_ _stx274988_ _args274989_)
            (let* ((_klass274991_
                    (let ((__tmp280360
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self274987_
                              __id279661
                              __t279660
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx274988_ __tmp280360)))
                   (_fields274993_
                    (let ((__tmp280361
                           (length (##structure-ref
                                    _klass274991_
                                    '5
                                    gxc#!class::t
                                    '#f))))
                      (declare (not safe))
                      (fx+ __tmp280361 '1)))
                   (_args274995_ (map gxc#compile-e _args274989_)))
              (let ((_$e274998_
                     (##structure-ref _klass274991_ '6 gxc#!class::t '#f)))
                (if _$e274998_
                    ((lambda (_ctor275001_)
                       (let ((_$obj275003_
                              (let ((__tmp280445 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp280445)))
                             (_ctor-impl275004_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass274991_
                                 _ctor275001_))))
                         (let ((__tmp280446
                                (let ((__tmp280447
                                       (let ((__tmp280512
                                              (let ((__tmp280513
                                                     (let ((__tmp280526
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj275003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp280514
                    (let ((__tmp280515
                           (let ((__tmp280516
                                  (let ((__tmp280524
                                         (let ((__tmp280525
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'make-object* '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp280525)))
                                        (__tmp280517
                                         (let ((__tmp280521
                                                (let ((__tmp280522
                                                       (let ((__tmp280523
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self274987_
                         __id279661
                         __t279660
                         '#f))))
                 (declare (not safe))
                 (cons __tmp280523 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp280522)))
                                               (__tmp280518
                                                (let ((__tmp280519
                                                       (let ((__tmp280520
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _fields274993_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp280520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280519 '()))))
                                           (declare (not safe))
                                           (cons __tmp280521 __tmp280518))))
                                    (declare (not safe))
                                    (cons __tmp280524 __tmp280517))))
                             (declare (not safe))
                             (cons '%#call __tmp280516))))
                      (declare (not safe))
                      (cons __tmp280515 '()))))
               (declare (not safe))
               (cons __tmp280526 __tmp280514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp280513 '())))
                                             (__tmp280448
                                              (let ((__tmp280449
                                                     (let ((__tmp280450
                                                            (let ((__tmp280454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl275004_
                               (let ((__tmp280506
                                      (let ((__tmp280510
                                             (let ((__tmp280511
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl275004_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp280511)))
                                            (__tmp280507
                                             (let ((__tmp280508
                                                    (let ((__tmp280509
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj275003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp280509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp280508
                                                     _args274995_))))
                                        (declare (not safe))
                                        (cons __tmp280510 __tmp280507))))
                                 (declare (not safe))
                                 (cons '%#call __tmp280506))
                               (let* ((_$ctor275006_
                                       (let ((__tmp280455
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp280455)))
                                      (__tmp280456
                                       (let ((__tmp280491
                                              (let ((__tmp280492
                                                     (let ((__tmp280505
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor275006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp280493
                    (let ((__tmp280494
                           (let ((__tmp280495
                                  (let ((__tmp280503
                                         (let ((__tmp280504
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'find-method '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp280504)))
                                        (__tmp280496
                                         (let ((__tmp280500
                                                (let ((__tmp280501
                                                       (let ((__tmp280502
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self274987_
                         __id279661
                         __t279660
                         '#f))))
                 (declare (not safe))
                 (cons __tmp280502 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp280501)))
                                               (__tmp280497
                                                (let ((__tmp280498
                                                       (let ((__tmp280499
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor275001_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp280499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280498 '()))))
                                           (declare (not safe))
                                           (cons __tmp280500 __tmp280497))))
                                    (declare (not safe))
                                    (cons __tmp280503 __tmp280496))))
                             (declare (not safe))
                             (cons '%#call __tmp280495))))
                      (declare (not safe))
                      (cons __tmp280494 '()))))
               (declare (not safe))
               (cons __tmp280505 __tmp280493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp280492 '())))
                                             (__tmp280457
                                              (let ((__tmp280458
                                                     (let ((__tmp280459
                                                            (let ((__tmp280489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280490
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor275006_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280490)))
                          (__tmp280460
                           (let ((__tmp280482
                                  (let ((__tmp280483
                                         (let ((__tmp280487
                                                (let ((__tmp280488
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor275006_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp280488)))
                                               (__tmp280484
                                                (let ((__tmp280485
                                                       (let ((__tmp280486
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj275003_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp280486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280485
                                                        _args274995_))))
                                           (declare (not safe))
                                           (cons __tmp280487 __tmp280484))))
                                    (declare (not safe))
                                    (cons '%#call __tmp280483)))
                                 (__tmp280461
                                  (let ((__tmp280462
                                         (let ((__tmp280463
                                                (let ((__tmp280480
                                                       (let ((__tmp280481
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp280481)))
              (__tmp280464
               (let ((__tmp280478
                      (let ((__tmp280479
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp280479)))
                     (__tmp280465
                      (let ((__tmp280476
                             (let ((__tmp280477
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp280477)))
                            (__tmp280466
                             (let ((__tmp280473
                                    (let ((__tmp280474
                                           (let ((__tmp280475
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self274987_
                                                     __id279661
                                                     __t279660
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp280475 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp280474)))
                                   (__tmp280467
                                    (let ((__tmp280471
                                           (let ((__tmp280472
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp280472)))
                                          (__tmp280468
                                           (let ((__tmp280469
                                                  (let ((__tmp280470
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor275001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp280470))))
                                             (declare (not safe))
                                             (cons __tmp280469 '()))))
                                      (declare (not safe))
                                      (cons __tmp280471 __tmp280468))))
                               (declare (not safe))
                               (cons __tmp280473 __tmp280467))))
                        (declare (not safe))
                        (cons __tmp280476 __tmp280466))))
                 (declare (not safe))
                 (cons __tmp280478 __tmp280465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280480
                                                        __tmp280464))))
                                           (declare (not safe))
                                           (cons '%#call __tmp280463))))
                                    (declare (not safe))
                                    (cons __tmp280462 '()))))
                             (declare (not safe))
                             (cons __tmp280482 __tmp280461))))
                      (declare (not safe))
                      (cons __tmp280489 __tmp280460))))
               (declare (not safe))
               (cons '%#if __tmp280459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp280458 '()))))
                                         (declare (not safe))
                                         (cons __tmp280491 __tmp280457))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp280456))))
                          (__tmp280451
                           (let ((__tmp280452
                                  (let ((__tmp280453
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj275003_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp280453))))
                             (declare (not safe))
                             (cons __tmp280452 '()))))
                      (declare (not safe))
                      (cons __tmp280454 __tmp280451))))
               (declare (not safe))
               (cons '%#begin __tmp280450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp280449 '()))))
                                         (declare (not safe))
                                         (cons __tmp280512 __tmp280448))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp280447))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp280446 _stx274988_))))
                     _$e274998_)
                    (if (##structure-ref _klass274991_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args274995_)
                                 (let ()
                                   (declare (not safe))
                                   (fx- _fields274993_ '1)))
                            (let ((__tmp280437
                                   (let ((__tmp280438
                                          (let ((__tmp280443
                                                 (let ((__tmp280444
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp280444)))
                                                (__tmp280439
                                                 (let ((__tmp280440
                                                        (let ((__tmp280441
                                                               (let ((__tmp280442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self274987_
                                 __id279661
                                 __t279660
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp280442 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp280441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280440
                                                         _args274995_))))
                                            (declare (not safe))
                                            (cons __tmp280443 __tmp280439))))
                                     (declare (not safe))
                                     (cons '%#call __tmp280438))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp280437 _stx274988_))
                            (let ((__tmp280436
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self274987_
                                      __id279661
                                      __t279660
                                      '#f)))
                                  (__tmp280435
                                   (length (##structure-ref
                                            _klass274991_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx274988_
                               __tmp280436
                               __tmp280435)))
                        (let ((_$obj275008_
                               (let ((__tmp280362 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp280362))))
                          (let _lp275010_ ((_rest275012_ _args274995_)
                                           (_initializers275013_ '()))
                            (let* ((___stx279776279777_ _rest275012_)
                                   (_g275017275038_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx279776279777_)))))
                              (let ((___kont279778279779_
                                     (lambda (_L275092_ _L275093_ _L275094_)
                                       (let* ((_slot275123_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L275094_))))
                                              (_off275125_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass274991_
                                                  _slot275123_))))
                                         (if _off275125_
                                             (let ((__tmp280364
                                                    (let ((__tmp280365
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off275125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L275093_))))
              (declare (not safe))
              (cons __tmp280365 _initializers275013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp275010_
                                                _L275092_
                                                __tmp280364))
                                             (let ((__tmp280363
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274987_
                                                       __id279661
                                                       __t279660
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx274988_
                                                __tmp280363
                                                _slot275123_))))))
                                    (___kont279780279781_
                                     (lambda ()
                                       (let ((__tmp280366
                                              (let ((__tmp280367
                                                     (let ((__tmp280390
                                                            (let ((__tmp280391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280404
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj275008_ '())))
                                 (__tmp280392
                                  (let ((__tmp280393
                                         (let ((__tmp280394
                                                (let ((__tmp280402
                                                       (let ((__tmp280403
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object* '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp280403)))
              (__tmp280395
               (let ((__tmp280399
                      (let ((__tmp280400
                             (let ((__tmp280401
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self274987_
                                       __id279661
                                       __t279660
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp280401 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp280400)))
                     (__tmp280396
                      (let ((__tmp280397
                             (let ((__tmp280398
                                    (let ()
                                      (declare (not safe))
                                      (cons _fields274993_ '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp280398))))
                        (declare (not safe))
                        (cons __tmp280397 '()))))
                 (declare (not safe))
                 (cons __tmp280399 __tmp280396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280402
                                                        __tmp280395))))
                                           (declare (not safe))
                                           (cons '%#call __tmp280394))))
                                    (declare (not safe))
                                    (cons __tmp280393 '()))))
                             (declare (not safe))
                             (cons __tmp280404 __tmp280392))))
                      (declare (not safe))
                      (cons __tmp280391 '())))
                   (__tmp280368
                    (let ((__tmp280369
                           (let ((__tmp280370
                                  (let ((__tmp280387
                                         (let ((__tmp280388
                                                (let ((__tmp280389
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj275008_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp280389))))
                                           (declare (not safe))
                                           (cons __tmp280388 '())))
                                        (__tmp280371
                                         (let ((__tmp280372
                                                (lambda (_i275052_ _r275053_)
                                                  (let ((__tmp280373
                                                         (let ((__tmp280374
                                                                (let ((__tmp280384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp280385
                                      (let ((__tmp280386
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self274987_
                                                __id279661
                                                __t279660
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp280386 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp280385)))
                              (__tmp280375
                               (let ((__tmp280381
                                      (let ((__tmp280382
                                             (let ((__tmp280383
                                                    (car _i275052_)))
                                               (declare (not safe))
                                               (cons __tmp280383 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp280382)))
                                     (__tmp280376
                                      (let ((__tmp280379
                                             (let ((__tmp280380
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj275008_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp280380)))
                                            (__tmp280377
                                             (let ((__tmp280378
                                                    (cdr _i275052_)))
                                               (declare (not safe))
                                               (cons __tmp280378 '()))))
                                        (declare (not safe))
                                        (cons __tmp280379 __tmp280377))))
                                 (declare (not safe))
                                 (cons __tmp280381 __tmp280376))))
                          (declare (not safe))
                          (cons __tmp280384 __tmp280375))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp280374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp280373
                                                          _r275053_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp280372
                                                   '()
                                                   _initializers275013_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp280387 __tmp280371))))
                             (declare (not safe))
                             (cons '%#begin __tmp280370))))
                      (declare (not safe))
                      (cons __tmp280369 '()))))
               (declare (not safe))
               (cons __tmp280390 __tmp280368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp280367))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp280366
                                          _stx274988_))))
                                    (___kont279782279783_
                                     (lambda ()
                                       (let ((__tmp280405
                                              (let ((__tmp280406
                                                     (let ((__tmp280420
                                                            (let ((__tmp280421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280434
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj275008_ '())))
                                 (__tmp280422
                                  (let ((__tmp280423
                                         (let ((__tmp280424
                                                (let ((__tmp280432
                                                       (let ((__tmp280433
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object* '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp280433)))
              (__tmp280425
               (let ((__tmp280429
                      (let ((__tmp280430
                             (let ((__tmp280431
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self274987_
                                       __id279661
                                       __t279660
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp280431 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp280430)))
                     (__tmp280426
                      (let ((__tmp280427
                             (let ((__tmp280428
                                    (let ()
                                      (declare (not safe))
                                      (cons _fields274993_ '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp280428))))
                        (declare (not safe))
                        (cons __tmp280427 '()))))
                 (declare (not safe))
                 (cons __tmp280429 __tmp280426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280432
                                                        __tmp280425))))
                                           (declare (not safe))
                                           (cons '%#call __tmp280424))))
                                    (declare (not safe))
                                    (cons __tmp280423 '()))))
                             (declare (not safe))
                             (cons __tmp280434 __tmp280422))))
                      (declare (not safe))
                      (cons __tmp280421 '())))
                   (__tmp280407
                    (let ((__tmp280408
                           (let ((__tmp280409
                                  (let ((__tmp280413
                                         (let ((__tmp280414
                                                (let ((__tmp280418
                                                       (let ((__tmp280419
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp280419)))
              (__tmp280415
               (let ((__tmp280416
                      (let ((__tmp280417
                             (let ()
                               (declare (not safe))
                               (cons _$obj275008_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp280417))))
                 (declare (not safe))
                 (cons __tmp280416 _args274995_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280418
                                                        __tmp280415))))
                                           (declare (not safe))
                                           (cons '%#call __tmp280414)))
                                        (__tmp280410
                                         (let ((__tmp280411
                                                (let ((__tmp280412
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj275008_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp280412))))
                                           (declare (not safe))
                                           (cons __tmp280411 '()))))
                                    (declare (not safe))
                                    (cons __tmp280413 __tmp280410))))
                             (declare (not safe))
                             (cons '%#begin __tmp280409))))
                      (declare (not safe))
                      (cons __tmp280408 '()))))
               (declare (not safe))
               (cons __tmp280420 __tmp280407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp280406))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp280405
                                          _stx274988_)))))
                                (let* ((_g275015275055_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx279776279777_))
                                              (___kont279780279781_)
                                              (___kont279782279783_))))
                                       (___match279813279814_
                                        (lambda (_e275024275060_
                                                 _hd275023275063_
                                                 _tl275022275065_
                                                 _e275027275068_
                                                 _hd275026275071_
                                                 _tl275025275073_
                                                 _e275030275076_
                                                 _hd275029275079_
                                                 _tl275028275081_
                                                 _e275033275084_
                                                 _hd275032275087_
                                                 _tl275031275089_)
                                          (let ((_L275092_ _tl275031275089_)
                                                (_L275093_ _hd275032275087_)
                                                (_L275094_ _hd275029275079_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L275094_))
                                                (___kont279778279779_
                                                 _L275092_
                                                 _L275093_
                                                 _L275094_)
                                                (___kont279782279783_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx279776279777_))
                                      (let ((_e275024275060_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx279776279777_))))
                                        (let ((_tl275022275065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e275024275060_)))
                                              (_hd275023275063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e275024275060_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd275023275063_))
                                              (let ((_e275027275068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd275023275063_))))
                                                (let ((_tl275025275073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e275027275068_)))
                                                      (_hd275026275071_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e275027275068_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd275026275071_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd275026275071_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl275025275073_))
                      (let ((_e275030275076_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl275025275073_))))
                        (let ((_tl275028275081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e275030275076_)))
                              (_hd275029275079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e275030275076_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl275028275081_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl275022275065_))
                                  (let ((_e275033275084_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl275022275065_))))
                                    (let ((_tl275031275089_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e275033275084_)))
                                          (_hd275032275087_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e275033275084_))))
                                      (___match279813279814_
                                       _e275024275060_
                                       _hd275023275063_
                                       _tl275022275065_
                                       _e275027275068_
                                       _hd275026275071_
                                       _tl275025275073_
                                       _e275030275076_
                                       _hd275029275079_
                                       _tl275028275081_
                                       _e275033275084_
                                       _hd275032275087_
                                       _tl275031275089_)))
                                  (___kont279782279783_))
                              (___kont279782279783_))))
                      (___kont279782279783_))
                  (___kont279782279783_))
              (___kont279782279783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont279782279783_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g275015275055_))))))))))))))))
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
      (lambda (_self274810_ _stx274811_ _args274812_)
        (let* ((_g274814274824_
                (lambda (_g274815274821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274815274821_))))
               (_g274813274862_
                (lambda (_g274815274827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g274815274827_))
                      (let ((_e274819274829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g274815274827_))))
                        (let ((_hd274818274832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274819274829_)))
                              (_tl274817274834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274819274829_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl274817274834_))
                              ((lambda (_L274837_)
                                 (let* ((_klass274848_
                                         (let ((__tmp280527
                                                (##structure-ref
                                                 _self274810_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx274811_
                                            __tmp280527)))
                                        (_field274850_
                                         (let ((__tmp280528
                                                (##structure-ref
                                                 _self274810_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass274848_
                                            __tmp280528)))
                                        (_object274852_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L274837_))))
                                   (if (##structure-ref
                                        _klass274848_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp280605
                                              (let ((__tmp280614
                                                     (if (##structure-ref
                                                          _self274810_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp280606
                                                     (let ((__tmp280611
                                                            (let ((__tmp280612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280613
                                  (##structure-ref
                                   _self274810_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp280613 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp280612)))
                   (__tmp280607
                    (let ((__tmp280609
                           (let ((__tmp280610
                                  (let ()
                                    (declare (not safe))
                                    (cons _field274850_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp280610)))
                          (__tmp280608
                           (let ()
                             (declare (not safe))
                             (cons _object274852_ '()))))
                      (declare (not safe))
                      (cons __tmp280609 __tmp280608))))
               (declare (not safe))
               (cons __tmp280611 __tmp280607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp280614
                                                      __tmp280606))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp280605
                                          _stx274811_))
                                       (if (##structure-ref
                                            _klass274848_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp280595
                                                  (let ((__tmp280604
                                                         (if (##structure-ref
                                                              _self274810_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp280596
                                                         (let ((__tmp280601
                                                                (let ((__tmp280602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp280603
                                      (##structure-ref
                                       _self274810_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp280603 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp280602)))
                       (__tmp280597
                        (let ((__tmp280599
                               (let ((__tmp280600
                                      (let ()
                                        (declare (not safe))
                                        (cons _field274850_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp280600)))
                              (__tmp280598
                               (let ()
                                 (declare (not safe))
                                 (cons _object274852_ '()))))
                          (declare (not safe))
                          (cons __tmp280599 __tmp280598))))
                   (declare (not safe))
                   (cons __tmp280601 __tmp280597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp280604
                                                          __tmp280596))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp280595
                                              _stx274811_))
                                           (let ((_$e274855_
                                                  (let ((__tmp280529
                                                         (##structure-ref
                                                          _self274810_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass274848_
                                                     __tmp280529))))
                                             (if _$e274855_
                                                 ((lambda (_klass274858_)
                                                    (let ((__tmp280585
                                                           (let ((__tmp280594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self274810_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp280586
                          (let ((__tmp280591
                                 (let ((__tmp280592
                                        (let ((__tmp280593
                                               (##structure-ref
                                                _self274810_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp280593 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp280592)))
                                (__tmp280587
                                 (let ((__tmp280589
                                        (let ((__tmp280590
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field274850_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp280590)))
                                       (__tmp280588
                                        (let ()
                                          (declare (not safe))
                                          (cons _object274852_ '()))))
                                   (declare (not safe))
                                   (cons __tmp280589 __tmp280588))))
                            (declare (not safe))
                            (cons __tmp280591 __tmp280587))))
                     (declare (not safe))
                     (cons __tmp280594 __tmp280586))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp280585 _stx274811_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e274855_)
                                                 (if (##structure-ref
                                                      _self274810_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp280539
                                                            (let* ((_$obj274860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp280540 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp280540)))
                           (__tmp280541
                            (let ((__tmp280581
                                   (let ((__tmp280582
                                          (let ((__tmp280584
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj274860_ '())))
                                                (__tmp280583
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object274852_ '()))))
                                            (declare (not safe))
                                            (cons __tmp280584 __tmp280583))))
                                     (declare (not safe))
                                     (cons __tmp280582 '())))
                                  (__tmp280542
                                   (let ((__tmp280543
                                          (let ((__tmp280544
                                                 (let ((__tmp280573
                                                        (let ((__tmp280574
                                                               (let ((__tmp280578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp280579
                                     (let ((__tmp280580
                                            (##structure-ref
                                             _klass274848_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp280580 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp280579)))
                             (__tmp280575
                              (let ((__tmp280576
                                     (let ((__tmp280577
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj274860_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp280577))))
                                (declare (not safe))
                                (cons __tmp280576 '()))))
                         (declare (not safe))
                         (cons __tmp280578 __tmp280575))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp280574)))
               (__tmp280545
                (let ((__tmp280562
                       (let ((__tmp280563
                              (let ((__tmp280570
                                     (let ((__tmp280571
                                            (let ((__tmp280572
                                                   (##structure-ref
                                                    _self274810_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp280572 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp280571)))
                                    (__tmp280564
                                     (let ((__tmp280568
                                            (let ((__tmp280569
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field274850_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp280569)))
                                           (__tmp280565
                                            (let ((__tmp280566
                                                   (let ((__tmp280567
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj274860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp280567))))
                                              (declare (not safe))
                                              (cons __tmp280566 '()))))
                                       (declare (not safe))
                                       (cons __tmp280568 __tmp280565))))
                                (declare (not safe))
                                (cons __tmp280570 __tmp280564))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp280563)))
                      (__tmp280546
                       (let ((__tmp280547
                              (let ((__tmp280548
                                     (let ((__tmp280560
                                            (let ((__tmp280561
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp280561)))
                                           (__tmp280549
                                            (let ((__tmp280557
                                                   (let ((__tmp280558
                                                          (let ((__tmp280559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self274810_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp280559 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp280558)))
                                                  (__tmp280550
                                                   (let ((__tmp280555
                                                          (let ((__tmp280556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj274860_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp280556)))
                 (__tmp280551
                  (let ((__tmp280552
                         (let ((__tmp280553
                                (let ((__tmp280554
                                       (##structure-ref
                                        _self274810_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp280554 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp280553))))
                    (declare (not safe))
                    (cons __tmp280552 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280555
                                                           __tmp280551))))
                                              (declare (not safe))
                                              (cons __tmp280557 __tmp280550))))
                                       (declare (not safe))
                                       (cons __tmp280560 __tmp280549))))
                                (declare (not safe))
                                (cons '%#call __tmp280548))))
                         (declare (not safe))
                         (cons __tmp280547 '()))))
                  (declare (not safe))
                  (cons __tmp280562 __tmp280546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280573
                                                         __tmp280545))))
                                            (declare (not safe))
                                            (cons '%#if __tmp280544))))
                                     (declare (not safe))
                                     (cons __tmp280543 '()))))
                              (declare (not safe))
                              (cons __tmp280581 __tmp280542))))
                      (declare (not safe))
                      (cons '%#let-values __tmp280541))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp280539 _stx274811_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp280530
                                                            (let ((__tmp280531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280537
                                  (let ((__tmp280538
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp280538)))
                                 (__tmp280532
                                  (let ((__tmp280533
                                         (let ((__tmp280534
                                                (let ((__tmp280535
                                                       (let ((__tmp280536
                                                              (##structure-ref
                                                               _self274810_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp280536
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp280535))))
                                           (declare (not safe))
                                           (cons __tmp280534 '()))))
                                    (declare (not safe))
                                    (cons _object274852_ __tmp280533))))
                             (declare (not safe))
                             (cons __tmp280537 __tmp280532))))
                      (declare (not safe))
                      (cons '%#call __tmp280531))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp280530 _stx274811_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd274818274832_)
                              (let ()
                                (declare (not safe))
                                (_g274814274824_ _g274815274827_)))))
                      (let ()
                        (declare (not safe))
                        (_g274814274824_ _g274815274827_))))))
          (declare (not safe))
          (_g274813274862_ _args274812_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t279663)
        (let ((__id279664
               (let ((__tmp279667
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t279663 'id))))
                 (if __tmp279667 __tmp279667 (error '"Unknown slot" 'id))))
              (__checked?279665
               (let ((__tmp279668
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t279663 'checked?))))
                 (if __tmp279668
                     __tmp279668
                     (error '"Unknown slot" 'checked?))))
              (__slot279666
               (let ((__tmp279669
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t279663 'slot))))
                 (if __tmp279669 __tmp279669 (error '"Unknown slot" 'slot)))))
          (lambda (_self274810_ _stx274811_ _args274812_)
            (let* ((_g274814274824_
                    (lambda (_g274815274821_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274815274821_))))
                   (_g274813274862_
                    (lambda (_g274815274827_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g274815274827_))
                          (let ((_e274819274829_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g274815274827_))))
                            (let ((_hd274818274832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e274819274829_)))
                                  (_tl274817274834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e274819274829_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl274817274834_))
                                  ((lambda (_L274837_)
                                     (let* ((_klass274848_
                                             (let ((__tmp280615
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274810_
                                                       __id279664
                                                       __t279663
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx274811_
                                                __tmp280615)))
                                            (_field274850_
                                             (let ((__tmp280616
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self274810_
                                                       __slot279666
                                                       __t279663
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass274848_
                                                __tmp280616)))
                                            (_object274852_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L274837_))))
                                       (if (##structure-ref
                                            _klass274848_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp280693
                                                  (let ((__tmp280702
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self274810_
                        __checked?279665
                        __t279663
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp280694
                 (let ((__tmp280699
                        (let ((__tmp280700
                               (let ((__tmp280701
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self274810_
                                         __id279664
                                         __t279663
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp280701 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp280700)))
                       (__tmp280695
                        (let ((__tmp280697
                               (let ((__tmp280698
                                      (let ()
                                        (declare (not safe))
                                        (cons _field274850_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp280698)))
                              (__tmp280696
                               (let ()
                                 (declare (not safe))
                                 (cons _object274852_ '()))))
                          (declare (not safe))
                          (cons __tmp280697 __tmp280696))))
                   (declare (not safe))
                   (cons __tmp280699 __tmp280695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp280702
                                                          __tmp280694))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp280693
                                              _stx274811_))
                                           (if (##structure-ref
                                                _klass274848_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp280683
                                                      (let ((__tmp280692
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self274810_
                            __checked?279665
                            __t279663
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp280684
                     (let ((__tmp280689
                            (let ((__tmp280690
                                   (let ((__tmp280691
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self274810_
                                             __id279664
                                             __t279663
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp280691 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp280690)))
                           (__tmp280685
                            (let ((__tmp280687
                                   (let ((__tmp280688
                                          (let ()
                                            (declare (not safe))
                                            (cons _field274850_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp280688)))
                                  (__tmp280686
                                   (let ()
                                     (declare (not safe))
                                     (cons _object274852_ '()))))
                              (declare (not safe))
                              (cons __tmp280687 __tmp280686))))
                       (declare (not safe))
                       (cons __tmp280689 __tmp280685))))
                (declare (not safe))
                (cons __tmp280692 __tmp280684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp280683
                                                  _stx274811_))
                                               (let ((_$e274855_
                                                      (let ((__tmp280617
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self274810_
                        __slot279666
                        __t279663
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass274848_ __tmp280617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e274855_
                                                     ((lambda (_klass274858_)
                                                        (let ((__tmp280673
                                                               (let ((__tmp280682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self274810_
                                     __checked?279665
                                     __t279663
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp280674
                              (let ((__tmp280679
                                     (let ((__tmp280680
                                            (let ((__tmp280681
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self274810_
                                                      __id279664
                                                      __t279663
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp280681 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp280680)))
                                    (__tmp280675
                                     (let ((__tmp280677
                                            (let ((__tmp280678
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field274850_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp280678)))
                                           (__tmp280676
                                            (let ()
                                              (declare (not safe))
                                              (cons _object274852_ '()))))
                                       (declare (not safe))
                                       (cons __tmp280677 __tmp280676))))
                                (declare (not safe))
                                (cons __tmp280679 __tmp280675))))
                         (declare (not safe))
                         (cons __tmp280682 __tmp280674))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp280673 _stx274811_)))
              _$e274855_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self274810_
                                                            __checked?279665
                                                            __t279663
                                                            '#f))
                                                         (let ((__tmp280627
                                                                (let* ((_$obj274860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp280628 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp280628)))
                               (__tmp280629
                                (let ((__tmp280669
                                       (let ((__tmp280670
                                              (let ((__tmp280672
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj274860_
                                                             '())))
                                                    (__tmp280671
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object274852_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp280672
                                                      __tmp280671))))
                                         (declare (not safe))
                                         (cons __tmp280670 '())))
                                      (__tmp280630
                                       (let ((__tmp280631
                                              (let ((__tmp280632
                                                     (let ((__tmp280661
                                                            (let ((__tmp280662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280666
                                  (let ((__tmp280667
                                         (let ((__tmp280668
                                                (##structure-ref
                                                 _klass274848_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp280668 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp280667)))
                                 (__tmp280663
                                  (let ((__tmp280664
                                         (let ((__tmp280665
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj274860_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp280665))))
                                    (declare (not safe))
                                    (cons __tmp280664 '()))))
                             (declare (not safe))
                             (cons __tmp280666 __tmp280663))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp280662)))
                   (__tmp280633
                    (let ((__tmp280650
                           (let ((__tmp280651
                                  (let ((__tmp280658
                                         (let ((__tmp280659
                                                (let ((__tmp280660
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self274810_
                                                          __id279664
                                                          __t279663
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp280660 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp280659)))
                                        (__tmp280652
                                         (let ((__tmp280656
                                                (let ((__tmp280657
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field274850_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp280657)))
                                               (__tmp280653
                                                (let ((__tmp280654
                                                       (let ((__tmp280655
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj274860_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp280655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280654 '()))))
                                           (declare (not safe))
                                           (cons __tmp280656 __tmp280653))))
                                    (declare (not safe))
                                    (cons __tmp280658 __tmp280652))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp280651)))
                          (__tmp280634
                           (let ((__tmp280635
                                  (let ((__tmp280636
                                         (let ((__tmp280648
                                                (let ((__tmp280649
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp280649)))
                                               (__tmp280637
                                                (let ((__tmp280645
                                                       (let ((__tmp280646
                                                              (let ((__tmp280647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self274810_
                                __id279664
                                __t279663
                                '#f))))
                        (declare (not safe))
                        (cons __tmp280647 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp280646)))
              (__tmp280638
               (let ((__tmp280643
                      (let ((__tmp280644
                             (let ()
                               (declare (not safe))
                               (cons _$obj274860_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp280644)))
                     (__tmp280639
                      (let ((__tmp280640
                             (let ((__tmp280641
                                    (let ((__tmp280642
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self274810_
                                              __slot279666
                                              __t279663
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp280642 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp280641))))
                        (declare (not safe))
                        (cons __tmp280640 '()))))
                 (declare (not safe))
                 (cons __tmp280643 __tmp280639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280645
                                                        __tmp280638))))
                                           (declare (not safe))
                                           (cons __tmp280648 __tmp280637))))
                                    (declare (not safe))
                                    (cons '%#call __tmp280636))))
                             (declare (not safe))
                             (cons __tmp280635 '()))))
                      (declare (not safe))
                      (cons __tmp280650 __tmp280634))))
               (declare (not safe))
               (cons __tmp280661 __tmp280633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp280632))))
                                         (declare (not safe))
                                         (cons __tmp280631 '()))))
                                  (declare (not safe))
                                  (cons __tmp280669 __tmp280630))))
                          (declare (not safe))
                          (cons '%#let-values __tmp280629))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp280627 _stx274811_))
                 (let ((__tmp280618
                        (let ((__tmp280619
                               (let ((__tmp280625
                                      (let ((__tmp280626
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp280626)))
                                     (__tmp280620
                                      (let ((__tmp280621
                                             (let ((__tmp280622
                                                    (let ((__tmp280623
                                                           (let ((__tmp280624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self274810_
                             __slot279666
                             __t279663
                             '#f))))
                     (declare (not safe))
                     (cons __tmp280624 '()))))
              (declare (not safe))
              (cons '%#quote __tmp280623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp280622 '()))))
                                        (declare (not safe))
                                        (cons _object274852_ __tmp280621))))
                                 (declare (not safe))
                                 (cons __tmp280625 __tmp280620))))
                          (declare (not safe))
                          (cons '%#call __tmp280619))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp280618 _stx274811_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd274818274832_)
                                  (let ()
                                    (declare (not safe))
                                    (_g274814274824_ _g274815274827_)))))
                          (let ()
                            (declare (not safe))
                            (_g274814274824_ _g274815274827_))))))
              (declare (not safe))
              (_g274813274862_ _args274812_))))))
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
      (lambda (_self274615_ _stx274616_ _args274617_)
        (let* ((_g274619274633_
                (lambda (_g274620274630_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g274620274630_))))
               (_g274618274685_
                (lambda (_g274620274636_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g274620274636_))
                      (let ((_e274625274638_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g274620274636_))))
                        (let ((_hd274624274641_
                               (let ()
                                 (declare (not safe))
                                 (##car _e274625274638_)))
                              (_tl274623274643_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e274625274638_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl274623274643_))
                              (let ((_e274628274646_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl274623274643_))))
                                (let ((_hd274627274649_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e274628274646_)))
                                      (_tl274626274651_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e274628274646_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl274626274651_))
                                      ((lambda (_L274654_ _L274655_)
                                         (let* ((_klass274669_
                                                 (let ((__tmp280703
                                                        (##structure-ref
                                                         _self274615_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx274616_
                                                    __tmp280703)))
                                                (_field274671_
                                                 (let ((__tmp280704
                                                        (##structure-ref
                                                         _self274615_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass274669_
                                                    __tmp280704)))
                                                (_object274673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L274655_)))
                                                (_value274675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L274654_))))
                                           (if (##structure-ref
                                                _klass274669_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp280786
                                                      (let ((__tmp280796
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self274615_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp280787
                     (let ((__tmp280793
                            (let ((__tmp280794
                                   (let ((__tmp280795
                                          (##structure-ref
                                           _self274615_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp280795 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp280794)))
                           (__tmp280788
                            (let ((__tmp280791
                                   (let ((__tmp280792
                                          (let ()
                                            (declare (not safe))
                                            (cons _field274671_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp280792)))
                                  (__tmp280789
                                   (let ((__tmp280790
                                          (let ()
                                            (declare (not safe))
                                            (cons _value274675_ '()))))
                                     (declare (not safe))
                                     (cons _object274673_ __tmp280790))))
                              (declare (not safe))
                              (cons __tmp280791 __tmp280789))))
                       (declare (not safe))
                       (cons __tmp280793 __tmp280788))))
                (declare (not safe))
                (cons __tmp280796 __tmp280787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp280786
                                                  _stx274616_))
                                               (if (##structure-ref
                                                    _klass274669_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp280775
                                                          (let ((__tmp280785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self274615_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp280776
                         (let ((__tmp280782
                                (let ((__tmp280783
                                       (let ((__tmp280784
                                              (##structure-ref
                                               _self274615_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp280784 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp280783)))
                               (__tmp280777
                                (let ((__tmp280780
                                       (let ((__tmp280781
                                              (let ()
                                                (declare (not safe))
                                                (cons _field274671_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp280781)))
                                      (__tmp280778
                                       (let ((__tmp280779
                                              (let ()
                                                (declare (not safe))
                                                (cons _value274675_ '()))))
                                         (declare (not safe))
                                         (cons _object274673_ __tmp280779))))
                                  (declare (not safe))
                                  (cons __tmp280780 __tmp280778))))
                           (declare (not safe))
                           (cons __tmp280782 __tmp280777))))
                    (declare (not safe))
                    (cons __tmp280785 __tmp280776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp280775
                                                      _stx274616_))
                                                   (let ((_$e274678_
                                                          (let ((__tmp280705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self274615_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass274669_ __tmp280705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e274678_
                                                         ((lambda (_klass274681_)
                                                            (let ((__tmp280764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280774
                                  (if (##structure-ref
                                       _self274615_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp280765
                                  (let ((__tmp280771
                                         (let ((__tmp280772
                                                (let ((__tmp280773
                                                       (##structure-ref
                                                        _self274615_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp280773 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp280772)))
                                        (__tmp280766
                                         (let ((__tmp280769
                                                (let ((__tmp280770
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field274671_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp280770)))
                                               (__tmp280767
                                                (let ((__tmp280768
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value274675_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object274673_
                                                        __tmp280768))))
                                           (declare (not safe))
                                           (cons __tmp280769 __tmp280767))))
                                    (declare (not safe))
                                    (cons __tmp280771 __tmp280766))))
                             (declare (not safe))
                             (cons __tmp280774 __tmp280765))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp280764 _stx274616_)))
                  _$e274678_)
                 (if (##structure-ref _self274615_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp280716
                            (let* ((_$obj274683_
                                    (let ((__tmp280717 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp280717)))
                                   (__tmp280718
                                    (let ((__tmp280760
                                           (let ((__tmp280761
                                                  (let ((__tmp280763
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj274683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp280762
                 (let () (declare (not safe)) (cons _object274673_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp280763
                                                          __tmp280762))))
                                             (declare (not safe))
                                             (cons __tmp280761 '())))
                                          (__tmp280719
                                           (let ((__tmp280720
                                                  (let ((__tmp280721
                                                         (let ((__tmp280752
                                                                (let ((__tmp280753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp280757
                                      (let ((__tmp280758
                                             (let ((__tmp280759
                                                    (##structure-ref
                                                     _klass274669_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp280759 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp280758)))
                                     (__tmp280754
                                      (let ((__tmp280755
                                             (let ((__tmp280756
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj274683_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp280756))))
                                        (declare (not safe))
                                        (cons __tmp280755 '()))))
                                 (declare (not safe))
                                 (cons __tmp280757 __tmp280754))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp280753)))
                       (__tmp280722
                        (let ((__tmp280740
                               (let ((__tmp280741
                                      (let ((__tmp280749
                                             (let ((__tmp280750
                                                    (let ((__tmp280751
                                                           (##structure-ref
                                                            _self274615_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp280751 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp280750)))
                                            (__tmp280742
                                             (let ((__tmp280747
                                                    (let ((__tmp280748
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field274671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp280748)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp280743
                                                    (let ((__tmp280745
                                                           (let ((__tmp280746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj274683_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp280746)))
                  (__tmp280744
                   (let () (declare (not safe)) (cons _value274675_ '()))))
              (declare (not safe))
              (cons __tmp280745 __tmp280744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp280747
                                                     __tmp280743))))
                                        (declare (not safe))
                                        (cons __tmp280749 __tmp280742))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp280741)))
                              (__tmp280723
                               (let ((__tmp280724
                                      (let ((__tmp280725
                                             (let ((__tmp280738
                                                    (let ((__tmp280739
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp280739)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp280726
                                                    (let ((__tmp280735
                                                           (let ((__tmp280736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp280737
                                 (##structure-ref
                                  _self274615_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp280737 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp280736)))
                  (__tmp280727
                   (let ((__tmp280733
                          (let ((__tmp280734
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj274683_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp280734)))
                         (__tmp280728
                          (let ((__tmp280730
                                 (let ((__tmp280731
                                        (let ((__tmp280732
                                               (##structure-ref
                                                _self274615_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp280732 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp280731)))
                                (__tmp280729
                                 (let ()
                                   (declare (not safe))
                                   (cons _value274675_ '()))))
                            (declare (not safe))
                            (cons __tmp280730 __tmp280729))))
                     (declare (not safe))
                     (cons __tmp280733 __tmp280728))))
              (declare (not safe))
              (cons __tmp280735 __tmp280727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp280738
                                                     __tmp280726))))
                                        (declare (not safe))
                                        (cons '%#call __tmp280725))))
                                 (declare (not safe))
                                 (cons __tmp280724 '()))))
                          (declare (not safe))
                          (cons __tmp280740 __tmp280723))))
                   (declare (not safe))
                   (cons __tmp280752 __tmp280722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp280721))))
                                             (declare (not safe))
                                             (cons __tmp280720 '()))))
                                      (declare (not safe))
                                      (cons __tmp280760 __tmp280719))))
                              (declare (not safe))
                              (cons '%#let-values __tmp280718))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp280716 _stx274616_))
                     (let ((__tmp280706
                            (let ((__tmp280707
                                   (let ((__tmp280714
                                          (let ((__tmp280715
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp280715)))
                                         (__tmp280708
                                          (let ((__tmp280709
                                                 (let ((__tmp280711
                                                        (let ((__tmp280712
                                                               (let ((__tmp280713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self274615_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp280713 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp280712)))
               (__tmp280710
                (let () (declare (not safe)) (cons _value274675_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280711
                                                         __tmp280710))))
                                            (declare (not safe))
                                            (cons _object274673_
                                                  __tmp280709))))
                                     (declare (not safe))
                                     (cons __tmp280714 __tmp280708))))
                              (declare (not safe))
                              (cons '%#call __tmp280707))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp280706 _stx274616_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd274627274649_
                                       _hd274624274641_)
                                      (let ()
                                        (declare (not safe))
                                        (_g274619274633_ _g274620274636_)))))
                              (let ()
                                (declare (not safe))
                                (_g274619274633_ _g274620274636_)))))
                      (let ()
                        (declare (not safe))
                        (_g274619274633_ _g274620274636_))))))
          (declare (not safe))
          (_g274618274685_ _args274617_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t279670)
        (let ((__id279671
               (let ((__tmp279674
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t279670 'id))))
                 (if __tmp279674 __tmp279674 (error '"Unknown slot" 'id))))
              (__checked?279672
               (let ((__tmp279675
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t279670 'checked?))))
                 (if __tmp279675
                     __tmp279675
                     (error '"Unknown slot" 'checked?))))
              (__slot279673
               (let ((__tmp279676
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t279670 'slot))))
                 (if __tmp279676 __tmp279676 (error '"Unknown slot" 'slot)))))
          (lambda (_self274615_ _stx274616_ _args274617_)
            (let* ((_g274619274633_
                    (lambda (_g274620274630_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g274620274630_))))
                   (_g274618274685_
                    (lambda (_g274620274636_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g274620274636_))
                          (let ((_e274625274638_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g274620274636_))))
                            (let ((_hd274624274641_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e274625274638_)))
                                  (_tl274623274643_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e274625274638_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl274623274643_))
                                  (let ((_e274628274646_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl274623274643_))))
                                    (let ((_hd274627274649_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e274628274646_)))
                                          (_tl274626274651_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e274628274646_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl274626274651_))
                                          ((lambda (_L274654_ _L274655_)
                                             (let* ((_klass274669_
                                                     (let ((__tmp280797
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self274615_
                                                               __id279671
                                                               __t279670
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx274616_
                                                        __tmp280797)))
                                                    (_field274671_
                                                     (let ((__tmp280798
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self274615_
                                                               __slot279673
                                                               __t279670
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass274669_
                                                        __tmp280798)))
                                                    (_object274673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L274655_)))
                                                    (_value274675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L274654_))))
                                               (if (##structure-ref
                                                    _klass274669_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp280880
                                                          (let ((__tmp280890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self274615_
                                __checked?279672
                                __t279670
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp280881
                         (let ((__tmp280887
                                (let ((__tmp280888
                                       (let ((__tmp280889
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self274615_
                                                 __id279671
                                                 __t279670
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp280889 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp280888)))
                               (__tmp280882
                                (let ((__tmp280885
                                       (let ((__tmp280886
                                              (let ()
                                                (declare (not safe))
                                                (cons _field274671_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp280886)))
                                      (__tmp280883
                                       (let ((__tmp280884
                                              (let ()
                                                (declare (not safe))
                                                (cons _value274675_ '()))))
                                         (declare (not safe))
                                         (cons _object274673_ __tmp280884))))
                                  (declare (not safe))
                                  (cons __tmp280885 __tmp280883))))
                           (declare (not safe))
                           (cons __tmp280887 __tmp280882))))
                    (declare (not safe))
                    (cons __tmp280890 __tmp280881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp280880
                                                      _stx274616_))
                                                   (if (##structure-ref
                                                        _klass274669_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp280869
                                                              (let ((__tmp280879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self274615_
                                    __checked?279672
                                    __t279670
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp280870
                             (let ((__tmp280876
                                    (let ((__tmp280877
                                           (let ((__tmp280878
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self274615_
                                                     __id279671
                                                     __t279670
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp280878 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp280877)))
                                   (__tmp280871
                                    (let ((__tmp280874
                                           (let ((__tmp280875
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field274671_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp280875)))
                                          (__tmp280872
                                           (let ((__tmp280873
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value274675_ '()))))
                                             (declare (not safe))
                                             (cons _object274673_
                                                   __tmp280873))))
                                      (declare (not safe))
                                      (cons __tmp280874 __tmp280872))))
                               (declare (not safe))
                               (cons __tmp280876 __tmp280871))))
                        (declare (not safe))
                        (cons __tmp280879 __tmp280870))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp280869 _stx274616_))
               (let ((_$e274678_
                      (let ((__tmp280799
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self274615_
                                __slot279673
                                __t279670
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass274669_
                         __tmp280799))))
                 (if _$e274678_
                     ((lambda (_klass274681_)
                        (let ((__tmp280858
                               (let ((__tmp280868
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self274615_
                                             __checked?279672
                                             __t279670
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp280859
                                      (let ((__tmp280865
                                             (let ((__tmp280866
                                                    (let ((__tmp280867
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self274615_
                                                              __id279671
                                                              __t279670
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp280867 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp280866)))
                                            (__tmp280860
                                             (let ((__tmp280863
                                                    (let ((__tmp280864
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field274671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp280864)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp280861
                                                    (let ((__tmp280862
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value274675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object274673_ __tmp280862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp280863
                                                     __tmp280861))))
                                        (declare (not safe))
                                        (cons __tmp280865 __tmp280860))))
                                 (declare (not safe))
                                 (cons __tmp280868 __tmp280859))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp280858 _stx274616_)))
                      _$e274678_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self274615_
                            __checked?279672
                            __t279670
                            '#f))
                         (let ((__tmp280810
                                (let* ((_$obj274683_
                                        (let ((__tmp280811 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp280811)))
                                       (__tmp280812
                                        (let ((__tmp280854
                                               (let ((__tmp280855
                                                      (let ((__tmp280857
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj274683_ '())))
                    (__tmp280856
                     (let () (declare (not safe)) (cons _object274673_ '()))))
                (declare (not safe))
                (cons __tmp280857 __tmp280856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp280855 '())))
                                              (__tmp280813
                                               (let ((__tmp280814
                                                      (let ((__tmp280815
                                                             (let ((__tmp280846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp280847
                                   (let ((__tmp280851
                                          (let ((__tmp280852
                                                 (let ((__tmp280853
                                                        (##structure-ref
                                                         _klass274669_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp280853 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp280852)))
                                         (__tmp280848
                                          (let ((__tmp280849
                                                 (let ((__tmp280850
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj274683_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp280850))))
                                            (declare (not safe))
                                            (cons __tmp280849 '()))))
                                     (declare (not safe))
                                     (cons __tmp280851 __tmp280848))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp280847)))
                           (__tmp280816
                            (let ((__tmp280834
                                   (let ((__tmp280835
                                          (let ((__tmp280843
                                                 (let ((__tmp280844
                                                        (let ((__tmp280845
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self274615_
                          __id279671
                          __t279670
                          '#f))))
                  (declare (not safe))
                  (cons __tmp280845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp280844)))
                                                (__tmp280836
                                                 (let ((__tmp280841
                                                        (let ((__tmp280842
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field274671_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp280842)))
               (__tmp280837
                (let ((__tmp280839
                       (let ((__tmp280840
                              (let ()
                                (declare (not safe))
                                (cons _$obj274683_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp280840)))
                      (__tmp280838
                       (let () (declare (not safe)) (cons _value274675_ '()))))
                  (declare (not safe))
                  (cons __tmp280839 __tmp280838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280841
                                                         __tmp280837))))
                                            (declare (not safe))
                                            (cons __tmp280843 __tmp280836))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp280835)))
                                  (__tmp280817
                                   (let ((__tmp280818
                                          (let ((__tmp280819
                                                 (let ((__tmp280832
                                                        (let ((__tmp280833
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp280833)))
               (__tmp280820
                (let ((__tmp280829
                       (let ((__tmp280830
                              (let ((__tmp280831
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self274615_
                                        __id279671
                                        __t279670
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp280831 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp280830)))
                      (__tmp280821
                       (let ((__tmp280827
                              (let ((__tmp280828
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj274683_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp280828)))
                             (__tmp280822
                              (let ((__tmp280824
                                     (let ((__tmp280825
                                            (let ((__tmp280826
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self274615_
                                                      __slot279673
                                                      __t279670
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp280826 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp280825)))
                                    (__tmp280823
                                     (let ()
                                       (declare (not safe))
                                       (cons _value274675_ '()))))
                                (declare (not safe))
                                (cons __tmp280824 __tmp280823))))
                         (declare (not safe))
                         (cons __tmp280827 __tmp280822))))
                  (declare (not safe))
                  (cons __tmp280829 __tmp280821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp280832
                                                         __tmp280820))))
                                            (declare (not safe))
                                            (cons '%#call __tmp280819))))
                                     (declare (not safe))
                                     (cons __tmp280818 '()))))
                              (declare (not safe))
                              (cons __tmp280834 __tmp280817))))
                       (declare (not safe))
                       (cons __tmp280846 __tmp280816))))
                (declare (not safe))
                (cons '%#if __tmp280815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp280814 '()))))
                                          (declare (not safe))
                                          (cons __tmp280854 __tmp280813))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp280812))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp280810 _stx274616_))
                         (let ((__tmp280800
                                (let ((__tmp280801
                                       (let ((__tmp280808
                                              (let ((__tmp280809
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp280809)))
                                             (__tmp280802
                                              (let ((__tmp280803
                                                     (let ((__tmp280805
                                                            (let ((__tmp280806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280807
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self274615_
                                     __slot279673
                                     __t279670
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp280807 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp280806)))
                   (__tmp280804
                    (let () (declare (not safe)) (cons _value274675_ '()))))
               (declare (not safe))
               (cons __tmp280805 __tmp280804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object274673_
                                                      __tmp280803))))
                                         (declare (not safe))
                                         (cons __tmp280808 __tmp280802))))
                                  (declare (not safe))
                                  (cons '%#call __tmp280801))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp280800
                            _stx274616_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd274627274649_
                                           _hd274624274641_)
                                          (let ()
                                            (declare (not safe))
                                            (_g274619274633_
                                             _g274620274636_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g274619274633_ _g274620274636_)))))
                          (let ()
                            (declare (not safe))
                            (_g274619274633_ _g274620274636_))))))
              (declare (not safe))
              (_g274618274685_ _args274617_))))))
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
    (define gxc#!struct-pred::optimize-call
      (lambda (_self274347_ _stx274348_ _args274349_)
        (let* ((_self274350274356_ _self274347_)
               (_E274352274360_
                (lambda () (error '"No clause matching" _self274350274356_)))
               (_K274353274485_
                (lambda (_struct-t274363_)
                  (let* ((_struct-type274365_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t274363_)))
                         (_struct-type274366274380_ _struct-type274365_)
                         (_else274369274388_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx274348_
                               _struct-t274363_
                               _struct-type274365_)))))
                    (let ((_K274372274460_
                           (lambda (_plist274399_ _struct-type-id274400_)
                             (let* ((___stx279818279819_ _args274349_)
                                    (_g274403274413_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx279818279819_)))))
                               (let ((___kont279820279821_
                                      (lambda (_L274433_)
                                        (let ((_expr274454_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__0 _L274433_)))
                                              (_op274455_
                                               (if (and _plist274399_
                                                        (let ()
                                                          (declare (not safe))
                                                          (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _plist274399_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '%#struct-direct-instance?
                                                   '%#struct-instance?)))
                                          (let ((__tmp280891
                                                 (let ((__tmp280892
                                                        (let ((__tmp280894
                                                               (let ((__tmp280895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _struct-type-id274400_ '()))))
                         (declare (not safe))
                         (cons '%#quote __tmp280895)))
                      (__tmp280893
                       (let () (declare (not safe)) (cons _expr274454_ '()))))
                  (declare (not safe))
                  (cons __tmp280894 __tmp280893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _op274455_
                                                         __tmp280892))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp280891
                                             _stx274348_)))))
                                     (___kont279822279823_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal struct predicate application"
                                           _stx274348_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx279818279819_))
                                     (let ((_e274408274425_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx279818279819_))))
                                       (let ((_tl274406274430_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e274408274425_)))
                                             (_hd274407274428_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e274408274425_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl274406274430_))
                                             (___kont279820279821_
                                              _hd274407274428_)
                                             (___kont279822279823_))))
                                     (___kont279822279823_))))))
                          (_K274371274393_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx274348_)))))
                      (let ((_try-match274368274396_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type274366274380_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K274371274393_))
                                   (let ()
                                     (declare (not safe))
                                     (_else274369274388_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type274366274380_
                               'gxc#!struct-type::t))
                            (let* ((_e274373274463_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274366274380_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                   (_e274374274468_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274366274380_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e274375274471_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274366274380_
                                       '3
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e274376274474_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274366274380_
                                       '4
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e274377274477_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274366274380_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e274378274480_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274366274380_
                                       '6
                                       gxc#!struct-type::t
                                       '#f))))
                              (let ((_struct-type-id274466_ _e274373274463_)
                                    (_plist274483_ _e274378274480_))
                                (let ()
                                  (declare (not safe))
                                  (_K274372274460_
                                   _plist274483_
                                   _struct-type-id274466_))))
                            (let ()
                              (declare (not safe))
                              (_try-match274368274396_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274350274356_
                 'gxc#!struct-pred::t))
              (let* ((_e274354274488_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274350274356_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_struct-t274491_ _e274354274488_))
                (declare (not safe))
                (_K274353274485_ _struct-t274491_))
              (let () (declare (not safe)) (_E274352274360_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'optimize-call
       gxc#!struct-pred::optimize-call
       '#f))
    (define gxc#!struct-cons::optimize-call
      (lambda (_self274121_ _stx274122_ _args274123_)
        (let* ((_self274124274130_ _self274121_)
               (_E274126274134_
                (lambda () (error '"No clause matching" _self274124274130_)))
               (_K274127274217_
                (lambda (_struct-t274137_)
                  (let* ((_struct-type274139_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t274137_)))
                         (_struct-type274140274153_ _struct-type274139_)
                         (_else274143274161_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct constructor application; not a struct type"
                               _stx274122_
                               _struct-t274137_
                               _struct-type274139_)))))
                    (let ((_K274146274191_
                           (lambda (_ctor274172_
                                    _xfields274173_
                                    _fields274174_
                                    _type-id274175_)
                             (let* ((_args274177_
                                     (map gxc#compile-e _args274123_))
                                    (_$e274179_
                                     (if _ctor274172_
                                         (if _xfields274173_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!struct-type-lookup-method
                                                _struct-type274139_
                                                _ctor274172_))
                                             '#f)
                                         '#f)))
                               (if _$e274179_
                                   ((lambda (_kons274182_)
                                      (let* ((_$obj274184_
                                              (let ((__tmp280910
                                                     (gensym '__obj)))
                                                (declare (not safe))
                                                (make-symbol__0 __tmp280910)))
                                             (__tmp280911
                                              (let ((__tmp280912
                                                     (let ((__tmp280928
                                                            (let ((__tmp280929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280942
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj274184_ '())))
                                 (__tmp280930
                                  (let ((__tmp280931
                                         (let ((__tmp280932
                                                (let ((__tmp280940
                                                       (let ((__tmp280941
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp280941)))
              (__tmp280933
               (let ((__tmp280938
                      (let ((__tmp280939
                             (let ()
                               (declare (not safe))
                               (cons _struct-t274137_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp280939)))
                     (__tmp280934
                      (let ((__tmp280935
                             (let ((__tmp280936
                                    (let ((__tmp280937
                                           (fx+ _fields274174_
                                                _xfields274173_)))
                                      (declare (not safe))
                                      (cons __tmp280937 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp280936))))
                        (declare (not safe))
                        (cons __tmp280935 '()))))
                 (declare (not safe))
                 (cons __tmp280938 __tmp280934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp280940
                                                        __tmp280933))))
                                           (declare (not safe))
                                           (cons '%#call __tmp280932))))
                                    (declare (not safe))
                                    (cons __tmp280931 '()))))
                             (declare (not safe))
                             (cons __tmp280942 __tmp280930))))
                      (declare (not safe))
                      (cons __tmp280929 '())))
                   (__tmp280913
                    (let ((__tmp280914
                           (let ((__tmp280915
                                  (let ((__tmp280919
                                         (let ((__tmp280920
                                                (let ((__tmp280921
                                                       (let ((__tmp280922
                                                              (let ((__tmp280926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp280927
                                    (let ()
                                      (declare (not safe))
                                      (cons _kons274182_ '()))))
                               (declare (not safe))
                               (cons '%#ref __tmp280927)))
                            (__tmp280923
                             (let ((__tmp280924
                                    (let ((__tmp280925
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj274184_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp280925))))
                               (declare (not safe))
                               (cons __tmp280924 _args274177_))))
                        (declare (not safe))
                        (cons __tmp280926 __tmp280923))))
                 (declare (not safe))
                 (cons '%#call __tmp280922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp280921
                                                   _stx274122_))))
                                           (declare (not safe))
                                           (gxc#compile-e__0 __tmp280920)))
                                        (__tmp280916
                                         (let ((__tmp280917
                                                (let ((__tmp280918
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj274184_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp280918))))
                                           (declare (not safe))
                                           (cons __tmp280917 '()))))
                                    (declare (not safe))
                                    (cons __tmp280919 __tmp280916))))
                             (declare (not safe))
                             (cons '%#begin __tmp280915))))
                      (declare (not safe))
                      (cons __tmp280914 '()))))
               (declare (not safe))
               (cons __tmp280928 __tmp280913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp280912))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp280911
                                         _stx274122_)))
                                    _$e274179_)
                                   (if (or _ctor274172_
                                           (let ()
                                             (declare (not safe))
                                             (not _xfields274173_)))
                                       (let ((__tmp280903
                                              (let ((__tmp280904
                                                     (let ((__tmp280908
                                                            (let ((__tmp280909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons 'make-struct-instance '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp280909)))
                   (__tmp280905
                    (let ((__tmp280906
                           (let ((__tmp280907
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t274137_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280907))))
                      (declare (not safe))
                      (cons __tmp280906 _args274177_))))
               (declare (not safe))
               (cons __tmp280908 __tmp280905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp280904))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp280903
                                          _stx274122_))
                                       (let ((_arity274189_
                                              (fx+ _fields274174_
                                                   _xfields274173_)))
                                         (if (fx= _arity274189_
                                                  (length _args274177_))
                                             (let ((__tmp280896
                                                    (let ((__tmp280897
                                                           (let ((__tmp280901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp280902
                                 (let ()
                                   (declare (not safe))
                                   (cons '##structure '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp280902)))
                         (__tmp280898
                          (let ((__tmp280899
                                 (let ((__tmp280900
                                        (let ()
                                          (declare (not safe))
                                          (cons _struct-t274137_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp280900))))
                            (declare (not safe))
                            (cons __tmp280899 _args274177_))))
                     (declare (not safe))
                     (cons __tmp280901 __tmp280898))))
              (declare (not safe))
              (cons '%#call __tmp280897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp280896
                                                _stx274122_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"Illegal struct constructor application; arity mismatch"
                                                _stx274122_
                                                _struct-t274137_
                                                _arity274189_)))))))))
                          (_K274145274166_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline struct constructor; unknown struct type "
                                _struct-t274137_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx274122_)))))
                      (let ((_try-match274142274169_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type274140274153_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K274145274166_))
                                   (let ()
                                     (declare (not safe))
                                     (_else274143274161_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type274140274153_
                               'gxc#!struct-type::t))
                            (let* ((_e274147274194_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274140274153_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                   (_e274148274199_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274140274153_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e274149274202_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274140274153_
                                       '3
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e274150274207_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274140274153_
                                       '4
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e274151274212_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type274140274153_
                                       '5
                                       gxc#!struct-type::t
                                       '#f))))
                              (let ((_type-id274197_ _e274147274194_)
                                    (_fields274205_ _e274149274202_)
                                    (_xfields274210_ _e274150274207_)
                                    (_ctor274215_ _e274151274212_))
                                (let ()
                                  (declare (not safe))
                                  (_K274146274191_
                                   _ctor274215_
                                   _xfields274210_
                                   _fields274205_
                                   _type-id274197_))))
                            (let ()
                              (declare (not safe))
                              (_try-match274142274169_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274124274130_
                 'gxc#!struct-cons::t))
              (let* ((_e274128274220_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274124274130_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_struct-t274223_ _e274128274220_))
                (declare (not safe))
                (_K274127274217_ _struct-t274223_))
              (let () (declare (not safe)) (_E274126274134_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'optimize-call
       gxc#!struct-cons::optimize-call
       '#f))
    (define gxc#!struct-getf::optimize-call
      (lambda (_self273832_ _stx273833_ _args273834_)
        (let* ((_self273835273843_ _self273832_)
               (_E273837273847_
                (lambda () (error '"No clause matching" _self273835273843_)))
               (_K273838273981_
                (lambda (_unchecked?273850_ _off273851_ _struct-t273852_)
                  (let* ((_struct-type273854_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t273852_)))
                         (_struct-type273855273869_ _struct-type273854_)
                         (_else273858273877_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx273833_
                               _struct-t273852_
                               _struct-type273854_)))))
                    (let ((_K273861273952_
                           (lambda (_plist273888_
                                    _xfields273889_
                                    _fields273890_
                                    _struct-type-id273891_)
                             (if _xfields273889_
                                 (let* ((___stx279866279867_ _args273834_)
                                        (_g273894273904_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx279866279867_)))))
                                   (let ((___kont279868279869_
                                          (lambda (_L273924_)
                                            (let ((_expr273945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L273924_)))
                                                  (_off273946_
                                                   (fx+ _off273851_
                                                        _xfields273889_
                                                        '1))
                                                  (_op273947_
                                                   (if _unchecked?273850_
                                                       '%#struct-unchecked-ref
                                                       (if (and _plist273888_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist273888_)))
                   '%#struct-direct-ref
                   '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp280943
                                                     (let ((__tmp280944
                                                            (let ((__tmp280949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280950
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t273852_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280950)))
                          (__tmp280945
                           (let ((__tmp280947
                                  (let ((__tmp280948
                                         (let ()
                                           (declare (not safe))
                                           (cons _off273946_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp280948)))
                                 (__tmp280946
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr273945_ '()))))
                             (declare (not safe))
                             (cons __tmp280947 __tmp280946))))
                      (declare (not safe))
                      (cons __tmp280949 __tmp280945))))
               (declare (not safe))
               (cons _op273947_ __tmp280944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp280943
                                                 _stx273833_)))))
                                         (___kont279870279871_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct accessor application"
                                               _stx273833_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx279866279867_))
                                         (let ((_e273899273916_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx279866279867_))))
                                           (let ((_tl273897273921_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e273899273916_)))
                                                 (_hd273898273919_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e273899273916_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _tl273897273921_))
                                                 (___kont279868279869_
                                                  _hd273898273919_)
                                                 (___kont279870279871_))))
                                         (___kont279870279871_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-getf: incomplete struct "
                                      _struct-type-id273891_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx273833_))))))
                          (_K273860273882_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx273833_)))))
                      (let ((_try-match273857273885_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type273855273869_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K273860273882_))
                                   (let ()
                                     (declare (not safe))
                                     (_else273858273877_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type273855273869_
                               'gxc#!struct-type::t))
                            (let* ((_e273862273955_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273855273869_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                   (_e273863273960_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273855273869_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e273864273963_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273855273869_
                                       '3
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e273865273968_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273855273869_
                                       '4
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e273866273973_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273855273869_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e273867273976_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273855273869_
                                       '6
                                       gxc#!struct-type::t
                                       '#f))))
                              (let ((_struct-type-id273958_ _e273862273955_)
                                    (_fields273966_ _e273864273963_)
                                    (_xfields273971_ _e273865273968_)
                                    (_plist273979_ _e273867273976_))
                                (let ()
                                  (declare (not safe))
                                  (_K273861273952_
                                   _plist273979_
                                   _xfields273971_
                                   _fields273966_
                                   _struct-type-id273958_))))
                            (let ()
                              (declare (not safe))
                              (_try-match273857273885_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273835273843_
                 'gxc#!struct-getf::t))
              (let* ((_e273839273984_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273835273843_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_struct-t273987_ _e273839273984_)
                     (_e273840273989_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273835273843_
                         '2
                         gxc#!struct-getf::t
                         '#f)))
                     (_off273992_ _e273840273989_)
                     (_e273841273994_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273835273843_
                         '3
                         gxc#!struct-getf::t
                         '#f)))
                     (_unchecked?273997_ _e273841273994_))
                (declare (not safe))
                (_K273838273981_
                 _unchecked?273997_
                 _off273992_
                 _struct-t273987_))
              (let () (declare (not safe)) (_E273837273847_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'optimize-call
       gxc#!struct-getf::optimize-call
       '#f))
    (define gxc#!struct-setf::optimize-call
      (lambda (_self273526_ _stx273527_ _args273528_)
        (let* ((_self273529273537_ _self273526_)
               (_E273531273541_
                (lambda () (error '"No clause matching" _self273529273537_)))
               (_K273532273692_
                (lambda (_unchecked?273544_ _off273545_ _struct-t273546_)
                  (let* ((_struct-type273548_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t273546_)))
                         (_struct-type273549273563_ _struct-type273548_)
                         (_else273552273571_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx273527_
                               _struct-t273546_
                               _struct-type273548_)))))
                    (let ((_K273555273663_
                           (lambda (_plist273582_
                                    _xfields273583_
                                    _fields273584_
                                    _struct-type-id273585_)
                             (if _xfields273583_
                                 (let* ((___stx279899279900_ _args273528_)
                                        (_g273588273602_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx279899279900_)))))
                                   (let ((___kont279901279902_
                                          (lambda (_L273630_ _L273631_)
                                            (let ((_expr273655_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L273631_)))
                                                  (_val273656_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L273630_)))
                                                  (_off273657_
                                                   (fx+ _off273545_
                                                        _xfields273583_
                                                        '1))
                                                  (_op273658_
                                                   (if _unchecked?273544_
                                                       '%#struct-unchecked-set!
                                                       (if (and _plist273582_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist273582_)))
                   '%#struct-direct-set!
                   '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp280951
                                                     (let ((__tmp280952
                                                            (let ((__tmp280958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280959
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t273546_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280959)))
                          (__tmp280953
                           (let ((__tmp280956
                                  (let ((__tmp280957
                                         (let ()
                                           (declare (not safe))
                                           (cons _off273657_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp280957)))
                                 (__tmp280954
                                  (let ((__tmp280955
                                         (let ()
                                           (declare (not safe))
                                           (cons _val273656_ '()))))
                                    (declare (not safe))
                                    (cons _expr273655_ __tmp280955))))
                             (declare (not safe))
                             (cons __tmp280956 __tmp280954))))
                      (declare (not safe))
                      (cons __tmp280958 __tmp280953))))
               (declare (not safe))
               (cons _op273658_ __tmp280952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp280951
                                                 _stx273527_)))))
                                         (___kont279903279904_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct mutator application"
                                               _stx273527_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx279899279900_))
                                         (let ((_e273594273614_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx279899279900_))))
                                           (let ((_tl273592273619_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e273594273614_)))
                                                 (_hd273593273617_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e273594273614_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl273592273619_))
                                                 (let ((_e273597273622_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl273592273619_))))
                                                   (let ((_tl273595273627_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e273597273622_)))
                                                         (_hd273596273625_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e273597273622_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl273595273627_))
                                                         (___kont279901279902_
                                                          _hd273596273625_
                                                          _hd273593273617_)
                                                         (___kont279903279904_))))
                                                 (___kont279903279904_))))
                                         (___kont279903279904_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-setf: incomplete struct "
                                      _struct-type-id273585_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx273527_))))))
                          (_K273554273576_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx273527_)))))
                      (let ((_try-match273551273579_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type273549273563_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K273554273576_))
                                   (let ()
                                     (declare (not safe))
                                     (_else273552273571_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type273549273563_
                               'gxc#!struct-type::t))
                            (let* ((_e273556273666_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273549273563_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                   (_e273557273671_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273549273563_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e273558273674_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273549273563_
                                       '3
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e273559273679_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273549273563_
                                       '4
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e273560273684_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273549273563_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)))
                                   (_e273561273687_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _struct-type273549273563_
                                       '6
                                       gxc#!struct-type::t
                                       '#f))))
                              (let ((_struct-type-id273669_ _e273556273666_)
                                    (_fields273677_ _e273558273674_)
                                    (_xfields273682_ _e273559273679_)
                                    (_plist273690_ _e273561273687_))
                                (let ()
                                  (declare (not safe))
                                  (_K273555273663_
                                   _plist273690_
                                   _xfields273682_
                                   _fields273677_
                                   _struct-type-id273669_))))
                            (let ()
                              (declare (not safe))
                              (_try-match273551273579_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273529273537_
                 'gxc#!struct-setf::t))
              (let* ((_e273533273695_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273529273537_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_struct-t273698_ _e273533273695_)
                     (_e273534273700_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273529273537_
                         '2
                         gxc#!struct-setf::t
                         '#f)))
                     (_off273703_ _e273534273700_)
                     (_e273535273705_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273529273537_
                         '3
                         gxc#!struct-setf::t
                         '#f)))
                     (_unchecked?273708_ _e273535273705_))
                (declare (not safe))
                (_K273532273692_
                 _unchecked?273708_
                 _off273703_
                 _struct-t273698_))
              (let () (declare (not safe)) (_E273531273541_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'optimize-call
       gxc#!struct-setf::optimize-call
       '#f))
    (define gxc#!class-pred::optimize-call
      (lambda (_self273254_ _stx273255_ _args273256_)
        (let* ((_self273257273263_ _self273254_)
               (_E273259273267_
                (lambda () (error '"No clause matching" _self273257273263_)))
               (_K273260273396_
                (lambda (_class-t273270_)
                  (let* ((_class-type273272_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t273270_)))
                         (_class-type273273273288_ _class-type273272_)
                         (_else273276273296_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal class predicate application; not a class type"
                               _stx273255_
                               _class-t273270_
                               _class-type273272_)))))
                    (let ((_K273279273368_
                           (lambda (_plist273307_ _class-type-id273308_)
                             (let* ((___stx279938279939_ _args273256_)
                                    (_g273311273321_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx279938279939_)))))
                               (let ((___kont279940279941_
                                      (lambda (_L273341_)
                                        (let ((_expr273362_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__0 _L273341_)))
                                              (_final?273363_
                                               (if _plist273307_
                                                   (let ()
                                                     (declare (not safe))
                                                     (assgetq 'final:
                                                              _plist273307_))
                                                   '#f)))
                                          (if _final?273363_
                                              (let ((__tmp280968
                                                     (let ((__tmp280969
                                                            (let ((__tmp280971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280972
                                  (let ()
                                    (declare (not safe))
                                    (cons _class-type-id273308_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp280972)))
                          (__tmp280970
                           (let ()
                             (declare (not safe))
                             (cons _expr273362_ '()))))
                      (declare (not safe))
                      (cons __tmp280971 __tmp280970))))
               (declare (not safe))
               (cons '%#struct-direct-instance? __tmp280969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp280968
                                                 _stx273255_))
                                              (let ((__tmp280960
                                                     (let ((__tmp280961
                                                            (let ((__tmp280966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp280967
                                  (let ()
                                    (declare (not safe))
                                    (cons 'class-instance? '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp280967)))
                          (__tmp280962
                           (let ((__tmp280964
                                  (let ((__tmp280965
                                         (let ()
                                           (declare (not safe))
                                           (cons _class-t273270_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp280965)))
                                 (__tmp280963
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr273362_ '()))))
                             (declare (not safe))
                             (cons __tmp280964 __tmp280963))))
                      (declare (not safe))
                      (cons __tmp280966 __tmp280962))))
               (declare (not safe))
               (cons '%#call __tmp280961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp280960
                                                 _stx273255_))))))
                                     (___kont279942279943_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal class predicate application"
                                           _stx273255_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx279938279939_))
                                     (let ((_e273316273333_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx279938279939_))))
                                       (let ((_tl273314273338_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e273316273333_)))
                                             (_hd273315273336_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e273316273333_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl273314273338_))
                                             (___kont279940279941_
                                              _hd273315273336_)
                                             (___kont279942279943_))))
                                     (___kont279942279943_))))))
                          (_K273278273301_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx273255_)))))
                      (let ((_try-match273275273304_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type273273273288_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K273278273301_))
                                   (let ()
                                     (declare (not safe))
                                     (_else273276273296_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type273273273288_
                               'gxc#!class-type::t))
                            (let* ((_e273280273371_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _class-type273273273288_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                   (_e273281273376_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _class-type273273273288_
                                       '2
                                       gxc#!class-type::t
                                       '#f)))
                                   (_e273282273379_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _class-type273273273288_
                                       '3
                                       gxc#!class-type::t
                                       '#f)))
                                   (_e273283273382_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _class-type273273273288_
                                       '4
                                       gxc#!class-type::t
                                       '#f)))
                                   (_e273284273385_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _class-type273273273288_
                                       '5
                                       gxc#!class-type::t
                                       '#f)))
                                   (_e273285273388_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _class-type273273273288_
                                       '6
                                       gxc#!class-type::t
                                       '#f)))
                                   (_e273286273391_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _class-type273273273288_
                                       '7
                                       gxc#!class-type::t
                                       '#f))))
                              (let ((_class-type-id273374_ _e273280273371_)
                                    (_plist273394_ _e273286273391_))
                                (let ()
                                  (declare (not safe))
                                  (_K273279273368_
                                   _plist273394_
                                   _class-type-id273374_))))
                            (let ()
                              (declare (not safe))
                              (_try-match273275273304_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273257273263_
                 'gxc#!class-pred::t))
              (let* ((_e273261273399_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273257273263_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_class-t273402_ _e273261273399_))
                (declare (not safe))
                (_K273260273396_ _class-t273402_))
              (let () (declare (not safe)) (_E273259273267_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'optimize-call
       gxc#!class-pred::optimize-call
       '#f))
    (define gxc#!class-cons::optimize-call
      (lambda (_self273072_ _stx273073_ _args273074_)
        (let* ((_self273075273081_ _self273072_)
               (_E273077273085_
                (lambda () (error '"No clause matching" _self273075273081_)))
               (_K273078273124_
                (lambda (_class-t273088_)
                  (let* ((_class-type273090_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t273088_)))
                         (_class-type273091273099_ _class-type273090_)
                         (_else273094273107_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal class constructor application; not a struct type"
                               _stx273073_
                               _class-t273088_
                               _class-type273090_)))))
                    (let ((_K273097273121_
                           (lambda ()
                             (let* ((_args273119_
                                     (map gxc#compile-e _args273074_))
                                    (__tmp280973
                                     (let ((__tmp280974
                                            (let ((__tmp280978
                                                   (let ((__tmp280979
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-class-instance
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp280979)))
                                                  (__tmp280975
                                                   (let ((__tmp280976
                                                          (let ((__tmp280977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _class-t273088_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp280977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp280976
                                                           _args273119_))))
                                              (declare (not safe))
                                              (cons __tmp280978 __tmp280975))))
                                       (declare (not safe))
                                       (cons '%#call __tmp280974))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp280973
                                _stx273073_))))
                          (_K273096273112_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline class constructor; class struct type "
                                _class-t273088_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx273073_)))))
                      (let ((_try-match273093273115_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type273091273099_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K273096273112_))
                                   (let ()
                                     (declare (not safe))
                                     (_else273094273107_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type273091273099_
                               'gxc#!class-type::t))
                            (let () (declare (not safe)) (_K273097273121_))
                            (let ()
                              (declare (not safe))
                              (_try-match273093273115_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self273075273081_
                 'gxc#!class-cons::t))
              (let* ((_e273079273127_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273075273081_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_class-t273130_ _e273079273127_))
                (declare (not safe))
                (_K273078273124_ _class-t273130_))
              (let () (declare (not safe)) (_E273077273085_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'optimize-call
       gxc#!class-cons::optimize-call
       '#f))
    (define gxc#!class-getf::optimize-call
      (lambda (_self272859_ _stx272860_ _args272861_)
        (let* ((_self272862272870_ _self272859_)
               (_E272864272874_
                (lambda () (error '"No clause matching" _self272862272870_)))
               (_K272865272932_
                (lambda (_unchecked?272877_ _slot272878_ _class-t272879_)
                  (let* ((___stx279978279979_ _args272861_)
                         (_g272882272892_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx279978279979_)))))
                    (let ((___kont279980279981_
                           (lambda (_L272912_)
                             (let* ((_expr272927_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L272912_)))
                                    (__tmp280980
                                     (let ((__tmp280981
                                            (let ((__tmp280986
                                                   (let ((__tmp280987
                                                          (let ((__tmp280988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _unchecked?272877_
                             'slot-ref
                             'unchecked-slot-ref)))
                    (declare (not safe))
                    (cons __tmp280988 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp280987)))
                                                  (__tmp280982
                                                   (let ((__tmp280983
                                                          (let ((__tmp280984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp280985
                                (let ()
                                  (declare (not safe))
                                  (cons _slot272878_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp280985))))
                    (declare (not safe))
                    (cons __tmp280984 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr272927_
                                                           __tmp280983))))
                                              (declare (not safe))
                                              (cons __tmp280986 __tmp280982))))
                                       (declare (not safe))
                                       (cons '%#call __tmp280981))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp280980
                                _stx272860_))))
                          (___kont279982279983_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class accessor application"
                                _stx272860_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx279978279979_))
                          (let ((_e272887272904_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx279978279979_))))
                            (let ((_tl272885272909_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272887272904_)))
                                  (_hd272886272907_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272887272904_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl272885272909_))
                                  (___kont279980279981_ _hd272886272907_)
                                  (___kont279982279983_))))
                          (___kont279982279983_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272862272870_
                 'gxc#!class-getf::t))
              (let* ((_e272866272935_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272862272870_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_class-t272938_ _e272866272935_)
                     (_e272867272940_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272862272870_
                         '2
                         gxc#!class-getf::t
                         '#f)))
                     (_slot272943_ _e272867272940_)
                     (_e272868272945_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272862272870_
                         '3
                         gxc#!class-getf::t
                         '#f)))
                     (_unchecked?272948_ _e272868272945_))
                (declare (not safe))
                (_K272865272932_
                 _unchecked?272948_
                 _slot272943_
                 _class-t272938_))
              (let () (declare (not safe)) (_E272864272874_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'optimize-call
       gxc#!class-getf::optimize-call
       '#f))
    (define gxc#!class-setf::optimize-call
      (lambda (_self272629_ _stx272630_ _args272631_)
        (let* ((_self272632272640_ _self272629_)
               (_E272634272644_
                (lambda () (error '"No clause matching" _self272632272640_)))
               (_K272635272719_
                (lambda (_unchecked?272647_ _slot272648_ _class-t272649_)
                  (let* ((___stx279994279995_ _args272631_)
                         (_g272652272666_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx279994279995_)))))
                    (let ((___kont279996279997_
                           (lambda (_L272694_ _L272695_)
                             (let ((_expr272713_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__0 _L272695_)))
                                   (_val272714_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__0 _L272694_))))
                               (let ((__tmp280989
                                      (let ((__tmp280990
                                             (let ((__tmp280996
                                                    (let ((__tmp280997
                                                           (let ((__tmp280998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if _unchecked?272647_
                              'unchecked-slot-set!
                              'slot-set!)))
                     (declare (not safe))
                     (cons __tmp280998 '()))))
              (declare (not safe))
              (cons '%#ref __tmp280997)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp280991
                                                    (let ((__tmp280992
                                                           (let ((__tmp280994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp280995
                                 (let ()
                                   (declare (not safe))
                                   (cons _slot272648_ '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp280995)))
                         (__tmp280993
                          (let ()
                            (declare (not safe))
                            (cons _val272714_ '()))))
                     (declare (not safe))
                     (cons __tmp280994 __tmp280993))))
              (declare (not safe))
              (cons _expr272713_ __tmp280992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp280996
                                                     __tmp280991))))
                                        (declare (not safe))
                                        (cons '%#call __tmp280990))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp280989
                                  _stx272630_)))))
                          (___kont279998279999_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class mutator application"
                                _stx272630_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx279994279995_))
                          (let ((_e272658272678_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx279994279995_))))
                            (let ((_tl272656272683_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272658272678_)))
                                  (_hd272657272681_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272658272678_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl272656272683_))
                                  (let ((_e272661272686_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl272656272683_))))
                                    (let ((_tl272659272691_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e272661272686_)))
                                          (_hd272660272689_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e272661272686_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl272659272691_))
                                          (___kont279996279997_
                                           _hd272660272689_
                                           _hd272657272681_)
                                          (___kont279998279999_))))
                                  (___kont279998279999_))))
                          (___kont279998279999_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272632272640_
                 'gxc#!class-setf::t))
              (let* ((_e272636272722_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272632272640_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_class-t272725_ _e272636272722_)
                     (_e272637272727_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272632272640_
                         '2
                         gxc#!class-setf::t
                         '#f)))
                     (_slot272730_ _e272637272727_)
                     (_e272638272732_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272632272640_
                         '3
                         gxc#!class-setf::t
                         '#f)))
                     (_unchecked?272735_ _e272638272732_))
                (declare (not safe))
                (_K272635272719_
                 _unchecked?272735_
                 _slot272730_
                 _class-t272725_))
              (let () (declare (not safe)) (_E272634272644_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'optimize-call
       gxc#!class-setf::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self272463_ _stx272464_ _args272465_)
        (let* ((_self272466272475_ _self272463_)
               (_E272468272479_
                (lambda () (error '"No clause matching" _self272466272475_)))
               (_K272469272486_
                (lambda (_inline272482_ _dispatch272483_ _arity272484_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self272463_ _args272465_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx272464_
                         _arity272484_)))
                  (if _inline272482_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp281004
                               (let ((__tmp281005
                                      (_inline272482_ _stx272464_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp281005
                                  _stx272464_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp281004)))
                      (if _dispatch272483_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch272483_))
                            (let ((__tmp280999
                                   (let ((__tmp281000
                                          (let ((__tmp281001
                                                 (let ((__tmp281002
                                                        (let ((__tmp281003
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch272483_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp281003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp281002
                                                         _args272465_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp281001))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp281000
                                      _stx272464_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp280999)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx272464_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272466272475_ 'gxc#!lambda::t))
              (let* ((_e272470272489_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272466272475_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272471272492_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272466272475_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity272495_ _e272471272492_)
                     (_e272472272497_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272466272475_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch272500_ _e272472272497_)
                     (_e272473272502_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272466272475_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline272505_ _e272473272502_))
                (declare (not safe))
                (_K272469272486_
                 _inline272505_
                 _dispatch272500_
                 _arity272495_))
              (let () (declare (not safe)) (_E272468272479_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self272302_ _stx272303_ _args272304_)
        (let* ((_self272305272312_ _self272302_)
               (_E272307272316_
                (lambda () (error '"No clause matching" _self272305272312_)))
               (_K272308272330_
                (lambda (_clauses272319_)
                  (let ((_$e272325_
                         (let ((__tmp281006
                                (lambda (_g272320272322_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g272320272322_
                                     _args272304_)))))
                           (declare (not safe))
                           (find __tmp281006 _clauses272319_))))
                    (if _$e272325_
                        ((lambda (_clause272328_)
                           (let ((__method280143
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause272328_
                                     'optimize-call))))
                             (if __method280143
                                 (__method280143
                                  _clause272328_
                                  _stx272303_
                                  _args272304_)
                                 (error '"Missing method"
                                        _clause272328_
                                        'optimize-call))))
                         _$e272325_)
                        (let ((__tmp281007
                               (map gxc#!lambda-arity _clauses272319_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx272303_
                           __tmp281007)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272305272312_
                 'gxc#!case-lambda::t))
              (let* ((_e272309272333_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272305272312_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272310272336_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272305272312_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses272339_ _e272310272336_))
                (declare (not safe))
                (_K272308272330_ _clauses272339_))
              (let () (declare (not safe)) (_E272307272316_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self272116_ _args272117_)
        (let* ((_self272118272125_ _self272116_)
               (_E272120272129_
                (lambda () (error '"No clause matching" _self272118272125_)))
               (_K272121272169_
                (lambda (_arity272132_)
                  (let* ((_arity272133272142_ _arity272132_)
                         (_E272136272146_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity272133272142_))))
                    (let ((_K272140272166_
                           (lambda ()
                             (fx= (length _args272117_) _arity272132_)))
                          (_K272137272152_
                           (lambda (_arity272150_)
                             (fx>= (length _args272117_) _arity272150_))))
                      (let ((_try-match272135272162_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity272133272142_))
                                   (let ((_tl272139272157_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity272133272142_)))
                                         (_hd272138272155_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity272133272142_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl272139272157_))
                                         (let ((_arity272160_
                                                _hd272138272155_))
                                           (declare (not safe))
                                           (_K272137272152_ _arity272160_))
                                         (let ()
                                           (declare (not safe))
                                           (_E272136272146_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E272136272146_))))))
                        (if (fixnum? _arity272133272142_)
                            (let () (declare (not safe)) (_K272140272166_))
                            (let ()
                              (declare (not safe))
                              (_try-match272135272162_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272118272125_ 'gxc#!lambda::t))
              (let* ((_e272122272172_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272118272125_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272123272175_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272118272125_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity272178_ _e272123272175_))
                (declare (not safe))
                (_K272121272169_ _arity272178_))
              (let () (declare (not safe)) (_E272120272129_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self272001_ _stx272002_ _args272003_)
        (let* ((_self272004272012_ _self272001_)
               (_E272006272016_
                (lambda () (error '"No clause matching" _self272004272012_)))
               (_K272007272100_
                (lambda (_dispatch272019_ _table272020_)
                  (let* ((_g272021272030_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch272019_)))
                         (_else272023272038_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch272019_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx272002_))))
                         (_K272025272084_
                          (lambda (_main272041_ _keys272042_)
                            (let ((_g281008_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx272002_
                                      _args272003_))))
                              (begin
                                (let ((_g281009_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g281008_)
                                             (##vector-length _g281008_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g281009_ 2)))
                                      (error "Context expects 2 values"
                                             _g281009_)))
                                (let ((_pargs272044_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g281008_ 0)))
                                      (_kwargs272045_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g281008_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main272041_))
                                    (if _table272020_
                                        (let ((_xargs272052_
                                               (map (lambda (_key272047_)
                                                      (let ((_$e272049_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key272047_ _kwargs272045_))))
                (if _$e272049_ (values _$e272049_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys272042_)))
                                          (for-each
                                           (lambda (_kw272054_)
                                             (if (memq (car _kw272054_)
                                                       _keys272042_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx272002_
                                                    _keys272042_
                                                    _kw272054_))))
                                           _kwargs272045_)
                                          (let ((__tmp281061
                                                 (let ((__tmp281062
                                                        (let ((__tmp281063
                                                               (let ((__tmp281068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp281069
                                     (let ()
                                       (declare (not safe))
                                       (cons _main272041_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp281069)))
                             (__tmp281064
                              (let ((__tmp281066
                                     (let ((__tmp281067
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp281067)))
                                    (__tmp281065
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs272044_
                                               _xargs272052_))))
                                (declare (not safe))
                                (cons __tmp281066 __tmp281065))))
                         (declare (not safe))
                         (cons __tmp281068 __tmp281064))))
                  (declare (not safe))
                  (cons '%#call __tmp281063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp281062
                                                    _stx272002_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp281061)))
                                        (let* ((_kwt272056_
                                                (let ((__tmp281010
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp281010)))
                                               (_kwvars272059_
                                                (map (lambda (_g281011_)
                                                       (let ((__tmp281012
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp281012)))
                                                     _kwargs272045_))
                                               (_kwbind272064_
                                                (map (lambda (_kw272061_
                                                              _kwvar272062_)
                                                       (let ((__tmp281015
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar272062_ '())))
                     (__tmp281013
                      (let ((__tmp281014 (cdr _kw272061_)))
                        (declare (not safe))
                        (cons __tmp281014 '()))))
                 (declare (not safe))
                 (cons __tmp281015 __tmp281013)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272045_
                                                     _kwvars272059_))
                                               (_kwset272069_
                                                (map (lambda (_kw272066_
                                                              _kwvar272067_)
                                                       (let ((__tmp281016
                                                              (let ((__tmp281017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp281025
                                    (let ((__tmp281026
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt272056_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp281026)))
                                   (__tmp281018
                                    (let ((__tmp281022
                                           (let ((__tmp281023
                                                  (let ((__tmp281024
                                                         (car _kw272066_)))
                                                    (declare (not safe))
                                                    (cons __tmp281024 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp281023)))
                                          (__tmp281019
                                           (let ((__tmp281020
                                                  (let ((__tmp281021
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar272067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp281021))))
                                             (declare (not safe))
                                             (cons __tmp281020 '()))))
                                      (declare (not safe))
                                      (cons __tmp281022 __tmp281019))))
                               (declare (not safe))
                               (cons __tmp281025 __tmp281018))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp281017))))
                 (declare (not safe))
                 (cons '%#call __tmp281016)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272045_
                                                     _kwvars272059_))
                                               (_xkwargs272074_
                                                (map (lambda (_kw272071_
                                                              _kwvar272072_)
                                                       (let ((__tmp281029
                                                              (car _kw272071_))
                                                             (__tmp281027
                                                              (let ((__tmp281028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar272072_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp281028))))
                 (declare (not safe))
                 (cons __tmp281029 __tmp281027)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272045_
                                                     _kwvars272059_))
                                               (_xargs272081_
                                                (map (lambda (_key272076_)
                                                       (let ((_$e272078_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key272076_ _xkwargs272074_))))
                 (if _$e272078_ (values _$e272078_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys272042_)))
                                          (let ((__tmp281030
                                                 (let ((__tmp281031
                                                        (let ((__tmp281032
                                                               (let ((__tmp281033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp281034
                                     (let ((__tmp281035
                                            (let ((__tmp281049
                                                   (let ((__tmp281050
                                                          (let ((__tmp281060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt272056_ '())))
                        (__tmp281051
                         (let ((__tmp281052
                                (let ((__tmp281053
                                       (let ((__tmp281054
                                              (let ((__tmp281055
                                                     (let ((__tmp281056
                                                            (let ((__tmp281057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp281058
                                  (let ((__tmp281059 (length _kwargs272045_)))
                                    (declare (not safe))
                                    (cons __tmp281059 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp281058))))
                      (declare (not safe))
                      (cons __tmp281057 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp281056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp281055))))
                                         (declare (not safe))
                                         (cons '%#call __tmp281054))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp281053
                                   _stx272002_))))
                           (declare (not safe))
                           (cons __tmp281052 '()))))
                    (declare (not safe))
                    (cons __tmp281060 __tmp281051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp281050 '())))
                                                  (__tmp281036
                                                   (let ((__tmp281037
                                                          (let ((__tmp281038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp281039
                                (let ((__tmp281040
                                       (let ((__tmp281041
                                              (let ((__tmp281042
                                                     (let ((__tmp281047
                                                            (let ((__tmp281048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main272041_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp281048)))
                   (__tmp281043
                    (let ((__tmp281045
                           (let ((__tmp281046
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt272056_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp281046)))
                          (__tmp281044
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs272044_ _xargs272081_))))
                      (declare (not safe))
                      (cons __tmp281045 __tmp281044))))
               (declare (not safe))
               (cons __tmp281047 __tmp281043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp281042))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp281041
                                          _stx272002_))))
                                  (declare (not safe))
                                  (cons __tmp281040 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp281039 _kwset272069_))))
                    (declare (not safe))
                    (cons '%#begin __tmp281038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp281037 '()))))
                                              (declare (not safe))
                                              (cons __tmp281049 __tmp281036))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp281035))))
                                (declare (not safe))
                                (cons __tmp281034 '()))))
                         (declare (not safe))
                         (cons _kwbind272064_ __tmp281033))))
                  (declare (not safe))
                  (cons '%#let-values __tmp281032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp281031
                                                    _stx272002_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp281030)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g272021272030_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e272026272087_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272021272030_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e272027272090_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272021272030_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys272093_ _e272027272090_)
                               (_e272028272095_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272021272030_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main272098_ _e272028272095_))
                          (declare (not safe))
                          (_K272025272084_ _main272098_ _keys272093_))
                        (let () (declare (not safe)) (_else272023272038_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272004272012_
                 'gxc#!kw-lambda::t))
              (let* ((_e272008272103_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272004272012_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272009272106_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272004272012_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table272109_ _e272009272106_)
                     (_e272010272111_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272004272012_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch272114_ _e272010272111_))
                (declare (not safe))
                (_K272007272100_ _dispatch272114_ _table272109_))
              (let () (declare (not safe)) (_E272006272016_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx271614_ _args271615_)
        (let _lp271617_ ((_rest271619_ _args271615_)
                         (_pargs271620_ '())
                         (_kwargs271621_ '()))
          (let* ((___stx280025280026_ _rest271619_)
                 (_g271627271679_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx280025280026_)))))
            (let ((___kont280027280028_
                   (lambda (_L271858_ _L271859_)
                     (let ((__tmp281070
                            (let ()
                              (declare (not safe))
                              (cons _L271859_ _pargs271620_))))
                       (declare (not safe))
                       (_lp271617_ _L271858_ __tmp281070 _kwargs271621_))))
                  (___kont280029280030_
                   (lambda (_L271804_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L271804_ _pargs271620_))
                             (reverse _kwargs271621_))))
                  (___kont280031280032_
                   (lambda (_L271751_ _L271752_ _L271753_)
                     (let ((_kw271770_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L271753_))))
                       (if (assq _kw271770_ _kwargs271621_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx271614_
                              _kw271770_))
                           (let ((__tmp281071
                                  (let ((__tmp281072
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw271770_ _L271752_))))
                                    (declare (not safe))
                                    (cons __tmp281072 _kwargs271621_))))
                             (declare (not safe))
                             (_lp271617_
                              _L271751_
                              _pargs271620_
                              __tmp281071))))))
                  (___kont280033280034_
                   (lambda (_L271699_ _L271700_)
                     (let ((__tmp281073
                            (let ()
                              (declare (not safe))
                              (cons _L271700_ _pargs271620_))))
                       (declare (not safe))
                       (_lp271617_ _L271699_ __tmp281073 _kwargs271621_))))
                  (___kont280035280036_
                   (lambda ()
                     (values (reverse _pargs271620_)
                             (reverse _kwargs271621_)))))
              (let* ((_g271626271686_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx280025280026_))
                            (___kont280035280036_)
                            (let () (declare (not safe)) (_g271627271679_)))))
                     (___match280132280133_
                      (lambda (_e271660271719_
                               _hd271659271722_
                               _tl271658271724_
                               _e271663271727_
                               _hd271662271730_
                               _tl271661271732_
                               _e271666271735_
                               _hd271665271738_
                               _tl271664271740_
                               _e271669271743_
                               _hd271668271746_
                               _tl271667271748_)
                        (let ((_L271751_ _tl271667271748_)
                              (_L271752_ _hd271668271746_)
                              (_L271753_ _hd271665271738_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L271753_))
                              (___kont280031280032_
                               _L271751_
                               _L271752_
                               _L271753_)
                              (___kont280033280034_
                               _tl271658271724_
                               _hd271659271722_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx280025280026_))
                    (let ((_e271633271823_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx280025280026_))))
                      (let ((_tl271631271828_
                             (let ()
                               (declare (not safe))
                               (##cdr _e271633271823_)))
                            (_hd271632271826_
                             (let ()
                               (declare (not safe))
                               (##car _e271633271823_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd271632271826_))
                            (let ((_e271636271831_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd271632271826_))))
                              (let ((_tl271634271836_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e271636271831_)))
                                    (_hd271635271834_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e271636271831_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd271635271834_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd271635271834_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl271634271836_))
                                            (let ((_e271639271839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl271634271836_))))
                                              (let ((_tl271637271844_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e271639271839_)))
                                                    (_hd271638271842_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e271639271839_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd271638271842_))
                                                    (let ((_e271640271847_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd271638271842_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e271640271847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl271637271844_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl271631271828_))
                          (let ((_e271643271850_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl271631271828_))))
                            (let ((_tl271641271855_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e271643271850_)))
                                  (_hd271642271853_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e271643271850_))))
                              (___kont280027280028_
                               _tl271641271855_
                               _hd271642271853_)))
                          (___kont280033280034_
                           _tl271631271828_
                           _hd271632271826_))
                      (___kont280033280034_ _tl271631271828_ _hd271632271826_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e271640271847_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl271637271844_))
                          (___kont280029280030_ _tl271631271828_)
                          (___kont280033280034_
                           _tl271631271828_
                           _hd271632271826_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl271637271844_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl271631271828_))
                              (let ((_e271669271743_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl271631271828_))))
                                (let ((_tl271667271748_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e271669271743_)))
                                      (_hd271668271746_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e271669271743_))))
                                  (___match280132280133_
                                   _e271633271823_
                                   _hd271632271826_
                                   _tl271631271828_
                                   _e271636271831_
                                   _hd271635271834_
                                   _tl271634271836_
                                   _e271639271839_
                                   _hd271638271842_
                                   _tl271637271844_
                                   _e271669271743_
                                   _hd271668271746_
                                   _tl271667271748_)))
                              (___kont280033280034_
                               _tl271631271828_
                               _hd271632271826_))
                          (___kont280033280034_
                           _tl271631271828_
                           _hd271632271826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl271637271844_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl271631271828_))
                                                            (let ((_e271669271743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl271631271828_))))
                      (let ((_tl271667271748_
                             (let ()
                               (declare (not safe))
                               (##cdr _e271669271743_)))
                            (_hd271668271746_
                             (let ()
                               (declare (not safe))
                               (##car _e271669271743_))))
                        (___match280132280133_
                         _e271633271823_
                         _hd271632271826_
                         _tl271631271828_
                         _e271636271831_
                         _hd271635271834_
                         _tl271634271836_
                         _e271639271839_
                         _hd271638271842_
                         _tl271637271844_
                         _e271669271743_
                         _hd271668271746_
                         _tl271667271748_)))
                    (___kont280033280034_ _tl271631271828_ _hd271632271826_))
                (___kont280033280034_ _tl271631271828_ _hd271632271826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont280033280034_
                                             _tl271631271828_
                                             _hd271632271826_))
                                        (___kont280033280034_
                                         _tl271631271828_
                                         _hd271632271826_))
                                    (___kont280033280034_
                                     _tl271631271828_
                                     _hd271632271826_))))
                            (___kont280033280034_
                             _tl271631271828_
                             _hd271632271826_))))
                    (let () (declare (not safe)) (_g271626271686_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self271610_ _stx271611_ _args271612_)
        (let () (declare (not safe)) (gxc#xform-call% _stx271611_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
