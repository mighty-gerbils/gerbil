(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1706556807)
  (begin
    (define displayln
      (lambda _args7760_
        (let _lp7762_ ((_rest7764_ _args7760_))
          (let* ((_rest77657773_ _rest7764_)
                 (_else77677781_ (lambda () (newline)))
                 (_K77697787_
                  (lambda (_rest7784_ _hd7785_)
                    (display _hd7785_)
                    (let () (declare (not safe)) (_lp7762_ _rest7784_)))))
            (if (let () (declare (not safe)) (##pair? _rest77657773_))
                (let ((_hd77707790_
                       (let () (declare (not safe)) (##car _rest77657773_)))
                      (_tl77717792_
                       (let () (declare (not safe)) (##cdr _rest77657773_))))
                  (let* ((_hd7795_ _hd77707790_) (_rest7797_ _tl77717792_))
                    (declare (not safe))
                    (_K77697787_ _rest7797_ _hd7795_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args7758_ (for-each display _args7758_)))
    (define file-newer?
      (lambda (_file17751_ _file27752_)
        (letrec ((_modification-time7754_
                  (lambda (_file7756_)
                    (let ((__tmp8185
                           (file-info-last-modification-time
                            (file-info _file7756_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp8185)))))
          (let ((__tmp8187
                 (let ()
                   (declare (not safe))
                   (_modification-time7754_ _file17751_)))
                (__tmp8186
                 (let ()
                   (declare (not safe))
                   (_modification-time7754_ _file27752_))))
            (declare (not safe))
            (##fl> __tmp8187 __tmp8186)))))
    (define create-directory*__%
      (lambda (_dir7725_ _perms7726_)
        (letrec ((_create17728_
                  (lambda (_path7739_)
                    (if (file-exists? _path7739_)
                        (if (let ((__tmp8188 (file-type _path7739_)))
                              (declare (not safe))
                              (eq? __tmp8188 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path7739_))
                        (if _perms7726_
                            (create-directory
                             (list 'path:
                                   _path7739_
                                   'permissions:
                                   _perms7726_))
                            (create-directory _path7739_))))))
          (if (file-exists? _dir7725_)
              '#!void
              (let _lp7730_ ((_start7732_ '0))
                (let ((_$e7734_
                       (let ()
                         (declare (not safe))
                         (string-index _dir7725_ '#\/ _start7732_))))
                  (if _$e7734_
                      ((lambda (_x7737_)
                         (if (let () (declare (not safe)) (##fx> _x7737_ '0))
                             (let ((__tmp8189
                                    (substring _dir7725_ '0 _x7737_)))
                               (declare (not safe))
                               (_create17728_ __tmp8189))
                             '#!void)
                         (let ((__tmp8190
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x7737_ '1))))
                           (declare (not safe))
                           (_lp7730_ __tmp8190)))
                       _$e7734_)
                      (let ()
                        (declare (not safe))
                        (_create17728_ _dir7725_)))))))))
    (define create-directory*__0
      (lambda (_dir7744_)
        (let ((_perms7746_ '493))
          (declare (not safe))
          (create-directory*__% _dir7744_ _perms7746_))))
    (define create-directory*
      (lambda _g8192_
        (let ((_g8191_ (let () (declare (not safe)) (##length _g8192_))))
          (cond ((let () (declare (not safe)) (##fx= _g8191_ 1))
                 (apply (lambda (_dir7744_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir7744_)))
                        _g8192_))
                ((let () (declare (not safe)) (##fx= _g8191_ 2))
                 (apply (lambda (_dir7748_ _perms7749_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir7748_ _perms7749_)))
                        _g8192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g8192_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g8193_ '#t))
    (define true?
      (lambda (_obj7721_) (let () (declare (not safe)) (eq? _obj7721_ '#t))))
    (define false (lambda _g8194_ '#f))
    (define void (lambda _g8195_ '#!void))
    (define void?
      (lambda (_obj7717_)
        (let () (declare (not safe)) (eq? _obj7717_ '#!void))))
    (define eof-object (lambda _g8196_ '#!eof))
    (define identity (lambda (_obj7714_) _obj7714_))
    (define dssl-object?
      (lambda (_obj7712_)
        (if (memq _obj7712_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj7710_)
        (let () (declare (not safe)) (eq? _obj7710_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj7708_)
        (let () (declare (not safe)) (eq? _obj7708_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj7706_)
        (let () (declare (not safe)) (eq? _obj7706_ '#!optional))))
    (define immediate?
      (lambda (_obj7702_)
        (let* ((_t7704_ (let () (declare (not safe)) (##type _obj7702_)))
               (__tmp8197 (let () (declare (not safe)) (##fxand _t7704_ '1))))
          (declare (not safe))
          (##fxzero? __tmp8197))))
    (define nonnegative-fixnum?
      (lambda (_obj7700_)
        (if (fixnum? _obj7700_)
            (let ((__tmp8198 (fxnegative? _obj7700_)))
              (declare (not safe))
              (not __tmp8198))
            '#f)))
    (define values-count
      (lambda (_obj7698_)
        (if (let () (declare (not safe)) (##values? _obj7698_))
            (let () (declare (not safe)) (##vector-length _obj7698_))
            '1)))
    (define values-ref
      (lambda (_obj7695_ _k7696_)
        (if (let () (declare (not safe)) (##values? _obj7695_))
            (let () (declare (not safe)) (##vector-ref _obj7695_ _k7696_))
            _obj7695_)))
    (define values->list
      (lambda (_obj7693_)
        (if (let () (declare (not safe)) (##values? _obj7693_))
            (let () (declare (not safe)) (##vector->list _obj7693_))
            (list _obj7693_))))
    (define subvector->list__%
      (lambda (_obj7678_ _start7679_)
        (let ((_lst7681_
               (let () (declare (not safe)) (##vector->list _obj7678_))))
          (list-tail _lst7681_ _start7679_))))
    (define subvector->list__0
      (lambda (_obj7686_)
        (let ((_start7688_ '0))
          (declare (not safe))
          (subvector->list__% _obj7686_ _start7688_))))
    (define subvector->list
      (lambda _g8200_
        (let ((_g8199_ (let () (declare (not safe)) (##length _g8200_))))
          (cond ((let () (declare (not safe)) (##fx= _g8199_ 1))
                 (apply (lambda (_obj7686_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj7686_)))
                        _g8200_))
                ((let () (declare (not safe)) (##fx= _g8199_ 2))
                 (apply (lambda (_obj7690_ _start7691_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj7690_ _start7691_)))
                        _g8200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g8200_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args7675_ (apply make-table 'test: eq? _args7675_)))
    (define make-hash-table-eqv
      (lambda _args7673_ (apply make-table 'test: eqv? _args7673_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst7670_ . _args7671_)
        (apply list->table _lst7670_ 'test: eq? _args7671_)))
    (define list->hash-table-eqv
      (lambda (_lst7667_ . _args7668_)
        (apply list->table _lst7667_ 'test: eqv? _args7668_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht7664_ _k7665_) (table-ref _ht7664_ _k7665_ '#f)))
    (define hash-put!
      (lambda (_ht7660_ _k7661_ _v7662_)
        (table-set! _ht7660_ _k7661_ _v7662_)))
    (define hash-update!__%
      (lambda (_ht7639_ _k7640_ _update7641_ _default7642_)
        (let* ((_value7644_
                (let ()
                  (declare (not safe))
                  (table-ref _ht7639_ _k7640_ _default7642_)))
               (__tmp8201 (_update7641_ _value7644_)))
          (declare (not safe))
          (table-set! _ht7639_ _k7640_ __tmp8201))))
    (define hash-update!__0
      (lambda (_ht7649_ _k7650_ _update7651_)
        (let ((_default7653_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht7649_ _k7650_ _update7651_ _default7653_))))
    (define hash-update!
      (lambda _g8203_
        (let ((_g8202_ (let () (declare (not safe)) (##length _g8203_))))
          (cond ((let () (declare (not safe)) (##fx= _g8202_ 3))
                 (apply (lambda (_ht7649_ _k7650_ _update7651_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0 _ht7649_ _k7650_ _update7651_)))
                        _g8203_))
                ((let () (declare (not safe)) (##fx= _g8202_ 4))
                 (apply (lambda (_ht7655_ _k7656_ _update7657_ _default7658_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht7655_
                             _k7656_
                             _update7657_
                             _default7658_)))
                        _g8203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g8203_))))))
    (define hash-remove!
      (lambda (_ht7635_ _k7636_) (table-set! _ht7635_ _k7636_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht7633_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht7633_))))
    (define plist->hash-table__%
      (lambda (_plst7568_ _ht7569_)
        (let _lp7571_ ((_rest7573_ _plst7568_))
          (let* ((_rest75747585_ _rest7573_)
                 (_E75777589_
                  (lambda () (error '"No clause matching" _rest75747585_))))
            (let ((_K75797604_
                   (lambda (_rest7600_ _v7601_ _k7602_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht7569_ _k7602_ _v7601_))
                     (let () (declare (not safe)) (_lp7571_ _rest7600_))))
                  (_K75787594_ (lambda () _ht7569_)))
              (let ((_try-match75767597_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest75747585_ '()))
                           (let () (declare (not safe)) (_K75787594_))
                           (let () (declare (not safe)) (_E75777589_))))))
                (if (let () (declare (not safe)) (##pair? _rest75747585_))
                    (let ((_tl75817609_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest75747585_)))
                          (_hd75807607_
                           (let ()
                             (declare (not safe))
                             (##car _rest75747585_))))
                      (if (let () (declare (not safe)) (##pair? _tl75817609_))
                          (let ((_tl75837616_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl75817609_)))
                                (_hd75827614_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl75817609_))))
                            (let ((_k7612_ _hd75807607_)
                                  (_v7619_ _hd75827614_)
                                  (_rest7621_ _tl75837616_))
                              (let ()
                                (declare (not safe))
                                (_K75797604_ _rest7621_ _v7619_ _k7612_))))
                          (let () (declare (not safe)) (_try-match75767597_))))
                    (let () (declare (not safe)) (_try-match75767597_)))))))))
    (define plist->hash-table__0
      (lambda (_plst7626_)
        (let ((_ht7628_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst7626_ _ht7628_))))
    (define plist->hash-table
      (lambda _g8205_
        (let ((_g8204_ (let () (declare (not safe)) (##length _g8205_))))
          (cond ((let () (declare (not safe)) (##fx= _g8204_ 1))
                 (apply (lambda (_plst7626_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst7626_)))
                        _g8205_))
                ((let () (declare (not safe)) (##fx= _g8204_ 2))
                 (apply (lambda (_plst7630_ _ht7631_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst7630_ _ht7631_)))
                        _g8205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g8205_))))))
    (define plist->hash-table-eq
      (lambda (_plst7565_)
        (let ((__tmp8206
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst7565_ __tmp8206))))
    (define plist->hash-table-eqv
      (lambda (_plst7563_)
        (let ((__tmp8207
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst7563_ __tmp8207))))
    (define hash-key?
      (lambda (_ht7560_ _k7561_)
        (let ((__tmp8208
               (let ((__tmp8209
                      (let ()
                        (declare (not safe))
                        (table-ref _ht7560_ _k7561_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp8209 absent-value))))
          (declare (not safe))
          (not __tmp8208))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun7553_ _ht7554_)
        (let ((__tmp8210
               (lambda (_k7556_ _v7557_ _r7558_)
                 (let ((__tmp8211 (_fun7553_ _k7556_ _v7557_)))
                   (declare (not safe))
                   (cons __tmp8211 _r7558_)))))
          (declare (not safe))
          (hash-fold __tmp8210 '() _ht7554_))))
    (define hash-fold
      (lambda (_fun7544_ _iv7545_ _ht7546_)
        (let ((_ret7548_ _iv7545_))
          (let ((__tmp8212
                 (lambda (_k7550_ _v7551_)
                   (set! _ret7548_ (_fun7544_ _k7550_ _v7551_ _ret7548_)))))
            (declare (not safe))
            (table-for-each __tmp8212 _ht7546_))
          _ret7548_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht7539_)
        (let ((__tmp8213 (lambda (_k7541_ _v7542_) _k7541_)))
          (declare (not safe))
          (hash-map __tmp8213 _ht7539_))))
    (define hash-values
      (lambda (_ht7534_)
        (let ((__tmp8214 (lambda (_k7536_ _v7537_) _v7537_)))
          (declare (not safe))
          (hash-map __tmp8214 _ht7534_))))
    (define hash-copy
      (lambda (_hd7529_ . _rest7530_)
        (let ((_hd7532_ (table-copy _hd7529_)))
          (if (let () (declare (not safe)) (null? _rest7530_))
              _hd7532_
              (apply hash-copy! _hd7532_ _rest7530_)))))
    (define hash-copy!
      (lambda (_hd7524_ . _rest7525_)
        (for-each
         (lambda (_r7527_) (table-merge! _hd7524_ _r7527_))
         _rest7525_)
        _hd7524_))
    (define hash-merge
      (lambda (_hd7518_ . _rest7519_)
        (let ((__tmp8215
               (lambda (_tab7521_ _r7522_) (table-merge _r7522_ _tab7521_))))
          (declare (not safe))
          (foldl1 __tmp8215 _hd7518_ _rest7519_))))
    (define hash-merge!
      (lambda (_hd7512_ . _rest7513_)
        (let ((__tmp8216
               (lambda (_tab7515_ _r7516_) (table-merge! _r7516_ _tab7515_))))
          (declare (not safe))
          (foldl1 __tmp8216 _hd7512_ _rest7513_))))
    (define hash-clear!__%
      (lambda (_ht7497_ _size7498_)
        (let ((_gcht7500_
               (let () (declare (not safe)) (##vector-ref _ht7497_ '5))))
          (if (let ((__tmp8217 (fixnum? _gcht7500_)))
                (declare (not safe))
                (not __tmp8217))
              (let ()
                (declare (not safe))
                (##vector-set! _ht7497_ '5 _size7498_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht7505_)
        (let ((_size7507_ '0))
          (declare (not safe))
          (hash-clear!__% _ht7505_ _size7507_))))
    (define hash-clear!
      (lambda _g8219_
        (let ((_g8218_ (let () (declare (not safe)) (##length _g8219_))))
          (cond ((let () (declare (not safe)) (##fx= _g8218_ 1))
                 (apply (lambda (_ht7505_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht7505_)))
                        _g8219_))
                ((let () (declare (not safe)) (##fx= _g8218_ 2))
                 (apply (lambda (_ht7509_ _size7510_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht7509_ _size7510_)))
                        _g8219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g8219_))))))
    (define make-list__%
      (lambda (_k7478_ _val7479_)
        (if (fixnum? _k7478_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k7478_))
        (let _lp7481_ ((_n7483_ '0) (_r7484_ '()))
          (if (let () (declare (not safe)) (##fx< _n7483_ _k7478_))
              (let ((__tmp8221
                     (let () (declare (not safe)) (##fx+ _n7483_ '1)))
                    (__tmp8220
                     (let () (declare (not safe)) (cons _val7479_ _r7484_))))
                (declare (not safe))
                (_lp7481_ __tmp8221 __tmp8220))
              _r7484_))))
    (define make-list__0
      (lambda (_k7489_)
        (let ((_val7491_ '#f))
          (declare (not safe))
          (make-list__% _k7489_ _val7491_))))
    (define make-list
      (lambda _g8223_
        (let ((_g8222_ (let () (declare (not safe)) (##length _g8223_))))
          (cond ((let () (declare (not safe)) (##fx= _g8222_ 1))
                 (apply (lambda (_k7489_)
                          (let () (declare (not safe)) (make-list__0 _k7489_)))
                        _g8223_))
                ((let () (declare (not safe)) (##fx= _g8222_ 2))
                 (apply (lambda (_k7493_ _val7494_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k7493_ _val7494_)))
                        _g8223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g8223_))))))
    (define cons*
      (lambda (_x7468_ _y7469_ . _rest7470_)
        (letrec ((_recur7472_
                  (lambda (_x7474_ _rest7475_)
                    (if (let () (declare (not safe)) (pair? _rest7475_))
                        (let ((__tmp8224
                               (let ((__tmp8226
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest7475_)))
                                     (__tmp8225
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest7475_))))
                                 (declare (not safe))
                                 (_recur7472_ __tmp8226 __tmp8225))))
                          (declare (not safe))
                          (cons _x7474_ __tmp8224))
                        _x7474_))))
          (let ((__tmp8227
                 (let ()
                   (declare (not safe))
                   (_recur7472_ _y7469_ _rest7470_))))
            (declare (not safe))
            (cons _x7468_ __tmp8227)))))
    (define foldl1
      (lambda (_f7426_ _iv7427_ _lst7428_)
        (let _lp7430_ ((_rest7432_ _lst7428_) (_r7433_ _iv7427_))
          (let* ((_rest74347442_ _rest7432_)
                 (_else74367450_ (lambda () _r7433_))
                 (_K74387456_
                  (lambda (_rest7453_ _x7454_)
                    (let ((__tmp8228 (_f7426_ _x7454_ _r7433_)))
                      (declare (not safe))
                      (_lp7430_ _rest7453_ __tmp8228)))))
            (if (let () (declare (not safe)) (##pair? _rest74347442_))
                (let ((_hd74397459_
                       (let () (declare (not safe)) (##car _rest74347442_)))
                      (_tl74407461_
                       (let () (declare (not safe)) (##cdr _rest74347442_))))
                  (let* ((_x7464_ _hd74397459_) (_rest7466_ _tl74407461_))
                    (declare (not safe))
                    (_K74387456_ _rest7466_ _x7464_)))
                (let () (declare (not safe)) (_else74367450_)))))))
    (define foldl2
      (lambda (_f7349_ _iv7350_ _lst17351_ _lst27352_)
        (let _lp7354_ ((_rest17356_ _lst17351_)
                       (_rest27357_ _lst27352_)
                       (_r7358_ _iv7350_))
          (let* ((_rest173597367_ _rest17356_)
                 (_else73617375_ (lambda () _r7358_))
                 (_K73637414_
                  (lambda (_rest17378_ _x17379_)
                    (let* ((_rest273807388_ _rest27357_)
                           (_else73827396_ (lambda () _r7358_))
                           (_K73847402_
                            (lambda (_rest27399_ _x27400_)
                              (let ((__tmp8229
                                     (_f7349_ _x17379_ _x27400_ _r7358_)))
                                (declare (not safe))
                                (_lp7354_
                                 _rest17378_
                                 _rest27399_
                                 __tmp8229)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest273807388_))
                          (let ((_hd73857405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest273807388_)))
                                (_tl73867407_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest273807388_))))
                            (let* ((_x27410_ _hd73857405_)
                                   (_rest27412_ _tl73867407_))
                              (declare (not safe))
                              (_K73847402_ _rest27412_ _x27410_)))
                          (let () (declare (not safe)) (_else73827396_)))))))
            (if (let () (declare (not safe)) (##pair? _rest173597367_))
                (let ((_hd73647417_
                       (let () (declare (not safe)) (##car _rest173597367_)))
                      (_tl73657419_
                       (let () (declare (not safe)) (##cdr _rest173597367_))))
                  (let* ((_x17422_ _hd73647417_) (_rest17424_ _tl73657419_))
                    (declare (not safe))
                    (_K73637414_ _rest17424_ _x17422_)))
                (let () (declare (not safe)) (_else73617375_)))))))
    (define foldl
      (lambda _g8231_
        (let ((_g8230_ (let () (declare (not safe)) (##length _g8231_))))
          (cond ((let () (declare (not safe)) (##fx= _g8230_ 3))
                 (apply (lambda (_f7334_ _iv7335_ _lst7336_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f7334_ _iv7335_ _lst7336_)))
                        _g8231_))
                ((let () (declare (not safe)) (##fx= _g8230_ 4))
                 (apply (lambda (_f7338_ _iv7339_ _lst17340_ _lst27341_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f7338_ _iv7339_ _lst17340_ _lst27341_)))
                        _g8231_))
                ((let () (declare (not safe)) (##fx>= _g8230_ 4))
                 (apply foldl* _g8231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g8231_))))))
    (define foldl*
      (lambda (_f7322_ _iv7323_ . _rest7324_)
        (let _recur7326_ ((_iv7328_ _iv7323_) (_rest7329_ _rest7324_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest7329_))
              (let ((__tmp8233
                     (apply _f7322_
                            (let ((__tmp8235
                                   (lambda (_xs7331_ _r7332_)
                                     (let ((__tmp8236 (car _xs7331_)))
                                       (declare (not safe))
                                       (cons __tmp8236 _r7332_))))
                                  (__tmp8234 (list _iv7328_)))
                              (declare (not safe))
                              (foldr1 __tmp8235 __tmp8234 _rest7329_))))
                    (__tmp8232 (map cdr _rest7329_)))
                (declare (not safe))
                (_recur7326_ __tmp8233 __tmp8232))
              _iv7328_))))
    (define foldr1
      (lambda (_f7281_ _iv7282_ _lst7283_)
        (let _recur7285_ ((_rest7287_ _lst7283_))
          (let* ((_rest72887296_ _rest7287_)
                 (_else72907304_ (lambda () _iv7282_))
                 (_K72927310_
                  (lambda (_rest7307_ _x7308_)
                    (_f7281_ _x7308_
                             (let ()
                               (declare (not safe))
                               (_recur7285_ _rest7307_))))))
            (if (let () (declare (not safe)) (##pair? _rest72887296_))
                (let ((_hd72937313_
                       (let () (declare (not safe)) (##car _rest72887296_)))
                      (_tl72947315_
                       (let () (declare (not safe)) (##cdr _rest72887296_))))
                  (let* ((_x7318_ _hd72937313_) (_rest7320_ _tl72947315_))
                    (declare (not safe))
                    (_K72927310_ _rest7320_ _x7318_)))
                (let () (declare (not safe)) (_else72907304_)))))))
    (define foldr2
      (lambda (_f7205_ _iv7206_ _lst17207_ _lst27208_)
        (let _recur7210_ ((_rest17212_ _lst17207_) (_rest27213_ _lst27208_))
          (let* ((_rest172147222_ _rest17212_)
                 (_else72167230_ (lambda () _iv7206_))
                 (_K72187269_
                  (lambda (_rest17233_ _x17234_)
                    (let* ((_rest272357243_ _rest27213_)
                           (_else72377251_ (lambda () _iv7206_))
                           (_K72397257_
                            (lambda (_rest27254_ _x27255_)
                              (_f7205_ _x17234_
                                       _x27255_
                                       (let ()
                                         (declare (not safe))
                                         (_recur7210_
                                          _rest17233_
                                          _rest27254_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest272357243_))
                          (let ((_hd72407260_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest272357243_)))
                                (_tl72417262_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest272357243_))))
                            (let* ((_x27265_ _hd72407260_)
                                   (_rest27267_ _tl72417262_))
                              (declare (not safe))
                              (_K72397257_ _rest27267_ _x27265_)))
                          (let () (declare (not safe)) (_else72377251_)))))))
            (if (let () (declare (not safe)) (##pair? _rest172147222_))
                (let ((_hd72197272_
                       (let () (declare (not safe)) (##car _rest172147222_)))
                      (_tl72207274_
                       (let () (declare (not safe)) (##cdr _rest172147222_))))
                  (let* ((_x17277_ _hd72197272_) (_rest17279_ _tl72207274_))
                    (declare (not safe))
                    (_K72187269_ _rest17279_ _x17277_)))
                (let () (declare (not safe)) (_else72167230_)))))))
    (define foldr
      (lambda _g8238_
        (let ((_g8237_ (let () (declare (not safe)) (##length _g8238_))))
          (cond ((let () (declare (not safe)) (##fx= _g8237_ 3))
                 (apply (lambda (_f7190_ _iv7191_ _lst7192_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f7190_ _iv7191_ _lst7192_)))
                        _g8238_))
                ((let () (declare (not safe)) (##fx= _g8237_ 4))
                 (apply (lambda (_f7194_ _iv7195_ _lst17196_ _lst27197_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f7194_ _iv7195_ _lst17196_ _lst27197_)))
                        _g8238_))
                ((let () (declare (not safe)) (##fx>= _g8237_ 4))
                 (apply foldr* _g8238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g8238_))))))
    (define foldr*
      (lambda (_f7179_ _iv7180_ . _rest7181_)
        (let _recur7183_ ((_rest7185_ _rest7181_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest7185_))
              (apply _f7179_
                     (let ((__tmp8241
                            (lambda (_xs7187_ _r7188_)
                              (let ((__tmp8242 (car _xs7187_)))
                                (declare (not safe))
                                (cons __tmp8242 _r7188_))))
                           (__tmp8239
                            (list (let ((__tmp8240 (map cdr _rest7185_)))
                                    (declare (not safe))
                                    (_recur7183_ __tmp8240)))))
                       (declare (not safe))
                       (foldr1 __tmp8241 __tmp8239 _rest7185_)))
              _iv7180_))))
    (define remove-nulls!
      (lambda (_l7066_)
        (let* ((_l70677080_ _l7066_)
               (_E70717084_
                (lambda () (error '"No clause matching" _l70677080_))))
          (let ((_K70767169_
                 (lambda (_r7167_)
                   (let () (declare (not safe)) (remove-nulls! _r7167_))))
                (_K70737156_
                 (lambda (_r7096_)
                   (let _loop7098_ ((_l7100_ _l7066_) (_r7101_ _r7096_))
                     (let* ((_r71027115_ _r7101_)
                            (_E71067119_
                             (lambda ()
                               (error '"No clause matching" _r71027115_))))
                       (let ((_K71117146_
                              (lambda (_rr7144_)
                                (set-cdr!
                                 _l7100_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr7144_)))))
                             (_K71087133_
                              (lambda (_rr7131_)
                                (let ()
                                  (declare (not safe))
                                  (_loop7098_ _r7101_ _rr7131_))))
                             (_K71077124_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r71027115_))
                             (let ((_tl71137151_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r71027115_)))
                                   (_hd71127149_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r71027115_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd71127149_))
                                   (let ((_rr7154_ _tl71137151_))
                                     (declare (not safe))
                                     (_K71117146_ _rr7154_))
                                   (let ((_rr7139_ _tl71137151_))
                                     (declare (not safe))
                                     (_K71087133_ _rr7139_))))
                             '#!void))))
                   _l7066_))
                (_K70727089_ (lambda () _l7066_)))
            (if (let () (declare (not safe)) (##pair? _l70677080_))
                (let ((_tl70787174_
                       (let () (declare (not safe)) (##cdr _l70677080_)))
                      (_hd70777172_
                       (let () (declare (not safe)) (##car _l70677080_))))
                  (if (let () (declare (not safe)) (##null? _hd70777172_))
                      (let ((_r7177_ _tl70787174_))
                        (declare (not safe))
                        (remove-nulls! _r7177_))
                      (let ((_r7162_ _tl70787174_))
                        (declare (not safe))
                        (_K70737156_ _r7162_))))
                (let () (declare (not safe)) (_K70727089_)))))))
    (define append1!
      (lambda (_l7061_ _x7062_)
        (let ((_l27064_ (let () (declare (not safe)) (cons _x7062_ '()))))
          (if (let () (declare (not safe)) (pair? _l7061_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l7061_))
               _l27064_)
              _l27064_))))
    (define append-reverse
      (lambda (_rev-head7058_ _tail7059_)
        (let () (declare (not safe)) (foldl1 cons _tail7059_ _rev-head7058_))))
    (define andmap1
      (lambda (_f7018_ _lst7019_)
        (let _lp7021_ ((_rest7023_ _lst7019_))
          (let* ((_rest70247032_ _rest7023_)
                 (_else70267040_ (lambda () '#t))
                 (_K70287046_
                  (lambda (_rest7043_ _x7044_)
                    (if (_f7018_ _x7044_)
                        (let () (declare (not safe)) (_lp7021_ _rest7043_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest70247032_))
                (let ((_hd70297049_
                       (let () (declare (not safe)) (##car _rest70247032_)))
                      (_tl70307051_
                       (let () (declare (not safe)) (##cdr _rest70247032_))))
                  (let* ((_x7054_ _hd70297049_) (_rest7056_ _tl70307051_))
                    (declare (not safe))
                    (_K70287046_ _rest7056_ _x7054_)))
                (let () (declare (not safe)) (_else70267040_)))))))
    (define andmap2
      (lambda (_f6943_ _lst16944_ _lst26945_)
        (let _lp6947_ ((_rest16949_ _lst16944_) (_rest26950_ _lst26945_))
          (let* ((_rest169516959_ _rest16949_)
                 (_else69536967_ (lambda () '#t))
                 (_K69557006_
                  (lambda (_rest16970_ _x16971_)
                    (let* ((_rest269726980_ _rest26950_)
                           (_else69746988_ (lambda () '#t))
                           (_K69766994_
                            (lambda (_rest26991_ _x26992_)
                              (if (_f6943_ _x16971_ _x26992_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp6947_ _rest16970_ _rest26991_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest269726980_))
                          (let ((_hd69776997_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest269726980_)))
                                (_tl69786999_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest269726980_))))
                            (let* ((_x27002_ _hd69776997_)
                                   (_rest27004_ _tl69786999_))
                              (declare (not safe))
                              (_K69766994_ _rest27004_ _x27002_)))
                          (let () (declare (not safe)) (_else69746988_)))))))
            (if (let () (declare (not safe)) (##pair? _rest169516959_))
                (let ((_hd69567009_
                       (let () (declare (not safe)) (##car _rest169516959_)))
                      (_tl69577011_
                       (let () (declare (not safe)) (##cdr _rest169516959_))))
                  (let* ((_x17014_ _hd69567009_) (_rest17016_ _tl69577011_))
                    (declare (not safe))
                    (_K69557006_ _rest17016_ _x17014_)))
                (let () (declare (not safe)) (_else69536967_)))))))
    (define andmap
      (lambda _g8244_
        (let ((_g8243_ (let () (declare (not safe)) (##length _g8244_))))
          (cond ((let () (declare (not safe)) (##fx= _g8243_ 2))
                 (apply (lambda (_f6931_ _lst6932_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f6931_ _lst6932_)))
                        _g8244_))
                ((let () (declare (not safe)) (##fx= _g8243_ 3))
                 (apply (lambda (_f6934_ _lst16935_ _lst26936_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f6934_ _lst16935_ _lst26936_)))
                        _g8244_))
                ((let () (declare (not safe)) (##fx>= _g8243_ 3))
                 (apply andmap* _g8244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g8244_))))))
    (define andmap*
      (lambda (_f6924_ . _rest6925_)
        (let _recur6927_ ((_rest6929_ _rest6925_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest6929_))
              (if (apply _f6924_ (map car _rest6929_))
                  (let ((__tmp8245 (map cdr _rest6929_)))
                    (declare (not safe))
                    (_recur6927_ __tmp8245))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f6881_ _lst6882_)
        (let _lp6884_ ((_rest6886_ _lst6882_))
          (let* ((_rest68876895_ _rest6886_)
                 (_else68896903_ (lambda () '#f))
                 (_K68916912_
                  (lambda (_rest6906_ _x6907_)
                    (let ((_$e6909_ (_f6881_ _x6907_)))
                      (if _$e6909_
                          _$e6909_
                          (let ()
                            (declare (not safe))
                            (_lp6884_ _rest6906_)))))))
            (if (let () (declare (not safe)) (##pair? _rest68876895_))
                (let ((_hd68926915_
                       (let () (declare (not safe)) (##car _rest68876895_)))
                      (_tl68936917_
                       (let () (declare (not safe)) (##cdr _rest68876895_))))
                  (let* ((_x6920_ _hd68926915_) (_rest6922_ _tl68936917_))
                    (declare (not safe))
                    (_K68916912_ _rest6922_ _x6920_)))
                (let () (declare (not safe)) (_else68896903_)))))))
    (define ormap2
      (lambda (_f6803_ _lst16804_ _lst26805_)
        (let _lp6807_ ((_rest16809_ _lst16804_) (_rest26810_ _lst26805_))
          (let* ((_rest168116819_ _rest16809_)
                 (_else68136827_ (lambda () '#f))
                 (_K68156869_
                  (lambda (_rest16830_ _x16831_)
                    (let* ((_rest268326840_ _rest26810_)
                           (_else68346848_ (lambda () '#f))
                           (_K68366857_
                            (lambda (_rest26851_ _x26852_)
                              (let ((_$e6854_ (_f6803_ _x16831_ _x26852_)))
                                (if _$e6854_
                                    _$e6854_
                                    (let ()
                                      (declare (not safe))
                                      (_lp6807_ _rest16830_ _rest26851_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest268326840_))
                          (let ((_hd68376860_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest268326840_)))
                                (_tl68386862_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest268326840_))))
                            (let* ((_x26865_ _hd68376860_)
                                   (_rest26867_ _tl68386862_))
                              (declare (not safe))
                              (_K68366857_ _rest26867_ _x26865_)))
                          (let () (declare (not safe)) (_else68346848_)))))))
            (if (let () (declare (not safe)) (##pair? _rest168116819_))
                (let ((_hd68166872_
                       (let () (declare (not safe)) (##car _rest168116819_)))
                      (_tl68176874_
                       (let () (declare (not safe)) (##cdr _rest168116819_))))
                  (let* ((_x16877_ _hd68166872_) (_rest16879_ _tl68176874_))
                    (declare (not safe))
                    (_K68156869_ _rest16879_ _x16877_)))
                (let () (declare (not safe)) (_else68136827_)))))))
    (define ormap
      (lambda _g8247_
        (let ((_g8246_ (let () (declare (not safe)) (##length _g8247_))))
          (cond ((let () (declare (not safe)) (##fx= _g8246_ 2))
                 (apply (lambda (_f6791_ _lst6792_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f6791_ _lst6792_)))
                        _g8247_))
                ((let () (declare (not safe)) (##fx= _g8246_ 3))
                 (apply (lambda (_f6794_ _lst16795_ _lst26796_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f6794_ _lst16795_ _lst26796_)))
                        _g8247_))
                ((let () (declare (not safe)) (##fx>= _g8246_ 3))
                 (apply ormap* _g8247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g8247_))))))
    (define ormap*
      (lambda (_f6781_ . _rest6782_)
        (let _recur6784_ ((_rest6786_ _rest6782_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest6786_))
              (let ((_$e6788_ (apply _f6781_ (map car _rest6786_))))
                (if _$e6788_
                    _$e6788_
                    (let ((__tmp8248 (map cdr _rest6786_)))
                      (declare (not safe))
                      (_recur6784_ __tmp8248))))
              '#f))))
    (define filter
      (lambda (_f6739_ _lst6740_)
        (let _recur6742_ ((_lst6744_ _lst6740_))
          (let* ((_lst67456753_ _lst6744_)
                 (_else67476761_ (lambda () '()))
                 (_K67496769_
                  (lambda (_rest6764_ _hd6765_)
                    (if (_f6739_ _hd6765_)
                        (let ((_tail6767_
                               (let ()
                                 (declare (not safe))
                                 (_recur6742_ _rest6764_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail6767_ _rest6764_))
                              _lst6744_
                              (let ()
                                (declare (not safe))
                                (cons _hd6765_ _tail6767_))))
                        (let ()
                          (declare (not safe))
                          (_recur6742_ _rest6764_))))))
            (if (let () (declare (not safe)) (##pair? _lst67456753_))
                (let ((_hd67506772_
                       (let () (declare (not safe)) (##car _lst67456753_)))
                      (_tl67516774_
                       (let () (declare (not safe)) (##cdr _lst67456753_))))
                  (let* ((_hd6777_ _hd67506772_) (_rest6779_ _tl67516774_))
                    (declare (not safe))
                    (_K67496769_ _rest6779_ _hd6777_)))
                (let () (declare (not safe)) (_else67476761_)))))))
    (define filter-map1
      (lambda (_f6694_ _lst6695_)
        (let _recur6697_ ((_rest6699_ _lst6695_))
          (let* ((_rest67006708_ _rest6699_)
                 (_else67026716_ (lambda () '()))
                 (_K67046727_
                  (lambda (_rest6719_ _x6720_)
                    (let ((_$e6722_ (_f6694_ _x6720_)))
                      (if _$e6722_
                          ((lambda (_r6725_)
                             (let ((__tmp8249
                                    (let ()
                                      (declare (not safe))
                                      (_recur6697_ _rest6719_))))
                               (declare (not safe))
                               (cons _r6725_ __tmp8249)))
                           _$e6722_)
                          (let ()
                            (declare (not safe))
                            (_recur6697_ _rest6719_)))))))
            (if (let () (declare (not safe)) (##pair? _rest67006708_))
                (let ((_hd67056730_
                       (let () (declare (not safe)) (##car _rest67006708_)))
                      (_tl67066732_
                       (let () (declare (not safe)) (##cdr _rest67006708_))))
                  (let* ((_x6735_ _hd67056730_) (_rest6737_ _tl67066732_))
                    (declare (not safe))
                    (_K67046727_ _rest6737_ _x6735_)))
                (let () (declare (not safe)) (_else67026716_)))))))
    (define filter-map2
      (lambda (_f6614_ _lst16615_ _lst26616_)
        (let _recur6618_ ((_rest16620_ _lst16615_) (_rest26621_ _lst26616_))
          (let* ((_rest166226630_ _rest16620_)
                 (_else66246638_ (lambda () '()))
                 (_K66266682_
                  (lambda (_rest16641_ _x16642_)
                    (let* ((_rest266436651_ _rest26621_)
                           (_else66456659_ (lambda () '()))
                           (_K66476670_
                            (lambda (_rest26662_ _x26663_)
                              (let ((_$e6665_ (_f6614_ _x16642_ _x26663_)))
                                (if _$e6665_
                                    ((lambda (_r6668_)
                                       (let ((__tmp8250
                                              (let ()
                                                (declare (not safe))
                                                (_recur6618_
                                                 _rest16641_
                                                 _rest26662_))))
                                         (declare (not safe))
                                         (cons _r6668_ __tmp8250)))
                                     _$e6665_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur6618_
                                       _rest16641_
                                       _rest26662_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest266436651_))
                          (let ((_hd66486673_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest266436651_)))
                                (_tl66496675_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest266436651_))))
                            (let* ((_x26678_ _hd66486673_)
                                   (_rest26680_ _tl66496675_))
                              (declare (not safe))
                              (_K66476670_ _rest26680_ _x26678_)))
                          (let () (declare (not safe)) (_else66456659_)))))))
            (if (let () (declare (not safe)) (##pair? _rest166226630_))
                (let ((_hd66276685_
                       (let () (declare (not safe)) (##car _rest166226630_)))
                      (_tl66286687_
                       (let () (declare (not safe)) (##cdr _rest166226630_))))
                  (let* ((_x16690_ _hd66276685_) (_rest16692_ _tl66286687_))
                    (declare (not safe))
                    (_K66266682_ _rest16692_ _x16690_)))
                (let () (declare (not safe)) (_else66246638_)))))))
    (define filter-map
      (lambda _g8252_
        (let ((_g8251_ (let () (declare (not safe)) (##length _g8252_))))
          (cond ((let () (declare (not safe)) (##fx= _g8251_ 2))
                 (apply (lambda (_f6602_ _lst6603_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f6602_ _lst6603_)))
                        _g8252_))
                ((let () (declare (not safe)) (##fx= _g8251_ 3))
                 (apply (lambda (_f6605_ _lst16606_ _lst26607_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f6605_ _lst16606_ _lst26607_)))
                        _g8252_))
                ((let () (declare (not safe)) (##fx>= _g8251_ 3))
                 (apply filter-map* _g8252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g8252_))))))
    (define filter-map*
      (lambda (_f6590_ . _rest6591_)
        (let _recur6593_ ((_rest6595_ _rest6591_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest6595_))
              (let ((_$e6597_ (apply _f6590_ (map car _rest6595_))))
                (if _$e6597_
                    ((lambda (_r6600_)
                       (let ((__tmp8254
                              (let ((__tmp8255 (map cdr _rest6595_)))
                                (declare (not safe))
                                (_recur6593_ __tmp8255))))
                         (declare (not safe))
                         (cons _r6600_ __tmp8254)))
                     _$e6597_)
                    (let ((__tmp8253 (map cdr _rest6595_)))
                      (declare (not safe))
                      (_recur6593_ __tmp8253))))
              '()))))
    (define iota__%
      (lambda (_count6558_ _start6559_ _step6560_)
        (if (fixnum? _count6558_)
            '#!void
            (error '"expected fixnum" _count6558_))
        (if (let () (declare (not safe)) (number? _start6559_))
            '#!void
            (error '"expected number" _start6559_))
        (if (let () (declare (not safe)) (number? _step6560_))
            '#!void
            (error '"expected number" _step6560_))
        (let ((_root6562_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp6564_ ((_i6566_ '0)
                         (_x6567_ _start6559_)
                         (_tl6568_ _root6562_))
            (if (let () (declare (not safe)) (##fx< _i6566_ _count6558_))
                (let ((_tl*6570_
                       (let () (declare (not safe)) (cons _x6567_ '()))))
                  (let () (declare (not safe)) (##set-cdr! _tl6568_ _tl*6570_))
                  (let ((__tmp8257
                         (let () (declare (not safe)) (##fx+ _i6566_ '1)))
                        (__tmp8256 (+ _x6567_ _step6560_)))
                    (declare (not safe))
                    (_lp6564_ __tmp8257 __tmp8256 _tl*6570_)))
                (let () (declare (not safe)) (##cdr _root6562_)))))))
    (define iota__0
      (lambda (_count6575_)
        (let* ((_start6577_ '0) (_step6579_ '1))
          (declare (not safe))
          (iota__% _count6575_ _start6577_ _step6579_))))
    (define iota__1
      (lambda (_count6581_ _start6582_)
        (let ((_step6584_ '1))
          (declare (not safe))
          (iota__% _count6581_ _start6582_ _step6584_))))
    (define iota
      (lambda _g8259_
        (let ((_g8258_ (let () (declare (not safe)) (##length _g8259_))))
          (cond ((let () (declare (not safe)) (##fx= _g8258_ 1))
                 (apply (lambda (_count6575_)
                          (let () (declare (not safe)) (iota__0 _count6575_)))
                        _g8259_))
                ((let () (declare (not safe)) (##fx= _g8258_ 2))
                 (apply (lambda (_count6581_ _start6582_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count6581_ _start6582_)))
                        _g8259_))
                ((let () (declare (not safe)) (##fx= _g8258_ 3))
                 (apply (lambda (_count6586_ _start6587_ _step6588_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count6586_ _start6587_ _step6588_)))
                        _g8259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g8259_))))))
    (define last-pair
      (lambda (_lst6532_)
        (let* ((_lst65336540_ _lst6532_)
               (_E65356544_
                (lambda () (error '"No clause matching" _lst65336540_)))
               (_K65366549_
                (lambda (_rest6547_)
                  (if (let () (declare (not safe)) (pair? _rest6547_))
                      (let () (declare (not safe)) (last-pair _rest6547_))
                      _lst6532_))))
          (if (let () (declare (not safe)) (##pair? _lst65336540_))
              (let* ((_tl65386552_
                      (let () (declare (not safe)) (##cdr _lst65336540_)))
                     (_rest6555_ _tl65386552_))
                (declare (not safe))
                (_K65366549_ _rest6555_))
              (let () (declare (not safe)) (_E65356544_))))))
    (define last
      (lambda (_lst6530_)
        (car (let () (declare (not safe)) (last-pair _lst6530_)))))
    (define assgetq__%
      (lambda (_key6508_ _lst6510_ _default6512_)
        (let ((_$e6515_
               (if (let () (declare (not safe)) (pair? _lst6510_))
                   (assq _key6508_ _lst6510_)
                   '#f)))
          (if _$e6515_
              (cdr _$e6515_)
              (if (let () (declare (not safe)) (procedure? _default6512_))
                  (_default6512_ _key6508_)
                  _default6512_)))))
    (define assgetq__0
      (lambda (_key6521_ _lst6522_)
        (let ((_default6524_ '#f))
          (declare (not safe))
          (assgetq__% _key6521_ _lst6522_ _default6524_))))
    (define assgetq
      (lambda _g8261_
        (let ((_g8260_ (let () (declare (not safe)) (##length _g8261_))))
          (cond ((let () (declare (not safe)) (##fx= _g8260_ 2))
                 (apply (lambda (_key6521_ _lst6522_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key6521_ _lst6522_)))
                        _g8261_))
                ((let () (declare (not safe)) (##fx= _g8260_ 3))
                 (apply (lambda (_key6526_ _lst6527_ _default6528_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key6526_ _lst6527_ _default6528_)))
                        _g8261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g8261_))))))
    (define assgetv__%
      (lambda (_key6485_ _lst6487_ _default6489_)
        (let ((_$e6492_
               (if (let () (declare (not safe)) (pair? _lst6487_))
                   (assv _key6485_ _lst6487_)
                   '#f)))
          (if _$e6492_
              (cdr _$e6492_)
              (if (let () (declare (not safe)) (procedure? _default6489_))
                  (_default6489_ _key6485_)
                  _default6489_)))))
    (define assgetv__0
      (lambda (_key6498_ _lst6499_)
        (let ((_default6501_ '#f))
          (declare (not safe))
          (assgetv__% _key6498_ _lst6499_ _default6501_))))
    (define assgetv
      (lambda _g8263_
        (let ((_g8262_ (let () (declare (not safe)) (##length _g8263_))))
          (cond ((let () (declare (not safe)) (##fx= _g8262_ 2))
                 (apply (lambda (_key6498_ _lst6499_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key6498_ _lst6499_)))
                        _g8263_))
                ((let () (declare (not safe)) (##fx= _g8262_ 3))
                 (apply (lambda (_key6503_ _lst6504_ _default6505_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key6503_ _lst6504_ _default6505_)))
                        _g8263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g8263_))))))
    (define assget__%
      (lambda (_key6462_ _lst6464_ _default6466_)
        (let ((_$e6469_
               (if (let () (declare (not safe)) (pair? _lst6464_))
                   (assoc _key6462_ _lst6464_)
                   '#f)))
          (if _$e6469_
              (cdr _$e6469_)
              (if (let () (declare (not safe)) (procedure? _default6466_))
                  (_default6466_ _key6462_)
                  _default6466_)))))
    (define assget__0
      (lambda (_key6475_ _lst6476_)
        (let ((_default6478_ '#f))
          (declare (not safe))
          (assget__% _key6475_ _lst6476_ _default6478_))))
    (define assget
      (lambda _g8265_
        (let ((_g8264_ (let () (declare (not safe)) (##length _g8265_))))
          (cond ((let () (declare (not safe)) (##fx= _g8264_ 2))
                 (apply (lambda (_key6475_ _lst6476_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key6475_ _lst6476_)))
                        _g8265_))
                ((let () (declare (not safe)) (##fx= _g8264_ 3))
                 (apply (lambda (_key6480_ _lst6481_ _default6482_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key6480_ _lst6481_ _default6482_)))
                        _g8265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g8265_))))))
    (define pgetq__%
      (lambda (_key6391_ _lst6393_ _default6395_)
        (let _lp6398_ ((_rest6401_ _lst6393_))
          (let* ((_rest64036413_ _rest6401_)
                 (_else64056421_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default6395_))
                        (_default6395_ _key6391_)
                        _default6395_)))
                 (_K64076430_
                  (lambda (_rest6424_ _v6425_ _k6427_)
                    (if (let () (declare (not safe)) (eq? _k6427_ _key6391_))
                        _v6425_
                        (let () (declare (not safe)) (_lp6398_ _rest6424_))))))
            (if (let () (declare (not safe)) (##pair? _rest64036413_))
                (let ((_hd64086433_
                       (let () (declare (not safe)) (##car _rest64036413_)))
                      (_tl64096435_
                       (let () (declare (not safe)) (##cdr _rest64036413_))))
                  (let ((_k6438_ _hd64086433_))
                    (if (let () (declare (not safe)) (##pair? _tl64096435_))
                        (let ((_hd64106440_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl64096435_)))
                              (_tl64116442_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl64096435_))))
                          (let* ((_v6445_ _hd64106440_)
                                 (_rest6447_ _tl64116442_))
                            (declare (not safe))
                            (_K64076430_ _rest6447_ _v6445_ _k6438_)))
                        (let () (declare (not safe)) (_else64056421_)))))
                (let () (declare (not safe)) (_else64056421_)))))))
    (define pgetq__0
      (lambda (_key6452_ _lst6453_)
        (let ((_default6455_ '#f))
          (declare (not safe))
          (pgetq__% _key6452_ _lst6453_ _default6455_))))
    (define pgetq
      (lambda _g8267_
        (let ((_g8266_ (let () (declare (not safe)) (##length _g8267_))))
          (cond ((let () (declare (not safe)) (##fx= _g8266_ 2))
                 (apply (lambda (_key6452_ _lst6453_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key6452_ _lst6453_)))
                        _g8267_))
                ((let () (declare (not safe)) (##fx= _g8266_ 3))
                 (apply (lambda (_key6457_ _lst6458_ _default6459_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key6457_ _lst6458_ _default6459_)))
                        _g8267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g8267_))))))
    (define pgetv__%
      (lambda (_key6320_ _lst6322_ _default6324_)
        (let _lp6327_ ((_rest6330_ _lst6322_))
          (let* ((_rest63326342_ _rest6330_)
                 (_else63346350_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default6324_))
                        (_default6324_ _key6320_)
                        _default6324_)))
                 (_K63366359_
                  (lambda (_rest6353_ _v6354_ _k6356_)
                    (if (let () (declare (not safe)) (eqv? _k6356_ _key6320_))
                        _v6354_
                        (let () (declare (not safe)) (_lp6327_ _rest6353_))))))
            (if (let () (declare (not safe)) (##pair? _rest63326342_))
                (let ((_hd63376362_
                       (let () (declare (not safe)) (##car _rest63326342_)))
                      (_tl63386364_
                       (let () (declare (not safe)) (##cdr _rest63326342_))))
                  (let ((_k6367_ _hd63376362_))
                    (if (let () (declare (not safe)) (##pair? _tl63386364_))
                        (let ((_hd63396369_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl63386364_)))
                              (_tl63406371_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl63386364_))))
                          (let* ((_v6374_ _hd63396369_)
                                 (_rest6376_ _tl63406371_))
                            (declare (not safe))
                            (_K63366359_ _rest6376_ _v6374_ _k6367_)))
                        (let () (declare (not safe)) (_else63346350_)))))
                (let () (declare (not safe)) (_else63346350_)))))))
    (define pgetv__0
      (lambda (_key6381_ _lst6382_)
        (let ((_default6384_ '#f))
          (declare (not safe))
          (pgetv__% _key6381_ _lst6382_ _default6384_))))
    (define pgetv
      (lambda _g8269_
        (let ((_g8268_ (let () (declare (not safe)) (##length _g8269_))))
          (cond ((let () (declare (not safe)) (##fx= _g8268_ 2))
                 (apply (lambda (_key6381_ _lst6382_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key6381_ _lst6382_)))
                        _g8269_))
                ((let () (declare (not safe)) (##fx= _g8268_ 3))
                 (apply (lambda (_key6386_ _lst6387_ _default6388_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key6386_ _lst6387_ _default6388_)))
                        _g8269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g8269_))))))
    (define pget__%
      (lambda (_key6249_ _lst6251_ _default6253_)
        (let _lp6256_ ((_rest6259_ _lst6251_))
          (let* ((_rest62616271_ _rest6259_)
                 (_else62636279_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default6253_))
                        (_default6253_ _key6249_)
                        _default6253_)))
                 (_K62656288_
                  (lambda (_rest6282_ _v6283_ _k6285_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k6285_ _key6249_))
                        _v6283_
                        (let () (declare (not safe)) (_lp6256_ _rest6282_))))))
            (if (let () (declare (not safe)) (##pair? _rest62616271_))
                (let ((_hd62666291_
                       (let () (declare (not safe)) (##car _rest62616271_)))
                      (_tl62676293_
                       (let () (declare (not safe)) (##cdr _rest62616271_))))
                  (let ((_k6296_ _hd62666291_))
                    (if (let () (declare (not safe)) (##pair? _tl62676293_))
                        (let ((_hd62686298_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl62676293_)))
                              (_tl62696300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl62676293_))))
                          (let* ((_v6303_ _hd62686298_)
                                 (_rest6305_ _tl62696300_))
                            (declare (not safe))
                            (_K62656288_ _rest6305_ _v6303_ _k6296_)))
                        (let () (declare (not safe)) (_else62636279_)))))
                (let () (declare (not safe)) (_else62636279_)))))))
    (define pget__0
      (lambda (_key6310_ _lst6311_)
        (let ((_default6313_ '#f))
          (declare (not safe))
          (pget__% _key6310_ _lst6311_ _default6313_))))
    (define pget
      (lambda _g8271_
        (let ((_g8270_ (let () (declare (not safe)) (##length _g8271_))))
          (cond ((let () (declare (not safe)) (##fx= _g8270_ 2))
                 (apply (lambda (_key6310_ _lst6311_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key6310_ _lst6311_)))
                        _g8271_))
                ((let () (declare (not safe)) (##fx= _g8270_ 3))
                 (apply (lambda (_key6315_ _lst6316_ _default6317_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key6315_ _lst6316_ _default6317_)))
                        _g8271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g8271_))))))
    (define find
      (lambda (_pred6242_ _lst6243_)
        (let ((_$e6245_
               (let () (declare (not safe)) (memf _pred6242_ _lst6243_))))
          (if _$e6245_ (car _$e6245_) '#f))))
    (define memf
      (lambda (_proc6202_ _lst6203_)
        (let _lp6205_ ((_rest6207_ _lst6203_))
          (let* ((_rest62086216_ _rest6207_)
                 (_else62106224_ (lambda () '#f))
                 (_K62126230_
                  (lambda (_tl6227_ _hd6228_)
                    (if (_proc6202_ _hd6228_)
                        _rest6207_
                        (let () (declare (not safe)) (_lp6205_ _tl6227_))))))
            (if (let () (declare (not safe)) (##pair? _rest62086216_))
                (let ((_hd62136233_
                       (let () (declare (not safe)) (##car _rest62086216_)))
                      (_tl62146235_
                       (let () (declare (not safe)) (##cdr _rest62086216_))))
                  (let* ((_hd6238_ _hd62136233_) (_tl6240_ _tl62146235_))
                    (declare (not safe))
                    (_K62126230_ _tl6240_ _hd6238_)))
                (let () (declare (not safe)) (_else62106224_)))))))
    (define remove1
      (lambda (_el6155_ _lst6157_)
        (let _lp6160_ ((_rest6163_ _lst6157_) (_r6165_ '()))
          (let* ((_rest61676175_ _rest6163_)
                 (_else61696183_ (lambda () _lst6157_))
                 (_K61716190_
                  (lambda (_rest6186_ _hd6187_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el6155_ _hd6187_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest6186_ _r6165_))
                        (let ((__tmp8272
                               (let ()
                                 (declare (not safe))
                                 (cons _hd6187_ _r6165_))))
                          (declare (not safe))
                          (_lp6160_ _rest6186_ __tmp8272))))))
            (if (let () (declare (not safe)) (##pair? _rest61676175_))
                (let ((_hd61726193_
                       (let () (declare (not safe)) (##car _rest61676175_)))
                      (_tl61736195_
                       (let () (declare (not safe)) (##cdr _rest61676175_))))
                  (let* ((_hd6198_ _hd61726193_) (_rest6200_ _tl61736195_))
                    (declare (not safe))
                    (_K61716190_ _rest6200_ _hd6198_)))
                (let () (declare (not safe)) (_else61696183_)))))))
    (define remv
      (lambda (_el6108_ _lst6110_)
        (let _lp6113_ ((_rest6116_ _lst6110_) (_r6118_ '()))
          (let* ((_rest61206128_ _rest6116_)
                 (_else61226136_ (lambda () _lst6110_))
                 (_K61246143_
                  (lambda (_rest6139_ _hd6140_)
                    (if (let () (declare (not safe)) (eqv? _el6108_ _hd6140_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest6139_ _r6118_))
                        (let ((__tmp8273
                               (let ()
                                 (declare (not safe))
                                 (cons _hd6140_ _r6118_))))
                          (declare (not safe))
                          (_lp6113_ _rest6139_ __tmp8273))))))
            (if (let () (declare (not safe)) (##pair? _rest61206128_))
                (let ((_hd61256146_
                       (let () (declare (not safe)) (##car _rest61206128_)))
                      (_tl61266148_
                       (let () (declare (not safe)) (##cdr _rest61206128_))))
                  (let* ((_hd6151_ _hd61256146_) (_rest6153_ _tl61266148_))
                    (declare (not safe))
                    (_K61246143_ _rest6153_ _hd6151_)))
                (let () (declare (not safe)) (_else61226136_)))))))
    (define remq
      (lambda (_el6061_ _lst6063_)
        (let _lp6066_ ((_rest6069_ _lst6063_) (_r6071_ '()))
          (let* ((_rest60736081_ _rest6069_)
                 (_else60756089_ (lambda () _lst6063_))
                 (_K60776096_
                  (lambda (_rest6092_ _hd6093_)
                    (if (let () (declare (not safe)) (eq? _el6061_ _hd6093_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest6092_ _r6071_))
                        (let ((__tmp8274
                               (let ()
                                 (declare (not safe))
                                 (cons _hd6093_ _r6071_))))
                          (declare (not safe))
                          (_lp6066_ _rest6092_ __tmp8274))))))
            (if (let () (declare (not safe)) (##pair? _rest60736081_))
                (let ((_hd60786099_
                       (let () (declare (not safe)) (##car _rest60736081_)))
                      (_tl60796101_
                       (let () (declare (not safe)) (##cdr _rest60736081_))))
                  (let* ((_hd6104_ _hd60786099_) (_rest6106_ _tl60796101_))
                    (declare (not safe))
                    (_K60776096_ _rest6106_ _hd6104_)))
                (let () (declare (not safe)) (_else60756089_)))))))
    (define remf
      (lambda (_proc6020_ _lst6021_)
        (let _lp6023_ ((_rest6025_ _lst6021_) (_r6026_ '()))
          (let* ((_rest60276035_ _rest6025_)
                 (_else60296043_ (lambda () _lst6021_))
                 (_K60316049_
                  (lambda (_rest6046_ _hd6047_)
                    (if (_proc6020_ _hd6047_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest6046_ _r6026_))
                        (let ((__tmp8275
                               (let ()
                                 (declare (not safe))
                                 (cons _hd6047_ _r6026_))))
                          (declare (not safe))
                          (_lp6023_ _rest6046_ __tmp8275))))))
            (if (let () (declare (not safe)) (##pair? _rest60276035_))
                (let ((_hd60326052_
                       (let () (declare (not safe)) (##car _rest60276035_)))
                      (_tl60336054_
                       (let () (declare (not safe)) (##cdr _rest60276035_))))
                  (let* ((_hd6057_ _hd60326052_) (_rest6059_ _tl60336054_))
                    (declare (not safe))
                    (_K60316049_ _rest6059_ _hd6057_)))
                (let () (declare (not safe)) (_else60296043_)))))))
    (define 1+ (lambda (_x6018_) (+ _x6018_ '1)))
    (define 1- (lambda (_x6016_) (- _x6016_ '1)))
    (define fx1+ (lambda (_x6014_) (fx+ _x6014_ '1)))
    (define fx1- (lambda (_x6012_) (fx- _x6012_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x6010_)
        (if (fixnum? _x6010_)
            (let () (declare (not safe)) (##fx>= _x6010_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x6008_)
        (if (fixnum? _x6008_)
            (let () (declare (not safe)) (##fx> _x6008_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x6006_) (let () (declare (not safe)) (eq? _x6006_ '0))))
    (define fx<0?
      (lambda (_x6004_)
        (if (fixnum? _x6004_)
            (let () (declare (not safe)) (##fx< _x6004_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x6002_)
        (if (fixnum? _x6002_)
            (let () (declare (not safe)) (##fx<= _x6002_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x6000_)
        (if (let () (declare (not safe)) (symbol? _x6000_))
            (let ((__tmp8276 (uninterned-symbol? _x6000_)))
              (declare (not safe))
              (not __tmp8276))
            '#f)))
    (define display-as-string
      (lambda (_x5972_ _port5973_)
        (if (or (let () (declare (not safe)) (string? _x5972_))
                (let () (declare (not safe)) (symbol? _x5972_))
                (keyword? _x5972_)
                (let () (declare (not safe)) (number? _x5972_))
                (let () (declare (not safe)) (char? _x5972_)))
            (display _x5972_ _port5973_)
            (if (let () (declare (not safe)) (pair? _x5972_))
                (begin
                  (let ((__tmp8277 (car _x5972_)))
                    (declare (not safe))
                    (display-as-string __tmp8277 _port5973_))
                  (let ((__tmp8278 (cdr _x5972_)))
                    (declare (not safe))
                    (display-as-string __tmp8278 _port5973_)))
                (if (let () (declare (not safe)) (vector? _x5972_))
                    (vector-for-each
                     (lambda (_g59865988_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g59865988_ _port5973_)))
                     _x5972_)
                    (if (or (let () (declare (not safe)) (null? _x5972_))
                            (let () (declare (not safe)) (eq? _x5972_ '#!void))
                            (let () (declare (not safe)) (eof-object? _x5972_))
                            (let () (declare (not safe)) (boolean? _x5972_)))
                        '#!void
                        (error '"cannot convert as string" _x5972_)))))))
    (define as-string__0
      (lambda (_x5960_)
        (if (let () (declare (not safe)) (string? _x5960_))
            _x5960_
            (if (let () (declare (not safe)) (symbol? _x5960_))
                (symbol->string _x5960_)
                (if (keyword? _x5960_)
                    (keyword->string _x5960_)
                    (call-with-output-string
                     '()
                     (lambda (_g59615963_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x5960_ _g59615963_)))))))))
    (define as-string__1
      (lambda _args5966_
        (call-with-output-string
         '()
         (lambda (_g59675969_)
           (let ()
             (declare (not safe))
             (display-as-string _args5966_ _g59675969_))))))
    (define as-string
      (lambda _g8280_
        (let ((_g8279_ (let () (declare (not safe)) (##length _g8280_))))
          (cond ((let () (declare (not safe)) (##fx= _g8279_ 1))
                 (apply (lambda (_x5960_)
                          (let () (declare (not safe)) (as-string__0 _x5960_)))
                        _g8280_))
                (#t (apply as-string__1 _g8280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g8280_))))))
    (define make-symbol__0
      (lambda (_x5956_)
        (if (interned-symbol? _x5956_)
            _x5956_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x5956_))))))
    (define make-symbol__1
      (lambda _args5958_ (string->symbol (apply as-string _args5958_))))
    (define make-symbol
      (lambda _g8282_
        (let ((_g8281_ (let () (declare (not safe)) (##length _g8282_))))
          (cond ((let () (declare (not safe)) (##fx= _g8281_ 1))
                 (apply (lambda (_x5956_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x5956_)))
                        _g8282_))
                (#t (apply make-symbol__1 _g8282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g8282_))))))
    (define make-keyword__0
      (lambda (_x5952_)
        (if (interned-keyword? _x5952_)
            _x5952_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x5952_))))))
    (define make-keyword__1
      (lambda _args5954_ (string->keyword (apply as-string _args5954_))))
    (define make-keyword
      (lambda _g8284_
        (let ((_g8283_ (let () (declare (not safe)) (##length _g8284_))))
          (cond ((let () (declare (not safe)) (##fx= _g8283_ 1))
                 (apply (lambda (_x5952_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x5952_)))
                        _g8284_))
                (#t (apply make-keyword__1 _g8284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g8284_))))))
    (define interned-keyword?
      (lambda (_x5950_)
        (if (keyword? _x5950_)
            (let ((__tmp8285 (uninterned-keyword? _x5950_)))
              (declare (not safe))
              (not __tmp8285))
            '#f)))
    (define symbol->keyword
      (lambda (_sym5948_)
        ((if (uninterned-symbol? _sym5948_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym5948_))))
    (define keyword->symbol
      (lambda (_kw5946_)
        ((if (uninterned-keyword? _kw5946_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw5946_))))
    (define bytes->string__%
      (lambda (_bstr5924_ _enc5925_)
        (if (let () (declare (not safe)) (eq? _enc5925_ 'UTF-8))
            (utf8->string _bstr5924_)
            (let* ((_in5927_
                    (open-input-u8vector
                     (let ((__tmp8286
                            (let ((__tmp8287
                                   (let ((__tmp8288
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr5924_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp8288))))
                              (declare (not safe))
                              (cons _enc5925_ __tmp8287))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp8286))))
                   (_len5929_ (u8vector-length _bstr5924_))
                   (_out5931_ (make-string _len5929_))
                   (_n5933_ (read-substring _out5931_ '0 _len5929_ _in5927_)))
              (string-shrink! _out5931_ _n5933_)
              _out5931_))))
    (define bytes->string__0
      (lambda (_bstr5939_)
        (let ((_enc5941_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr5939_ _enc5941_))))
    (define bytes->string
      (lambda _g8290_
        (let ((_g8289_ (let () (declare (not safe)) (##length _g8290_))))
          (cond ((let () (declare (not safe)) (##fx= _g8289_ 1))
                 (apply (lambda (_bstr5939_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr5939_)))
                        _g8290_))
                ((let () (declare (not safe)) (##fx= _g8289_ 2))
                 (apply (lambda (_bstr5943_ _enc5944_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr5943_ _enc5944_)))
                        _g8290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g8290_))))))
    (define string->bytes__%
      (lambda (_str5910_ _enc5911_)
        (if (let () (declare (not safe)) (eq? _enc5911_ 'UTF-8))
            (string->utf8 _str5910_)
            (substring->bytes
             _str5910_
             '0
             (string-length _str5910_)
             _enc5911_))))
    (define string->bytes__0
      (lambda (_str5916_)
        (let ((_enc5918_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str5916_ _enc5918_))))
    (define string->bytes
      (lambda _g8292_
        (let ((_g8291_ (let () (declare (not safe)) (##length _g8292_))))
          (cond ((let () (declare (not safe)) (##fx= _g8291_ 1))
                 (apply (lambda (_str5916_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str5916_)))
                        _g8292_))
                ((let () (declare (not safe)) (##fx= _g8291_ 2))
                 (apply (lambda (_str5920_ _enc5921_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str5920_ _enc5921_)))
                        _g8292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g8292_))))))
    (define substring->bytes__%
      (lambda (_str5888_ _start5889_ _end5890_ _enc5891_)
        (if (let () (declare (not safe)) (eq? _enc5891_ 'UTF-8))
            (string->utf8 _str5888_ _start5889_ _end5890_)
            (let ((_out5893_
                   (open-output-u8vector
                    (let ((__tmp8293
                           (let () (declare (not safe)) (cons _enc5891_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp8293)))))
              (write-substring _str5888_ _start5889_ _end5890_ _out5893_)
              (get-output-u8vector _out5893_)))))
    (define substring->bytes__0
      (lambda (_str5898_ _start5899_ _end5900_)
        (let ((_enc5902_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__% _str5898_ _start5899_ _end5900_ _enc5902_))))
    (define substring->bytes
      (lambda _g8295_
        (let ((_g8294_ (let () (declare (not safe)) (##length _g8295_))))
          (cond ((let () (declare (not safe)) (##fx= _g8294_ 3))
                 (apply (lambda (_str5898_ _start5899_ _end5900_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str5898_
                             _start5899_
                             _end5900_)))
                        _g8295_))
                ((let () (declare (not safe)) (##fx= _g8294_ 4))
                 (apply (lambda (_str5904_ _start5905_ _end5906_ _enc5907_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str5904_
                             _start5905_
                             _end5906_
                             _enc5907_)))
                        _g8295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g8295_))))))
    (define string-empty?
      (lambda (_str5885_)
        (let ((__tmp8296 (string-length _str5885_)))
          (declare (not safe))
          (##fxzero? __tmp8296))))
    (define string-prefix?
      (lambda (_prefix5875_ _str5876_)
        (let ((_str-len5878_ (string-length _str5876_))
              (_prefix-len5879_ (string-length _prefix5875_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len5879_ _str-len5878_))
              (let _lp5881_ ((_i5883_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i5883_ _prefix-len5879_))
                    (if (let ((__tmp8299
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str5876_ _i5883_)))
                              (__tmp8298
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix5875_ _i5883_))))
                          (declare (not safe))
                          (eq? __tmp8299 __tmp8298))
                        (let ((__tmp8297
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i5883_ '1))))
                          (declare (not safe))
                          (_lp5881_ __tmp8297))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str5853_ _char5854_ _start5855_)
        (let ((_len5857_ (string-length _str5853_)))
          (let _lp5859_ ((_k5861_ _start5855_))
            (if (let () (declare (not safe)) (##fx< _k5861_ _len5857_))
                (if (let ((__tmp8301
                           (let ()
                             (declare (not safe))
                             (##string-ref _str5853_ _k5861_))))
                      (declare (not safe))
                      (eq? _char5854_ __tmp8301))
                    _k5861_
                    (let ((__tmp8300
                           (let () (declare (not safe)) (##fx+ _k5861_ '1))))
                      (declare (not safe))
                      (_lp5859_ __tmp8300)))
                '#f)))))
    (define string-index__0
      (lambda (_str5866_ _char5867_)
        (let ((_start5869_ '0))
          (declare (not safe))
          (string-index__% _str5866_ _char5867_ _start5869_))))
    (define string-index
      (lambda _g8303_
        (let ((_g8302_ (let () (declare (not safe)) (##length _g8303_))))
          (cond ((let () (declare (not safe)) (##fx= _g8302_ 2))
                 (apply (lambda (_str5866_ _char5867_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str5866_ _char5867_)))
                        _g8303_))
                ((let () (declare (not safe)) (##fx= _g8302_ 3))
                 (apply (lambda (_str5871_ _char5872_ _start5873_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str5871_
                             _char5872_
                             _start5873_)))
                        _g8303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g8303_))))))
    (define string-rindex__%
      (lambda (_str5824_ _char5825_ _start5826_)
        (let* ((_len5828_ (string-length _str5824_))
               (_start5833_
                (let ((_$e5830_ _start5826_))
                  (if _$e5830_
                      _$e5830_
                      (let () (declare (not safe)) (##fx- _len5828_ '1))))))
          (let _lp5836_ ((_k5838_ _start5833_))
            (if (let () (declare (not safe)) (##fx>= _k5838_ '0))
                (if (let ((__tmp8305
                           (let ()
                             (declare (not safe))
                             (##string-ref _str5824_ _k5838_))))
                      (declare (not safe))
                      (eq? _char5825_ __tmp8305))
                    _k5838_
                    (let ((__tmp8304
                           (let () (declare (not safe)) (##fx- _k5838_ '1))))
                      (declare (not safe))
                      (_lp5836_ __tmp8304)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str5843_ _char5844_)
        (let ((_start5846_ '#f))
          (declare (not safe))
          (string-rindex__% _str5843_ _char5844_ _start5846_))))
    (define string-rindex
      (lambda _g8307_
        (let ((_g8306_ (let () (declare (not safe)) (##length _g8307_))))
          (cond ((let () (declare (not safe)) (##fx= _g8306_ 2))
                 (apply (lambda (_str5843_ _char5844_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str5843_ _char5844_)))
                        _g8307_))
                ((let () (declare (not safe)) (##fx= _g8306_ 3))
                 (apply (lambda (_str5848_ _char5849_ _start5850_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str5848_
                             _char5849_
                             _start5850_)))
                        _g8307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g8307_))))))
    (define string-split
      (lambda (_str5808_ _char5809_)
        (let ((_len5811_ (string-length _str5808_)))
          (let _lp5813_ ((_start5815_ '0) (_r5816_ '()))
            (let ((_$e5818_
                   (let ()
                     (declare (not safe))
                     (string-index _str5808_ _char5809_ _start5815_))))
              (if _$e5818_
                  ((lambda (_end5821_)
                     (let ((__tmp8311
                            (let () (declare (not safe)) (##fx+ _end5821_ '1)))
                           (__tmp8309
                            (let ((__tmp8310
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str5808_
                                      _start5815_
                                      _end5821_))))
                              (declare (not safe))
                              (cons __tmp8310 _r5816_))))
                       (declare (not safe))
                       (_lp5813_ __tmp8311 __tmp8309)))
                   _$e5818_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start5815_ _len5811_))
                      (let ((__tmp8308
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str5808_
                                      _start5815_
                                      _len5811_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp8308 _r5816_))
                      (reverse _r5816_))))))))
    (define string-join
      (lambda (_strs5713_ _join5714_)
        (letrec ((_join-length5716_
                  (lambda (_strs5767_ _jlen5768_)
                    (let _lp5770_ ((_rest5772_ _strs5767_) (_len5773_ '0))
                      (let* ((_rest57745782_ _rest5772_)
                             (_else57765790_ (lambda () '0))
                             (_K57785796_
                              (lambda (_rest5793_ _hd5794_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd5794_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest5793_))
                                        (let ((__tmp8313
                                               (let ((__tmp8314
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd5794_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp8314
                                                        _jlen5768_
                                                        _len5773_))))
                                          (declare (not safe))
                                          (_lp5770_ _rest5793_ __tmp8313))
                                        (let ((__tmp8312
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd5794_))))
                                          (declare (not safe))
                                          (##fx+ __tmp8312 _len5773_)))
                                    (error '"expected string" _hd5794_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest57745782_))
                            (let ((_hd57795799_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest57745782_)))
                                  (_tl57805801_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest57745782_))))
                              (let* ((_hd5804_ _hd57795799_)
                                     (_rest5806_ _tl57805801_))
                                (declare (not safe))
                                (_K57785796_ _rest5806_ _hd5804_)))
                            (let ()
                              (declare (not safe))
                              (_else57765790_))))))))
          (let* ((_join5718_
                  (if (let () (declare (not safe)) (char? _join5714_))
                      (string _join5714_)
                      (if (let () (declare (not safe)) (string? _join5714_))
                          _join5714_
                          (error '"expected string or char" _join5714_))))
                 (_jlen5720_
                  (let () (declare (not safe)) (##string-length _join5718_)))
                 (_olen5722_
                  (let ()
                    (declare (not safe))
                    (_join-length5716_ _strs5713_ _jlen5720_)))
                 (_ostr5724_ (make-string _olen5722_)))
            (let _lp5727_ ((_rest5729_ _strs5713_) (_k5730_ '0))
              (let* ((_rest57315739_ _rest5729_)
                     (_else57335747_ (lambda () '""))
                     (_K57355755_
                      (lambda (_rest5750_ _hd5751_)
                        (let ((_hdlen5753_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd5751_))))
                          (if (let () (declare (not safe)) (pair? _rest5750_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd5751_
                                   '0
                                   _hdlen5753_
                                   _ostr5724_
                                   _k5730_))
                                (let ((__tmp8315
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k5730_ _hdlen5753_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join5718_
                                   '0
                                   _jlen5720_
                                   _ostr5724_
                                   __tmp8315))
                                (let ((__tmp8316
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k5730_
                                                _hdlen5753_
                                                _jlen5720_))))
                                  (declare (not safe))
                                  (_lp5727_ _rest5750_ __tmp8316)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd5751_
                                   '0
                                   _hdlen5753_
                                   _ostr5724_
                                   _k5730_))
                                _ostr5724_))))))
                (if (let () (declare (not safe)) (##pair? _rest57315739_))
                    (let ((_hd57365758_
                           (let ()
                             (declare (not safe))
                             (##car _rest57315739_)))
                          (_tl57375760_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest57315739_))))
                      (let* ((_hd5763_ _hd57365758_) (_rest5765_ _tl57375760_))
                        (declare (not safe))
                        (_K57355755_ _rest5765_ _hd5763_)))
                    (let () (declare (not safe)) (_else57335747_)))))))))
    (define read-u8vector
      (lambda (_bytes5710_ _port5711_)
        (read-subu8vector
         _bytes5710_
         '0
         (u8vector-length _bytes5710_)
         _port5711_)))
    (define write-u8vector
      (lambda (_bytes5707_ _port5708_)
        (write-subu8vector
         _bytes5707_
         '0
         (u8vector-length _bytes5707_)
         _port5708_)))
    (define read-string
      (lambda (_str5704_ _port5705_)
        (read-substring _str5704_ '0 (string-length _str5704_) _port5705_)))
    (define write-string
      (lambda (_str5701_ _port5702_)
        (write-substring _str5701_ '0 (string-length _str5701_) _port5702_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag5672_
               _dbg-exprs5673_
               _dbg-thunks5674_
               _expr5675_
               _thunk5676_)
        (letrec ((_fo5678_
                  (lambda ()
                    (force-output (current-error-port))
                    (force-output (current-output-port))))
                 (_d5679_ (lambda (_x5687_)
                            (display _x5687_ (current-error-port))))
                 (_p5680_ (DBG-printer))
                 (_w5681_ (lambda (_x5689_)
                            (_p5680_ _x5689_ (current-error-port))))
                 (_n5682_ (lambda () (newline (current-error-port))))
                 (_v5683_ (lambda (_l5692_)
                            (for-each
                             (lambda (_x5694_)
                               (let () (declare (not safe)) (_d5679_ '" "))
                               (let () (declare (not safe)) (_w5681_ _x5694_)))
                             _l5692_)
                            (let () (declare (not safe)) (_n5682_))))
                 (_x5684_ (lambda (_expr5696_ _thunk5697_)
                            (let () (declare (not safe)) (_d5679_ '"  "))
                            (let () (declare (not safe)) (_w5681_ _expr5696_))
                            (let () (declare (not safe)) (_d5679_ '" =>"))
                            (call-with-values
                             _thunk5697_
                             (lambda _x5699_
                               (let () (declare (not safe)) (_v5683_ _x5699_))
                               (apply values _x5699_))))))
          (if _tag5672_
              (begin
                (if (let () (declare (not safe)) (eq? _tag5672_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_d5679_ _tag5672_))
                      (let () (declare (not safe)) (_n5682_))))
                (for-each _x5684_ _dbg-exprs5673_ _dbg-thunks5674_)
                (if _thunk5676_
                    (let ()
                      (declare (not safe))
                      (_x5684_ _expr5675_ _thunk5676_))
                    '#!void))
              (if _thunk5676_ (_thunk5676_) '#!void)))))))
