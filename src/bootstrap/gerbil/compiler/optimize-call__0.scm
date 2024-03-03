(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1709457374)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152850_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp153145 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152850_ __tmp153145))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152850_ '%#call gxc#optimize-call%))
           _tbl152850_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152833_ . _args152835_)
        (let ((__tmp153147
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152835_)
                     (gxc#compile-e__0 _stx152833_)
                     (let ((_arg1152840_ (car _args152835_))
                           (_rest152842_ (cdr _args152835_)))
                       (if (null? _rest152842_)
                           (gxc#compile-e__1 _stx152833_ _arg1152840_)
                           (let ((_arg2152845_ (car _rest152842_))
                                 (_rest152847_ (cdr _rest152842_)))
                             (if (null? _rest152847_)
                                 (gxc#compile-e__2
                                  _stx152833_
                                  _arg1152840_
                                  _arg2152845_)
                                 (apply gxc#compile-e
                                        _stx152833_
                                        _arg1152840_
                                        _arg2152845_
                                        _rest152847_))))))))
              (__tmp153146 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp153147
           gxc#current-compile-methods
           __tmp153146))))
    (define gxc#optimize-call%
      (lambda (_stx152688_)
        (let* ((___stx152895152896_ _stx152688_)
               (_g152691152711_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152895152896_)))))
          (let ((___kont152897152898_
                 (lambda (_L152755_ _L152756_)
                   (let* ((_rator-id152774_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152756_)))
                          (_rator-type152776_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152774_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152776_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp153148
                                  (##structure-ref
                                   _rator-type152776_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152774_
                              '" => "
                              _rator-type152776_
                              '" "
                              __tmp153148))
                           (let ((_optimized152779_
                                  (let ((__method153143
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152776_
                                            'optimize-call))))
                                    (if __method153143
                                        (__method153143
                                         _rator-type152776_
                                         _stx152688_
                                         _L152755_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152776_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152776_))
                                 _optimized152779_
                                 (let* ((___stx152877152878_ _optimized152779_)
                                        (_g152782152792_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152877152878_)))))
                                   (let ((___kont152879152880_
                                          (lambda (_L152812_)
                                            (let ((__tmp153149
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152812_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp153149
                                               _stx152688_))))
                                         (___kont152881152882_
                                          (lambda () _optimized152779_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152877152878_))
                                         (let ((_e152787152804_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152877152878_))))
                                           (let ((_tl152785152809_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152787152804_)))
                                                 (_hd152786152807_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152787152804_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152786152807_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152786152807_))
                                                     (___kont152879152880_
                                                      _tl152785152809_)
                                                     (___kont152881152882_))
                                                 (___kont152881152882_))))
                                         (___kont152881152882_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152776_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx152688_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152688_
                                _rator-type152776_)))))))
                (___kont152899152900_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx152688_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152895152896_))
                (let ((_e152697152723_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152895152896_))))
                  (let ((_tl152695152728_
                         (let () (declare (not safe)) (##cdr _e152697152723_)))
                        (_hd152696152726_
                         (let ()
                           (declare (not safe))
                           (##car _e152697152723_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152695152728_))
                        (let ((_e152700152731_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152695152728_))))
                          (let ((_tl152698152736_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152700152731_)))
                                (_hd152699152734_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152700152731_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152699152734_))
                                (let ((_e152703152739_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152699152734_))))
                                  (let ((_tl152701152744_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152703152739_)))
                                        (_hd152702152742_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152703152739_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152702152742_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152702152742_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152701152744_))
                                                (let ((_e152706152747_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152701152744_))))
                                                  (let ((_tl152704152752_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152706152747_)))
                                                        (_hd152705152750_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152706152747_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152704152752_))
                                                        (___kont152897152898_
                                                         _tl152698152736_
                                                         _hd152705152750_)
                                                        (___kont152899152900_))))
                                                (___kont152899152900_))
                                            (___kont152899152900_))
                                        (___kont152899152900_))))
                                (___kont152899152900_))))
                        (___kont152899152900_))))
                (___kont152899152900_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self152642_ _stx152643_ _args152644_)
        (let* ((_g152646152656_
                (lambda (_g152647152653_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152647152653_))))
               (_g152645152685_
                (lambda (_g152647152659_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152647152659_))
                      (let ((_e152651152661_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152647152659_))))
                        (let ((_hd152650152664_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152651152661_)))
                              (_tl152649152666_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152651152661_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152649152666_))
                              ((lambda (_L152669_)
                                 (let* ((_klass152680_
                                         (let ((__tmp153150
                                                (##structure-ref
                                                 _self152642_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152643_
                                            __tmp153150)))
                                        (_object152682_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L152669_))))
                                   (if (##structure-ref
                                        _klass152680_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153166
                                              (let ((__tmp153167
                                                     (let ((__tmp153169
                                                            (let ((__tmp153170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153171
                                  (##structure-ref
                                   _klass152680_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153171 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153170)))
                   (__tmp153168
                    (let () (declare (not safe)) (cons _object152682_ '()))))
               (declare (not safe))
               (cons __tmp153169 __tmp153168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp153167))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153166
                                          _stx152643_))
                                       (if (##structure-ref
                                            _klass152680_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153160
                                                  (let ((__tmp153161
                                                         (let ((__tmp153163
                                                                (let ((__tmp153164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153165
                                      (##structure-ref
                                       _klass152680_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153165 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153164)))
                       (__tmp153162
                        (let ()
                          (declare (not safe))
                          (cons _object152682_ '()))))
                   (declare (not safe))
                   (cons __tmp153163 __tmp153162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp153161))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153160
                                              _stx152643_))
                                           (let ((__tmp153151
                                                  (let ((__tmp153152
                                                         (let ((__tmp153158
                                                                (let ((__tmp153159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153159)))
                       (__tmp153153
                        (let ((__tmp153155
                               (let ((__tmp153156
                                      (let ((__tmp153157
                                             (##structure-ref
                                              _self152642_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp153157 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp153156)))
                              (__tmp153154
                               (let ()
                                 (declare (not safe))
                                 (cons _object152682_ '()))))
                          (declare (not safe))
                          (cons __tmp153155 __tmp153154))))
                   (declare (not safe))
                   (cons __tmp153158 __tmp153153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp153152))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153151
                                              _stx152643_))))))
                               _hd152650152664_)
                              (let ()
                                (declare (not safe))
                                (_g152646152656_ _g152647152659_)))))
                      (let ()
                        (declare (not safe))
                        (_g152646152656_ _g152647152659_))))))
          (declare (not safe))
          (_g152645152685_ _args152644_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152852 __method-table152853)
        (let ((__id152854
               (let ((__slot152855
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152852 'id))))
                 (if __slot152855
                     __slot152855
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152642_ _stx152643_ _args152644_)
            (let* ((_g152646152656_
                    (lambda (_g152647152653_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152647152653_))))
                   (_g152645152685_
                    (lambda (_g152647152659_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152647152659_))
                          (let ((_e152651152661_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152647152659_))))
                            (let ((_hd152650152664_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152651152661_)))
                                  (_tl152649152666_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152651152661_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152649152666_))
                                  ((lambda (_L152669_)
                                     (let* ((_klass152680_
                                             (let ((__tmp153172
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152642_
                                                       __id152854
                                                       __klass152852
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152643_
                                                __tmp153172)))
                                            (_object152682_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L152669_))))
                                       (if (##structure-ref
                                            _klass152680_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153188
                                                  (let ((__tmp153189
                                                         (let ((__tmp153191
                                                                (let ((__tmp153192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153193
                                      (##structure-ref
                                       _klass152680_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153193 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153192)))
                       (__tmp153190
                        (let ()
                          (declare (not safe))
                          (cons _object152682_ '()))))
                   (declare (not safe))
                   (cons __tmp153191 __tmp153190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp153189))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153188
                                              _stx152643_))
                                           (if (##structure-ref
                                                _klass152680_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153182
                                                      (let ((__tmp153183
                                                             (let ((__tmp153185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153186
                                   (let ((__tmp153187
                                          (##structure-ref
                                           _klass152680_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153187 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp153186)))
                           (__tmp153184
                            (let ()
                              (declare (not safe))
                              (cons _object152682_ '()))))
                       (declare (not safe))
                       (cons __tmp153185 __tmp153184))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp153183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153182
                                                  _stx152643_))
                                               (let ((__tmp153173
                                                      (let ((__tmp153174
                                                             (let ((__tmp153180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153181
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153181)))
                           (__tmp153175
                            (let ((__tmp153177
                                   (let ((__tmp153178
                                          (let ((__tmp153179
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self152642_
                                                    __id152854
                                                    __klass152852
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp153179 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp153178)))
                                  (__tmp153176
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152682_ '()))))
                              (declare (not safe))
                              (cons __tmp153177 __tmp153176))))
                       (declare (not safe))
                       (cons __tmp153180 __tmp153175))))
                (declare (not safe))
                (cons '%#call __tmp153174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153173
                                                  _stx152643_))))))
                                   _hd152650152664_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152646152656_ _g152647152659_)))))
                          (let ()
                            (declare (not safe))
                            (_g152646152656_ _g152647152659_))))))
              (declare (not safe))
              (_g152645152685_ _args152644_))))))
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
      (lambda (_self152362_ _stx152363_ _args152364_)
        (let* ((_klass152366_
                (let ((__tmp153194
                       (##structure-ref _self152362_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx152363_ __tmp153194)))
               (_fields152368_
                (length (##structure-ref _klass152366_ '5 gxc#!class::t '#f)))
               (_args152370_ (map gxc#compile-e _args152364_))
               (_inline-make-object152372_
                (let ((__tmp153195
                       (let ((__tmp153201
                              (let ((__tmp153202
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153202)))
                             (__tmp153196
                              (let ((__tmp153198
                                     (let ((__tmp153199
                                            (let ((__tmp153200
                                                   (##structure-ref
                                                    _self152362_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153200 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153199)))
                                    (__tmp153197
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields152368_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp153198 __tmp153197))))
                         (declare (not safe))
                         (cons __tmp153201 __tmp153196))))
                  (declare (not safe))
                  (cons '%#call __tmp153195))))
          (let ((_$e152375_
                 (##structure-ref _klass152366_ '6 gxc#!class::t '#f)))
            (if _$e152375_
                ((lambda (_ctor152378_)
                   (let ((_$obj152380_
                          (let ((__tmp153302 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp153302)))
                         (_ctor-impl152381_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass152366_
                             _ctor152378_))))
                     (let ((__tmp153303
                            (let ((__tmp153304
                                   (let ((__tmp153372
                                          (let ((__tmp153373
                                                 (let ((__tmp153375
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152380_
                                                                '())))
                                                       (__tmp153374
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object152372_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp153375
                                                         __tmp153374))))
                                            (declare (not safe))
                                            (cons __tmp153373 '())))
                                         (__tmp153305
                                          (let ((__tmp153306
                                                 (let ((__tmp153307
                                                        (let ((__tmp153311
                                                               (if _ctor-impl152381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153366
                                  (let ((__tmp153370
                                         (let ((__tmp153371
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl152381_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153371)))
                                        (__tmp153367
                                         (let ((__tmp153368
                                                (let ((__tmp153369
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj152380_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153369))))
                                           (declare (not safe))
                                           (cons __tmp153368 _args152370_))))
                                    (declare (not safe))
                                    (cons __tmp153370 __tmp153367))))
                             (declare (not safe))
                             (cons '%#call __tmp153366))
                           (let* ((_$ctor152383_
                                   (let ((__tmp153312 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp153312)))
                                  (__tmp153313
                                   (let ((__tmp153348
                                          (let ((__tmp153349
                                                 (let ((__tmp153365
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor152383_
                                                                '())))
                                                       (__tmp153350
                                                        (let ((__tmp153351
                                                               (let ((__tmp153352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153363
                                     (let ((__tmp153364
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153364)))
                                    (__tmp153353
                                     (let ((__tmp153360
                                            (let ((__tmp153361
                                                   (let ((__tmp153362
                                                          (##structure-ref
                                                           _self152362_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp153362 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153361)))
                                           (__tmp153354
                                            (let ((__tmp153358
                                                   (let ((__tmp153359
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153359)))
                                                  (__tmp153355
                                                   (let ((__tmp153356
                                                          (let ((__tmp153357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor152378_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153356 '()))))
                                              (declare (not safe))
                                              (cons __tmp153358 __tmp153355))))
                                       (declare (not safe))
                                       (cons __tmp153360 __tmp153354))))
                                (declare (not safe))
                                (cons __tmp153363 __tmp153353))))
                         (declare (not safe))
                         (cons '%#call __tmp153352))))
                  (declare (not safe))
                  (cons __tmp153351 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153365
                                                         __tmp153350))))
                                            (declare (not safe))
                                            (cons __tmp153349 '())))
                                         (__tmp153314
                                          (let ((__tmp153315
                                                 (let ((__tmp153316
                                                        (let ((__tmp153346
                                                               (let ((__tmp153347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor152383_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153347)))
                      (__tmp153317
                       (let ((__tmp153339
                              (let ((__tmp153340
                                     (let ((__tmp153344
                                            (let ((__tmp153345
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor152383_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153345)))
                                           (__tmp153341
                                            (let ((__tmp153342
                                                   (let ((__tmp153343
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153343))))
                                              (declare (not safe))
                                              (cons __tmp153342
                                                    _args152370_))))
                                       (declare (not safe))
                                       (cons __tmp153344 __tmp153341))))
                                (declare (not safe))
                                (cons '%#call __tmp153340)))
                             (__tmp153318
                              (let ((__tmp153319
                                     (let ((__tmp153320
                                            (let ((__tmp153337
                                                   (let ((__tmp153338
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153338)))
                                                  (__tmp153321
                                                   (let ((__tmp153335
                                                          (let ((__tmp153336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153336)))
                 (__tmp153322
                  (let ((__tmp153333
                         (let ((__tmp153334
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153334)))
                        (__tmp153323
                         (let ((__tmp153330
                                (let ((__tmp153331
                                       (let ((__tmp153332
                                              (##structure-ref
                                               _self152362_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153332 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153331)))
                               (__tmp153324
                                (let ((__tmp153328
                                       (let ((__tmp153329
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153329)))
                                      (__tmp153325
                                       (let ((__tmp153326
                                              (let ((__tmp153327
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor152378_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp153327))))
                                         (declare (not safe))
                                         (cons __tmp153326 '()))))
                                  (declare (not safe))
                                  (cons __tmp153328 __tmp153325))))
                           (declare (not safe))
                           (cons __tmp153330 __tmp153324))))
                    (declare (not safe))
                    (cons __tmp153333 __tmp153323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153335
                                                           __tmp153322))))
                                              (declare (not safe))
                                              (cons __tmp153337 __tmp153321))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153320))))
                                (declare (not safe))
                                (cons __tmp153319 '()))))
                         (declare (not safe))
                         (cons __tmp153339 __tmp153318))))
                  (declare (not safe))
                  (cons __tmp153346 __tmp153317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp153316))))
                                            (declare (not safe))
                                            (cons __tmp153315 '()))))
                                     (declare (not safe))
                                     (cons __tmp153348 __tmp153314))))
                             (declare (not safe))
                             (cons '%#let-values __tmp153313))))
                      (__tmp153308
                       (let ((__tmp153309
                              (let ((__tmp153310
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152380_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153310))))
                         (declare (not safe))
                         (cons __tmp153309 '()))))
                  (declare (not safe))
                  (cons __tmp153311 __tmp153308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp153307))))
                                            (declare (not safe))
                                            (cons __tmp153306 '()))))
                                     (declare (not safe))
                                     (cons __tmp153372 __tmp153305))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153304))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153303 _stx152363_))))
                 _$e152375_)
                (let ((_$e152385_
                       (##structure-ref _klass152366_ '9 gxc#!class::t '#f)))
                  (if _$e152385_
                      ((lambda (_metaclass152388_)
                         (let* ((_$obj152390_
                                 (let ((__tmp153264 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153264)))
                                (_metakons152392_
                                 (let ((__tmp153265
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx152363_
                                           _metaclass152388_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153265
                                    'instance-init!))))
                           (let ((__tmp153266
                                  (let ((__tmp153267
                                         (let ((__tmp153298
                                                (let ((__tmp153299
                                                       (let ((__tmp153301
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152390_ '())))
                     (__tmp153300
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object152372_ '()))))
                 (declare (not safe))
                 (cons __tmp153301 __tmp153300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153299 '())))
                                               (__tmp153268
                                                (let ((__tmp153269
                                                       (let ((__tmp153270
                                                              (let ((__tmp153274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons152392_
                                 (let ((__tmp153288
                                        (let ((__tmp153296
                                               (let ((__tmp153297
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons152392_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153297)))
                                              (__tmp153289
                                               (let ((__tmp153293
                                                      (let ((__tmp153294
                                                             (let ((__tmp153295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152362_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153295 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153294)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153290
                                                      (let ((__tmp153291
                                                             (let ((__tmp153292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj152390_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153292))))
                (declare (not safe))
                (cons __tmp153291 _args152370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153293
                                                       __tmp153290))))
                                          (declare (not safe))
                                          (cons __tmp153296 __tmp153289))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153288))
                                 (let ((__tmp153275
                                        (let ((__tmp153286
                                               (let ((__tmp153287
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153287)))
                                              (__tmp153276
                                               (let ((__tmp153283
                                                      (let ((__tmp153284
                                                             (let ((__tmp153285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152362_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153285 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153284)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153277
                                                      (let ((__tmp153281
                                                             (let ((__tmp153282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153282)))
                    (__tmp153278
                     (let ((__tmp153279
                            (let ((__tmp153280
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152390_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153280))))
                       (declare (not safe))
                       (cons __tmp153279 _args152370_))))
                (declare (not safe))
                (cons __tmp153281 __tmp153278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153283
                                                       __tmp153277))))
                                          (declare (not safe))
                                          (cons __tmp153286 __tmp153276))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153275))))
                            (__tmp153271
                             (let ((__tmp153272
                                    (let ((__tmp153273
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj152390_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153273))))
                               (declare (not safe))
                               (cons __tmp153272 '()))))
                        (declare (not safe))
                        (cons __tmp153274 __tmp153271))))
                 (declare (not safe))
                 (cons '%#begin __tmp153270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153269 '()))))
                                           (declare (not safe))
                                           (cons __tmp153298 __tmp153268))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153267))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153266 _stx152363_))))
                       _$e152385_)
                      (if (##structure-ref _klass152366_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args152370_) _fields152368_)
                              (let ((__tmp153256
                                     (let ((__tmp153257
                                            (let ((__tmp153262
                                                   (let ((__tmp153263
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153263)))
                                                  (__tmp153258
                                                   (let ((__tmp153259
                                                          (let ((__tmp153260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153261
                                (##structure-ref
                                 _self152362_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp153261 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153259
                                                           _args152370_))))
                                              (declare (not safe))
                                              (cons __tmp153262 __tmp153258))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153257))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp153256
                                 _stx152363_))
                              (let ((__tmp153255
                                     (##structure-ref
                                      _self152362_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp153254
                                     (length (##structure-ref
                                              _klass152366_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx152363_
                                 __tmp153255
                                 __tmp153254)))
                          (let ((_$obj152395_
                                 (let ((__tmp153203 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153203))))
                            (let _lp152397_ ((_rest152399_ _args152370_)
                                             (_initializers152400_ '()))
                              (let* ((___stx152933152934_ _rest152399_)
                                     (_g152404152425_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152933152934_)))))
                                (let ((___kont152935152936_
                                       (lambda (_L152479_ _L152480_ _L152481_)
                                         (let* ((_slot152512_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L152481_))))
                                                (_off152514_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152366_
                                                    _slot152512_))))
                                           (if _off152514_
                                               (let ((__tmp153205
                                                      (let ((__tmp153206
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off152514_ _L152480_))))
                (declare (not safe))
                (cons __tmp153206 _initializers152400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp152397_
                                                  _L152479_
                                                  __tmp153205))
                                               (let ((__tmp153204
                                                      (##structure-ref
                                                       _self152362_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx152363_
                                                  __tmp153204
                                                  _slot152512_))))))
                                      (___kont152937152938_
                                       (lambda ()
                                         (let ((__tmp153207
                                                (let ((__tmp153208
                                                       (let ((__tmp153231
                                                              (let ((__tmp153232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153234
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152395_ '())))
                                   (__tmp153233
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152372_ '()))))
                               (declare (not safe))
                               (cons __tmp153234 __tmp153233))))
                        (declare (not safe))
                        (cons __tmp153232 '())))
                     (__tmp153209
                      (let ((__tmp153210
                             (let ((__tmp153211
                                    (let ((__tmp153228
                                           (let ((__tmp153229
                                                  (let ((__tmp153230
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153230))))
                                             (declare (not safe))
                                             (cons __tmp153229 '())))
                                          (__tmp153212
                                           (let ((__tmp153213
                                                  (lambda (_i152439_ _r152440_)
                                                    (let ((__tmp153214
                                                           (let ((__tmp153215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153225
                                 (let ((__tmp153226
                                        (let ((__tmp153227
                                               (##structure-ref
                                                _self152362_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153227 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153226)))
                                (__tmp153216
                                 (let ((__tmp153222
                                        (let ((__tmp153223
                                               (let ((__tmp153224
                                                      (car _i152439_)))
                                                 (declare (not safe))
                                                 (cons __tmp153224 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153223)))
                                       (__tmp153217
                                        (let ((__tmp153220
                                               (let ((__tmp153221
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj152395_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153221)))
                                              (__tmp153218
                                               (let ((__tmp153219
                                                      (cdr _i152439_)))
                                                 (declare (not safe))
                                                 (cons __tmp153219 '()))))
                                          (declare (not safe))
                                          (cons __tmp153220 __tmp153218))))
                                   (declare (not safe))
                                   (cons __tmp153222 __tmp153217))))
                            (declare (not safe))
                            (cons __tmp153225 __tmp153216))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp153215))))
              (declare (not safe))
              (cons __tmp153214 _r152440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp153213
                                                     '()
                                                     _initializers152400_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp153228 __tmp153212))))
                               (declare (not safe))
                               (cons '%#begin __tmp153211))))
                        (declare (not safe))
                        (cons __tmp153210 '()))))
                 (declare (not safe))
                 (cons __tmp153231 __tmp153209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153208))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153207
                                            _stx152363_))))
                                      (___kont152939152940_
                                       (lambda ()
                                         (let ((__tmp153235
                                                (let ((__tmp153236
                                                       (let ((__tmp153250
                                                              (let ((__tmp153251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153253
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152395_ '())))
                                   (__tmp153252
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152372_ '()))))
                               (declare (not safe))
                               (cons __tmp153253 __tmp153252))))
                        (declare (not safe))
                        (cons __tmp153251 '())))
                     (__tmp153237
                      (let ((__tmp153238
                             (let ((__tmp153239
                                    (let ((__tmp153243
                                           (let ((__tmp153244
                                                  (let ((__tmp153248
                                                         (let ((__tmp153249
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp153249)))
                (__tmp153245
                 (let ((__tmp153246
                        (let ((__tmp153247
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj152395_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153247))))
                   (declare (not safe))
                   (cons __tmp153246 _args152370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153248
                                                          __tmp153245))))
                                             (declare (not safe))
                                             (cons '%#call __tmp153244)))
                                          (__tmp153240
                                           (let ((__tmp153241
                                                  (let ((__tmp153242
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153242))))
                                             (declare (not safe))
                                             (cons __tmp153241 '()))))
                                      (declare (not safe))
                                      (cons __tmp153243 __tmp153240))))
                               (declare (not safe))
                               (cons '%#begin __tmp153239))))
                        (declare (not safe))
                        (cons __tmp153238 '()))))
                 (declare (not safe))
                 (cons __tmp153250 __tmp153237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153236))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153235
                                            _stx152363_)))))
                                  (let* ((_g152402152442_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152933152934_))
                                                (___kont152937152938_)
                                                (___kont152939152940_))))
                                         (___match152970152971_
                                          (lambda (_e152411152447_
                                                   _hd152410152450_
                                                   _tl152409152452_
                                                   _e152414152455_
                                                   _hd152413152458_
                                                   _tl152412152460_
                                                   _e152417152463_
                                                   _hd152416152466_
                                                   _tl152415152468_
                                                   _e152420152471_
                                                   _hd152419152474_
                                                   _tl152418152476_)
                                            (let ((_L152479_ _tl152418152476_)
                                                  (_L152480_ _hd152419152474_)
                                                  (_L152481_ _hd152416152466_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L152481_))
                                                  (___kont152935152936_
                                                   _L152479_
                                                   _L152480_
                                                   _L152481_)
                                                  (___kont152939152940_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152933152934_))
                                        (let ((_e152411152447_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152933152934_))))
                                          (let ((_tl152409152452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152411152447_)))
                                                (_hd152410152450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152411152447_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd152410152450_))
                                                (let ((_e152414152455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd152410152450_))))
                                                  (let ((_tl152412152460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152414152455_)))
                                                        (_hd152413152458_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152414152455_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd152413152458_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd152413152458_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl152412152460_))
                        (let ((_e152417152463_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152412152460_))))
                          (let ((_tl152415152468_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152417152463_)))
                                (_hd152416152466_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152417152463_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl152415152468_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl152409152452_))
                                    (let ((_e152420152471_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl152409152452_))))
                                      (let ((_tl152418152476_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152420152471_)))
                                            (_hd152419152474_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152420152471_))))
                                        (___match152970152971_
                                         _e152411152447_
                                         _hd152410152450_
                                         _tl152409152452_
                                         _e152414152455_
                                         _hd152413152458_
                                         _tl152412152460_
                                         _e152417152463_
                                         _hd152416152466_
                                         _tl152415152468_
                                         _e152420152471_
                                         _hd152419152474_
                                         _tl152418152476_)))
                                    (___kont152939152940_))
                                (___kont152939152940_))))
                        (___kont152939152940_))
                    (___kont152939152940_))
                (___kont152939152940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152939152940_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152402152442_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152856 __method-table152857)
        (let ((__id152858
               (let ((__slot152859
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152856 'id))))
                 (if __slot152859
                     __slot152859
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152362_ _stx152363_ _args152364_)
            (let* ((_klass152366_
                    (let ((__tmp153376
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self152362_
                              __id152858
                              __klass152856
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx152363_ __tmp153376)))
                   (_fields152368_
                    (length (##structure-ref
                             _klass152366_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args152370_ (map gxc#compile-e _args152364_))
                   (_inline-make-object152372_
                    (let ((__tmp153377
                           (let ((__tmp153383
                                  (let ((__tmp153384
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153384)))
                                 (__tmp153378
                                  (let ((__tmp153380
                                         (let ((__tmp153381
                                                (let ((__tmp153382
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152362_
                                                          __id152858
                                                          __klass152856
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153382 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153381)))
                                        (__tmp153379
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields152368_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp153380 __tmp153379))))
                             (declare (not safe))
                             (cons __tmp153383 __tmp153378))))
                      (declare (not safe))
                      (cons '%#call __tmp153377))))
              (let ((_$e152375_
                     (##structure-ref _klass152366_ '6 gxc#!class::t '#f)))
                (if _$e152375_
                    ((lambda (_ctor152378_)
                       (let ((_$obj152380_
                              (let ((__tmp153484 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp153484)))
                             (_ctor-impl152381_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass152366_
                                 _ctor152378_))))
                         (let ((__tmp153485
                                (let ((__tmp153486
                                       (let ((__tmp153554
                                              (let ((__tmp153555
                                                     (let ((__tmp153557
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj152380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153556
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object152372_ '()))))
               (declare (not safe))
               (cons __tmp153557 __tmp153556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153555 '())))
                                             (__tmp153487
                                              (let ((__tmp153488
                                                     (let ((__tmp153489
                                                            (let ((__tmp153493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl152381_
                               (let ((__tmp153548
                                      (let ((__tmp153552
                                             (let ((__tmp153553
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl152381_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153553)))
                                            (__tmp153549
                                             (let ((__tmp153550
                                                    (let ((__tmp153551
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj152380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153550
                                                     _args152370_))))
                                        (declare (not safe))
                                        (cons __tmp153552 __tmp153549))))
                                 (declare (not safe))
                                 (cons '%#call __tmp153548))
                               (let* ((_$ctor152383_
                                       (let ((__tmp153494
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp153494)))
                                      (__tmp153495
                                       (let ((__tmp153530
                                              (let ((__tmp153531
                                                     (let ((__tmp153547
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor152383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153532
                    (let ((__tmp153533
                           (let ((__tmp153534
                                  (let ((__tmp153545
                                         (let ((__tmp153546
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153546)))
                                        (__tmp153535
                                         (let ((__tmp153542
                                                (let ((__tmp153543
                                                       (let ((__tmp153544
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self152362_
                         __id152858
                         __klass152856
                         '#f))))
                 (declare (not safe))
                 (cons __tmp153544 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153543)))
                                               (__tmp153536
                                                (let ((__tmp153540
                                                       (let ((__tmp153541
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152380_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153541)))
              (__tmp153537
               (let ((__tmp153538
                      (let ((__tmp153539
                             (let ()
                               (declare (not safe))
                               (cons _ctor152378_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153539))))
                 (declare (not safe))
                 (cons __tmp153538 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153540
                                                        __tmp153537))))
                                           (declare (not safe))
                                           (cons __tmp153542 __tmp153536))))
                                    (declare (not safe))
                                    (cons __tmp153545 __tmp153535))))
                             (declare (not safe))
                             (cons '%#call __tmp153534))))
                      (declare (not safe))
                      (cons __tmp153533 '()))))
               (declare (not safe))
               (cons __tmp153547 __tmp153532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153531 '())))
                                             (__tmp153496
                                              (let ((__tmp153497
                                                     (let ((__tmp153498
                                                            (let ((__tmp153528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153529
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor152383_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153529)))
                          (__tmp153499
                           (let ((__tmp153521
                                  (let ((__tmp153522
                                         (let ((__tmp153526
                                                (let ((__tmp153527
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor152383_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153527)))
                                               (__tmp153523
                                                (let ((__tmp153524
                                                       (let ((__tmp153525
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152380_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153524
                                                        _args152370_))))
                                           (declare (not safe))
                                           (cons __tmp153526 __tmp153523))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153522)))
                                 (__tmp153500
                                  (let ((__tmp153501
                                         (let ((__tmp153502
                                                (let ((__tmp153519
                                                       (let ((__tmp153520
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153520)))
              (__tmp153503
               (let ((__tmp153517
                      (let ((__tmp153518
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153518)))
                     (__tmp153504
                      (let ((__tmp153515
                             (let ((__tmp153516
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153516)))
                            (__tmp153505
                             (let ((__tmp153512
                                    (let ((__tmp153513
                                           (let ((__tmp153514
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152362_
                                                     __id152858
                                                     __klass152856
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153514 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153513)))
                                   (__tmp153506
                                    (let ((__tmp153510
                                           (let ((__tmp153511
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153511)))
                                          (__tmp153507
                                           (let ((__tmp153508
                                                  (let ((__tmp153509
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor152378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp153509))))
                                             (declare (not safe))
                                             (cons __tmp153508 '()))))
                                      (declare (not safe))
                                      (cons __tmp153510 __tmp153507))))
                               (declare (not safe))
                               (cons __tmp153512 __tmp153506))))
                        (declare (not safe))
                        (cons __tmp153515 __tmp153505))))
                 (declare (not safe))
                 (cons __tmp153517 __tmp153504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153519
                                                        __tmp153503))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153502))))
                                    (declare (not safe))
                                    (cons __tmp153501 '()))))
                             (declare (not safe))
                             (cons __tmp153521 __tmp153500))))
                      (declare (not safe))
                      (cons __tmp153528 __tmp153499))))
               (declare (not safe))
               (cons '%#if __tmp153498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153497 '()))))
                                         (declare (not safe))
                                         (cons __tmp153530 __tmp153496))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp153495))))
                          (__tmp153490
                           (let ((__tmp153491
                                  (let ((__tmp153492
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj152380_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153492))))
                             (declare (not safe))
                             (cons __tmp153491 '()))))
                      (declare (not safe))
                      (cons __tmp153493 __tmp153490))))
               (declare (not safe))
               (cons '%#begin __tmp153489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153488 '()))))
                                         (declare (not safe))
                                         (cons __tmp153554 __tmp153487))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153486))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153485 _stx152363_))))
                     _$e152375_)
                    (let ((_$e152385_
                           (##structure-ref
                            _klass152366_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e152385_
                          ((lambda (_metaclass152388_)
                             (let* ((_$obj152390_
                                     (let ((__tmp153446 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153446)))
                                    (_metakons152392_
                                     (let ((__tmp153447
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx152363_
                                               _metaclass152388_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp153447
                                        'instance-init!))))
                               (let ((__tmp153448
                                      (let ((__tmp153449
                                             (let ((__tmp153480
                                                    (let ((__tmp153481
                                                           (let ((__tmp153483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152390_ '())))
                         (__tmp153482
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object152372_ '()))))
                     (declare (not safe))
                     (cons __tmp153483 __tmp153482))))
              (declare (not safe))
              (cons __tmp153481 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153450
                                                    (let ((__tmp153451
                                                           (let ((__tmp153452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153456
                                 (if _metakons152392_
                                     (let ((__tmp153470
                                            (let ((__tmp153478
                                                   (let ((__tmp153479
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons152392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153479)))
                                                  (__tmp153471
                                                   (let ((__tmp153475
                                                          (let ((__tmp153476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153477
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152362_
                                   __id152858
                                   __klass152856
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153477 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153476)))
                 (__tmp153472
                  (let ((__tmp153473
                         (let ((__tmp153474
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj152390_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp153474))))
                    (declare (not safe))
                    (cons __tmp153473 _args152370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153475
                                                           __tmp153472))))
                                              (declare (not safe))
                                              (cons __tmp153478 __tmp153471))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153470))
                                     (let ((__tmp153457
                                            (let ((__tmp153468
                                                   (let ((__tmp153469
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153469)))
                                                  (__tmp153458
                                                   (let ((__tmp153465
                                                          (let ((__tmp153466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153467
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152362_
                                   __id152858
                                   __klass152856
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153467 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153466)))
                 (__tmp153459
                  (let ((__tmp153463
                         (let ((__tmp153464
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153464)))
                        (__tmp153460
                         (let ((__tmp153461
                                (let ((__tmp153462
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj152390_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153462))))
                           (declare (not safe))
                           (cons __tmp153461 _args152370_))))
                    (declare (not safe))
                    (cons __tmp153463 __tmp153460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153465
                                                           __tmp153459))))
                                              (declare (not safe))
                                              (cons __tmp153468 __tmp153458))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153457))))
                                (__tmp153453
                                 (let ((__tmp153454
                                        (let ((__tmp153455
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj152390_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp153455))))
                                   (declare (not safe))
                                   (cons __tmp153454 '()))))
                            (declare (not safe))
                            (cons __tmp153456 __tmp153453))))
                     (declare (not safe))
                     (cons '%#begin __tmp153452))))
              (declare (not safe))
              (cons __tmp153451 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153480
                                                     __tmp153450))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp153449))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153448
                                  _stx152363_))))
                           _$e152385_)
                          (if (##structure-ref
                               _klass152366_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args152370_) _fields152368_)
                                  (let ((__tmp153438
                                         (let ((__tmp153439
                                                (let ((__tmp153444
                                                       (let ((__tmp153445
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153445)))
              (__tmp153440
               (let ((__tmp153441
                      (let ((__tmp153442
                             (let ((__tmp153443
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self152362_
                                       __id152858
                                       __klass152856
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp153443 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153442))))
                 (declare (not safe))
                 (cons __tmp153441 _args152370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153444
                                                        __tmp153440))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153439))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp153438
                                     _stx152363_))
                                  (let ((__tmp153437
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self152362_
                                            __id152858
                                            __klass152856
                                            '#f)))
                                        (__tmp153436
                                         (length (##structure-ref
                                                  _klass152366_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx152363_
                                     __tmp153437
                                     __tmp153436)))
                              (let ((_$obj152395_
                                     (let ((__tmp153385 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153385))))
                                (let _lp152397_ ((_rest152399_ _args152370_)
                                                 (_initializers152400_ '()))
                                  (let* ((___stx152975152976_ _rest152399_)
                                         (_g152404152425_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152975152976_)))))
                                    (let ((___kont152977152978_
                                           (lambda (_L152479_
                                                    _L152480_
                                                    _L152481_)
                                             (let* ((_slot152512_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L152481_))))
                                                    (_off152514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152366_
                                                        _slot152512_))))
                                               (if _off152514_
                                                   (let ((__tmp153387
                                                          (let ((__tmp153388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off152514_ _L152480_))))
                    (declare (not safe))
                    (cons __tmp153388 _initializers152400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp152397_
                                                      _L152479_
                                                      __tmp153387))
                                                   (let ((__tmp153386
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self152362_
                                                             __id152858
                                                             __klass152856
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx152363_
                                                      __tmp153386
                                                      _slot152512_))))))
                                          (___kont152979152980_
                                           (lambda ()
                                             (let ((__tmp153389
                                                    (let ((__tmp153390
                                                           (let ((__tmp153413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153414
                                 (let ((__tmp153416
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152395_ '())))
                                       (__tmp153415
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152372_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153416 __tmp153415))))
                            (declare (not safe))
                            (cons __tmp153414 '())))
                         (__tmp153391
                          (let ((__tmp153392
                                 (let ((__tmp153393
                                        (let ((__tmp153410
                                               (let ((__tmp153411
                                                      (let ((__tmp153412
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152395_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153411 '())))
                                              (__tmp153394
                                               (let ((__tmp153395
                                                      (lambda (_i152439_
                                                               _r152440_)
                                                        (let ((__tmp153396
                                                               (let ((__tmp153397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153407
                                     (let ((__tmp153408
                                            (let ((__tmp153409
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152362_
                                                      __id152858
                                                      __klass152856
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153409 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153408)))
                                    (__tmp153398
                                     (let ((__tmp153404
                                            (let ((__tmp153405
                                                   (let ((__tmp153406
                                                          (car _i152439_)))
                                                     (declare (not safe))
                                                     (cons __tmp153406 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153405)))
                                           (__tmp153399
                                            (let ((__tmp153402
                                                   (let ((__tmp153403
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153403)))
                                                  (__tmp153400
                                                   (let ((__tmp153401
                                                          (cdr _i152439_)))
                                                     (declare (not safe))
                                                     (cons __tmp153401 '()))))
                                              (declare (not safe))
                                              (cons __tmp153402 __tmp153400))))
                                       (declare (not safe))
                                       (cons __tmp153404 __tmp153399))))
                                (declare (not safe))
                                (cons __tmp153407 __tmp153398))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp153397))))
                  (declare (not safe))
                  (cons __tmp153396 _r152440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp153395
                                                         '()
                                                         _initializers152400_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp153410
                                                  __tmp153394))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153393))))
                            (declare (not safe))
                            (cons __tmp153392 '()))))
                     (declare (not safe))
                     (cons __tmp153413 __tmp153391))))
              (declare (not safe))
              (cons '%#let-values __tmp153390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153389
                                                _stx152363_))))
                                          (___kont152981152982_
                                           (lambda ()
                                             (let ((__tmp153417
                                                    (let ((__tmp153418
                                                           (let ((__tmp153432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153433
                                 (let ((__tmp153435
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152395_ '())))
                                       (__tmp153434
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152372_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153435 __tmp153434))))
                            (declare (not safe))
                            (cons __tmp153433 '())))
                         (__tmp153419
                          (let ((__tmp153420
                                 (let ((__tmp153421
                                        (let ((__tmp153425
                                               (let ((__tmp153426
                                                      (let ((__tmp153430
                                                             (let ((__tmp153431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153431)))
                    (__tmp153427
                     (let ((__tmp153428
                            (let ((__tmp153429
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152395_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153429))))
                       (declare (not safe))
                       (cons __tmp153428 _args152370_))))
                (declare (not safe))
                (cons __tmp153430 __tmp153427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp153426)))
                                              (__tmp153422
                                               (let ((__tmp153423
                                                      (let ((__tmp153424
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152395_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153423 '()))))
                                          (declare (not safe))
                                          (cons __tmp153425 __tmp153422))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153421))))
                            (declare (not safe))
                            (cons __tmp153420 '()))))
                     (declare (not safe))
                     (cons __tmp153432 __tmp153419))))
              (declare (not safe))
              (cons '%#let-values __tmp153418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153417
                                                _stx152363_)))))
                                      (let* ((_g152402152442_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152975152976_))
                                                    (___kont152979152980_)
                                                    (___kont152981152982_))))
                                             (___match153012153013_
                                              (lambda (_e152411152447_
                                                       _hd152410152450_
                                                       _tl152409152452_
                                                       _e152414152455_
                                                       _hd152413152458_
                                                       _tl152412152460_
                                                       _e152417152463_
                                                       _hd152416152466_
                                                       _tl152415152468_
                                                       _e152420152471_
                                                       _hd152419152474_
                                                       _tl152418152476_)
                                                (let ((_L152479_
                                                       _tl152418152476_)
                                                      (_L152480_
                                                       _hd152419152474_)
                                                      (_L152481_
                                                       _hd152416152466_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L152481_))
                                                      (___kont152977152978_
                                                       _L152479_
                                                       _L152480_
                                                       _L152481_)
                                                      (___kont152981152982_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152975152976_))
                                            (let ((_e152411152447_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152975152976_))))
                                              (let ((_tl152409152452_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152411152447_)))
                                                    (_hd152410152450_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152411152447_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd152410152450_))
                                                    (let ((_e152414152455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152410152450_))))
                                                      (let ((_tl152412152460_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e152414152455_)))
                    (_hd152413152458_
                     (let () (declare (not safe)) (##car _e152414152455_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd152413152458_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd152413152458_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152412152460_))
                            (let ((_e152417152463_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152412152460_))))
                              (let ((_tl152415152468_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152417152463_)))
                                    (_hd152416152466_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152417152463_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl152415152468_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl152409152452_))
                                        (let ((_e152420152471_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl152409152452_))))
                                          (let ((_tl152418152476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152420152471_)))
                                                (_hd152419152474_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152420152471_))))
                                            (___match153012153013_
                                             _e152411152447_
                                             _hd152410152450_
                                             _tl152409152452_
                                             _e152414152455_
                                             _hd152413152458_
                                             _tl152412152460_
                                             _e152417152463_
                                             _hd152416152466_
                                             _tl152415152468_
                                             _e152420152471_
                                             _hd152419152474_
                                             _tl152418152476_)))
                                        (___kont152981152982_))
                                    (___kont152981152982_))))
                            (___kont152981152982_))
                        (___kont152981152982_))
                    (___kont152981152982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152981152982_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g152402152442_))))))))))))))))))
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
      (lambda (_self152185_ _stx152186_ _args152187_)
        (let* ((_g152189152199_
                (lambda (_g152190152196_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152190152196_))))
               (_g152188152237_
                (lambda (_g152190152202_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152190152202_))
                      (let ((_e152194152204_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152190152202_))))
                        (let ((_hd152193152207_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152194152204_)))
                              (_tl152192152209_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152194152204_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152192152209_))
                              ((lambda (_L152212_)
                                 (let* ((_klass152223_
                                         (let ((__tmp153558
                                                (##structure-ref
                                                 _self152185_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152186_
                                            __tmp153558)))
                                        (_field152225_
                                         (let ((__tmp153559
                                                (##structure-ref
                                                 _self152185_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass152223_
                                            __tmp153559)))
                                        (_object152227_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L152212_))))
                                   (if (##structure-ref
                                        _klass152223_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153636
                                              (let ((__tmp153645
                                                     (if (##structure-ref
                                                          _self152185_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp153637
                                                     (let ((__tmp153642
                                                            (let ((__tmp153643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153644
                                  (##structure-ref
                                   _self152185_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153644 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153643)))
                   (__tmp153638
                    (let ((__tmp153640
                           (let ((__tmp153641
                                  (let ()
                                    (declare (not safe))
                                    (cons _field152225_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp153641)))
                          (__tmp153639
                           (let ()
                             (declare (not safe))
                             (cons _object152227_ '()))))
                      (declare (not safe))
                      (cons __tmp153640 __tmp153639))))
               (declare (not safe))
               (cons __tmp153642 __tmp153638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153645
                                                      __tmp153637))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153636
                                          _stx152186_))
                                       (if (##structure-ref
                                            _klass152223_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153626
                                                  (let ((__tmp153635
                                                         (if (##structure-ref
                                                              _self152185_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp153627
                                                         (let ((__tmp153632
                                                                (let ((__tmp153633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153634
                                      (##structure-ref
                                       _self152185_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153634 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153633)))
                       (__tmp153628
                        (let ((__tmp153630
                               (let ((__tmp153631
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152225_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153631)))
                              (__tmp153629
                               (let ()
                                 (declare (not safe))
                                 (cons _object152227_ '()))))
                          (declare (not safe))
                          (cons __tmp153630 __tmp153629))))
                   (declare (not safe))
                   (cons __tmp153632 __tmp153628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153635
                                                          __tmp153627))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153626
                                              _stx152186_))
                                           (let ((_$e152230_
                                                  (let ((__tmp153560
                                                         (##structure-ref
                                                          _self152185_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass152223_
                                                     __tmp153560))))
                                             (if _$e152230_
                                                 ((lambda (_klass152233_)
                                                    (let ((__tmp153616
                                                           (let ((__tmp153625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self152185_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp153617
                          (let ((__tmp153622
                                 (let ((__tmp153623
                                        (let ((__tmp153624
                                               (##structure-ref
                                                _self152185_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153624 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153623)))
                                (__tmp153618
                                 (let ((__tmp153620
                                        (let ((__tmp153621
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field152225_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153621)))
                                       (__tmp153619
                                        (let ()
                                          (declare (not safe))
                                          (cons _object152227_ '()))))
                                   (declare (not safe))
                                   (cons __tmp153620 __tmp153619))))
                            (declare (not safe))
                            (cons __tmp153622 __tmp153618))))
                     (declare (not safe))
                     (cons __tmp153625 __tmp153617))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp153616 _stx152186_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e152230_)
                                                 (if (##structure-ref
                                                      _self152185_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp153570
                                                            (let* ((_$obj152235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153571 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp153571)))
                           (__tmp153572
                            (let ((__tmp153612
                                   (let ((__tmp153613
                                          (let ((__tmp153615
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj152235_ '())))
                                                (__tmp153614
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object152227_ '()))))
                                            (declare (not safe))
                                            (cons __tmp153615 __tmp153614))))
                                     (declare (not safe))
                                     (cons __tmp153613 '())))
                                  (__tmp153573
                                   (let ((__tmp153574
                                          (let ((__tmp153575
                                                 (let ((__tmp153604
                                                        (let ((__tmp153605
                                                               (let ((__tmp153609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153610
                                     (let ((__tmp153611
                                            (##structure-ref
                                             _klass152223_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp153611 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp153610)))
                             (__tmp153606
                              (let ((__tmp153607
                                     (let ((__tmp153608
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj152235_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153608))))
                                (declare (not safe))
                                (cons __tmp153607 '()))))
                         (declare (not safe))
                         (cons __tmp153609 __tmp153606))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp153605)))
               (__tmp153576
                (let ((__tmp153593
                       (let ((__tmp153594
                              (let ((__tmp153601
                                     (let ((__tmp153602
                                            (let ((__tmp153603
                                                   (##structure-ref
                                                    _self152185_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153603 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153602)))
                                    (__tmp153595
                                     (let ((__tmp153599
                                            (let ((__tmp153600
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152225_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153600)))
                                           (__tmp153596
                                            (let ((__tmp153597
                                                   (let ((__tmp153598
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153598))))
                                              (declare (not safe))
                                              (cons __tmp153597 '()))))
                                       (declare (not safe))
                                       (cons __tmp153599 __tmp153596))))
                                (declare (not safe))
                                (cons __tmp153601 __tmp153595))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp153594)))
                      (__tmp153577
                       (let ((__tmp153578
                              (let ((__tmp153579
                                     (let ((__tmp153591
                                            (let ((__tmp153592
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153592)))
                                           (__tmp153580
                                            (let ((__tmp153588
                                                   (let ((__tmp153589
                                                          (let ((__tmp153590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self152185_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp153590 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153589)))
                                                  (__tmp153581
                                                   (let ((__tmp153586
                                                          (let ((__tmp153587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj152235_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153587)))
                 (__tmp153582
                  (let ((__tmp153583
                         (let ((__tmp153584
                                (let ((__tmp153585
                                       (##structure-ref
                                        _self152185_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp153585 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153584))))
                    (declare (not safe))
                    (cons __tmp153583 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153586
                                                           __tmp153582))))
                                              (declare (not safe))
                                              (cons __tmp153588 __tmp153581))))
                                       (declare (not safe))
                                       (cons __tmp153591 __tmp153580))))
                                (declare (not safe))
                                (cons '%#call __tmp153579))))
                         (declare (not safe))
                         (cons __tmp153578 '()))))
                  (declare (not safe))
                  (cons __tmp153593 __tmp153577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153604
                                                         __tmp153576))))
                                            (declare (not safe))
                                            (cons '%#if __tmp153575))))
                                     (declare (not safe))
                                     (cons __tmp153574 '()))))
                              (declare (not safe))
                              (cons __tmp153612 __tmp153573))))
                      (declare (not safe))
                      (cons '%#let-values __tmp153572))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153570 _stx152186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp153561
                                                            (let ((__tmp153562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153568
                                  (let ((__tmp153569
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153569)))
                                 (__tmp153563
                                  (let ((__tmp153564
                                         (let ((__tmp153565
                                                (let ((__tmp153566
                                                       (let ((__tmp153567
                                                              (##structure-ref
                                                               _self152185_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp153567
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp153566))))
                                           (declare (not safe))
                                           (cons __tmp153565 '()))))
                                    (declare (not safe))
                                    (cons _object152227_ __tmp153564))))
                             (declare (not safe))
                             (cons __tmp153568 __tmp153563))))
                      (declare (not safe))
                      (cons '%#call __tmp153562))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153561 _stx152186_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd152193152207_)
                              (let ()
                                (declare (not safe))
                                (_g152189152199_ _g152190152202_)))))
                      (let ()
                        (declare (not safe))
                        (_g152189152199_ _g152190152202_))))))
          (declare (not safe))
          (_g152188152237_ _args152187_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152860 __method-table152861)
        (let ((__id152862
               (let ((__slot152865
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152860 'id))))
                 (if __slot152865
                     __slot152865
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152863
               (let ((__slot152866
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152860 'checked?))))
                 (if __slot152866
                     __slot152866
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot152864
               (let ((__slot152867
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152860 'slot))))
                 (if __slot152867
                     __slot152867
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self152185_ _stx152186_ _args152187_)
            (let* ((_g152189152199_
                    (lambda (_g152190152196_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152190152196_))))
                   (_g152188152237_
                    (lambda (_g152190152202_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152190152202_))
                          (let ((_e152194152204_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152190152202_))))
                            (let ((_hd152193152207_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152194152204_)))
                                  (_tl152192152209_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152194152204_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152192152209_))
                                  ((lambda (_L152212_)
                                     (let* ((_klass152223_
                                             (let ((__tmp153646
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152185_
                                                       __id152862
                                                       __klass152860
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152186_
                                                __tmp153646)))
                                            (_field152225_
                                             (let ((__tmp153647
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152185_
                                                       __slot152864
                                                       __klass152860
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass152223_
                                                __tmp153647)))
                                            (_object152227_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L152212_))))
                                       (if (##structure-ref
                                            _klass152223_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153724
                                                  (let ((__tmp153733
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152185_
                        __checked?152863
                        __klass152860
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153725
                 (let ((__tmp153730
                        (let ((__tmp153731
                               (let ((__tmp153732
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self152185_
                                         __id152862
                                         __klass152860
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153732 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153731)))
                       (__tmp153726
                        (let ((__tmp153728
                               (let ((__tmp153729
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152225_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153729)))
                              (__tmp153727
                               (let ()
                                 (declare (not safe))
                                 (cons _object152227_ '()))))
                          (declare (not safe))
                          (cons __tmp153728 __tmp153727))))
                   (declare (not safe))
                   (cons __tmp153730 __tmp153726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153733
                                                          __tmp153725))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153724
                                              _stx152186_))
                                           (if (##structure-ref
                                                _klass152223_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153714
                                                      (let ((__tmp153723
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152185_
                            __checked?152863
                            __klass152860
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153715
                     (let ((__tmp153720
                            (let ((__tmp153721
                                   (let ((__tmp153722
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152185_
                                             __id152862
                                             __klass152860
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153722 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153721)))
                           (__tmp153716
                            (let ((__tmp153718
                                   (let ((__tmp153719
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152225_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153719)))
                                  (__tmp153717
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152227_ '()))))
                              (declare (not safe))
                              (cons __tmp153718 __tmp153717))))
                       (declare (not safe))
                       (cons __tmp153720 __tmp153716))))
                (declare (not safe))
                (cons __tmp153723 __tmp153715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153714
                                                  _stx152186_))
                                               (let ((_$e152230_
                                                      (let ((__tmp153648
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152185_
                        __slot152864
                        __klass152860
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass152223_ __tmp153648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e152230_
                                                     ((lambda (_klass152233_)
                                                        (let ((__tmp153704
                                                               (let ((__tmp153713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152185_
                                     __checked?152863
                                     __klass152860
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153705
                              (let ((__tmp153710
                                     (let ((__tmp153711
                                            (let ((__tmp153712
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152185_
                                                      __id152862
                                                      __klass152860
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153712 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153711)))
                                    (__tmp153706
                                     (let ((__tmp153708
                                            (let ((__tmp153709
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152225_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153709)))
                                           (__tmp153707
                                            (let ()
                                              (declare (not safe))
                                              (cons _object152227_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153708 __tmp153707))))
                                (declare (not safe))
                                (cons __tmp153710 __tmp153706))))
                         (declare (not safe))
                         (cons __tmp153713 __tmp153705))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153704 _stx152186_)))
              _$e152230_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self152185_
                                                            __checked?152863
                                                            __klass152860
                                                            '#f))
                                                         (let ((__tmp153658
                                                                (let* ((_$obj152235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp153659 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp153659)))
                               (__tmp153660
                                (let ((__tmp153700
                                       (let ((__tmp153701
                                              (let ((__tmp153703
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj152235_
                                                             '())))
                                                    (__tmp153702
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object152227_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153703
                                                      __tmp153702))))
                                         (declare (not safe))
                                         (cons __tmp153701 '())))
                                      (__tmp153661
                                       (let ((__tmp153662
                                              (let ((__tmp153663
                                                     (let ((__tmp153692
                                                            (let ((__tmp153693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153697
                                  (let ((__tmp153698
                                         (let ((__tmp153699
                                                (##structure-ref
                                                 _klass152223_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153699 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153698)))
                                 (__tmp153694
                                  (let ((__tmp153695
                                         (let ((__tmp153696
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj152235_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153696))))
                                    (declare (not safe))
                                    (cons __tmp153695 '()))))
                             (declare (not safe))
                             (cons __tmp153697 __tmp153694))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153693)))
                   (__tmp153664
                    (let ((__tmp153681
                           (let ((__tmp153682
                                  (let ((__tmp153689
                                         (let ((__tmp153690
                                                (let ((__tmp153691
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152185_
                                                          __id152862
                                                          __klass152860
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153691 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153690)))
                                        (__tmp153683
                                         (let ((__tmp153687
                                                (let ((__tmp153688
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152225_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153688)))
                                               (__tmp153684
                                                (let ((__tmp153685
                                                       (let ((__tmp153686
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152235_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153685 '()))))
                                           (declare (not safe))
                                           (cons __tmp153687 __tmp153684))))
                                    (declare (not safe))
                                    (cons __tmp153689 __tmp153683))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153682)))
                          (__tmp153665
                           (let ((__tmp153666
                                  (let ((__tmp153667
                                         (let ((__tmp153679
                                                (let ((__tmp153680
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153680)))
                                               (__tmp153668
                                                (let ((__tmp153676
                                                       (let ((__tmp153677
                                                              (let ((__tmp153678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152185_
                                __id152862
                                __klass152860
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153678 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153677)))
              (__tmp153669
               (let ((__tmp153674
                      (let ((__tmp153675
                             (let ()
                               (declare (not safe))
                               (cons _$obj152235_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153675)))
                     (__tmp153670
                      (let ((__tmp153671
                             (let ((__tmp153672
                                    (let ((__tmp153673
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self152185_
                                              __slot152864
                                              __klass152860
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153673 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153672))))
                        (declare (not safe))
                        (cons __tmp153671 '()))))
                 (declare (not safe))
                 (cons __tmp153674 __tmp153670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153676
                                                        __tmp153669))))
                                           (declare (not safe))
                                           (cons __tmp153679 __tmp153668))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153667))))
                             (declare (not safe))
                             (cons __tmp153666 '()))))
                      (declare (not safe))
                      (cons __tmp153681 __tmp153665))))
               (declare (not safe))
               (cons __tmp153692 __tmp153664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp153663))))
                                         (declare (not safe))
                                         (cons __tmp153662 '()))))
                                  (declare (not safe))
                                  (cons __tmp153700 __tmp153661))))
                          (declare (not safe))
                          (cons '%#let-values __tmp153660))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153658 _stx152186_))
                 (let ((__tmp153649
                        (let ((__tmp153650
                               (let ((__tmp153656
                                      (let ((__tmp153657
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp153657)))
                                     (__tmp153651
                                      (let ((__tmp153652
                                             (let ((__tmp153653
                                                    (let ((__tmp153654
                                                           (let ((__tmp153655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self152185_
                             __slot152864
                             __klass152860
                             '#f))))
                     (declare (not safe))
                     (cons __tmp153655 '()))))
              (declare (not safe))
              (cons '%#quote __tmp153654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153653 '()))))
                                        (declare (not safe))
                                        (cons _object152227_ __tmp153652))))
                                 (declare (not safe))
                                 (cons __tmp153656 __tmp153651))))
                          (declare (not safe))
                          (cons '%#call __tmp153650))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153649 _stx152186_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd152193152207_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152189152199_ _g152190152202_)))))
                          (let ()
                            (declare (not safe))
                            (_g152189152199_ _g152190152202_))))))
              (declare (not safe))
              (_g152188152237_ _args152187_))))))
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
      (lambda (_self151990_ _stx151991_ _args151992_)
        (let* ((_g151994152008_
                (lambda (_g151995152005_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151995152005_))))
               (_g151993152060_
                (lambda (_g151995152011_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151995152011_))
                      (let ((_e152000152013_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151995152011_))))
                        (let ((_hd151999152016_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152000152013_)))
                              (_tl151998152018_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152000152013_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151998152018_))
                              (let ((_e152003152021_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151998152018_))))
                                (let ((_hd152002152024_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152003152021_)))
                                      (_tl152001152026_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152003152021_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl152001152026_))
                                      ((lambda (_L152029_ _L152030_)
                                         (let* ((_klass152044_
                                                 (let ((__tmp153734
                                                        (##structure-ref
                                                         _self151990_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151991_
                                                    __tmp153734)))
                                                (_field152046_
                                                 (let ((__tmp153735
                                                        (##structure-ref
                                                         _self151990_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152044_
                                                    __tmp153735)))
                                                (_object152048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L152030_)))
                                                (_value152050_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L152029_))))
                                           (if (##structure-ref
                                                _klass152044_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153817
                                                      (let ((__tmp153827
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151990_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153818
                     (let ((__tmp153824
                            (let ((__tmp153825
                                   (let ((__tmp153826
                                          (##structure-ref
                                           _self151990_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153826 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153825)))
                           (__tmp153819
                            (let ((__tmp153822
                                   (let ((__tmp153823
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152046_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153823)))
                                  (__tmp153820
                                   (let ((__tmp153821
                                          (let ()
                                            (declare (not safe))
                                            (cons _value152050_ '()))))
                                     (declare (not safe))
                                     (cons _object152048_ __tmp153821))))
                              (declare (not safe))
                              (cons __tmp153822 __tmp153820))))
                       (declare (not safe))
                       (cons __tmp153824 __tmp153819))))
                (declare (not safe))
                (cons __tmp153827 __tmp153818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153817
                                                  _stx151991_))
                                               (if (##structure-ref
                                                    _klass152044_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153806
                                                          (let ((__tmp153816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151990_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153807
                         (let ((__tmp153813
                                (let ((__tmp153814
                                       (let ((__tmp153815
                                              (##structure-ref
                                               _self151990_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153815 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153814)))
                               (__tmp153808
                                (let ((__tmp153811
                                       (let ((__tmp153812
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152046_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153812)))
                                      (__tmp153809
                                       (let ((__tmp153810
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152050_ '()))))
                                         (declare (not safe))
                                         (cons _object152048_ __tmp153810))))
                                  (declare (not safe))
                                  (cons __tmp153811 __tmp153809))))
                           (declare (not safe))
                           (cons __tmp153813 __tmp153808))))
                    (declare (not safe))
                    (cons __tmp153816 __tmp153807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153806
                                                      _stx151991_))
                                                   (let ((_$e152053_
                                                          (let ((__tmp153736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151990_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass152044_ __tmp153736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e152053_
                                                         ((lambda (_klass152056_)
                                                            (let ((__tmp153795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153805
                                  (if (##structure-ref
                                       _self151990_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153796
                                  (let ((__tmp153802
                                         (let ((__tmp153803
                                                (let ((__tmp153804
                                                       (##structure-ref
                                                        _self151990_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153804 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153803)))
                                        (__tmp153797
                                         (let ((__tmp153800
                                                (let ((__tmp153801
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152046_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153801)))
                                               (__tmp153798
                                                (let ((__tmp153799
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value152050_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object152048_
                                                        __tmp153799))))
                                           (declare (not safe))
                                           (cons __tmp153800 __tmp153798))))
                                    (declare (not safe))
                                    (cons __tmp153802 __tmp153797))))
                             (declare (not safe))
                             (cons __tmp153805 __tmp153796))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153795 _stx151991_)))
                  _$e152053_)
                 (if (##structure-ref _self151990_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153747
                            (let* ((_$obj152058_
                                    (let ((__tmp153748 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153748)))
                                   (__tmp153749
                                    (let ((__tmp153791
                                           (let ((__tmp153792
                                                  (let ((__tmp153794
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153793
                 (let () (declare (not safe)) (cons _object152048_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153794
                                                          __tmp153793))))
                                             (declare (not safe))
                                             (cons __tmp153792 '())))
                                          (__tmp153750
                                           (let ((__tmp153751
                                                  (let ((__tmp153752
                                                         (let ((__tmp153783
                                                                (let ((__tmp153784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153788
                                      (let ((__tmp153789
                                             (let ((__tmp153790
                                                    (##structure-ref
                                                     _klass152044_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153790 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153789)))
                                     (__tmp153785
                                      (let ((__tmp153786
                                             (let ((__tmp153787
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj152058_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153787))))
                                        (declare (not safe))
                                        (cons __tmp153786 '()))))
                                 (declare (not safe))
                                 (cons __tmp153788 __tmp153785))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153784)))
                       (__tmp153753
                        (let ((__tmp153771
                               (let ((__tmp153772
                                      (let ((__tmp153780
                                             (let ((__tmp153781
                                                    (let ((__tmp153782
                                                           (##structure-ref
                                                            _self151990_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153782 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153781)))
                                            (__tmp153773
                                             (let ((__tmp153778
                                                    (let ((__tmp153779
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153779)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153774
                                                    (let ((__tmp153776
                                                           (let ((__tmp153777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152058_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153777)))
                  (__tmp153775
                   (let () (declare (not safe)) (cons _value152050_ '()))))
              (declare (not safe))
              (cons __tmp153776 __tmp153775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153778
                                                     __tmp153774))))
                                        (declare (not safe))
                                        (cons __tmp153780 __tmp153773))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153772)))
                              (__tmp153754
                               (let ((__tmp153755
                                      (let ((__tmp153756
                                             (let ((__tmp153769
                                                    (let ((__tmp153770
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153770)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153757
                                                    (let ((__tmp153766
                                                           (let ((__tmp153767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153768
                                 (##structure-ref
                                  _self151990_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153768 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153767)))
                  (__tmp153758
                   (let ((__tmp153764
                          (let ((__tmp153765
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj152058_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153765)))
                         (__tmp153759
                          (let ((__tmp153761
                                 (let ((__tmp153762
                                        (let ((__tmp153763
                                               (##structure-ref
                                                _self151990_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153763 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153762)))
                                (__tmp153760
                                 (let ()
                                   (declare (not safe))
                                   (cons _value152050_ '()))))
                            (declare (not safe))
                            (cons __tmp153761 __tmp153760))))
                     (declare (not safe))
                     (cons __tmp153764 __tmp153759))))
              (declare (not safe))
              (cons __tmp153766 __tmp153758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153769
                                                     __tmp153757))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153756))))
                                 (declare (not safe))
                                 (cons __tmp153755 '()))))
                          (declare (not safe))
                          (cons __tmp153771 __tmp153754))))
                   (declare (not safe))
                   (cons __tmp153783 __tmp153753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153752))))
                                             (declare (not safe))
                                             (cons __tmp153751 '()))))
                                      (declare (not safe))
                                      (cons __tmp153791 __tmp153750))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153749))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153747 _stx151991_))
                     (let ((__tmp153737
                            (let ((__tmp153738
                                   (let ((__tmp153745
                                          (let ((__tmp153746
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153746)))
                                         (__tmp153739
                                          (let ((__tmp153740
                                                 (let ((__tmp153742
                                                        (let ((__tmp153743
                                                               (let ((__tmp153744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151990_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153744 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153743)))
               (__tmp153741
                (let () (declare (not safe)) (cons _value152050_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153742
                                                         __tmp153741))))
                                            (declare (not safe))
                                            (cons _object152048_
                                                  __tmp153740))))
                                     (declare (not safe))
                                     (cons __tmp153745 __tmp153739))))
                              (declare (not safe))
                              (cons '%#call __tmp153738))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153737 _stx151991_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd152002152024_
                                       _hd151999152016_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151994152008_ _g151995152011_)))))
                              (let ()
                                (declare (not safe))
                                (_g151994152008_ _g151995152011_)))))
                      (let ()
                        (declare (not safe))
                        (_g151994152008_ _g151995152011_))))))
          (declare (not safe))
          (_g151993152060_ _args151992_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152868 __method-table152869)
        (let ((__id152870
               (let ((__slot152873
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152868 'id))))
                 (if __slot152873
                     __slot152873
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152871
               (let ((__slot152874
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152868 'checked?))))
                 (if __slot152874
                     __slot152874
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot152872
               (let ((__slot152875
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152868 'slot))))
                 (if __slot152875
                     __slot152875
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151990_ _stx151991_ _args151992_)
            (let* ((_g151994152008_
                    (lambda (_g151995152005_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151995152005_))))
                   (_g151993152060_
                    (lambda (_g151995152011_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151995152011_))
                          (let ((_e152000152013_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151995152011_))))
                            (let ((_hd151999152016_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152000152013_)))
                                  (_tl151998152018_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152000152013_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151998152018_))
                                  (let ((_e152003152021_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151998152018_))))
                                    (let ((_hd152002152024_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152003152021_)))
                                          (_tl152001152026_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152003152021_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152001152026_))
                                          ((lambda (_L152029_ _L152030_)
                                             (let* ((_klass152044_
                                                     (let ((__tmp153828
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151990_
                                                               __id152870
                                                               __klass152868
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151991_
                                                        __tmp153828)))
                                                    (_field152046_
                                                     (let ((__tmp153829
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151990_
                                                               __slot152872
                                                               __klass152868
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152044_
                                                        __tmp153829)))
                                                    (_object152048_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L152030_)))
                                                    (_value152050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L152029_))))
                                               (if (##structure-ref
                                                    _klass152044_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153911
                                                          (let ((__tmp153921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151990_
                                __checked?152871
                                __klass152868
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153912
                         (let ((__tmp153918
                                (let ((__tmp153919
                                       (let ((__tmp153920
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151990_
                                                 __id152870
                                                 __klass152868
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153920 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153919)))
                               (__tmp153913
                                (let ((__tmp153916
                                       (let ((__tmp153917
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152046_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153917)))
                                      (__tmp153914
                                       (let ((__tmp153915
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152050_ '()))))
                                         (declare (not safe))
                                         (cons _object152048_ __tmp153915))))
                                  (declare (not safe))
                                  (cons __tmp153916 __tmp153914))))
                           (declare (not safe))
                           (cons __tmp153918 __tmp153913))))
                    (declare (not safe))
                    (cons __tmp153921 __tmp153912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153911
                                                      _stx151991_))
                                                   (if (##structure-ref
                                                        _klass152044_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153900
                                                              (let ((__tmp153910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151990_
                                    __checked?152871
                                    __klass152868
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153901
                             (let ((__tmp153907
                                    (let ((__tmp153908
                                           (let ((__tmp153909
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151990_
                                                     __id152870
                                                     __klass152868
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153909 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153908)))
                                   (__tmp153902
                                    (let ((__tmp153905
                                           (let ((__tmp153906
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field152046_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153906)))
                                          (__tmp153903
                                           (let ((__tmp153904
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value152050_ '()))))
                                             (declare (not safe))
                                             (cons _object152048_
                                                   __tmp153904))))
                                      (declare (not safe))
                                      (cons __tmp153905 __tmp153903))))
                               (declare (not safe))
                               (cons __tmp153907 __tmp153902))))
                        (declare (not safe))
                        (cons __tmp153910 __tmp153901))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153900 _stx151991_))
               (let ((_$e152053_
                      (let ((__tmp153830
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151990_
                                __slot152872
                                __klass152868
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass152044_
                         __tmp153830))))
                 (if _$e152053_
                     ((lambda (_klass152056_)
                        (let ((__tmp153889
                               (let ((__tmp153899
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151990_
                                             __checked?152871
                                             __klass152868
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153890
                                      (let ((__tmp153896
                                             (let ((__tmp153897
                                                    (let ((__tmp153898
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151990_
                                                              __id152870
                                                              __klass152868
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153898 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153897)))
                                            (__tmp153891
                                             (let ((__tmp153894
                                                    (let ((__tmp153895
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153895)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153892
                                                    (let ((__tmp153893
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value152050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object152048_ __tmp153893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153894
                                                     __tmp153892))))
                                        (declare (not safe))
                                        (cons __tmp153896 __tmp153891))))
                                 (declare (not safe))
                                 (cons __tmp153899 __tmp153890))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153889 _stx151991_)))
                      _$e152053_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151990_
                            __checked?152871
                            __klass152868
                            '#f))
                         (let ((__tmp153841
                                (let* ((_$obj152058_
                                        (let ((__tmp153842 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153842)))
                                       (__tmp153843
                                        (let ((__tmp153885
                                               (let ((__tmp153886
                                                      (let ((__tmp153888
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152058_ '())))
                    (__tmp153887
                     (let () (declare (not safe)) (cons _object152048_ '()))))
                (declare (not safe))
                (cons __tmp153888 __tmp153887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153886 '())))
                                              (__tmp153844
                                               (let ((__tmp153845
                                                      (let ((__tmp153846
                                                             (let ((__tmp153877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153878
                                   (let ((__tmp153882
                                          (let ((__tmp153883
                                                 (let ((__tmp153884
                                                        (##structure-ref
                                                         _klass152044_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153884 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153883)))
                                         (__tmp153879
                                          (let ((__tmp153880
                                                 (let ((__tmp153881
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152058_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153881))))
                                            (declare (not safe))
                                            (cons __tmp153880 '()))))
                                     (declare (not safe))
                                     (cons __tmp153882 __tmp153879))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153878)))
                           (__tmp153847
                            (let ((__tmp153865
                                   (let ((__tmp153866
                                          (let ((__tmp153874
                                                 (let ((__tmp153875
                                                        (let ((__tmp153876
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151990_
                          __id152870
                          __klass152868
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153876 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153875)))
                                                (__tmp153867
                                                 (let ((__tmp153872
                                                        (let ((__tmp153873
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field152046_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153873)))
               (__tmp153868
                (let ((__tmp153870
                       (let ((__tmp153871
                              (let ()
                                (declare (not safe))
                                (cons _$obj152058_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153871)))
                      (__tmp153869
                       (let () (declare (not safe)) (cons _value152050_ '()))))
                  (declare (not safe))
                  (cons __tmp153870 __tmp153869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153872
                                                         __tmp153868))))
                                            (declare (not safe))
                                            (cons __tmp153874 __tmp153867))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153866)))
                                  (__tmp153848
                                   (let ((__tmp153849
                                          (let ((__tmp153850
                                                 (let ((__tmp153863
                                                        (let ((__tmp153864
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153864)))
               (__tmp153851
                (let ((__tmp153860
                       (let ((__tmp153861
                              (let ((__tmp153862
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151990_
                                        __id152870
                                        __klass152868
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153862 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153861)))
                      (__tmp153852
                       (let ((__tmp153858
                              (let ((__tmp153859
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152058_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153859)))
                             (__tmp153853
                              (let ((__tmp153855
                                     (let ((__tmp153856
                                            (let ((__tmp153857
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151990_
                                                      __slot152872
                                                      __klass152868
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153857 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153856)))
                                    (__tmp153854
                                     (let ()
                                       (declare (not safe))
                                       (cons _value152050_ '()))))
                                (declare (not safe))
                                (cons __tmp153855 __tmp153854))))
                         (declare (not safe))
                         (cons __tmp153858 __tmp153853))))
                  (declare (not safe))
                  (cons __tmp153860 __tmp153852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153863
                                                         __tmp153851))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153850))))
                                     (declare (not safe))
                                     (cons __tmp153849 '()))))
                              (declare (not safe))
                              (cons __tmp153865 __tmp153848))))
                       (declare (not safe))
                       (cons __tmp153877 __tmp153847))))
                (declare (not safe))
                (cons '%#if __tmp153846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153845 '()))))
                                          (declare (not safe))
                                          (cons __tmp153885 __tmp153844))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153843))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153841 _stx151991_))
                         (let ((__tmp153831
                                (let ((__tmp153832
                                       (let ((__tmp153839
                                              (let ((__tmp153840
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153840)))
                                             (__tmp153833
                                              (let ((__tmp153834
                                                     (let ((__tmp153836
                                                            (let ((__tmp153837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153838
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151990_
                                     __slot152872
                                     __klass152868
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153838 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153837)))
                   (__tmp153835
                    (let () (declare (not safe)) (cons _value152050_ '()))))
               (declare (not safe))
               (cons __tmp153836 __tmp153835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object152048_
                                                      __tmp153834))))
                                         (declare (not safe))
                                         (cons __tmp153839 __tmp153833))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153832))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153831
                            _stx151991_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd152002152024_
                                           _hd151999152016_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151994152008_
                                             _g151995152011_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151994152008_ _g151995152011_)))))
                          (let ()
                            (declare (not safe))
                            (_g151994152008_ _g151995152011_))))))
              (declare (not safe))
              (_g151993152060_ _args151992_))))))
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
      (lambda (_self151824_ _stx151825_ _args151826_)
        (let* ((_self151827151836_ _self151824_)
               (_E151829151840_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151827151836_))))
               (_K151830151847_
                (lambda (_inline151843_ _dispatch151844_ _arity151845_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151824_ _args151826_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151825_
                         _arity151845_)))
                  (if _inline151843_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153927
                               (let ((__tmp153928
                                      (_inline151843_ _stx151825_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153928
                                  _stx151825_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153927)))
                      (if _dispatch151844_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151844_))
                            (let ((__tmp153922
                                   (let ((__tmp153923
                                          (let ((__tmp153924
                                                 (let ((__tmp153925
                                                        (let ((__tmp153926
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151844_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153925
                                                         _args151826_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153924))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153923
                                      _stx151825_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153922)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151825_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151827151836_ 'gxc#!lambda::t))
              (let* ((_e151831151850_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151827151836_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151832151853_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151827151836_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151856_ _e151832151853_)
                     (_e151833151858_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151827151836_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151861_ _e151833151858_)
                     (_e151834151863_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151827151836_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151866_ _e151834151863_))
                (declare (not safe))
                (_K151830151847_
                 _inline151866_
                 _dispatch151861_
                 _arity151856_))
              (let () (declare (not safe)) (_E151829151840_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self151663_ _stx151664_ _args151665_)
        (let* ((_self151666151673_ _self151663_)
               (_E151668151677_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151666151673_))))
               (_K151669151691_
                (lambda (_clauses151680_)
                  (let ((_$e151686_
                         (let ((__tmp153929
                                (lambda (_g151681151683_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151681151683_
                                     _args151665_)))))
                           (declare (not safe))
                           (find __tmp153929 _clauses151680_))))
                    (if _$e151686_
                        ((lambda (_clause151689_)
                           (let ((__method153144
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151689_
                                     'optimize-call))))
                             (if __method153144
                                 (__method153144
                                  _clause151689_
                                  _stx151664_
                                  _args151665_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151689_
                                          'optimize-call)))))
                         _$e151686_)
                        (let ((__tmp153930
                               (map gxc#!lambda-arity _clauses151680_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx151664_
                           __tmp153930)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151666151673_
                 'gxc#!case-lambda::t))
              (let* ((_e151670151694_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151666151673_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151671151697_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151666151673_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151700_ _e151671151697_))
                (declare (not safe))
                (_K151669151691_ _clauses151700_))
              (let () (declare (not safe)) (_E151668151677_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self151477_ _args151478_)
        (let* ((_self151479151486_ _self151477_)
               (_E151481151490_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151479151486_))))
               (_K151482151530_
                (lambda (_arity151493_)
                  (let* ((_arity151494151503_ _arity151493_)
                         (_E151497151507_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity151494151503_)))))
                    (let ((_K151501151527_
                           (lambda ()
                             (fx= (length _args151478_) _arity151493_)))
                          (_K151498151513_
                           (lambda (_arity151511_)
                             (fx>= (length _args151478_) _arity151511_))))
                      (let ((_try-match151496151523_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity151494151503_))
                                   (let ((_tl151500151518_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity151494151503_)))
                                         (_hd151499151516_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity151494151503_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl151500151518_))
                                         (let ((_arity151521_
                                                _hd151499151516_))
                                           (declare (not safe))
                                           (_K151498151513_ _arity151521_))
                                         (let ()
                                           (declare (not safe))
                                           (_E151497151507_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E151497151507_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity151494151503_))
                            (let () (declare (not safe)) (_K151501151527_))
                            (let ()
                              (declare (not safe))
                              (_try-match151496151523_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151479151486_ 'gxc#!lambda::t))
              (let* ((_e151483151533_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151479151486_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151484151536_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151479151486_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151539_ _e151484151536_))
                (declare (not safe))
                (_K151482151530_ _arity151539_))
              (let () (declare (not safe)) (_E151481151490_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self151362_ _stx151363_ _args151364_)
        (let* ((_self151365151373_ _self151362_)
               (_E151367151377_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151365151373_))))
               (_K151368151461_
                (lambda (_dispatch151380_ _table151381_)
                  (let* ((_g151382151391_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch151380_)))
                         (_else151384151399_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch151380_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx151363_))))
                         (_K151386151445_
                          (lambda (_main151402_ _keys151403_)
                            (let ((_g153931_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx151363_
                                      _args151364_))))
                              (begin
                                (let ((_g153932_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153931_)
                                             (##vector-length _g153931_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153932_ 2)))
                                      (error "Context expects 2 values"
                                             _g153932_)))
                                (let ((_pargs151405_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153931_ 0)))
                                      (_kwargs151406_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153931_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main151402_))
                                    (if _table151381_
                                        (let ((_xargs151413_
                                               (map (lambda (_key151408_)
                                                      (let ((_$e151410_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key151408_ _kwargs151406_))))
                (if _$e151410_ (values _$e151410_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys151403_)))
                                          (for-each
                                           (lambda (_kw151415_)
                                             (if (memq (car _kw151415_)
                                                       _keys151403_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx151363_
                                                    _keys151403_
                                                    _kw151415_))))
                                           _kwargs151406_)
                                          (let ((__tmp153984
                                                 (let ((__tmp153985
                                                        (let ((__tmp153986
                                                               (let ((__tmp153991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153992
                                     (let ()
                                       (declare (not safe))
                                       (cons _main151402_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153992)))
                             (__tmp153987
                              (let ((__tmp153989
                                     (let ((__tmp153990
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153990)))
                                    (__tmp153988
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs151405_
                                               _xargs151413_))))
                                (declare (not safe))
                                (cons __tmp153989 __tmp153988))))
                         (declare (not safe))
                         (cons __tmp153991 __tmp153987))))
                  (declare (not safe))
                  (cons '%#call __tmp153986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153985
                                                    _stx151363_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153984)))
                                        (let* ((_kwt151417_
                                                (let ((__tmp153933
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153933)))
                                               (_kwvars151420_
                                                (map (lambda (_g153934_)
                                                       (let ((__tmp153935
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153935)))
                                                     _kwargs151406_))
                                               (_kwbind151425_
                                                (map (lambda (_kw151422_
                                                              _kwvar151423_)
                                                       (let ((__tmp153938
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar151423_ '())))
                     (__tmp153936
                      (let ((__tmp153937 (cdr _kw151422_)))
                        (declare (not safe))
                        (cons __tmp153937 '()))))
                 (declare (not safe))
                 (cons __tmp153938 __tmp153936)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151406_
                                                     _kwvars151420_))
                                               (_kwset151430_
                                                (map (lambda (_kw151427_
                                                              _kwvar151428_)
                                                       (let ((__tmp153939
                                                              (let ((__tmp153940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153948
                                    (let ((__tmp153949
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt151417_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153949)))
                                   (__tmp153941
                                    (let ((__tmp153945
                                           (let ((__tmp153946
                                                  (let ((__tmp153947
                                                         (car _kw151427_)))
                                                    (declare (not safe))
                                                    (cons __tmp153947 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153946)))
                                          (__tmp153942
                                           (let ((__tmp153943
                                                  (let ((__tmp153944
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar151428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153944))))
                                             (declare (not safe))
                                             (cons __tmp153943 '()))))
                                      (declare (not safe))
                                      (cons __tmp153945 __tmp153942))))
                               (declare (not safe))
                               (cons __tmp153948 __tmp153941))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153940))))
                 (declare (not safe))
                 (cons '%#call __tmp153939)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151406_
                                                     _kwvars151420_))
                                               (_xkwargs151435_
                                                (map (lambda (_kw151432_
                                                              _kwvar151433_)
                                                       (let ((__tmp153952
                                                              (car _kw151432_))
                                                             (__tmp153950
                                                              (let ((__tmp153951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar151433_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153951))))
                 (declare (not safe))
                 (cons __tmp153952 __tmp153950)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151406_
                                                     _kwvars151420_))
                                               (_xargs151442_
                                                (map (lambda (_key151437_)
                                                       (let ((_$e151439_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key151437_ _xkwargs151435_))))
                 (if _$e151439_ (values _$e151439_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys151403_)))
                                          (let ((__tmp153953
                                                 (let ((__tmp153954
                                                        (let ((__tmp153955
                                                               (let ((__tmp153956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153957
                                     (let ((__tmp153958
                                            (let ((__tmp153972
                                                   (let ((__tmp153973
                                                          (let ((__tmp153983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt151417_ '())))
                        (__tmp153974
                         (let ((__tmp153975
                                (let ((__tmp153976
                                       (let ((__tmp153977
                                              (let ((__tmp153978
                                                     (let ((__tmp153980
                                                            (let ((__tmp153981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153982 (length _kwargs151406_)))
                             (declare (not safe))
                             (cons __tmp153982 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153981)))
                   (__tmp153979
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153980 __tmp153979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153978))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153977))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153976
                                   _stx151363_))))
                           (declare (not safe))
                           (cons __tmp153975 '()))))
                    (declare (not safe))
                    (cons __tmp153983 __tmp153974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153973 '())))
                                                  (__tmp153959
                                                   (let ((__tmp153960
                                                          (let ((__tmp153961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153962
                                (let ((__tmp153963
                                       (let ((__tmp153964
                                              (let ((__tmp153965
                                                     (let ((__tmp153970
                                                            (let ((__tmp153971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main151402_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153971)))
                   (__tmp153966
                    (let ((__tmp153968
                           (let ((__tmp153969
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt151417_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153969)))
                          (__tmp153967
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs151405_ _xargs151442_))))
                      (declare (not safe))
                      (cons __tmp153968 __tmp153967))))
               (declare (not safe))
               (cons __tmp153970 __tmp153966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153965))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153964
                                          _stx151363_))))
                                  (declare (not safe))
                                  (cons __tmp153963 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153962 _kwset151430_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153960 '()))))
                                              (declare (not safe))
                                              (cons __tmp153972 __tmp153959))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153958))))
                                (declare (not safe))
                                (cons __tmp153957 '()))))
                         (declare (not safe))
                         (cons _kwbind151425_ __tmp153956))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153954
                                                    _stx151363_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153953)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g151382151391_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e151387151448_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151382151391_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e151388151451_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151382151391_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys151454_ _e151388151451_)
                               (_e151389151456_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151382151391_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main151459_ _e151389151456_))
                          (declare (not safe))
                          (_K151386151445_ _main151459_ _keys151454_))
                        (let () (declare (not safe)) (_else151384151399_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151365151373_
                 'gxc#!kw-lambda::t))
              (let* ((_e151369151464_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151365151373_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151370151467_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151365151373_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table151470_ _e151370151467_)
                     (_e151371151472_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151365151373_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch151475_ _e151371151472_))
                (declare (not safe))
                (_K151368151461_ _dispatch151475_ _table151470_))
              (let () (declare (not safe)) (_E151367151377_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150975_ _args150976_)
        (let _lp150978_ ((_rest150980_ _args150976_)
                         (_pargs150981_ '())
                         (_kwargs150982_ '()))
          (let* ((___stx153026153027_ _rest150980_)
                 (_g150988151040_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx153026153027_)))))
            (let ((___kont153028153029_
                   (lambda (_L151219_ _L151220_)
                     (let ((__tmp153993
                            (let ()
                              (declare (not safe))
                              (cons _L151220_ _pargs150981_))))
                       (declare (not safe))
                       (_lp150978_ _L151219_ __tmp153993 _kwargs150982_))))
                  (___kont153030153031_
                   (lambda (_L151165_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L151165_ _pargs150981_))
                             (reverse _kwargs150982_))))
                  (___kont153032153033_
                   (lambda (_L151112_ _L151113_ _L151114_)
                     (let ((_kw151131_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L151114_))))
                       (if (assq _kw151131_ _kwargs150982_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150975_
                              _kw151131_))
                           (let ((__tmp153994
                                  (let ((__tmp153995
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw151131_ _L151113_))))
                                    (declare (not safe))
                                    (cons __tmp153995 _kwargs150982_))))
                             (declare (not safe))
                             (_lp150978_
                              _L151112_
                              _pargs150981_
                              __tmp153994))))))
                  (___kont153034153035_
                   (lambda (_L151060_ _L151061_)
                     (let ((__tmp153996
                            (let ()
                              (declare (not safe))
                              (cons _L151061_ _pargs150981_))))
                       (declare (not safe))
                       (_lp150978_ _L151060_ __tmp153996 _kwargs150982_))))
                  (___kont153036153037_
                   (lambda ()
                     (values (reverse _pargs150981_)
                             (reverse _kwargs150982_)))))
              (let* ((_g150987151047_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx153026153027_))
                            (___kont153036153037_)
                            (let () (declare (not safe)) (_g150988151040_)))))
                     (___match153133153134_
                      (lambda (_e151021151080_
                               _hd151020151083_
                               _tl151019151085_
                               _e151024151088_
                               _hd151023151091_
                               _tl151022151093_
                               _e151027151096_
                               _hd151026151099_
                               _tl151025151101_
                               _e151030151104_
                               _hd151029151107_
                               _tl151028151109_)
                        (let ((_L151112_ _tl151028151109_)
                              (_L151113_ _hd151029151107_)
                              (_L151114_ _hd151026151099_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L151114_))
                              (___kont153032153033_
                               _L151112_
                               _L151113_
                               _L151114_)
                              (___kont153034153035_
                               _tl151019151085_
                               _hd151020151083_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx153026153027_))
                    (let ((_e150994151184_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx153026153027_))))
                      (let ((_tl150992151189_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150994151184_)))
                            (_hd150993151187_
                             (let ()
                               (declare (not safe))
                               (##car _e150994151184_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150993151187_))
                            (let ((_e150997151192_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150993151187_))))
                              (let ((_tl150995151197_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150997151192_)))
                                    (_hd150996151195_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150997151192_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150996151195_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150996151195_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150995151197_))
                                            (let ((_e151000151200_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150995151197_))))
                                              (let ((_tl150998151205_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151000151200_)))
                                                    (_hd150999151203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151000151200_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150999151203_))
                                                    (let ((_e151001151208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150999151203_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e151001151208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150998151205_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150992151189_))
                          (let ((_e151004151211_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150992151189_))))
                            (let ((_tl151002151216_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151004151211_)))
                                  (_hd151003151214_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151004151211_))))
                              (___kont153028153029_
                               _tl151002151216_
                               _hd151003151214_)))
                          (___kont153034153035_
                           _tl150992151189_
                           _hd150993151187_))
                      (___kont153034153035_ _tl150992151189_ _hd150993151187_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e151001151208_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150998151205_))
                          (___kont153030153031_ _tl150992151189_)
                          (___kont153034153035_
                           _tl150992151189_
                           _hd150993151187_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150998151205_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150992151189_))
                              (let ((_e151030151104_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150992151189_))))
                                (let ((_tl151028151109_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151030151104_)))
                                      (_hd151029151107_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151030151104_))))
                                  (___match153133153134_
                                   _e150994151184_
                                   _hd150993151187_
                                   _tl150992151189_
                                   _e150997151192_
                                   _hd150996151195_
                                   _tl150995151197_
                                   _e151000151200_
                                   _hd150999151203_
                                   _tl150998151205_
                                   _e151030151104_
                                   _hd151029151107_
                                   _tl151028151109_)))
                              (___kont153034153035_
                               _tl150992151189_
                               _hd150993151187_))
                          (___kont153034153035_
                           _tl150992151189_
                           _hd150993151187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150998151205_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150992151189_))
                                                            (let ((_e151030151104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150992151189_))))
                      (let ((_tl151028151109_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151030151104_)))
                            (_hd151029151107_
                             (let ()
                               (declare (not safe))
                               (##car _e151030151104_))))
                        (___match153133153134_
                         _e150994151184_
                         _hd150993151187_
                         _tl150992151189_
                         _e150997151192_
                         _hd150996151195_
                         _tl150995151197_
                         _e151000151200_
                         _hd150999151203_
                         _tl150998151205_
                         _e151030151104_
                         _hd151029151107_
                         _tl151028151109_)))
                    (___kont153034153035_ _tl150992151189_ _hd150993151187_))
                (___kont153034153035_ _tl150992151189_ _hd150993151187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont153034153035_
                                             _tl150992151189_
                                             _hd150993151187_))
                                        (___kont153034153035_
                                         _tl150992151189_
                                         _hd150993151187_))
                                    (___kont153034153035_
                                     _tl150992151189_
                                     _hd150993151187_))))
                            (___kont153034153035_
                             _tl150992151189_
                             _hd150993151187_))))
                    (let () (declare (not safe)) (_g150987151047_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150971_ _stx150972_ _args150973_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150972_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
