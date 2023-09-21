(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1695292410)
  (begin
    (define gxc#&optimize-call
      (let ((__tmp64111
             (lambda ()
               (let ((_tbl63726_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp64112
                        (let ()
                          (declare (not safe))
                          (force gxc#&basic-xform))))
                   (declare (not safe))
                   (hash-copy! _tbl63726_ __tmp64112))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl63726_ '%#call gxc#optimize-call%))
                 _tbl63726_))))
        (declare (not safe))
        (make-promise __tmp64111)))
    (define gxc#apply-optimize-call
      (lambda (_stx63719_ . _args63721_)
        (let ((__tmp64114
               (lambda () (apply gxc#compile-e _stx63719_ _args63721_)))
              (__tmp64113
               (let () (declare (not safe)) (force gxc#&optimize-call))))
          (declare (not safe))
          (call-with-parameters
           __tmp64114
           gxc#current-compile-methods
           __tmp64113))))
    (define gxc#optimize-call%
      (lambda (_stx63574_)
        (let* ((___stx6374763748_ _stx63574_)
               (_g6357763597_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6374763748_)))))
          (let ((___kont6374963750_
                 (lambda (_L63641_ _L63642_)
                   (let* ((_rator-id63660_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L63642_)))
                          (_rator-type63662_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id63660_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type63662_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp64115
                                  (##structure-ref
                                   _rator-type63662_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id63660_
                              '" => "
                              _rator-type63662_
                              '" "
                              __tmp64115))
                           (let ((_optimized63665_
                                  (let ((__method64109
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type63662_
                                            'optimize-call))))
                                    (if __method64109
                                        (__method64109
                                         _rator-type63662_
                                         _stx63574_
                                         _L63641_)
                                        (error '"Missing method"
                                               _rator-type63662_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type63662_))
                                 _optimized63665_
                                 (let* ((___stx6372963730_ _optimized63665_)
                                        (_g6366863678_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6372963730_)))))
                                   (let ((___kont6373163732_
                                          (lambda (_L63698_)
                                            (let ((__tmp64116
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L63698_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp64116
                                               _stx63574_))))
                                         (___kont6373363734_
                                          (lambda () _optimized63665_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6372963730_))
                                         (let ((_e6367363690_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6372963730_))))
                                           (let ((_tl6367163695_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6367363690_)))
                                                 (_hd6367263693_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6367363690_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd6367263693_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd6367263693_))
                                                     (___kont6373163732_
                                                      _tl6367163695_)
                                                     (___kont6373363734_))
                                                 (___kont6373363734_))))
                                         (___kont6373363734_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type63662_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63574_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal application; not a procedure"
                                _stx63574_
                                _rator-type63662_)))))))
                (___kont6375163752_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx63574_)))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx6374763748_))
                (let ((_e6358363609_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx6374763748_))))
                  (let ((_tl6358163614_
                         (let () (declare (not safe)) (##cdr _e6358363609_)))
                        (_hd6358263612_
                         (let () (declare (not safe)) (##car _e6358363609_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl6358163614_))
                        (let ((_e6358663617_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl6358163614_))))
                          (let ((_tl6358463622_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6358663617_)))
                                (_hd6358563620_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6358663617_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd6358563620_))
                                (let ((_e6358963625_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd6358563620_))))
                                  (let ((_tl6358763630_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6358963625_)))
                                        (_hd6358863628_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6358963625_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd6358863628_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd6358863628_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6358763630_))
                                                (let ((_e6359263633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6358763630_))))
                                                  (let ((_tl6359063638_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6359263633_)))
                                                        (_hd6359163636_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6359263633_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6359063638_))
                                                        (___kont6374963750_
                                                         _tl6358463622_
                                                         _hd6359163636_)
                                                        (___kont6375163752_))))
                                                (___kont6375163752_))
                                            (___kont6375163752_))
                                        (___kont6375163752_))))
                                (___kont6375163752_))))
                        (___kont6375163752_))))
                (___kont6375163752_))))))
    (define gxc#!struct-pred::optimize-call
      (lambda (_self63428_ _stx63429_ _args63430_)
        (let* ((_self6343163437_ _self63428_)
               (_E6343363441_
                (lambda () (error '"No clause matching" _self6343163437_)))
               (_K6343463566_
                (lambda (_struct-t63444_)
                  (let* ((_struct-type63446_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63444_)))
                         (_struct-type6344763461_ _struct-type63446_)
                         (_else6345063469_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx63429_
                               _struct-t63444_
                               _struct-type63446_)))))
                    (let ((_K6345363541_
                           (lambda (_plist63480_ _struct-type-id63481_)
                             (let* ((___stx6378563786_ _args63430_)
                                    (_g6348463494_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6378563786_)))))
                               (let ((___kont6378763788_
                                      (lambda (_L63514_)
                                        (let ((_expr63535_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e _L63514_)))
                                              (_op63536_
                                               (if (and _plist63480_
                                                        (let ()
                                                          (declare (not safe))
                                                          (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _plist63480_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '%#struct-direct-instance?
                                                   '%#struct-instance?)))
                                          (let ((__tmp64117
                                                 (let ((__tmp64118
                                                        (let ((__tmp64120
                                                               (let ((__tmp64121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _struct-type-id63481_ '()))))
                         (declare (not safe))
                         (cons '%#quote __tmp64121)))
                      (__tmp64119
                       (let () (declare (not safe)) (cons _expr63535_ '()))))
                  (declare (not safe))
                  (cons __tmp64120 __tmp64119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _op63536_
                                                         __tmp64118))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp64117
                                             _stx63429_)))))
                                     (___kont6378963790_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal struct predicate application"
                                           _stx63429_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6378563786_))
                                     (let ((_e6348963506_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6378563786_))))
                                       (let ((_tl6348763511_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6348963506_)))
                                             (_hd6348863509_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6348963506_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6348763511_))
                                             (___kont6378763788_
                                              _hd6348863509_)
                                             (___kont6378963790_))))
                                     (___kont6378963790_))))))
                          (_K6345263474_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63429_)))))
                      (let ((_try-match6344963477_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6344763461_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6345263474_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6345063469_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6344763461_
                               'gxc#!struct-type::t))
                            (let* ((_e6345463544_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6344763461_
                                       '1)))
                                   (_e6345563549_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6344763461_
                                       '2)))
                                   (_e6345663552_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6344763461_
                                       '3)))
                                   (_e6345763555_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6344763461_
                                       '4)))
                                   (_e6345863558_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6344763461_
                                       '5)))
                                   (_e6345963561_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6344763461_
                                       '6))))
                              (let ((_struct-type-id63547_ _e6345463544_)
                                    (_plist63564_ _e6345963561_))
                                (let ()
                                  (declare (not safe))
                                  (_K6345363541_
                                   _plist63564_
                                   _struct-type-id63547_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6344963477_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6343163437_
                 'gxc#!struct-pred::t))
              (let* ((_e6343563569_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6343163437_ '1)))
                     (_struct-t63572_ _e6343563569_))
                (declare (not safe))
                (_K6343463566_ _struct-t63572_))
              (let () (declare (not safe)) (_E6343363441_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'optimize-call
       gxc#!struct-pred::optimize-call
       '#f))
    (define gxc#!struct-cons::optimize-call
      (lambda (_self63202_ _stx63203_ _args63204_)
        (let* ((_self6320563211_ _self63202_)
               (_E6320763215_
                (lambda () (error '"No clause matching" _self6320563211_)))
               (_K6320863298_
                (lambda (_struct-t63218_)
                  (let* ((_struct-type63220_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63218_)))
                         (_struct-type6322163234_ _struct-type63220_)
                         (_else6322463242_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct constructor application; not a struct type"
                               _stx63203_
                               _struct-t63218_
                               _struct-type63220_)))))
                    (let ((_K6322763272_
                           (lambda (_ctor63253_
                                    _xfields63254_
                                    _fields63255_
                                    _type-id63256_)
                             (let* ((_args63258_
                                     (let ()
                                       (declare (not safe))
                                       (map gxc#compile-e _args63204_)))
                                    (_$e63260_
                                     (if _ctor63253_
                                         (if _xfields63254_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!struct-type-lookup-method
                                                _struct-type63220_
                                                _ctor63253_))
                                             '#f)
                                         '#f)))
                               (if _$e63260_
                                   ((lambda (_kons63263_)
                                      (let* ((_$obj63265_
                                              (make-symbol
                                               (let ()
                                                 (declare (not safe))
                                                 (gensym '__obj))))
                                             (__tmp64136
                                              (let ((__tmp64137
                                                     (let ((__tmp64153
                                                            (let ((__tmp64154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64167
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj63265_ '())))
                                 (__tmp64155
                                  (let ((__tmp64156
                                         (let ((__tmp64157
                                                (let ((__tmp64165
                                                       (let ((__tmp64166
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp64166)))
              (__tmp64158
               (let ((__tmp64163
                      (let ((__tmp64164
                             (let ()
                               (declare (not safe))
                               (cons _struct-t63218_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp64164)))
                     (__tmp64159
                      (let ((__tmp64160
                             (let ((__tmp64161
                                    (let ((__tmp64162
                                           (fx+ _fields63255_ _xfields63254_)))
                                      (declare (not safe))
                                      (cons __tmp64162 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp64161))))
                        (declare (not safe))
                        (cons __tmp64160 '()))))
                 (declare (not safe))
                 (cons __tmp64163 __tmp64159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64165
                                                        __tmp64158))))
                                           (declare (not safe))
                                           (cons '%#call __tmp64157))))
                                    (declare (not safe))
                                    (cons __tmp64156 '()))))
                             (declare (not safe))
                             (cons __tmp64167 __tmp64155))))
                      (declare (not safe))
                      (cons __tmp64154 '())))
                   (__tmp64138
                    (let ((__tmp64139
                           (let ((__tmp64140
                                  (let ((__tmp64144
                                         (let ((__tmp64145
                                                (let ((__tmp64146
                                                       (let ((__tmp64147
                                                              (let ((__tmp64151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64152
                                    (let ()
                                      (declare (not safe))
                                      (cons _kons63263_ '()))))
                               (declare (not safe))
                               (cons '%#ref __tmp64152)))
                            (__tmp64148
                             (let ((__tmp64149
                                    (let ((__tmp64150
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj63265_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp64150))))
                               (declare (not safe))
                               (cons __tmp64149 _args63258_))))
                        (declare (not safe))
                        (cons __tmp64151 __tmp64148))))
                 (declare (not safe))
                 (cons '%#call __tmp64147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp64146
                                                   _stx63203_))))
                                           (declare (not safe))
                                           (gxc#compile-e __tmp64145)))
                                        (__tmp64141
                                         (let ((__tmp64142
                                                (let ((__tmp64143
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj63265_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp64143))))
                                           (declare (not safe))
                                           (cons __tmp64142 '()))))
                                    (declare (not safe))
                                    (cons __tmp64144 __tmp64141))))
                             (declare (not safe))
                             (cons '%#begin __tmp64140))))
                      (declare (not safe))
                      (cons __tmp64139 '()))))
               (declare (not safe))
               (cons __tmp64153 __tmp64138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp64137))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp64136
                                         _stx63203_)))
                                    _$e63260_)
                                   (if (or _ctor63253_
                                           (let ()
                                             (declare (not safe))
                                             (not _xfields63254_)))
                                       (let ((__tmp64129
                                              (let ((__tmp64130
                                                     (let ((__tmp64134
                                                            (let ((__tmp64135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons 'make-struct-instance '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp64135)))
                   (__tmp64131
                    (let ((__tmp64132
                           (let ((__tmp64133
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63218_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64133))))
                      (declare (not safe))
                      (cons __tmp64132 _args63258_))))
               (declare (not safe))
               (cons __tmp64134 __tmp64131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp64130))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp64129
                                          _stx63203_))
                                       (let ((_arity63270_
                                              (fx+ _fields63255_
                                                   _xfields63254_)))
                                         (if (fx= _arity63270_
                                                  (length _args63258_))
                                             (let ((__tmp64122
                                                    (let ((__tmp64123
                                                           (let ((__tmp64127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp64128
                                 (let ()
                                   (declare (not safe))
                                   (cons '##structure '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp64128)))
                         (__tmp64124
                          (let ((__tmp64125
                                 (let ((__tmp64126
                                        (let ()
                                          (declare (not safe))
                                          (cons _struct-t63218_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp64126))))
                            (declare (not safe))
                            (cons __tmp64125 _args63258_))))
                     (declare (not safe))
                     (cons __tmp64127 __tmp64124))))
              (declare (not safe))
              (cons '%#call __tmp64123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp64122
                                                _stx63203_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"Illegal struct constructor application; arity mismatch"
                                                _stx63203_
                                                _struct-t63218_
                                                _arity63270_)))))))))
                          (_K6322663247_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline struct constructor; unknown struct type "
                                _struct-t63218_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63203_)))))
                      (let ((_try-match6322363250_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6322163234_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6322663247_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6322463242_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6322163234_
                               'gxc#!struct-type::t))
                            (let* ((_e6322863275_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6322163234_
                                       '1)))
                                   (_e6322963280_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6322163234_
                                       '2)))
                                   (_e6323063283_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6322163234_
                                       '3)))
                                   (_e6323163288_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6322163234_
                                       '4)))
                                   (_e6323263293_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6322163234_
                                       '5))))
                              (let ((_type-id63278_ _e6322863275_)
                                    (_fields63286_ _e6323063283_)
                                    (_xfields63291_ _e6323163288_)
                                    (_ctor63296_ _e6323263293_))
                                (let ()
                                  (declare (not safe))
                                  (_K6322763272_
                                   _ctor63296_
                                   _xfields63291_
                                   _fields63286_
                                   _type-id63278_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6322363250_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6320563211_
                 'gxc#!struct-cons::t))
              (let* ((_e6320963301_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6320563211_ '1)))
                     (_struct-t63304_ _e6320963301_))
                (declare (not safe))
                (_K6320863298_ _struct-t63304_))
              (let () (declare (not safe)) (_E6320763215_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'optimize-call
       gxc#!struct-cons::optimize-call
       '#f))
    (define gxc#!struct-getf::optimize-call
      (lambda (_self62913_ _stx62914_ _args62915_)
        (let* ((_self6291662924_ _self62913_)
               (_E6291862928_
                (lambda () (error '"No clause matching" _self6291662924_)))
               (_K6291963062_
                (lambda (_unchecked?62931_ _off62932_ _struct-t62933_)
                  (let* ((_struct-type62935_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t62933_)))
                         (_struct-type6293662950_ _struct-type62935_)
                         (_else6293962958_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx62914_
                               _struct-t62933_
                               _struct-type62935_)))))
                    (let ((_K6294263033_
                           (lambda (_plist62969_
                                    _xfields62970_
                                    _fields62971_
                                    _struct-type-id62972_)
                             (if _xfields62970_
                                 (let* ((___stx6383363834_ _args62915_)
                                        (_g6297562985_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6383363834_)))))
                                   (let ((___kont6383563836_
                                          (lambda (_L63005_)
                                            (let ((_expr63026_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63005_)))
                                                  (_off63027_
                                                   (fx+ _off62932_
                                                        _xfields62970_
                                                        '1))
                                                  (_op63028_
                                                   (if _unchecked?62931_
                                                       '%#struct-unchecked-ref
                                                       (if (and _plist62969_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist62969_)))
                   '%#struct-direct-ref
                   '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp64168
                                                     (let ((__tmp64169
                                                            (let ((__tmp64174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64175
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t62933_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64175)))
                          (__tmp64170
                           (let ((__tmp64172
                                  (let ((__tmp64173
                                         (let ()
                                           (declare (not safe))
                                           (cons _off63027_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp64173)))
                                 (__tmp64171
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr63026_ '()))))
                             (declare (not safe))
                             (cons __tmp64172 __tmp64171))))
                      (declare (not safe))
                      (cons __tmp64174 __tmp64170))))
               (declare (not safe))
               (cons _op63028_ __tmp64169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64168
                                                 _stx62914_)))))
                                         (___kont6383763838_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct accessor application"
                                               _stx62914_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6383363834_))
                                         (let ((_e6298062997_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6383363834_))))
                                           (let ((_tl6297863002_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6298062997_)))
                                                 (_hd6297963000_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6298062997_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _tl6297863002_))
                                                 (___kont6383563836_
                                                  _hd6297963000_)
                                                 (___kont6383763838_))))
                                         (___kont6383763838_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-getf: incomplete struct "
                                      _struct-type-id62972_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx62914_))))))
                          (_K6294162963_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx62914_)))))
                      (let ((_try-match6293862966_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6293662950_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6294162963_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6293962958_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6293662950_
                               'gxc#!struct-type::t))
                            (let* ((_e6294363036_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6293662950_
                                       '1)))
                                   (_e6294463041_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6293662950_
                                       '2)))
                                   (_e6294563044_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6293662950_
                                       '3)))
                                   (_e6294663049_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6293662950_
                                       '4)))
                                   (_e6294763054_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6293662950_
                                       '5)))
                                   (_e6294863057_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6293662950_
                                       '6))))
                              (let ((_struct-type-id63039_ _e6294363036_)
                                    (_fields63047_ _e6294563044_)
                                    (_xfields63052_ _e6294663049_)
                                    (_plist63060_ _e6294863057_))
                                (let ()
                                  (declare (not safe))
                                  (_K6294263033_
                                   _plist63060_
                                   _xfields63052_
                                   _fields63047_
                                   _struct-type-id63039_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6293862966_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6291662924_
                 'gxc#!struct-getf::t))
              (let* ((_e6292063065_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6291662924_ '1)))
                     (_struct-t63068_ _e6292063065_)
                     (_e6292163070_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6291662924_ '2)))
                     (_off63073_ _e6292163070_)
                     (_e6292263075_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6291662924_ '3)))
                     (_unchecked?63078_ _e6292263075_))
                (declare (not safe))
                (_K6291963062_ _unchecked?63078_ _off63073_ _struct-t63068_))
              (let () (declare (not safe)) (_E6291862928_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'optimize-call
       gxc#!struct-getf::optimize-call
       '#f))
    (define gxc#!struct-setf::optimize-call
      (lambda (_self62607_ _stx62608_ _args62609_)
        (let* ((_self6261062618_ _self62607_)
               (_E6261262622_
                (lambda () (error '"No clause matching" _self6261062618_)))
               (_K6261362773_
                (lambda (_unchecked?62625_ _off62626_ _struct-t62627_)
                  (let* ((_struct-type62629_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t62627_)))
                         (_struct-type6263062644_ _struct-type62629_)
                         (_else6263362652_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx62608_
                               _struct-t62627_
                               _struct-type62629_)))))
                    (let ((_K6263662744_
                           (lambda (_plist62663_
                                    _xfields62664_
                                    _fields62665_
                                    _struct-type-id62666_)
                             (if _xfields62664_
                                 (let* ((___stx6386663867_ _args62609_)
                                        (_g6266962683_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6386663867_)))))
                                   (let ((___kont6386863869_
                                          (lambda (_L62711_ _L62712_)
                                            (let ((_expr62736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L62712_)))
                                                  (_val62737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L62711_)))
                                                  (_off62738_
                                                   (fx+ _off62626_
                                                        _xfields62664_
                                                        '1))
                                                  (_op62739_
                                                   (if _unchecked?62625_
                                                       '%#struct-unchecked-set!
                                                       (if (and _plist62663_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist62663_)))
                   '%#struct-direct-set!
                   '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp64176
                                                     (let ((__tmp64177
                                                            (let ((__tmp64183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64184
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t62627_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64184)))
                          (__tmp64178
                           (let ((__tmp64181
                                  (let ((__tmp64182
                                         (let ()
                                           (declare (not safe))
                                           (cons _off62738_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp64182)))
                                 (__tmp64179
                                  (let ((__tmp64180
                                         (let ()
                                           (declare (not safe))
                                           (cons _val62737_ '()))))
                                    (declare (not safe))
                                    (cons _expr62736_ __tmp64180))))
                             (declare (not safe))
                             (cons __tmp64181 __tmp64179))))
                      (declare (not safe))
                      (cons __tmp64183 __tmp64178))))
               (declare (not safe))
               (cons _op62739_ __tmp64177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64176
                                                 _stx62608_)))))
                                         (___kont6387063871_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct mutator application"
                                               _stx62608_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6386663867_))
                                         (let ((_e6267562695_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6386663867_))))
                                           (let ((_tl6267362700_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6267562695_)))
                                                 (_hd6267462698_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6267562695_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl6267362700_))
                                                 (let ((_e6267862703_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl6267362700_))))
                                                   (let ((_tl6267662708_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e6267862703_)))
                                                         (_hd6267762706_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e6267862703_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl6267662708_))
                                                         (___kont6386863869_
                                                          _hd6267762706_
                                                          _hd6267462698_)
                                                         (___kont6387063871_))))
                                                 (___kont6387063871_))))
                                         (___kont6387063871_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-setf: incomplete struct "
                                      _struct-type-id62666_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx62608_))))))
                          (_K6263562657_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx62608_)))))
                      (let ((_try-match6263262660_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6263062644_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6263562657_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6263362652_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6263062644_
                               'gxc#!struct-type::t))
                            (let* ((_e6263762747_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6263062644_
                                       '1)))
                                   (_e6263862752_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6263062644_
                                       '2)))
                                   (_e6263962755_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6263062644_
                                       '3)))
                                   (_e6264062760_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6263062644_
                                       '4)))
                                   (_e6264162765_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6263062644_
                                       '5)))
                                   (_e6264262768_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6263062644_
                                       '6))))
                              (let ((_struct-type-id62750_ _e6263762747_)
                                    (_fields62758_ _e6263962755_)
                                    (_xfields62763_ _e6264062760_)
                                    (_plist62771_ _e6264262768_))
                                (let ()
                                  (declare (not safe))
                                  (_K6263662744_
                                   _plist62771_
                                   _xfields62763_
                                   _fields62758_
                                   _struct-type-id62750_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6263262660_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6261062618_
                 'gxc#!struct-setf::t))
              (let* ((_e6261462776_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6261062618_ '1)))
                     (_struct-t62779_ _e6261462776_)
                     (_e6261562781_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6261062618_ '2)))
                     (_off62784_ _e6261562781_)
                     (_e6261662786_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6261062618_ '3)))
                     (_unchecked?62789_ _e6261662786_))
                (declare (not safe))
                (_K6261362773_ _unchecked?62789_ _off62784_ _struct-t62779_))
              (let () (declare (not safe)) (_E6261262622_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'optimize-call
       gxc#!struct-setf::optimize-call
       '#f))
    (define gxc#!class-pred::optimize-call
      (lambda (_self62335_ _stx62336_ _args62337_)
        (let* ((_self6233862344_ _self62335_)
               (_E6234062348_
                (lambda () (error '"No clause matching" _self6233862344_)))
               (_K6234162477_
                (lambda (_class-t62351_)
                  (let* ((_class-type62353_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t62351_)))
                         (_class-type6235462369_ _class-type62353_)
                         (_else6235762377_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal class predicate application; not a class type"
                               _stx62336_
                               _class-t62351_
                               _class-type62353_)))))
                    (let ((_K6236062449_
                           (lambda (_plist62388_ _class-type-id62389_)
                             (let* ((___stx6390563906_ _args62337_)
                                    (_g6239262402_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6390563906_)))))
                               (let ((___kont6390763908_
                                      (lambda (_L62422_)
                                        (let ((_expr62443_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e _L62422_)))
                                              (_final?62444_
                                               (if _plist62388_
                                                   (let ()
                                                     (declare (not safe))
                                                     (assgetq 'final:
                                                              _plist62388_))
                                                   '#f)))
                                          (if _final?62444_
                                              (let ((__tmp64193
                                                     (let ((__tmp64194
                                                            (let ((__tmp64196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64197
                                  (let ()
                                    (declare (not safe))
                                    (cons _class-type-id62389_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp64197)))
                          (__tmp64195
                           (let ()
                             (declare (not safe))
                             (cons _expr62443_ '()))))
                      (declare (not safe))
                      (cons __tmp64196 __tmp64195))))
               (declare (not safe))
               (cons '%#struct-direct-instance? __tmp64194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64193
                                                 _stx62336_))
                                              (let ((__tmp64185
                                                     (let ((__tmp64186
                                                            (let ((__tmp64191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64192
                                  (let ()
                                    (declare (not safe))
                                    (cons 'class-instance? '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64192)))
                          (__tmp64187
                           (let ((__tmp64189
                                  (let ((__tmp64190
                                         (let ()
                                           (declare (not safe))
                                           (cons _class-t62351_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp64190)))
                                 (__tmp64188
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr62443_ '()))))
                             (declare (not safe))
                             (cons __tmp64189 __tmp64188))))
                      (declare (not safe))
                      (cons __tmp64191 __tmp64187))))
               (declare (not safe))
               (cons '%#call __tmp64186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64185
                                                 _stx62336_))))))
                                     (___kont6390963910_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal class predicate application"
                                           _stx62336_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6390563906_))
                                     (let ((_e6239762414_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6390563906_))))
                                       (let ((_tl6239562419_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6239762414_)))
                                             (_hd6239662417_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6239762414_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6239562419_))
                                             (___kont6390763908_
                                              _hd6239662417_)
                                             (___kont6390963910_))))
                                     (___kont6390963910_))))))
                          (_K6235962382_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx62336_)))))
                      (let ((_try-match6235662385_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6235462369_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6235962382_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6235762377_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6235462369_
                               'gxc#!class-type::t))
                            (let* ((_e6236162452_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6235462369_
                                       '1)))
                                   (_e6236262457_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6235462369_
                                       '2)))
                                   (_e6236362460_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6235462369_
                                       '3)))
                                   (_e6236462463_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6235462369_
                                       '4)))
                                   (_e6236562466_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6235462369_
                                       '5)))
                                   (_e6236662469_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6235462369_
                                       '6)))
                                   (_e6236762472_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6235462369_
                                       '7))))
                              (let ((_class-type-id62455_ _e6236162452_)
                                    (_plist62475_ _e6236762472_))
                                (let ()
                                  (declare (not safe))
                                  (_K6236062449_
                                   _plist62475_
                                   _class-type-id62455_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6235662385_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6233862344_
                 'gxc#!class-pred::t))
              (let* ((_e6234262480_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6233862344_ '1)))
                     (_class-t62483_ _e6234262480_))
                (declare (not safe))
                (_K6234162477_ _class-t62483_))
              (let () (declare (not safe)) (_E6234062348_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'optimize-call
       gxc#!class-pred::optimize-call
       '#f))
    (define gxc#!class-cons::optimize-call
      (lambda (_self62153_ _stx62154_ _args62155_)
        (let* ((_self6215662162_ _self62153_)
               (_E6215862166_
                (lambda () (error '"No clause matching" _self6215662162_)))
               (_K6215962205_
                (lambda (_class-t62169_)
                  (let* ((_class-type62171_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t62169_)))
                         (_class-type6217262180_ _class-type62171_)
                         (_else6217562188_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal class constructor application; not a struct type"
                               _stx62154_
                               _class-t62169_
                               _class-type62171_)))))
                    (let ((_K6217862202_
                           (lambda ()
                             (let* ((_args62200_
                                     (let ()
                                       (declare (not safe))
                                       (map gxc#compile-e _args62155_)))
                                    (__tmp64198
                                     (let ((__tmp64199
                                            (let ((__tmp64203
                                                   (let ((__tmp64204
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-class-instance
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp64204)))
                                                  (__tmp64200
                                                   (let ((__tmp64201
                                                          (let ((__tmp64202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _class-t62169_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp64202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64201
                                                           _args62200_))))
                                              (declare (not safe))
                                              (cons __tmp64203 __tmp64200))))
                                       (declare (not safe))
                                       (cons '%#call __tmp64199))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp64198 _stx62154_))))
                          (_K6217762193_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline class constructor; class struct type "
                                _class-t62169_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx62154_)))))
                      (let ((_try-match6217462196_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6217262180_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6217762193_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6217562188_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6217262180_
                               'gxc#!class-type::t))
                            (let () (declare (not safe)) (_K6217862202_))
                            (let ()
                              (declare (not safe))
                              (_try-match6217462196_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6215662162_
                 'gxc#!class-cons::t))
              (let* ((_e6216062208_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6215662162_ '1)))
                     (_class-t62211_ _e6216062208_))
                (declare (not safe))
                (_K6215962205_ _class-t62211_))
              (let () (declare (not safe)) (_E6215862166_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'optimize-call
       gxc#!class-cons::optimize-call
       '#f))
    (define gxc#!class-getf::optimize-call
      (lambda (_self61940_ _stx61941_ _args61942_)
        (let* ((_self6194361951_ _self61940_)
               (_E6194561955_
                (lambda () (error '"No clause matching" _self6194361951_)))
               (_K6194662013_
                (lambda (_unchecked?61958_ _slot61959_ _class-t61960_)
                  (let* ((___stx6394563946_ _args61942_)
                         (_g6196361973_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6394563946_)))))
                    (let ((___kont6394763948_
                           (lambda (_L61993_)
                             (let* ((_expr62008_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e _L61993_)))
                                    (__tmp64205
                                     (let ((__tmp64206
                                            (let ((__tmp64211
                                                   (let ((__tmp64212
                                                          (let ((__tmp64213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _unchecked?61958_ 'slot-ref 'unchecked-slot-ref)))
                    (declare (not safe))
                    (cons __tmp64213 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp64212)))
                                                  (__tmp64207
                                                   (let ((__tmp64208
                                                          (let ((__tmp64209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64210
                                (let ()
                                  (declare (not safe))
                                  (cons _slot61959_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp64210))))
                    (declare (not safe))
                    (cons __tmp64209 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr62008_
                                                           __tmp64208))))
                                              (declare (not safe))
                                              (cons __tmp64211 __tmp64207))))
                                       (declare (not safe))
                                       (cons '%#call __tmp64206))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp64205 _stx61941_))))
                          (___kont6394963950_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class accessor application"
                                _stx61941_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6394563946_))
                          (let ((_e6196861985_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6394563946_))))
                            (let ((_tl6196661990_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6196861985_)))
                                  (_hd6196761988_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6196861985_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl6196661990_))
                                  (___kont6394763948_ _hd6196761988_)
                                  (___kont6394963950_))))
                          (___kont6394963950_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6194361951_
                 'gxc#!class-getf::t))
              (let* ((_e6194762016_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194361951_ '1)))
                     (_class-t62019_ _e6194762016_)
                     (_e6194862021_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194361951_ '2)))
                     (_slot62024_ _e6194862021_)
                     (_e6194962026_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194361951_ '3)))
                     (_unchecked?62029_ _e6194962026_))
                (declare (not safe))
                (_K6194662013_ _unchecked?62029_ _slot62024_ _class-t62019_))
              (let () (declare (not safe)) (_E6194561955_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'optimize-call
       gxc#!class-getf::optimize-call
       '#f))
    (define gxc#!class-setf::optimize-call
      (lambda (_self61710_ _stx61711_ _args61712_)
        (let* ((_self6171361721_ _self61710_)
               (_E6171561725_
                (lambda () (error '"No clause matching" _self6171361721_)))
               (_K6171661800_
                (lambda (_unchecked?61728_ _slot61729_ _class-t61730_)
                  (let* ((___stx6396163962_ _args61712_)
                         (_g6173361747_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6396163962_)))))
                    (let ((___kont6396363964_
                           (lambda (_L61775_ _L61776_)
                             (let ((_expr61794_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e _L61776_)))
                                   (_val61795_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e _L61775_))))
                               (let ((__tmp64214
                                      (let ((__tmp64215
                                             (let ((__tmp64221
                                                    (let ((__tmp64222
                                                           (let ((__tmp64223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if _unchecked?61728_
                              'unchecked-slot-set!
                              'slot-set!)))
                     (declare (not safe))
                     (cons __tmp64223 '()))))
              (declare (not safe))
              (cons '%#ref __tmp64222)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64216
                                                    (let ((__tmp64217
                                                           (let ((__tmp64219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp64220
                                 (let ()
                                   (declare (not safe))
                                   (cons _slot61729_ '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp64220)))
                         (__tmp64218
                          (let () (declare (not safe)) (cons _val61795_ '()))))
                     (declare (not safe))
                     (cons __tmp64219 __tmp64218))))
              (declare (not safe))
              (cons _expr61794_ __tmp64217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp64221 __tmp64216))))
                                        (declare (not safe))
                                        (cons '%#call __tmp64215))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp64214
                                  _stx61711_)))))
                          (___kont6396563966_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class mutator application"
                                _stx61711_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6396163962_))
                          (let ((_e6173961759_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6396163962_))))
                            (let ((_tl6173761764_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6173961759_)))
                                  (_hd6173861762_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6173961759_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6173761764_))
                                  (let ((_e6174261767_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6173761764_))))
                                    (let ((_tl6174061772_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6174261767_)))
                                          (_hd6174161770_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6174261767_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6174061772_))
                                          (___kont6396363964_
                                           _hd6174161770_
                                           _hd6173861762_)
                                          (___kont6396563966_))))
                                  (___kont6396563966_))))
                          (___kont6396563966_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6171361721_
                 'gxc#!class-setf::t))
              (let* ((_e6171761803_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6171361721_ '1)))
                     (_class-t61806_ _e6171761803_)
                     (_e6171861808_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6171361721_ '2)))
                     (_slot61811_ _e6171861808_)
                     (_e6171961813_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6171361721_ '3)))
                     (_unchecked?61816_ _e6171961813_))
                (declare (not safe))
                (_K6171661800_ _unchecked?61816_ _slot61811_ _class-t61806_))
              (let () (declare (not safe)) (_E6171561725_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'optimize-call
       gxc#!class-setf::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self61544_ _stx61545_ _args61546_)
        (let* ((_self6154761556_ _self61544_)
               (_E6154961560_
                (lambda () (error '"No clause matching" _self6154761556_)))
               (_K6155061567_
                (lambda (_inline61563_ _dispatch61564_ _arity61565_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self61544_ _args61546_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx61545_
                         _arity61565_)))
                  (if _inline61563_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp64229
                               (let ((__tmp64230 (_inline61563_ _stx61545_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp64230
                                  _stx61545_))))
                          (declare (not safe))
                          (gxc#compile-e __tmp64229)))
                      (if _dispatch61564_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch61564_))
                            (let ((__tmp64224
                                   (let ((__tmp64225
                                          (let ((__tmp64226
                                                 (let ((__tmp64227
                                                        (let ((__tmp64228
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch61564_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp64228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64227
                                                         _args61546_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp64226))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp64225
                                      _stx61545_))))
                              (declare (not safe))
                              (gxc#compile-e __tmp64224)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx61545_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6154761556_ 'gxc#!lambda::t))
              (let* ((_e6155161570_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6154761556_ '1)))
                     (_e6155261573_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6154761556_ '2)))
                     (_arity61576_ _e6155261573_)
                     (_e6155361578_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6154761556_ '3)))
                     (_dispatch61581_ _e6155361578_)
                     (_e6155461583_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6154761556_ '4)))
                     (_inline61586_ _e6155461583_))
                (declare (not safe))
                (_K6155061567_ _inline61586_ _dispatch61581_ _arity61576_))
              (let () (declare (not safe)) (_E6154961560_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self61383_ _stx61384_ _args61385_)
        (let* ((_self6138661393_ _self61383_)
               (_E6138861397_
                (lambda () (error '"No clause matching" _self6138661393_)))
               (_K6138961411_
                (lambda (_clauses61400_)
                  (let ((_$e61406_
                         (let ((__tmp64231
                                (lambda (_g6140161403_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g6140161403_
                                     _args61385_)))))
                           (declare (not safe))
                           (find __tmp64231 _clauses61400_))))
                    (if _$e61406_
                        ((lambda (_clause61409_)
                           (let ((__method64110
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause61409_
                                     'optimize-call))))
                             (if __method64110
                                 (__method64110
                                  _clause61409_
                                  _stx61384_
                                  _args61385_)
                                 (error '"Missing method"
                                        _clause61409_
                                        'optimize-call))))
                         _$e61406_)
                        (let ((__tmp64232
                               (let ()
                                 (declare (not safe))
                                 (map gxc#!lambda-arity _clauses61400_))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx61384_
                           __tmp64232)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6138661393_
                 'gxc#!case-lambda::t))
              (let* ((_e6139061414_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6138661393_ '1)))
                     (_e6139161417_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6138661393_ '2)))
                     (_clauses61420_ _e6139161417_))
                (declare (not safe))
                (_K6138961411_ _clauses61420_))
              (let () (declare (not safe)) (_E6138861397_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self61197_ _args61198_)
        (let* ((_self6119961206_ _self61197_)
               (_E6120161210_
                (lambda () (error '"No clause matching" _self6119961206_)))
               (_K6120261250_
                (lambda (_arity61213_)
                  (let* ((_arity6121461223_ _arity61213_)
                         (_E6121761227_
                          (lambda ()
                            (error '"No clause matching" _arity6121461223_))))
                    (let ((_K6122161247_
                           (lambda () (fx= (length _args61198_) _arity61213_)))
                          (_K6121861233_
                           (lambda (_arity61231_)
                             (fx>= (length _args61198_) _arity61231_))))
                      (let ((_try-match6121661243_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity6121461223_))
                                   (let ((_tl6122061238_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity6121461223_)))
                                         (_hd6121961236_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity6121461223_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl6122061238_))
                                         (let ((_arity61241_ _hd6121961236_))
                                           (declare (not safe))
                                           (_K6121861233_ _arity61241_))
                                         (let ()
                                           (declare (not safe))
                                           (_E6121761227_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E6121761227_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity6121461223_))
                            (let () (declare (not safe)) (_K6122161247_))
                            (let ()
                              (declare (not safe))
                              (_try-match6121661243_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6119961206_ 'gxc#!lambda::t))
              (let* ((_e6120361253_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6119961206_ '1)))
                     (_e6120461256_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6119961206_ '2)))
                     (_arity61259_ _e6120461256_))
                (declare (not safe))
                (_K6120261250_ _arity61259_))
              (let () (declare (not safe)) (_E6120161210_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self61082_ _stx61083_ _args61084_)
        (let* ((_self6108561093_ _self61082_)
               (_E6108761097_
                (lambda () (error '"No clause matching" _self6108561093_)))
               (_K6108861181_
                (lambda (_dispatch61100_ _table61101_)
                  (let* ((_g6110261111_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch61100_)))
                         (_else6110461119_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch61100_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx61083_))))
                         (_K6110661165_
                          (lambda (_main61122_ _keys61123_)
                            (let ((_g64233_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx61083_
                                      _args61084_))))
                              (begin
                                (let ((_g64234_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64233_)
                                             (##vector-length _g64233_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64234_ 2)))
                                      (error "Context expects 2 values"
                                             _g64234_)))
                                (let ((_pargs61125_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64233_ 0)))
                                      (_kwargs61126_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64233_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main61122_))
                                    (if _table61101_
                                        (let ((_xargs61133_
                                               (let ((__tmp64289
                                                      (lambda (_key61128_)
                                                        (let ((_$e61130_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (assgetq _key61128_ _kwargs61126_))))
                  (if _$e61130_ (values _$e61130_) '(%#ref absent-value))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (map __tmp64289
                                                      _keys61123_))))
                                          (let ((__tmp64290
                                                 (lambda (_kw61135_)
                                                   (if (let ((__tmp64291
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (car _kw61135_))))
                 (declare (not safe))
                 (memq __tmp64291 _keys61123_))
               '#!void
               (let ()
                 (declare (not safe))
                 (gxc#raise-compile-error
                  '"Illegal keyword lambda application; unexpected keyword"
                  _stx61083_
                  _keys61123_
                  _kw61135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (for-each
                                             __tmp64290
                                             _kwargs61126_))
                                          (let ((__tmp64292
                                                 (let ((__tmp64293
                                                        (let ((__tmp64294
                                                               (let ((__tmp64299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64300
                                     (let ()
                                       (declare (not safe))
                                       (cons _main61122_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp64300)))
                             (__tmp64295
                              (let ((__tmp64297
                                     (let ((__tmp64298
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp64298)))
                                    (__tmp64296
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs61125_
                                               _xargs61133_))))
                                (declare (not safe))
                                (cons __tmp64297 __tmp64296))))
                         (declare (not safe))
                         (cons __tmp64299 __tmp64295))))
                  (declare (not safe))
                  (cons '%#call __tmp64294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp64293
                                                    _stx61083_))))
                                            (declare (not safe))
                                            (gxc#compile-e __tmp64292)))
                                        (let* ((_kwt61137_
                                                (make-symbol
                                                 (let ()
                                                   (declare (not safe))
                                                   (gensym '__kwt))))
                                               (_kwvars61140_
                                                (let ((__tmp64235
                                                       (lambda (_g64236_)
                                                         (make-symbol
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gensym '__kw))))))
                                                  (declare (not safe))
                                                  (map __tmp64235
                                                       _kwargs61126_)))
                                               (_kwbind61145_
                                                (let ((__tmp64237
                                                       (lambda (_kw61142_
                                                                _kwvar61143_)
                                                         (let ((__tmp64240
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _kwvar61143_ '())))
                       (__tmp64238
                        (let ((__tmp64239
                               (let () (declare (not safe)) (cdr _kw61142_))))
                          (declare (not safe))
                          (cons __tmp64239 '()))))
                   (declare (not safe))
                   (cons __tmp64240 __tmp64238)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (map __tmp64237
                                                       _kwargs61126_
                                                       _kwvars61140_)))
                                               (_kwset61150_
                                                (let ((__tmp64241
                                                       (lambda (_kw61147_
                                                                _kwvar61148_)
                                                         (let ((__tmp64242
                                                                (let ((__tmp64243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp64251
                                      (let ((__tmp64252
                                             (let ()
                                               (declare (not safe))
                                               (cons _kwt61137_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp64252)))
                                     (__tmp64244
                                      (let ((__tmp64248
                                             (let ((__tmp64249
                                                    (let ((__tmp64250
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (car _kw61147_))))
                                                      (declare (not safe))
                                                      (cons __tmp64250 '()))))
                                               (declare (not safe))
                                               (cons '%#quote __tmp64249)))
                                            (__tmp64245
                                             (let ((__tmp64246
                                                    (let ((__tmp64247
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _kwvar61148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp64247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp64246 '()))))
                                        (declare (not safe))
                                        (cons __tmp64248 __tmp64245))))
                                 (declare (not safe))
                                 (cons __tmp64251 __tmp64244))))
                          (declare (not safe))
                          (cons '(%#ref hash-put!) __tmp64243))))
                   (declare (not safe))
                   (cons '%#call __tmp64242)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (map __tmp64241
                                                       _kwargs61126_
                                                       _kwvars61140_)))
                                               (_xkwargs61155_
                                                (let ((__tmp64253
                                                       (lambda (_kw61152_
                                                                _kwvar61153_)
                                                         (let ((__tmp64256
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (car _kw61152_)))
                       (__tmp64254
                        (let ((__tmp64255
                               (let ()
                                 (declare (not safe))
                                 (cons _kwvar61153_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp64255))))
                   (declare (not safe))
                   (cons __tmp64256 __tmp64254)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (map __tmp64253
                                                       _kwargs61126_
                                                       _kwvars61140_)))
                                               (_xargs61162_
                                                (let ((__tmp64257
                                                       (lambda (_key61157_)
                                                         (let ((_$e61159_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq _key61157_ _xkwargs61155_))))
                   (if _$e61159_ (values _$e61159_) '(%#ref absent-value))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (map __tmp64257
                                                       _keys61123_))))
                                          (let ((__tmp64258
                                                 (let ((__tmp64259
                                                        (let ((__tmp64260
                                                               (let ((__tmp64261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64262
                                     (let ((__tmp64263
                                            (let ((__tmp64277
                                                   (let ((__tmp64278
                                                          (let ((__tmp64288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt61137_ '())))
                        (__tmp64279
                         (let ((__tmp64280
                                (let ((__tmp64281
                                       (let ((__tmp64282
                                              (let ((__tmp64283
                                                     (let ((__tmp64284
                                                            (let ((__tmp64285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64286
                                  (let ((__tmp64287 (length _kwargs61126_)))
                                    (declare (not safe))
                                    (cons __tmp64287 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp64286))))
                      (declare (not safe))
                      (cons __tmp64285 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp64284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp64283))))
                                         (declare (not safe))
                                         (cons '%#call __tmp64282))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp64281
                                   _stx61083_))))
                           (declare (not safe))
                           (cons __tmp64280 '()))))
                    (declare (not safe))
                    (cons __tmp64288 __tmp64279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64278 '())))
                                                  (__tmp64264
                                                   (let ((__tmp64265
                                                          (let ((__tmp64266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64267
                                (let ((__tmp64268
                                       (let ((__tmp64269
                                              (let ((__tmp64270
                                                     (let ((__tmp64275
                                                            (let ((__tmp64276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main61122_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp64276)))
                   (__tmp64271
                    (let ((__tmp64273
                           (let ((__tmp64274
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt61137_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64274)))
                          (__tmp64272
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs61125_ _xargs61162_))))
                      (declare (not safe))
                      (cons __tmp64273 __tmp64272))))
               (declare (not safe))
               (cons __tmp64275 __tmp64271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp64270))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp64269
                                          _stx61083_))))
                                  (declare (not safe))
                                  (cons __tmp64268 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp64267 _kwset61150_))))
                    (declare (not safe))
                    (cons '%#begin __tmp64266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64265 '()))))
                                              (declare (not safe))
                                              (cons __tmp64277 __tmp64264))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp64263))))
                                (declare (not safe))
                                (cons __tmp64262 '()))))
                         (declare (not safe))
                         (cons _kwbind61145_ __tmp64261))))
                  (declare (not safe))
                  (cons '%#let-values __tmp64260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp64259
                                                    _stx61083_))))
                                            (declare (not safe))
                                            (gxc#compile-e
                                             __tmp64258)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g6110261111_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e6110761168_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6110261111_ '1)))
                               (_e6110861171_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6110261111_ '2)))
                               (_keys61174_ _e6110861171_)
                               (_e6110961176_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6110261111_ '3)))
                               (_main61179_ _e6110961176_))
                          (declare (not safe))
                          (_K6110661165_ _main61179_ _keys61174_))
                        (let () (declare (not safe)) (_else6110461119_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6108561093_ 'gxc#!kw-lambda::t))
              (let* ((_e6108961184_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6108561093_ '1)))
                     (_e6109061187_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6108561093_ '2)))
                     (_table61190_ _e6109061187_)
                     (_e6109161192_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6108561093_ '3)))
                     (_dispatch61195_ _e6109161192_))
                (declare (not safe))
                (_K6108861181_ _dispatch61195_ _table61190_))
              (let () (declare (not safe)) (_E6108761097_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx60695_ _args60696_)
        (let _lp60698_ ((_rest60700_ _args60696_)
                        (_pargs60701_ '())
                        (_kwargs60702_ '()))
          (let* ((___stx6399263993_ _rest60700_)
                 (_g6070860760_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx6399263993_)))))
            (let ((___kont6399463995_
                   (lambda (_L60939_ _L60940_)
                     (let ((__tmp64301
                            (let ()
                              (declare (not safe))
                              (cons _L60940_ _pargs60701_))))
                       (declare (not safe))
                       (_lp60698_ _L60939_ __tmp64301 _kwargs60702_))))
                  (___kont6399663997_
                   (lambda (_L60885_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L60885_ _pargs60701_))
                             (let ()
                               (declare (not safe))
                               (reverse _kwargs60702_)))))
                  (___kont6399863999_
                   (lambda (_L60832_ _L60833_ _L60834_)
                     (let ((_kw60851_
                            (let () (declare (not safe)) (gx#stx-e _L60834_))))
                       (if (let ()
                             (declare (not safe))
                             (assq _kw60851_ _kwargs60702_))
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx60695_
                              _kw60851_))
                           (let ((__tmp64302
                                  (let ((__tmp64303
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw60851_ _L60833_))))
                                    (declare (not safe))
                                    (cons __tmp64303 _kwargs60702_))))
                             (declare (not safe))
                             (_lp60698_ _L60832_ _pargs60701_ __tmp64302))))))
                  (___kont6400064001_
                   (lambda (_L60780_ _L60781_)
                     (let ((__tmp64304
                            (let ()
                              (declare (not safe))
                              (cons _L60781_ _pargs60701_))))
                       (declare (not safe))
                       (_lp60698_ _L60780_ __tmp64304 _kwargs60702_))))
                  (___kont6400264003_
                   (lambda ()
                     (values (let ()
                               (declare (not safe))
                               (reverse _pargs60701_))
                             (let ()
                               (declare (not safe))
                               (reverse _kwargs60702_))))))
              (let* ((_g6070760767_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx6399263993_))
                            (___kont6400264003_)
                            (let () (declare (not safe)) (_g6070860760_)))))
                     (___match6409964100_
                      (lambda (_e6074160800_
                               _hd6074060803_
                               _tl6073960805_
                               _e6074460808_
                               _hd6074360811_
                               _tl6074260813_
                               _e6074760816_
                               _hd6074660819_
                               _tl6074560821_
                               _e6075060824_
                               _hd6074960827_
                               _tl6074860829_)
                        (let ((_L60832_ _tl6074860829_)
                              (_L60833_ _hd6074960827_)
                              (_L60834_ _hd6074660819_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L60834_))
                              (___kont6399863999_ _L60832_ _L60833_ _L60834_)
                              (___kont6400064001_
                               _tl6073960805_
                               _hd6074060803_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6399263993_))
                    (let ((_e6071460904_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6399263993_))))
                      (let ((_tl6071260909_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6071460904_)))
                            (_hd6071360907_
                             (let ()
                               (declare (not safe))
                               (##car _e6071460904_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd6071360907_))
                            (let ((_e6071760912_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd6071360907_))))
                              (let ((_tl6071560917_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6071760912_)))
                                    (_hd6071660915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6071760912_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd6071660915_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd6071660915_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl6071560917_))
                                            (let ((_e6072060920_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl6071560917_))))
                                              (let ((_tl6071860925_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6072060920_)))
                                                    (_hd6071960923_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6072060920_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd6071960923_))
                                                    (let ((_e6072160928_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd6071960923_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e6072160928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl6071860925_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6071260909_))
                          (let ((_e6072460931_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6071260909_))))
                            (let ((_tl6072260936_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6072460931_)))
                                  (_hd6072360934_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6072460931_))))
                              (___kont6399463995_
                               _tl6072260936_
                               _hd6072360934_)))
                          (___kont6400064001_ _tl6071260909_ _hd6071360907_))
                      (___kont6400064001_ _tl6071260909_ _hd6071360907_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e6072160928_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6071860925_))
                          (___kont6399663997_ _tl6071260909_)
                          (___kont6400064001_ _tl6071260909_ _hd6071360907_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6071860925_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6071260909_))
                              (let ((_e6075060824_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6071260909_))))
                                (let ((_tl6074860829_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6075060824_)))
                                      (_hd6074960827_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6075060824_))))
                                  (___match6409964100_
                                   _e6071460904_
                                   _hd6071360907_
                                   _tl6071260909_
                                   _e6071760912_
                                   _hd6071660915_
                                   _tl6071560917_
                                   _e6072060920_
                                   _hd6071960923_
                                   _tl6071860925_
                                   _e6075060824_
                                   _hd6074960827_
                                   _tl6074860829_)))
                              (___kont6400064001_
                               _tl6071260909_
                               _hd6071360907_))
                          (___kont6400064001_
                           _tl6071260909_
                           _hd6071360907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6071860925_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl6071260909_))
                                                            (let ((_e6075060824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl6071260909_))))
                      (let ((_tl6074860829_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6075060824_)))
                            (_hd6074960827_
                             (let ()
                               (declare (not safe))
                               (##car _e6075060824_))))
                        (___match6409964100_
                         _e6071460904_
                         _hd6071360907_
                         _tl6071260909_
                         _e6071760912_
                         _hd6071660915_
                         _tl6071560917_
                         _e6072060920_
                         _hd6071960923_
                         _tl6071860925_
                         _e6075060824_
                         _hd6074960827_
                         _tl6074860829_)))
                    (___kont6400064001_ _tl6071260909_ _hd6071360907_))
                (___kont6400064001_ _tl6071260909_ _hd6071360907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont6400064001_
                                             _tl6071260909_
                                             _hd6071360907_))
                                        (___kont6400064001_
                                         _tl6071260909_
                                         _hd6071360907_))
                                    (___kont6400064001_
                                     _tl6071260909_
                                     _hd6071360907_))))
                            (___kont6400064001_
                             _tl6071260909_
                             _hd6071360907_))))
                    (let () (declare (not safe)) (_g6070760767_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self60691_ _stx60692_ _args60693_)
        (let () (declare (not safe)) (gxc#xform-call% _stx60692_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
