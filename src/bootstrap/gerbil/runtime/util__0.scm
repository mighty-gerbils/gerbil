(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1697117311)
  (begin
    (define displayln
      (lambda _args6423_
        (let _lp6425_ ((_rest6427_ _args6423_))
          (let* ((_rest64286436_ _rest6427_)
                 (_else64306444_ (lambda () (newline)))
                 (_K64326450_
                  (lambda (_rest6447_ _hd6448_)
                    (display _hd6448_)
                    (let () (declare (not safe)) (_lp6425_ _rest6447_)))))
            (if (let () (declare (not safe)) (##pair? _rest64286436_))
                (let ((_hd64336453_
                       (let () (declare (not safe)) (##car _rest64286436_)))
                      (_tl64346455_
                       (let () (declare (not safe)) (##cdr _rest64286436_))))
                  (let* ((_hd6458_ _hd64336453_) (_rest6460_ _tl64346455_))
                    (declare (not safe))
                    (_K64326450_ _rest6460_ _hd6458_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args6421_ (for-each display _args6421_)))
    (define file-newer?
      (lambda (_file16414_ _file26415_)
        (letrec ((_modification-time6417_
                  (lambda (_file6419_)
                    (let ((__tmp8571
                           (file-info-last-modification-time
                            (file-info _file6419_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp8571)))))
          (let ((__tmp8573
                 (let ()
                   (declare (not safe))
                   (_modification-time6417_ _file16414_)))
                (__tmp8572
                 (let ()
                   (declare (not safe))
                   (_modification-time6417_ _file26415_))))
            (declare (not safe))
            (##fl> __tmp8573 __tmp8572)))))
    (define create-directory*__%
      (lambda (_dir6388_ _perms6389_)
        (letrec ((_create16391_
                  (lambda (_path6402_)
                    (if (file-exists? _path6402_)
                        (if (let ((__tmp8574 (file-type _path6402_)))
                              (declare (not safe))
                              (eq? __tmp8574 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path6402_))
                        (if _perms6389_
                            (create-directory
                             (list 'path:
                                   _path6402_
                                   'permissions:
                                   _perms6389_))
                            (create-directory _path6402_))))))
          (if (file-exists? _dir6388_)
              '#!void
              (let _lp6393_ ((_start6395_ '0))
                (let ((_$e6397_
                       (let ()
                         (declare (not safe))
                         (string-index _dir6388_ '#\/ _start6395_))))
                  (if _$e6397_
                      ((lambda (_x6400_)
                         (if (let () (declare (not safe)) (##fx> _x6400_ '0))
                             (let ((__tmp8575
                                    (substring _dir6388_ '0 _x6400_)))
                               (declare (not safe))
                               (_create16391_ __tmp8575))
                             '#!void)
                         (let ((__tmp8576
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x6400_ '1))))
                           (declare (not safe))
                           (_lp6393_ __tmp8576)))
                       _$e6397_)
                      (let ()
                        (declare (not safe))
                        (_create16391_ _dir6388_)))))))))
    (define create-directory*__0
      (lambda (_dir6407_)
        (let ((_perms6409_ '493))
          (declare (not safe))
          (create-directory*__% _dir6407_ _perms6409_))))
    (define create-directory*
      (lambda _g8578_
        (let ((_g8577_ (let () (declare (not safe)) (##length _g8578_))))
          (cond ((let () (declare (not safe)) (##fx= _g8577_ 1))
                 (apply (lambda (_dir6407_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir6407_)))
                        _g8578_))
                ((let () (declare (not safe)) (##fx= _g8577_ 2))
                 (apply (lambda (_dir6411_ _perms6412_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir6411_ _perms6412_)))
                        _g8578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g8578_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g8579_ '#t))
    (define true?
      (lambda (_obj6384_) (let () (declare (not safe)) (eq? _obj6384_ '#t))))
    (define false (lambda _g8580_ '#f))
    (define void (lambda _g8581_ '#!void))
    (define void?
      (lambda (_obj6380_)
        (let () (declare (not safe)) (eq? _obj6380_ '#!void))))
    (define eof-object (lambda _g8582_ '#!eof))
    (define identity (lambda (_obj6377_) _obj6377_))
    (define dssl-object?
      (lambda (_obj6375_)
        (if (memq _obj6375_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj6373_)
        (let () (declare (not safe)) (eq? _obj6373_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj6371_)
        (let () (declare (not safe)) (eq? _obj6371_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj6369_)
        (let () (declare (not safe)) (eq? _obj6369_ '#!optional))))
    (define immediate?
      (lambda (_obj6365_)
        (let* ((_t6367_ (let () (declare (not safe)) (##type _obj6365_)))
               (__tmp8583 (let () (declare (not safe)) (##fxand _t6367_ '1))))
          (declare (not safe))
          (##fxzero? __tmp8583))))
    (define nonnegative-fixnum?
      (lambda (_obj6363_)
        (if (fixnum? _obj6363_)
            (let ((__tmp8584 (fxnegative? _obj6363_)))
              (declare (not safe))
              (not __tmp8584))
            '#f)))
    (define values-count
      (lambda (_obj6361_)
        (if (let () (declare (not safe)) (##values? _obj6361_))
            (let () (declare (not safe)) (##vector-length _obj6361_))
            '1)))
    (define values-ref
      (lambda (_obj6358_ _k6359_)
        (if (let () (declare (not safe)) (##values? _obj6358_))
            (let () (declare (not safe)) (##vector-ref _obj6358_ _k6359_))
            _obj6358_)))
    (define values->list
      (lambda (_obj6356_)
        (if (let () (declare (not safe)) (##values? _obj6356_))
            (let () (declare (not safe)) (##vector->list _obj6356_))
            (list _obj6356_))))
    (define subvector->list__%
      (lambda (_obj6341_ _start6342_)
        (let ((_lst6344_
               (let () (declare (not safe)) (##vector->list _obj6341_))))
          (list-tail _lst6344_ _start6342_))))
    (define subvector->list__0
      (lambda (_obj6349_)
        (let ((_start6351_ '0))
          (declare (not safe))
          (subvector->list__% _obj6349_ _start6351_))))
    (define subvector->list
      (lambda _g8586_
        (let ((_g8585_ (let () (declare (not safe)) (##length _g8586_))))
          (cond ((let () (declare (not safe)) (##fx= _g8585_ 1))
                 (apply (lambda (_obj6349_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj6349_)))
                        _g8586_))
                ((let () (declare (not safe)) (##fx= _g8585_ 2))
                 (apply (lambda (_obj6353_ _start6354_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj6353_ _start6354_)))
                        _g8586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g8586_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args6338_ (apply make-table 'test: eq? _args6338_)))
    (define make-hash-table-eqv
      (lambda _args6336_ (apply make-table 'test: eqv? _args6336_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst6333_ . _args6334_)
        (apply list->table _lst6333_ 'test: eq? _args6334_)))
    (define list->hash-table-eqv
      (lambda (_lst6330_ . _args6331_)
        (apply list->table _lst6330_ 'test: eqv? _args6331_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht6327_ _k6328_) (table-ref _ht6327_ _k6328_ '#f)))
    (define hash-put!
      (lambda (_ht6323_ _k6324_ _v6325_)
        (table-set! _ht6323_ _k6324_ _v6325_)))
    (define hash-update!__%
      (lambda (_ht6302_ _k6303_ _update6304_ _default6305_)
        (let* ((_value6307_
                (let ()
                  (declare (not safe))
                  (table-ref _ht6302_ _k6303_ _default6305_)))
               (__tmp8587 (_update6304_ _value6307_)))
          (declare (not safe))
          (table-set! _ht6302_ _k6303_ __tmp8587))))
    (define hash-update!__0
      (lambda (_ht6312_ _k6313_ _update6314_)
        (let ((_default6316_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht6312_ _k6313_ _update6314_ _default6316_))))
    (define hash-update!
      (lambda _g8589_
        (let ((_g8588_ (let () (declare (not safe)) (##length _g8589_))))
          (cond ((let () (declare (not safe)) (##fx= _g8588_ 3))
                 (apply (lambda (_ht6312_ _k6313_ _update6314_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0 _ht6312_ _k6313_ _update6314_)))
                        _g8589_))
                ((let () (declare (not safe)) (##fx= _g8588_ 4))
                 (apply (lambda (_ht6318_ _k6319_ _update6320_ _default6321_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht6318_
                             _k6319_
                             _update6320_
                             _default6321_)))
                        _g8589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g8589_))))))
    (define hash-remove!
      (lambda (_ht6298_ _k6299_) (table-set! _ht6298_ _k6299_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht6296_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht6296_))))
    (define plist->hash-table__%
      (lambda (_plst6231_ _ht6232_)
        (let _lp6234_ ((_rest6236_ _plst6231_))
          (let* ((_rest62376248_ _rest6236_)
                 (_E62406252_
                  (lambda () (error '"No clause matching" _rest62376248_))))
            (let ((_K62426267_
                   (lambda (_rest6263_ _v6264_ _k6265_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht6232_ _k6265_ _v6264_))
                     (let () (declare (not safe)) (_lp6234_ _rest6263_))))
                  (_K62416257_ (lambda () _ht6232_)))
              (let ((_try-match62396260_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest62376248_ '()))
                           (let () (declare (not safe)) (_K62416257_))
                           (let () (declare (not safe)) (_E62406252_))))))
                (if (let () (declare (not safe)) (##pair? _rest62376248_))
                    (let ((_tl62446272_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest62376248_)))
                          (_hd62436270_
                           (let ()
                             (declare (not safe))
                             (##car _rest62376248_))))
                      (if (let () (declare (not safe)) (##pair? _tl62446272_))
                          (let ((_tl62466279_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl62446272_)))
                                (_hd62456277_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl62446272_))))
                            (let ((_k6275_ _hd62436270_)
                                  (_v6282_ _hd62456277_)
                                  (_rest6284_ _tl62466279_))
                              (let ()
                                (declare (not safe))
                                (_K62426267_ _rest6284_ _v6282_ _k6275_))))
                          (let () (declare (not safe)) (_try-match62396260_))))
                    (let () (declare (not safe)) (_try-match62396260_)))))))))
    (define plist->hash-table__0
      (lambda (_plst6289_)
        (let ((_ht6291_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst6289_ _ht6291_))))
    (define plist->hash-table
      (lambda _g8591_
        (let ((_g8590_ (let () (declare (not safe)) (##length _g8591_))))
          (cond ((let () (declare (not safe)) (##fx= _g8590_ 1))
                 (apply (lambda (_plst6289_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst6289_)))
                        _g8591_))
                ((let () (declare (not safe)) (##fx= _g8590_ 2))
                 (apply (lambda (_plst6293_ _ht6294_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst6293_ _ht6294_)))
                        _g8591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g8591_))))))
    (define plist->hash-table-eq
      (lambda (_plst6228_)
        (let ((__tmp8592
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst6228_ __tmp8592))))
    (define plist->hash-table-eqv
      (lambda (_plst6226_)
        (let ((__tmp8593
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst6226_ __tmp8593))))
    (define hash-key?
      (lambda (_ht6223_ _k6224_)
        (let ((__tmp8594
               (let ((__tmp8595
                      (let ()
                        (declare (not safe))
                        (table-ref _ht6223_ _k6224_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp8595 absent-value))))
          (declare (not safe))
          (not __tmp8594))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun6216_ _ht6217_)
        (let ((__tmp8596
               (lambda (_k6219_ _v6220_ _r6221_)
                 (let ((__tmp8597 (_fun6216_ _k6219_ _v6220_)))
                   (declare (not safe))
                   (cons __tmp8597 _r6221_)))))
          (declare (not safe))
          (hash-fold __tmp8596 '() _ht6217_))))
    (define hash-fold
      (lambda (_fun6207_ _iv6208_ _ht6209_)
        (let ((_ret6211_ _iv6208_))
          (let ((__tmp8598
                 (lambda (_k6213_ _v6214_)
                   (set! _ret6211_ (_fun6207_ _k6213_ _v6214_ _ret6211_)))))
            (declare (not safe))
            (table-for-each __tmp8598 _ht6209_))
          _ret6211_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht6202_)
        (let ((__tmp8599 (lambda (_k6204_ _v6205_) _k6204_)))
          (declare (not safe))
          (hash-map __tmp8599 _ht6202_))))
    (define hash-values
      (lambda (_ht6197_)
        (let ((__tmp8600 (lambda (_k6199_ _v6200_) _v6200_)))
          (declare (not safe))
          (hash-map __tmp8600 _ht6197_))))
    (define hash-copy
      (lambda (_hd6192_ . _rest6193_)
        (let ((_hd6195_ (table-copy _hd6192_)))
          (if (let () (declare (not safe)) (null? _rest6193_))
              _hd6195_
              (apply hash-copy! _hd6195_ _rest6193_)))))
    (define hash-copy!
      (lambda (_hd6187_ . _rest6188_)
        (for-each
         (lambda (_r6190_) (table-merge! _hd6187_ _r6190_))
         _rest6188_)
        _hd6187_))
    (define hash-merge
      (lambda (_hd6181_ . _rest6182_)
        (let ((__tmp8601
               (lambda (_tab6184_ _r6185_) (table-merge _r6185_ _tab6184_))))
          (declare (not safe))
          (foldl1 __tmp8601 _hd6181_ _rest6182_))))
    (define hash-merge!
      (lambda (_hd6175_ . _rest6176_)
        (let ((__tmp8602
               (lambda (_tab6178_ _r6179_) (table-merge! _r6179_ _tab6178_))))
          (declare (not safe))
          (foldl1 __tmp8602 _hd6175_ _rest6176_))))
    (define hash-clear!__%
      (lambda (_ht6160_ _size6161_)
        (let ((_gcht6163_
               (let () (declare (not safe)) (##vector-ref _ht6160_ '5))))
          (if (let ((__tmp8603 (fixnum? _gcht6163_)))
                (declare (not safe))
                (not __tmp8603))
              (let ()
                (declare (not safe))
                (##vector-set! _ht6160_ '5 _size6161_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht6168_)
        (let ((_size6170_ '0))
          (declare (not safe))
          (hash-clear!__% _ht6168_ _size6170_))))
    (define hash-clear!
      (lambda _g8605_
        (let ((_g8604_ (let () (declare (not safe)) (##length _g8605_))))
          (cond ((let () (declare (not safe)) (##fx= _g8604_ 1))
                 (apply (lambda (_ht6168_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht6168_)))
                        _g8605_))
                ((let () (declare (not safe)) (##fx= _g8604_ 2))
                 (apply (lambda (_ht6172_ _size6173_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht6172_ _size6173_)))
                        _g8605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g8605_))))))
    (define make-list__%
      (lambda (_k6141_ _val6142_)
        (if (fixnum? _k6141_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k6141_))
        (let _lp6144_ ((_n6146_ '0) (_r6147_ '()))
          (if (let () (declare (not safe)) (##fx< _n6146_ _k6141_))
              (let ((__tmp8607
                     (let () (declare (not safe)) (##fx+ _n6146_ '1)))
                    (__tmp8606
                     (let () (declare (not safe)) (cons _val6142_ _r6147_))))
                (declare (not safe))
                (_lp6144_ __tmp8607 __tmp8606))
              _r6147_))))
    (define make-list__0
      (lambda (_k6152_)
        (let ((_val6154_ '#f))
          (declare (not safe))
          (make-list__% _k6152_ _val6154_))))
    (define make-list
      (lambda _g8609_
        (let ((_g8608_ (let () (declare (not safe)) (##length _g8609_))))
          (cond ((let () (declare (not safe)) (##fx= _g8608_ 1))
                 (apply (lambda (_k6152_)
                          (let () (declare (not safe)) (make-list__0 _k6152_)))
                        _g8609_))
                ((let () (declare (not safe)) (##fx= _g8608_ 2))
                 (apply (lambda (_k6156_ _val6157_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k6156_ _val6157_)))
                        _g8609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g8609_))))))
    (define cons*
      (lambda (_x6131_ _y6132_ . _rest6133_)
        (letrec ((_recur6135_
                  (lambda (_x6137_ _rest6138_)
                    (if (let () (declare (not safe)) (pair? _rest6138_))
                        (let ((__tmp8610
                               (let ((__tmp8612
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6138_)))
                                     (__tmp8611
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6138_))))
                                 (declare (not safe))
                                 (_recur6135_ __tmp8612 __tmp8611))))
                          (declare (not safe))
                          (cons _x6137_ __tmp8610))
                        _x6137_))))
          (let ((__tmp8613
                 (let ()
                   (declare (not safe))
                   (_recur6135_ _y6132_ _rest6133_))))
            (declare (not safe))
            (cons _x6131_ __tmp8613)))))
    (define foldl1
      (lambda (_f6089_ _iv6090_ _lst6091_)
        (let _lp6093_ ((_rest6095_ _lst6091_) (_r6096_ _iv6090_))
          (let* ((_rest60976105_ _rest6095_)
                 (_else60996113_ (lambda () _r6096_))
                 (_K61016119_
                  (lambda (_rest6116_ _x6117_)
                    (let ((__tmp8614 (_f6089_ _x6117_ _r6096_)))
                      (declare (not safe))
                      (_lp6093_ _rest6116_ __tmp8614)))))
            (if (let () (declare (not safe)) (##pair? _rest60976105_))
                (let ((_hd61026122_
                       (let () (declare (not safe)) (##car _rest60976105_)))
                      (_tl61036124_
                       (let () (declare (not safe)) (##cdr _rest60976105_))))
                  (let* ((_x6127_ _hd61026122_) (_rest6129_ _tl61036124_))
                    (declare (not safe))
                    (_K61016119_ _rest6129_ _x6127_)))
                (let () (declare (not safe)) (_else60996113_)))))))
    (define foldl2
      (lambda (_f6012_ _iv6013_ _lst16014_ _lst26015_)
        (let _lp6017_ ((_rest16019_ _lst16014_)
                       (_rest26020_ _lst26015_)
                       (_r6021_ _iv6013_))
          (let* ((_rest160226030_ _rest16019_)
                 (_else60246038_ (lambda () _r6021_))
                 (_K60266077_
                  (lambda (_rest16041_ _x16042_)
                    (let* ((_rest260436051_ _rest26020_)
                           (_else60456059_ (lambda () _r6021_))
                           (_K60476065_
                            (lambda (_rest26062_ _x26063_)
                              (let ((__tmp8615
                                     (_f6012_ _x16042_ _x26063_ _r6021_)))
                                (declare (not safe))
                                (_lp6017_
                                 _rest16041_
                                 _rest26062_
                                 __tmp8615)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest260436051_))
                          (let ((_hd60486068_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest260436051_)))
                                (_tl60496070_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest260436051_))))
                            (let* ((_x26073_ _hd60486068_)
                                   (_rest26075_ _tl60496070_))
                              (declare (not safe))
                              (_K60476065_ _rest26075_ _x26073_)))
                          (let () (declare (not safe)) (_else60456059_)))))))
            (if (let () (declare (not safe)) (##pair? _rest160226030_))
                (let ((_hd60276080_
                       (let () (declare (not safe)) (##car _rest160226030_)))
                      (_tl60286082_
                       (let () (declare (not safe)) (##cdr _rest160226030_))))
                  (let* ((_x16085_ _hd60276080_) (_rest16087_ _tl60286082_))
                    (declare (not safe))
                    (_K60266077_ _rest16087_ _x16085_)))
                (let () (declare (not safe)) (_else60246038_)))))))
    (define foldl
      (lambda _g8617_
        (let ((_g8616_ (let () (declare (not safe)) (##length _g8617_))))
          (cond ((let () (declare (not safe)) (##fx= _g8616_ 3))
                 (apply (lambda (_f5997_ _iv5998_ _lst5999_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f5997_ _iv5998_ _lst5999_)))
                        _g8617_))
                ((let () (declare (not safe)) (##fx= _g8616_ 4))
                 (apply (lambda (_f6001_ _iv6002_ _lst16003_ _lst26004_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f6001_ _iv6002_ _lst16003_ _lst26004_)))
                        _g8617_))
                ((let () (declare (not safe)) (##fx>= _g8616_ 4))
                 (apply foldl* _g8617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g8617_))))))
    (define foldl*
      (lambda (_f5985_ _iv5986_ . _rest5987_)
        (let _recur5989_ ((_iv5991_ _iv5986_) (_rest5992_ _rest5987_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5992_))
              (let ((__tmp8619
                     (apply _f5985_
                            (let ((__tmp8621
                                   (lambda (_xs5994_ _r5995_)
                                     (let ((__tmp8622 (car _xs5994_)))
                                       (declare (not safe))
                                       (cons __tmp8622 _r5995_))))
                                  (__tmp8620 (list _iv5991_)))
                              (declare (not safe))
                              (foldr1 __tmp8621 __tmp8620 _rest5992_))))
                    (__tmp8618 (map cdr _rest5992_)))
                (declare (not safe))
                (_recur5989_ __tmp8619 __tmp8618))
              _iv5991_))))
    (define foldr1
      (lambda (_f5944_ _iv5945_ _lst5946_)
        (let _recur5948_ ((_rest5950_ _lst5946_))
          (let* ((_rest59515959_ _rest5950_)
                 (_else59535967_ (lambda () _iv5945_))
                 (_K59555973_
                  (lambda (_rest5970_ _x5971_)
                    (_f5944_ _x5971_
                             (let ()
                               (declare (not safe))
                               (_recur5948_ _rest5970_))))))
            (if (let () (declare (not safe)) (##pair? _rest59515959_))
                (let ((_hd59565976_
                       (let () (declare (not safe)) (##car _rest59515959_)))
                      (_tl59575978_
                       (let () (declare (not safe)) (##cdr _rest59515959_))))
                  (let* ((_x5981_ _hd59565976_) (_rest5983_ _tl59575978_))
                    (declare (not safe))
                    (_K59555973_ _rest5983_ _x5981_)))
                (let () (declare (not safe)) (_else59535967_)))))))
    (define foldr2
      (lambda (_f5868_ _iv5869_ _lst15870_ _lst25871_)
        (let _recur5873_ ((_rest15875_ _lst15870_) (_rest25876_ _lst25871_))
          (let* ((_rest158775885_ _rest15875_)
                 (_else58795893_ (lambda () _iv5869_))
                 (_K58815932_
                  (lambda (_rest15896_ _x15897_)
                    (let* ((_rest258985906_ _rest25876_)
                           (_else59005914_ (lambda () _iv5869_))
                           (_K59025920_
                            (lambda (_rest25917_ _x25918_)
                              (_f5868_ _x15897_
                                       _x25918_
                                       (let ()
                                         (declare (not safe))
                                         (_recur5873_
                                          _rest15896_
                                          _rest25917_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest258985906_))
                          (let ((_hd59035923_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest258985906_)))
                                (_tl59045925_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest258985906_))))
                            (let* ((_x25928_ _hd59035923_)
                                   (_rest25930_ _tl59045925_))
                              (declare (not safe))
                              (_K59025920_ _rest25930_ _x25928_)))
                          (let () (declare (not safe)) (_else59005914_)))))))
            (if (let () (declare (not safe)) (##pair? _rest158775885_))
                (let ((_hd58825935_
                       (let () (declare (not safe)) (##car _rest158775885_)))
                      (_tl58835937_
                       (let () (declare (not safe)) (##cdr _rest158775885_))))
                  (let* ((_x15940_ _hd58825935_) (_rest15942_ _tl58835937_))
                    (declare (not safe))
                    (_K58815932_ _rest15942_ _x15940_)))
                (let () (declare (not safe)) (_else58795893_)))))))
    (define foldr
      (lambda _g8624_
        (let ((_g8623_ (let () (declare (not safe)) (##length _g8624_))))
          (cond ((let () (declare (not safe)) (##fx= _g8623_ 3))
                 (apply (lambda (_f5853_ _iv5854_ _lst5855_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f5853_ _iv5854_ _lst5855_)))
                        _g8624_))
                ((let () (declare (not safe)) (##fx= _g8623_ 4))
                 (apply (lambda (_f5857_ _iv5858_ _lst15859_ _lst25860_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f5857_ _iv5858_ _lst15859_ _lst25860_)))
                        _g8624_))
                ((let () (declare (not safe)) (##fx>= _g8623_ 4))
                 (apply foldr* _g8624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g8624_))))))
    (define foldr*
      (lambda (_f5842_ _iv5843_ . _rest5844_)
        (let _recur5846_ ((_rest5848_ _rest5844_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5848_))
              (apply _f5842_
                     (let ((__tmp8627
                            (lambda (_xs5850_ _r5851_)
                              (let ((__tmp8628 (car _xs5850_)))
                                (declare (not safe))
                                (cons __tmp8628 _r5851_))))
                           (__tmp8625
                            (list (let ((__tmp8626 (map cdr _rest5848_)))
                                    (declare (not safe))
                                    (_recur5846_ __tmp8626)))))
                       (declare (not safe))
                       (foldr1 __tmp8627 __tmp8625 _rest5848_)))
              _iv5843_))))
    (define andmap1
      (lambda (_f5802_ _lst5803_)
        (let _lp5805_ ((_rest5807_ _lst5803_))
          (let* ((_rest58085816_ _rest5807_)
                 (_else58105824_ (lambda () '#t))
                 (_K58125830_
                  (lambda (_rest5827_ _x5828_)
                    (if (_f5802_ _x5828_)
                        (let () (declare (not safe)) (_lp5805_ _rest5827_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest58085816_))
                (let ((_hd58135833_
                       (let () (declare (not safe)) (##car _rest58085816_)))
                      (_tl58145835_
                       (let () (declare (not safe)) (##cdr _rest58085816_))))
                  (let* ((_x5838_ _hd58135833_) (_rest5840_ _tl58145835_))
                    (declare (not safe))
                    (_K58125830_ _rest5840_ _x5838_)))
                (let () (declare (not safe)) (_else58105824_)))))))
    (define andmap2
      (lambda (_f5727_ _lst15728_ _lst25729_)
        (let _lp5731_ ((_rest15733_ _lst15728_) (_rest25734_ _lst25729_))
          (let* ((_rest157355743_ _rest15733_)
                 (_else57375751_ (lambda () '#t))
                 (_K57395790_
                  (lambda (_rest15754_ _x15755_)
                    (let* ((_rest257565764_ _rest25734_)
                           (_else57585772_ (lambda () '#t))
                           (_K57605778_
                            (lambda (_rest25775_ _x25776_)
                              (if (_f5727_ _x15755_ _x25776_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp5731_ _rest15754_ _rest25775_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest257565764_))
                          (let ((_hd57615781_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest257565764_)))
                                (_tl57625783_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest257565764_))))
                            (let* ((_x25786_ _hd57615781_)
                                   (_rest25788_ _tl57625783_))
                              (declare (not safe))
                              (_K57605778_ _rest25788_ _x25786_)))
                          (let () (declare (not safe)) (_else57585772_)))))))
            (if (let () (declare (not safe)) (##pair? _rest157355743_))
                (let ((_hd57405793_
                       (let () (declare (not safe)) (##car _rest157355743_)))
                      (_tl57415795_
                       (let () (declare (not safe)) (##cdr _rest157355743_))))
                  (let* ((_x15798_ _hd57405793_) (_rest15800_ _tl57415795_))
                    (declare (not safe))
                    (_K57395790_ _rest15800_ _x15798_)))
                (let () (declare (not safe)) (_else57375751_)))))))
    (define andmap
      (lambda _g8630_
        (let ((_g8629_ (let () (declare (not safe)) (##length _g8630_))))
          (cond ((let () (declare (not safe)) (##fx= _g8629_ 2))
                 (apply (lambda (_f5715_ _lst5716_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f5715_ _lst5716_)))
                        _g8630_))
                ((let () (declare (not safe)) (##fx= _g8629_ 3))
                 (apply (lambda (_f5718_ _lst15719_ _lst25720_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f5718_ _lst15719_ _lst25720_)))
                        _g8630_))
                ((let () (declare (not safe)) (##fx>= _g8629_ 3))
                 (apply andmap* _g8630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g8630_))))))
    (define andmap*
      (lambda (_f5708_ . _rest5709_)
        (let _recur5711_ ((_rest5713_ _rest5709_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5713_))
              (if (apply _f5708_ (map car _rest5713_))
                  (let ((__tmp8631 (map cdr _rest5713_)))
                    (declare (not safe))
                    (_recur5711_ __tmp8631))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f5665_ _lst5666_)
        (let _lp5668_ ((_rest5670_ _lst5666_))
          (let* ((_rest56715679_ _rest5670_)
                 (_else56735687_ (lambda () '#f))
                 (_K56755696_
                  (lambda (_rest5690_ _x5691_)
                    (let ((_$e5693_ (_f5665_ _x5691_)))
                      (if _$e5693_
                          _$e5693_
                          (let ()
                            (declare (not safe))
                            (_lp5668_ _rest5690_)))))))
            (if (let () (declare (not safe)) (##pair? _rest56715679_))
                (let ((_hd56765699_
                       (let () (declare (not safe)) (##car _rest56715679_)))
                      (_tl56775701_
                       (let () (declare (not safe)) (##cdr _rest56715679_))))
                  (let* ((_x5704_ _hd56765699_) (_rest5706_ _tl56775701_))
                    (declare (not safe))
                    (_K56755696_ _rest5706_ _x5704_)))
                (let () (declare (not safe)) (_else56735687_)))))))
    (define ormap2
      (lambda (_f5587_ _lst15588_ _lst25589_)
        (let _lp5591_ ((_rest15593_ _lst15588_) (_rest25594_ _lst25589_))
          (let* ((_rest155955603_ _rest15593_)
                 (_else55975611_ (lambda () '#f))
                 (_K55995653_
                  (lambda (_rest15614_ _x15615_)
                    (let* ((_rest256165624_ _rest25594_)
                           (_else56185632_ (lambda () '#f))
                           (_K56205641_
                            (lambda (_rest25635_ _x25636_)
                              (let ((_$e5638_ (_f5587_ _x15615_ _x25636_)))
                                (if _$e5638_
                                    _$e5638_
                                    (let ()
                                      (declare (not safe))
                                      (_lp5591_ _rest15614_ _rest25635_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest256165624_))
                          (let ((_hd56215644_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest256165624_)))
                                (_tl56225646_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest256165624_))))
                            (let* ((_x25649_ _hd56215644_)
                                   (_rest25651_ _tl56225646_))
                              (declare (not safe))
                              (_K56205641_ _rest25651_ _x25649_)))
                          (let () (declare (not safe)) (_else56185632_)))))))
            (if (let () (declare (not safe)) (##pair? _rest155955603_))
                (let ((_hd56005656_
                       (let () (declare (not safe)) (##car _rest155955603_)))
                      (_tl56015658_
                       (let () (declare (not safe)) (##cdr _rest155955603_))))
                  (let* ((_x15661_ _hd56005656_) (_rest15663_ _tl56015658_))
                    (declare (not safe))
                    (_K55995653_ _rest15663_ _x15661_)))
                (let () (declare (not safe)) (_else55975611_)))))))
    (define ormap
      (lambda _g8633_
        (let ((_g8632_ (let () (declare (not safe)) (##length _g8633_))))
          (cond ((let () (declare (not safe)) (##fx= _g8632_ 2))
                 (apply (lambda (_f5575_ _lst5576_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f5575_ _lst5576_)))
                        _g8633_))
                ((let () (declare (not safe)) (##fx= _g8632_ 3))
                 (apply (lambda (_f5578_ _lst15579_ _lst25580_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f5578_ _lst15579_ _lst25580_)))
                        _g8633_))
                ((let () (declare (not safe)) (##fx>= _g8632_ 3))
                 (apply ormap* _g8633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g8633_))))))
    (define ormap*
      (lambda (_f5565_ . _rest5566_)
        (let _recur5568_ ((_rest5570_ _rest5566_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5570_))
              (let ((_$e5572_ (apply _f5565_ (map car _rest5570_))))
                (if _$e5572_
                    _$e5572_
                    (let ((__tmp8634 (map cdr _rest5570_)))
                      (declare (not safe))
                      (_recur5568_ __tmp8634))))
              '#f))))
    (define filter
      (lambda (_f5523_ _lst5524_)
        (let _recur5526_ ((_lst5528_ _lst5524_))
          (let* ((_lst55295537_ _lst5528_)
                 (_else55315545_ (lambda () '()))
                 (_K55335553_
                  (lambda (_rest5548_ _hd5549_)
                    (if (_f5523_ _hd5549_)
                        (let ((_tail5551_
                               (let ()
                                 (declare (not safe))
                                 (_recur5526_ _rest5548_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail5551_ _rest5548_))
                              _lst5528_
                              (let ()
                                (declare (not safe))
                                (cons _hd5549_ _tail5551_))))
                        (let ()
                          (declare (not safe))
                          (_recur5526_ _rest5548_))))))
            (if (let () (declare (not safe)) (##pair? _lst55295537_))
                (let ((_hd55345556_
                       (let () (declare (not safe)) (##car _lst55295537_)))
                      (_tl55355558_
                       (let () (declare (not safe)) (##cdr _lst55295537_))))
                  (let* ((_hd5561_ _hd55345556_) (_rest5563_ _tl55355558_))
                    (declare (not safe))
                    (_K55335553_ _rest5563_ _hd5561_)))
                (let () (declare (not safe)) (_else55315545_)))))))
    (define filter-map1
      (lambda (_f5478_ _lst5479_)
        (let _recur5481_ ((_rest5483_ _lst5479_))
          (let* ((_rest54845492_ _rest5483_)
                 (_else54865500_ (lambda () '()))
                 (_K54885511_
                  (lambda (_rest5503_ _x5504_)
                    (let ((_$e5506_ (_f5478_ _x5504_)))
                      (if _$e5506_
                          ((lambda (_r5509_)
                             (let ((__tmp8635
                                    (let ()
                                      (declare (not safe))
                                      (_recur5481_ _rest5503_))))
                               (declare (not safe))
                               (cons _r5509_ __tmp8635)))
                           _$e5506_)
                          (let ()
                            (declare (not safe))
                            (_recur5481_ _rest5503_)))))))
            (if (let () (declare (not safe)) (##pair? _rest54845492_))
                (let ((_hd54895514_
                       (let () (declare (not safe)) (##car _rest54845492_)))
                      (_tl54905516_
                       (let () (declare (not safe)) (##cdr _rest54845492_))))
                  (let* ((_x5519_ _hd54895514_) (_rest5521_ _tl54905516_))
                    (declare (not safe))
                    (_K54885511_ _rest5521_ _x5519_)))
                (let () (declare (not safe)) (_else54865500_)))))))
    (define filter-map2
      (lambda (_f5398_ _lst15399_ _lst25400_)
        (let _recur5402_ ((_rest15404_ _lst15399_) (_rest25405_ _lst25400_))
          (let* ((_rest154065414_ _rest15404_)
                 (_else54085422_ (lambda () '()))
                 (_K54105466_
                  (lambda (_rest15425_ _x15426_)
                    (let* ((_rest254275435_ _rest25405_)
                           (_else54295443_ (lambda () '()))
                           (_K54315454_
                            (lambda (_rest25446_ _x25447_)
                              (let ((_$e5449_ (_f5398_ _x15426_ _x25447_)))
                                (if _$e5449_
                                    ((lambda (_r5452_)
                                       (let ((__tmp8636
                                              (let ()
                                                (declare (not safe))
                                                (_recur5402_
                                                 _rest15425_
                                                 _rest25446_))))
                                         (declare (not safe))
                                         (cons _r5452_ __tmp8636)))
                                     _$e5449_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur5402_
                                       _rest15425_
                                       _rest25446_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest254275435_))
                          (let ((_hd54325457_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest254275435_)))
                                (_tl54335459_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest254275435_))))
                            (let* ((_x25462_ _hd54325457_)
                                   (_rest25464_ _tl54335459_))
                              (declare (not safe))
                              (_K54315454_ _rest25464_ _x25462_)))
                          (let () (declare (not safe)) (_else54295443_)))))))
            (if (let () (declare (not safe)) (##pair? _rest154065414_))
                (let ((_hd54115469_
                       (let () (declare (not safe)) (##car _rest154065414_)))
                      (_tl54125471_
                       (let () (declare (not safe)) (##cdr _rest154065414_))))
                  (let* ((_x15474_ _hd54115469_) (_rest15476_ _tl54125471_))
                    (declare (not safe))
                    (_K54105466_ _rest15476_ _x15474_)))
                (let () (declare (not safe)) (_else54085422_)))))))
    (define filter-map
      (lambda _g8638_
        (let ((_g8637_ (let () (declare (not safe)) (##length _g8638_))))
          (cond ((let () (declare (not safe)) (##fx= _g8637_ 2))
                 (apply (lambda (_f5386_ _lst5387_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f5386_ _lst5387_)))
                        _g8638_))
                ((let () (declare (not safe)) (##fx= _g8637_ 3))
                 (apply (lambda (_f5389_ _lst15390_ _lst25391_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f5389_ _lst15390_ _lst25391_)))
                        _g8638_))
                ((let () (declare (not safe)) (##fx>= _g8637_ 3))
                 (apply filter-map* _g8638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g8638_))))))
    (define filter-map*
      (lambda (_f5374_ . _rest5375_)
        (let _recur5377_ ((_rest5379_ _rest5375_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5379_))
              (let ((_$e5381_ (apply _f5374_ (map car _rest5379_))))
                (if _$e5381_
                    ((lambda (_r5384_)
                       (let ((__tmp8640
                              (let ((__tmp8641 (map cdr _rest5379_)))
                                (declare (not safe))
                                (_recur5377_ __tmp8641))))
                         (declare (not safe))
                         (cons _r5384_ __tmp8640)))
                     _$e5381_)
                    (let ((__tmp8639 (map cdr _rest5379_)))
                      (declare (not safe))
                      (_recur5377_ __tmp8639))))
              '()))))
    (define iota__%
      (lambda (_count5342_ _start5343_ _step5344_)
        (if (fixnum? _count5342_)
            '#!void
            (error '"expected fixnum" _count5342_))
        (if (let () (declare (not safe)) (number? _start5343_))
            '#!void
            (error '"expected number" _start5343_))
        (if (let () (declare (not safe)) (number? _step5344_))
            '#!void
            (error '"expected number" _step5344_))
        (let ((_root5346_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp5348_ ((_i5350_ '0)
                         (_x5351_ _start5343_)
                         (_tl5352_ _root5346_))
            (if (let () (declare (not safe)) (##fx< _i5350_ _count5342_))
                (let ((_tl*5354_
                       (let () (declare (not safe)) (cons _x5351_ '()))))
                  (let () (declare (not safe)) (##set-cdr! _tl5352_ _tl*5354_))
                  (let ((__tmp8643
                         (let () (declare (not safe)) (##fx+ _i5350_ '1)))
                        (__tmp8642 (+ _x5351_ _step5344_)))
                    (declare (not safe))
                    (_lp5348_ __tmp8643 __tmp8642 _tl*5354_)))
                (let () (declare (not safe)) (##cdr _root5346_)))))))
    (define iota__0
      (lambda (_count5359_)
        (let* ((_start5361_ '0) (_step5363_ '1))
          (declare (not safe))
          (iota__% _count5359_ _start5361_ _step5363_))))
    (define iota__1
      (lambda (_count5365_ _start5366_)
        (let ((_step5368_ '1))
          (declare (not safe))
          (iota__% _count5365_ _start5366_ _step5368_))))
    (define iota
      (lambda _g8645_
        (let ((_g8644_ (let () (declare (not safe)) (##length _g8645_))))
          (cond ((let () (declare (not safe)) (##fx= _g8644_ 1))
                 (apply (lambda (_count5359_)
                          (let () (declare (not safe)) (iota__0 _count5359_)))
                        _g8645_))
                ((let () (declare (not safe)) (##fx= _g8644_ 2))
                 (apply (lambda (_count5365_ _start5366_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count5365_ _start5366_)))
                        _g8645_))
                ((let () (declare (not safe)) (##fx= _g8644_ 3))
                 (apply (lambda (_count5370_ _start5371_ _step5372_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count5370_ _start5371_ _step5372_)))
                        _g8645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g8645_))))))
    (define last-pair
      (lambda (_lst5316_)
        (let* ((_lst53175324_ _lst5316_)
               (_E53195328_
                (lambda () (error '"No clause matching" _lst53175324_)))
               (_K53205333_
                (lambda (_rest5331_)
                  (if (let () (declare (not safe)) (pair? _rest5331_))
                      (let () (declare (not safe)) (last-pair _rest5331_))
                      _lst5316_))))
          (if (let () (declare (not safe)) (##pair? _lst53175324_))
              (let* ((_tl53225336_
                      (let () (declare (not safe)) (##cdr _lst53175324_)))
                     (_rest5339_ _tl53225336_))
                (declare (not safe))
                (_K53205333_ _rest5339_))
              (let () (declare (not safe)) (_E53195328_))))))
    (define last
      (lambda (_lst5314_)
        (car (let () (declare (not safe)) (last-pair _lst5314_)))))
    (define assgetq__%
      (lambda (_key5292_ _lst5294_ _default5296_)
        (let ((_$e5299_
               (if (let () (declare (not safe)) (pair? _lst5294_))
                   (assq _key5292_ _lst5294_)
                   '#f)))
          (if _$e5299_
              (cdr _$e5299_)
              (if (let () (declare (not safe)) (procedure? _default5296_))
                  (_default5296_ _key5292_)
                  _default5296_)))))
    (define assgetq__0
      (lambda (_key5305_ _lst5306_)
        (let ((_default5308_ '#f))
          (declare (not safe))
          (assgetq__% _key5305_ _lst5306_ _default5308_))))
    (define assgetq
      (lambda _g8647_
        (let ((_g8646_ (let () (declare (not safe)) (##length _g8647_))))
          (cond ((let () (declare (not safe)) (##fx= _g8646_ 2))
                 (apply (lambda (_key5305_ _lst5306_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key5305_ _lst5306_)))
                        _g8647_))
                ((let () (declare (not safe)) (##fx= _g8646_ 3))
                 (apply (lambda (_key5310_ _lst5311_ _default5312_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key5310_ _lst5311_ _default5312_)))
                        _g8647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g8647_))))))
    (define assgetv__%
      (lambda (_key5269_ _lst5271_ _default5273_)
        (let ((_$e5276_
               (if (let () (declare (not safe)) (pair? _lst5271_))
                   (assv _key5269_ _lst5271_)
                   '#f)))
          (if _$e5276_
              (cdr _$e5276_)
              (if (let () (declare (not safe)) (procedure? _default5273_))
                  (_default5273_ _key5269_)
                  _default5273_)))))
    (define assgetv__0
      (lambda (_key5282_ _lst5283_)
        (let ((_default5285_ '#f))
          (declare (not safe))
          (assgetv__% _key5282_ _lst5283_ _default5285_))))
    (define assgetv
      (lambda _g8649_
        (let ((_g8648_ (let () (declare (not safe)) (##length _g8649_))))
          (cond ((let () (declare (not safe)) (##fx= _g8648_ 2))
                 (apply (lambda (_key5282_ _lst5283_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key5282_ _lst5283_)))
                        _g8649_))
                ((let () (declare (not safe)) (##fx= _g8648_ 3))
                 (apply (lambda (_key5287_ _lst5288_ _default5289_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key5287_ _lst5288_ _default5289_)))
                        _g8649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g8649_))))))
    (define assget__%
      (lambda (_key5246_ _lst5248_ _default5250_)
        (let ((_$e5253_
               (if (let () (declare (not safe)) (pair? _lst5248_))
                   (assoc _key5246_ _lst5248_)
                   '#f)))
          (if _$e5253_
              (cdr _$e5253_)
              (if (let () (declare (not safe)) (procedure? _default5250_))
                  (_default5250_ _key5246_)
                  _default5250_)))))
    (define assget__0
      (lambda (_key5259_ _lst5260_)
        (let ((_default5262_ '#f))
          (declare (not safe))
          (assget__% _key5259_ _lst5260_ _default5262_))))
    (define assget
      (lambda _g8651_
        (let ((_g8650_ (let () (declare (not safe)) (##length _g8651_))))
          (cond ((let () (declare (not safe)) (##fx= _g8650_ 2))
                 (apply (lambda (_key5259_ _lst5260_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key5259_ _lst5260_)))
                        _g8651_))
                ((let () (declare (not safe)) (##fx= _g8650_ 3))
                 (apply (lambda (_key5264_ _lst5265_ _default5266_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key5264_ _lst5265_ _default5266_)))
                        _g8651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g8651_))))))
    (define pgetq__%
      (lambda (_key5175_ _lst5177_ _default5179_)
        (let _lp5182_ ((_rest5185_ _lst5177_))
          (let* ((_rest51875197_ _rest5185_)
                 (_else51895205_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5179_))
                        (_default5179_ _key5175_)
                        _default5179_)))
                 (_K51915214_
                  (lambda (_rest5208_ _v5209_ _k5211_)
                    (if (let () (declare (not safe)) (eq? _k5211_ _key5175_))
                        _v5209_
                        (let () (declare (not safe)) (_lp5182_ _rest5208_))))))
            (if (let () (declare (not safe)) (##pair? _rest51875197_))
                (let ((_hd51925217_
                       (let () (declare (not safe)) (##car _rest51875197_)))
                      (_tl51935219_
                       (let () (declare (not safe)) (##cdr _rest51875197_))))
                  (let ((_k5222_ _hd51925217_))
                    (if (let () (declare (not safe)) (##pair? _tl51935219_))
                        (let ((_hd51945224_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl51935219_)))
                              (_tl51955226_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl51935219_))))
                          (let* ((_v5229_ _hd51945224_)
                                 (_rest5231_ _tl51955226_))
                            (declare (not safe))
                            (_K51915214_ _rest5231_ _v5229_ _k5222_)))
                        (let () (declare (not safe)) (_else51895205_)))))
                (let () (declare (not safe)) (_else51895205_)))))))
    (define pgetq__0
      (lambda (_key5236_ _lst5237_)
        (let ((_default5239_ '#f))
          (declare (not safe))
          (pgetq__% _key5236_ _lst5237_ _default5239_))))
    (define pgetq
      (lambda _g8653_
        (let ((_g8652_ (let () (declare (not safe)) (##length _g8653_))))
          (cond ((let () (declare (not safe)) (##fx= _g8652_ 2))
                 (apply (lambda (_key5236_ _lst5237_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key5236_ _lst5237_)))
                        _g8653_))
                ((let () (declare (not safe)) (##fx= _g8652_ 3))
                 (apply (lambda (_key5241_ _lst5242_ _default5243_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key5241_ _lst5242_ _default5243_)))
                        _g8653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g8653_))))))
    (define pgetv__%
      (lambda (_key5104_ _lst5106_ _default5108_)
        (let _lp5111_ ((_rest5114_ _lst5106_))
          (let* ((_rest51165126_ _rest5114_)
                 (_else51185134_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5108_))
                        (_default5108_ _key5104_)
                        _default5108_)))
                 (_K51205143_
                  (lambda (_rest5137_ _v5138_ _k5140_)
                    (if (let () (declare (not safe)) (eqv? _k5140_ _key5104_))
                        _v5138_
                        (let () (declare (not safe)) (_lp5111_ _rest5137_))))))
            (if (let () (declare (not safe)) (##pair? _rest51165126_))
                (let ((_hd51215146_
                       (let () (declare (not safe)) (##car _rest51165126_)))
                      (_tl51225148_
                       (let () (declare (not safe)) (##cdr _rest51165126_))))
                  (let ((_k5151_ _hd51215146_))
                    (if (let () (declare (not safe)) (##pair? _tl51225148_))
                        (let ((_hd51235153_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl51225148_)))
                              (_tl51245155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl51225148_))))
                          (let* ((_v5158_ _hd51235153_)
                                 (_rest5160_ _tl51245155_))
                            (declare (not safe))
                            (_K51205143_ _rest5160_ _v5158_ _k5151_)))
                        (let () (declare (not safe)) (_else51185134_)))))
                (let () (declare (not safe)) (_else51185134_)))))))
    (define pgetv__0
      (lambda (_key5165_ _lst5166_)
        (let ((_default5168_ '#f))
          (declare (not safe))
          (pgetv__% _key5165_ _lst5166_ _default5168_))))
    (define pgetv
      (lambda _g8655_
        (let ((_g8654_ (let () (declare (not safe)) (##length _g8655_))))
          (cond ((let () (declare (not safe)) (##fx= _g8654_ 2))
                 (apply (lambda (_key5165_ _lst5166_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key5165_ _lst5166_)))
                        _g8655_))
                ((let () (declare (not safe)) (##fx= _g8654_ 3))
                 (apply (lambda (_key5170_ _lst5171_ _default5172_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key5170_ _lst5171_ _default5172_)))
                        _g8655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g8655_))))))
    (define pget__%
      (lambda (_key5033_ _lst5035_ _default5037_)
        (let _lp5040_ ((_rest5043_ _lst5035_))
          (let* ((_rest50455055_ _rest5043_)
                 (_else50475063_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5037_))
                        (_default5037_ _key5033_)
                        _default5037_)))
                 (_K50495072_
                  (lambda (_rest5066_ _v5067_ _k5069_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k5069_ _key5033_))
                        _v5067_
                        (let () (declare (not safe)) (_lp5040_ _rest5066_))))))
            (if (let () (declare (not safe)) (##pair? _rest50455055_))
                (let ((_hd50505075_
                       (let () (declare (not safe)) (##car _rest50455055_)))
                      (_tl50515077_
                       (let () (declare (not safe)) (##cdr _rest50455055_))))
                  (let ((_k5080_ _hd50505075_))
                    (if (let () (declare (not safe)) (##pair? _tl50515077_))
                        (let ((_hd50525082_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl50515077_)))
                              (_tl50535084_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl50515077_))))
                          (let* ((_v5087_ _hd50525082_)
                                 (_rest5089_ _tl50535084_))
                            (declare (not safe))
                            (_K50495072_ _rest5089_ _v5087_ _k5080_)))
                        (let () (declare (not safe)) (_else50475063_)))))
                (let () (declare (not safe)) (_else50475063_)))))))
    (define pget__0
      (lambda (_key5094_ _lst5095_)
        (let ((_default5097_ '#f))
          (declare (not safe))
          (pget__% _key5094_ _lst5095_ _default5097_))))
    (define pget
      (lambda _g8657_
        (let ((_g8656_ (let () (declare (not safe)) (##length _g8657_))))
          (cond ((let () (declare (not safe)) (##fx= _g8656_ 2))
                 (apply (lambda (_key5094_ _lst5095_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key5094_ _lst5095_)))
                        _g8657_))
                ((let () (declare (not safe)) (##fx= _g8656_ 3))
                 (apply (lambda (_key5099_ _lst5100_ _default5101_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key5099_ _lst5100_ _default5101_)))
                        _g8657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g8657_))))))
    (define find
      (lambda (_pred5026_ _lst5027_)
        (let ((_$e5029_
               (let () (declare (not safe)) (memf _pred5026_ _lst5027_))))
          (if _$e5029_ (car _$e5029_) '#f))))
    (define memf
      (lambda (_proc4986_ _lst4987_)
        (let _lp4989_ ((_rest4991_ _lst4987_))
          (let* ((_rest49925000_ _rest4991_)
                 (_else49945008_ (lambda () '#f))
                 (_K49965014_
                  (lambda (_tl5011_ _hd5012_)
                    (if (_proc4986_ _hd5012_)
                        _rest4991_
                        (let () (declare (not safe)) (_lp4989_ _tl5011_))))))
            (if (let () (declare (not safe)) (##pair? _rest49925000_))
                (let ((_hd49975017_
                       (let () (declare (not safe)) (##car _rest49925000_)))
                      (_tl49985019_
                       (let () (declare (not safe)) (##cdr _rest49925000_))))
                  (let* ((_hd5022_ _hd49975017_) (_tl5024_ _tl49985019_))
                    (declare (not safe))
                    (_K49965014_ _tl5024_ _hd5022_)))
                (let () (declare (not safe)) (_else49945008_)))))))
    (define remove1
      (lambda (_el4939_ _lst4941_)
        (let _lp4944_ ((_rest4947_ _lst4941_) (_r4949_ '()))
          (let* ((_rest49514959_ _rest4947_)
                 (_else49534967_ (lambda () _lst4941_))
                 (_K49554974_
                  (lambda (_rest4970_ _hd4971_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el4939_ _hd4971_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4970_ _r4949_))
                        (let ((__tmp8658
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4971_ _r4949_))))
                          (declare (not safe))
                          (_lp4944_ _rest4970_ __tmp8658))))))
            (if (let () (declare (not safe)) (##pair? _rest49514959_))
                (let ((_hd49564977_
                       (let () (declare (not safe)) (##car _rest49514959_)))
                      (_tl49574979_
                       (let () (declare (not safe)) (##cdr _rest49514959_))))
                  (let* ((_hd4982_ _hd49564977_) (_rest4984_ _tl49574979_))
                    (declare (not safe))
                    (_K49554974_ _rest4984_ _hd4982_)))
                (let () (declare (not safe)) (_else49534967_)))))))
    (define remv
      (lambda (_el4892_ _lst4894_)
        (let _lp4897_ ((_rest4900_ _lst4894_) (_r4902_ '()))
          (let* ((_rest49044912_ _rest4900_)
                 (_else49064920_ (lambda () _lst4894_))
                 (_K49084927_
                  (lambda (_rest4923_ _hd4924_)
                    (if (let () (declare (not safe)) (eqv? _el4892_ _hd4924_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4923_ _r4902_))
                        (let ((__tmp8659
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4924_ _r4902_))))
                          (declare (not safe))
                          (_lp4897_ _rest4923_ __tmp8659))))))
            (if (let () (declare (not safe)) (##pair? _rest49044912_))
                (let ((_hd49094930_
                       (let () (declare (not safe)) (##car _rest49044912_)))
                      (_tl49104932_
                       (let () (declare (not safe)) (##cdr _rest49044912_))))
                  (let* ((_hd4935_ _hd49094930_) (_rest4937_ _tl49104932_))
                    (declare (not safe))
                    (_K49084927_ _rest4937_ _hd4935_)))
                (let () (declare (not safe)) (_else49064920_)))))))
    (define remq
      (lambda (_el4845_ _lst4847_)
        (let _lp4850_ ((_rest4853_ _lst4847_) (_r4855_ '()))
          (let* ((_rest48574865_ _rest4853_)
                 (_else48594873_ (lambda () _lst4847_))
                 (_K48614880_
                  (lambda (_rest4876_ _hd4877_)
                    (if (let () (declare (not safe)) (eq? _el4845_ _hd4877_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4876_ _r4855_))
                        (let ((__tmp8660
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4877_ _r4855_))))
                          (declare (not safe))
                          (_lp4850_ _rest4876_ __tmp8660))))))
            (if (let () (declare (not safe)) (##pair? _rest48574865_))
                (let ((_hd48624883_
                       (let () (declare (not safe)) (##car _rest48574865_)))
                      (_tl48634885_
                       (let () (declare (not safe)) (##cdr _rest48574865_))))
                  (let* ((_hd4888_ _hd48624883_) (_rest4890_ _tl48634885_))
                    (declare (not safe))
                    (_K48614880_ _rest4890_ _hd4888_)))
                (let () (declare (not safe)) (_else48594873_)))))))
    (define remf
      (lambda (_proc4804_ _lst4805_)
        (let _lp4807_ ((_rest4809_ _lst4805_) (_r4810_ '()))
          (let* ((_rest48114819_ _rest4809_)
                 (_else48134827_ (lambda () _lst4805_))
                 (_K48154833_
                  (lambda (_rest4830_ _hd4831_)
                    (if (_proc4804_ _hd4831_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4830_ _r4810_))
                        (let ((__tmp8661
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4831_ _r4810_))))
                          (declare (not safe))
                          (_lp4807_ _rest4830_ __tmp8661))))))
            (if (let () (declare (not safe)) (##pair? _rest48114819_))
                (let ((_hd48164836_
                       (let () (declare (not safe)) (##car _rest48114819_)))
                      (_tl48174838_
                       (let () (declare (not safe)) (##cdr _rest48114819_))))
                  (let* ((_hd4841_ _hd48164836_) (_rest4843_ _tl48174838_))
                    (declare (not safe))
                    (_K48154833_ _rest4843_ _hd4841_)))
                (let () (declare (not safe)) (_else48134827_)))))))
    (define 1+ (lambda (_x4802_) (+ _x4802_ '1)))
    (define 1- (lambda (_x4800_) (- _x4800_ '1)))
    (define fx1+ (lambda (_x4798_) (fx+ _x4798_ '1)))
    (define fx1- (lambda (_x4796_) (fx- _x4796_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define interned-symbol?
      (lambda (_x4794_)
        (if (let () (declare (not safe)) (symbol? _x4794_))
            (let ((__tmp8662 (uninterned-symbol? _x4794_)))
              (declare (not safe))
              (not __tmp8662))
            '#f)))
    (define display-as-string
      (lambda (_x4766_ _port4767_)
        (if (or (let () (declare (not safe)) (string? _x4766_))
                (let () (declare (not safe)) (symbol? _x4766_))
                (keyword? _x4766_)
                (let () (declare (not safe)) (number? _x4766_))
                (let () (declare (not safe)) (char? _x4766_)))
            (display _x4766_ _port4767_)
            (if (let () (declare (not safe)) (pair? _x4766_))
                (begin
                  (let ((__tmp8663 (car _x4766_)))
                    (declare (not safe))
                    (display-as-string __tmp8663 _port4767_))
                  (let ((__tmp8664 (cdr _x4766_)))
                    (declare (not safe))
                    (display-as-string __tmp8664 _port4767_)))
                (if (let () (declare (not safe)) (vector? _x4766_))
                    (vector-for-each
                     (lambda (_g47804782_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g47804782_ _port4767_)))
                     _x4766_)
                    (if (or (let () (declare (not safe)) (null? _x4766_))
                            (let () (declare (not safe)) (eq? _x4766_ '#!void))
                            (let () (declare (not safe)) (eof-object? _x4766_))
                            (let () (declare (not safe)) (boolean? _x4766_)))
                        '#!void
                        (error '"cannot convert as string" _x4766_)))))))
    (define as-string__0
      (lambda (_x4754_)
        (if (let () (declare (not safe)) (string? _x4754_))
            _x4754_
            (if (let () (declare (not safe)) (symbol? _x4754_))
                (symbol->string _x4754_)
                (if (keyword? _x4754_)
                    (keyword->string _x4754_)
                    (call-with-output-string
                     '()
                     (lambda (_g47554757_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x4754_ _g47554757_)))))))))
    (define as-string__1
      (lambda _args4760_
        (call-with-output-string
         '()
         (lambda (_g47614763_)
           (let ()
             (declare (not safe))
             (display-as-string _args4760_ _g47614763_))))))
    (define as-string
      (lambda _g8666_
        (let ((_g8665_ (let () (declare (not safe)) (##length _g8666_))))
          (cond ((let () (declare (not safe)) (##fx= _g8665_ 1))
                 (apply (lambda (_x4754_)
                          (let () (declare (not safe)) (as-string__0 _x4754_)))
                        _g8666_))
                (#t (apply as-string__1 _g8666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g8666_))))))
    (define make-symbol__0
      (lambda (_x4750_)
        (if (interned-symbol? _x4750_)
            _x4750_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x4750_))))))
    (define make-symbol__1
      (lambda _args4752_ (string->symbol (apply as-string _args4752_))))
    (define make-symbol
      (lambda _g8668_
        (let ((_g8667_ (let () (declare (not safe)) (##length _g8668_))))
          (cond ((let () (declare (not safe)) (##fx= _g8667_ 1))
                 (apply (lambda (_x4750_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x4750_)))
                        _g8668_))
                (#t (apply make-symbol__1 _g8668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g8668_))))))
    (define make-keyword__0
      (lambda (_x4746_)
        (if (interned-keyword? _x4746_)
            _x4746_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x4746_))))))
    (define make-keyword__1
      (lambda _args4748_ (string->keyword (apply as-string _args4748_))))
    (define make-keyword
      (lambda _g8670_
        (let ((_g8669_ (let () (declare (not safe)) (##length _g8670_))))
          (cond ((let () (declare (not safe)) (##fx= _g8669_ 1))
                 (apply (lambda (_x4746_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x4746_)))
                        _g8670_))
                (#t (apply make-keyword__1 _g8670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g8670_))))))
    (define interned-keyword?
      (lambda (_x4744_)
        (if (keyword? _x4744_)
            (let ((__tmp8671 (uninterned-keyword? _x4744_)))
              (declare (not safe))
              (not __tmp8671))
            '#f)))
    (define symbol->keyword
      (lambda (_sym4742_)
        ((if (uninterned-symbol? _sym4742_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym4742_))))
    (define keyword->symbol
      (lambda (_kw4740_)
        ((if (uninterned-keyword? _kw4740_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw4740_))))
    (define bytes->string__%
      (lambda (_bstr4718_ _enc4719_)
        (if (let () (declare (not safe)) (eq? _enc4719_ 'UTF-8))
            (utf8->string _bstr4718_)
            (let* ((_in4721_
                    (open-input-u8vector
                     (let ((__tmp8672
                            (let ((__tmp8673
                                   (let ((__tmp8674
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr4718_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp8674))))
                              (declare (not safe))
                              (cons _enc4719_ __tmp8673))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp8672))))
                   (_len4723_ (u8vector-length _bstr4718_))
                   (_out4725_ (make-string _len4723_))
                   (_n4727_ (read-substring _out4725_ '0 _len4723_ _in4721_)))
              (string-shrink! _out4725_ _n4727_)
              _out4725_))))
    (define bytes->string__0
      (lambda (_bstr4733_)
        (let ((_enc4735_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr4733_ _enc4735_))))
    (define bytes->string
      (lambda _g8676_
        (let ((_g8675_ (let () (declare (not safe)) (##length _g8676_))))
          (cond ((let () (declare (not safe)) (##fx= _g8675_ 1))
                 (apply (lambda (_bstr4733_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr4733_)))
                        _g8676_))
                ((let () (declare (not safe)) (##fx= _g8675_ 2))
                 (apply (lambda (_bstr4737_ _enc4738_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr4737_ _enc4738_)))
                        _g8676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g8676_))))))
    (define string->bytes__%
      (lambda (_str4704_ _enc4705_)
        (if (let () (declare (not safe)) (eq? _enc4705_ 'UTF-8))
            (string->utf8 _str4704_)
            (substring->bytes
             _str4704_
             '0
             (string-length _str4704_)
             _enc4705_))))
    (define string->bytes__0
      (lambda (_str4710_)
        (let ((_enc4712_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str4710_ _enc4712_))))
    (define string->bytes
      (lambda _g8678_
        (let ((_g8677_ (let () (declare (not safe)) (##length _g8678_))))
          (cond ((let () (declare (not safe)) (##fx= _g8677_ 1))
                 (apply (lambda (_str4710_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str4710_)))
                        _g8678_))
                ((let () (declare (not safe)) (##fx= _g8677_ 2))
                 (apply (lambda (_str4714_ _enc4715_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str4714_ _enc4715_)))
                        _g8678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g8678_))))))
    (define substring->bytes__%
      (lambda (_str4682_ _start4683_ _end4684_ _enc4685_)
        (if (let () (declare (not safe)) (eq? _enc4685_ 'UTF-8))
            (string->utf8 _str4682_ _start4683_ _end4684_)
            (let ((_out4687_
                   (open-output-u8vector
                    (let ((__tmp8679
                           (let () (declare (not safe)) (cons _enc4685_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp8679)))))
              (write-substring _str4682_ _start4683_ _end4684_ _out4687_)
              (get-output-u8vector _out4687_)))))
    (define substring->bytes__0
      (lambda (_str4692_ _start4693_ _end4694_)
        (let ((_enc4696_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__% _str4692_ _start4693_ _end4694_ _enc4696_))))
    (define substring->bytes
      (lambda _g8681_
        (let ((_g8680_ (let () (declare (not safe)) (##length _g8681_))))
          (cond ((let () (declare (not safe)) (##fx= _g8680_ 3))
                 (apply (lambda (_str4692_ _start4693_ _end4694_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str4692_
                             _start4693_
                             _end4694_)))
                        _g8681_))
                ((let () (declare (not safe)) (##fx= _g8680_ 4))
                 (apply (lambda (_str4698_ _start4699_ _end4700_ _enc4701_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str4698_
                             _start4699_
                             _end4700_
                             _enc4701_)))
                        _g8681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g8681_))))))
    (define string-empty?
      (lambda (_str4679_)
        (let ((__tmp8682 (string-length _str4679_)))
          (declare (not safe))
          (##fxzero? __tmp8682))))
    (define string-prefix?
      (lambda (_prefix4669_ _str4670_)
        (let ((_str-len4672_ (string-length _str4670_))
              (_prefix-len4673_ (string-length _prefix4669_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len4673_ _str-len4672_))
              (let _lp4675_ ((_i4677_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i4677_ _prefix-len4673_))
                    (if (let ((__tmp8685
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str4670_ _i4677_)))
                              (__tmp8684
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix4669_ _i4677_))))
                          (declare (not safe))
                          (eq? __tmp8685 __tmp8684))
                        (let ((__tmp8683
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i4677_ '1))))
                          (declare (not safe))
                          (_lp4675_ __tmp8683))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str4647_ _char4648_ _start4649_)
        (let ((_len4651_ (string-length _str4647_)))
          (let _lp4653_ ((_k4655_ _start4649_))
            (if (let () (declare (not safe)) (##fx< _k4655_ _len4651_))
                (if (let ((__tmp8687
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4647_ _k4655_))))
                      (declare (not safe))
                      (eq? _char4648_ __tmp8687))
                    _k4655_
                    (let ((__tmp8686
                           (let () (declare (not safe)) (##fx+ _k4655_ '1))))
                      (declare (not safe))
                      (_lp4653_ __tmp8686)))
                '#f)))))
    (define string-index__0
      (lambda (_str4660_ _char4661_)
        (let ((_start4663_ '0))
          (declare (not safe))
          (string-index__% _str4660_ _char4661_ _start4663_))))
    (define string-index
      (lambda _g8689_
        (let ((_g8688_ (let () (declare (not safe)) (##length _g8689_))))
          (cond ((let () (declare (not safe)) (##fx= _g8688_ 2))
                 (apply (lambda (_str4660_ _char4661_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str4660_ _char4661_)))
                        _g8689_))
                ((let () (declare (not safe)) (##fx= _g8688_ 3))
                 (apply (lambda (_str4665_ _char4666_ _start4667_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str4665_
                             _char4666_
                             _start4667_)))
                        _g8689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g8689_))))))
    (define string-rindex__%
      (lambda (_str4618_ _char4619_ _start4620_)
        (let* ((_len4622_ (string-length _str4618_))
               (_start4627_
                (let ((_$e4624_ _start4620_))
                  (if _$e4624_
                      _$e4624_
                      (let () (declare (not safe)) (##fx- _len4622_ '1))))))
          (let _lp4630_ ((_k4632_ _start4627_))
            (if (let () (declare (not safe)) (##fx>= _k4632_ '0))
                (if (let ((__tmp8691
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4618_ _k4632_))))
                      (declare (not safe))
                      (eq? _char4619_ __tmp8691))
                    _k4632_
                    (let ((__tmp8690
                           (let () (declare (not safe)) (##fx- _k4632_ '1))))
                      (declare (not safe))
                      (_lp4630_ __tmp8690)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str4637_ _char4638_)
        (let ((_start4640_ '#f))
          (declare (not safe))
          (string-rindex__% _str4637_ _char4638_ _start4640_))))
    (define string-rindex
      (lambda _g8693_
        (let ((_g8692_ (let () (declare (not safe)) (##length _g8693_))))
          (cond ((let () (declare (not safe)) (##fx= _g8692_ 2))
                 (apply (lambda (_str4637_ _char4638_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str4637_ _char4638_)))
                        _g8693_))
                ((let () (declare (not safe)) (##fx= _g8692_ 3))
                 (apply (lambda (_str4642_ _char4643_ _start4644_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str4642_
                             _char4643_
                             _start4644_)))
                        _g8693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g8693_))))))
    (define string-split
      (lambda (_str4602_ _char4603_)
        (let ((_len4605_ (string-length _str4602_)))
          (let _lp4607_ ((_start4609_ '0) (_r4610_ '()))
            (let ((_$e4612_
                   (let ()
                     (declare (not safe))
                     (string-index _str4602_ _char4603_ _start4609_))))
              (if _$e4612_
                  ((lambda (_end4615_)
                     (let ((__tmp8697
                            (let () (declare (not safe)) (##fx+ _end4615_ '1)))
                           (__tmp8695
                            (let ((__tmp8696
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str4602_
                                      _start4609_
                                      _end4615_))))
                              (declare (not safe))
                              (cons __tmp8696 _r4610_))))
                       (declare (not safe))
                       (_lp4607_ __tmp8697 __tmp8695)))
                   _$e4612_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start4609_ _len4605_))
                      (let ((__tmp8694
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str4602_
                                      _start4609_
                                      _len4605_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp8694 _r4610_))
                      (reverse _r4610_))))))))
    (define string-join
      (lambda (_strs4507_ _join4508_)
        (letrec ((_join-length4510_
                  (lambda (_strs4561_ _jlen4562_)
                    (let _lp4564_ ((_rest4566_ _strs4561_) (_len4567_ '0))
                      (let* ((_rest45684576_ _rest4566_)
                             (_else45704584_ (lambda () '0))
                             (_K45724590_
                              (lambda (_rest4587_ _hd4588_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd4588_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest4587_))
                                        (let ((__tmp8699
                                               (let ((__tmp8700
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd4588_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp8700
                                                        _jlen4562_
                                                        _len4567_))))
                                          (declare (not safe))
                                          (_lp4564_ _rest4587_ __tmp8699))
                                        (let ((__tmp8698
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd4588_))))
                                          (declare (not safe))
                                          (##fx+ __tmp8698 _len4567_)))
                                    (error '"expected string" _hd4588_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest45684576_))
                            (let ((_hd45734593_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest45684576_)))
                                  (_tl45744595_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest45684576_))))
                              (let* ((_hd4598_ _hd45734593_)
                                     (_rest4600_ _tl45744595_))
                                (declare (not safe))
                                (_K45724590_ _rest4600_ _hd4598_)))
                            (let ()
                              (declare (not safe))
                              (_else45704584_))))))))
          (let* ((_join4512_
                  (if (let () (declare (not safe)) (char? _join4508_))
                      (string _join4508_)
                      (if (let () (declare (not safe)) (string? _join4508_))
                          _join4508_
                          (error '"expected string or char" _join4508_))))
                 (_jlen4514_
                  (let () (declare (not safe)) (##string-length _join4512_)))
                 (_olen4516_
                  (let ()
                    (declare (not safe))
                    (_join-length4510_ _strs4507_ _jlen4514_)))
                 (_ostr4518_ (make-string _olen4516_)))
            (let _lp4521_ ((_rest4523_ _strs4507_) (_k4524_ '0))
              (let* ((_rest45254533_ _rest4523_)
                     (_else45274541_ (lambda () '""))
                     (_K45294549_
                      (lambda (_rest4544_ _hd4545_)
                        (let ((_hdlen4547_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd4545_))))
                          (if (let () (declare (not safe)) (pair? _rest4544_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd4545_
                                   '0
                                   _hdlen4547_
                                   _ostr4518_
                                   _k4524_))
                                (let ((__tmp8701
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k4524_ _hdlen4547_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join4512_
                                   '0
                                   _jlen4514_
                                   _ostr4518_
                                   __tmp8701))
                                (let ((__tmp8702
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k4524_
                                                _hdlen4547_
                                                _jlen4514_))))
                                  (declare (not safe))
                                  (_lp4521_ _rest4544_ __tmp8702)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd4545_
                                   '0
                                   _hdlen4547_
                                   _ostr4518_
                                   _k4524_))
                                _ostr4518_))))))
                (if (let () (declare (not safe)) (##pair? _rest45254533_))
                    (let ((_hd45304552_
                           (let ()
                             (declare (not safe))
                             (##car _rest45254533_)))
                          (_tl45314554_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest45254533_))))
                      (let* ((_hd4557_ _hd45304552_) (_rest4559_ _tl45314554_))
                        (declare (not safe))
                        (_K45294549_ _rest4559_ _hd4557_)))
                    (let () (declare (not safe)) (_else45274541_)))))))))
    (define read-u8vector
      (lambda (_bytes4504_ _port4505_)
        (read-subu8vector
         _bytes4504_
         '0
         (u8vector-length _bytes4504_)
         _port4505_)))
    (define write-u8vector
      (lambda (_bytes4501_ _port4502_)
        (write-subu8vector
         _bytes4501_
         '0
         (u8vector-length _bytes4501_)
         _port4502_)))
    (define read-string
      (lambda (_str4498_ _port4499_)
        (read-substring _str4498_ '0 (string-length _str4498_) _port4499_)))
    (define write-string
      (lambda (_str4495_ _port4496_)
        (write-substring _str4495_ '0 (string-length _str4495_) _port4496_)))))
