(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1695337676)
  (begin
    (define displayln
      (lambda _args6367_
        (let _lp6369_ ((_rest6371_ _args6367_))
          (let* ((_rest63726380_ _rest6371_)
                 (_else63746388_ (lambda () (newline)))
                 (_K63766394_
                  (lambda (_rest6391_ _hd6392_)
                    (display _hd6392_)
                    (let () (declare (not safe)) (_lp6369_ _rest6391_)))))
            (if (let () (declare (not safe)) (##pair? _rest63726380_))
                (let ((_hd63776397_
                       (let () (declare (not safe)) (##car _rest63726380_)))
                      (_tl63786399_
                       (let () (declare (not safe)) (##cdr _rest63726380_))))
                  (let* ((_hd6402_ _hd63776397_) (_rest6404_ _tl63786399_))
                    (declare (not safe))
                    (_K63766394_ _rest6404_ _hd6402_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args6365_ (for-each display _args6365_)))
    (define file-newer?
      (lambda (_file16358_ _file26359_)
        (letrec ((_modification-time6361_
                  (lambda (_file6363_)
                    (let ((__tmp8511
                           (file-info-last-modification-time
                            (file-info _file6363_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp8511)))))
          (let ((__tmp8513
                 (let ()
                   (declare (not safe))
                   (_modification-time6361_ _file16358_)))
                (__tmp8512
                 (let ()
                   (declare (not safe))
                   (_modification-time6361_ _file26359_))))
            (declare (not safe))
            (##fl> __tmp8513 __tmp8512)))))
    (define create-directory*__%
      (lambda (_dir6332_ _perms6333_)
        (letrec ((_create16335_
                  (lambda (_path6346_)
                    (if (file-exists? _path6346_)
                        (if (let ((__tmp8514 (file-type _path6346_)))
                              (declare (not safe))
                              (eq? __tmp8514 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path6346_))
                        (if _perms6333_
                            (create-directory
                             (list 'path:
                                   _path6346_
                                   'permissions:
                                   _perms6333_))
                            (create-directory _path6346_))))))
          (if (file-exists? _dir6332_)
              '#!void
              (let _lp6337_ ((_start6339_ '0))
                (let ((_$e6341_
                       (let ()
                         (declare (not safe))
                         (string-index _dir6332_ '#\/ _start6339_))))
                  (if _$e6341_
                      ((lambda (_x6344_)
                         (if (let () (declare (not safe)) (##fx> _x6344_ '0))
                             (let ((__tmp8515
                                    (substring _dir6332_ '0 _x6344_)))
                               (declare (not safe))
                               (_create16335_ __tmp8515))
                             '#!void)
                         (let ((__tmp8516
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x6344_ '1))))
                           (declare (not safe))
                           (_lp6337_ __tmp8516)))
                       _$e6341_)
                      (let ()
                        (declare (not safe))
                        (_create16335_ _dir6332_)))))))))
    (define create-directory*__0
      (lambda (_dir6351_)
        (let ((_perms6353_ '493))
          (declare (not safe))
          (create-directory*__% _dir6351_ _perms6353_))))
    (define create-directory*
      (lambda _g8518_
        (let ((_g8517_ (let () (declare (not safe)) (##length _g8518_))))
          (cond ((let () (declare (not safe)) (##fx= _g8517_ 1))
                 (apply (lambda (_dir6351_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir6351_)))
                        _g8518_))
                ((let () (declare (not safe)) (##fx= _g8517_ 2))
                 (apply (lambda (_dir6355_ _perms6356_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir6355_ _perms6356_)))
                        _g8518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g8518_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g8519_ '#t))
    (define true?
      (lambda (_obj6328_) (let () (declare (not safe)) (eq? _obj6328_ '#t))))
    (define false (lambda _g8520_ '#f))
    (define void (lambda _g8521_ '#!void))
    (define void?
      (lambda (_obj6324_)
        (let () (declare (not safe)) (eq? _obj6324_ '#!void))))
    (define eof-object (lambda _g8522_ '#!eof))
    (define identity (lambda (_obj6321_) _obj6321_))
    (define dssl-object?
      (lambda (_obj6319_)
        (if (memq _obj6319_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj6317_)
        (let () (declare (not safe)) (eq? _obj6317_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj6315_)
        (let () (declare (not safe)) (eq? _obj6315_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj6313_)
        (let () (declare (not safe)) (eq? _obj6313_ '#!optional))))
    (define immediate?
      (lambda (_obj6309_)
        (let* ((_t6311_ (let () (declare (not safe)) (##type _obj6309_)))
               (__tmp8523 (let () (declare (not safe)) (##fxand _t6311_ '1))))
          (declare (not safe))
          (##fxzero? __tmp8523))))
    (define nonnegative-fixnum?
      (lambda (_obj6307_)
        (if (fixnum? _obj6307_)
            (let ((__tmp8524 (fxnegative? _obj6307_)))
              (declare (not safe))
              (not __tmp8524))
            '#f)))
    (define values-count
      (lambda (_obj6305_)
        (if (let () (declare (not safe)) (##values? _obj6305_))
            (let () (declare (not safe)) (##vector-length _obj6305_))
            '1)))
    (define values-ref
      (lambda (_obj6302_ _k6303_)
        (if (let () (declare (not safe)) (##values? _obj6302_))
            (let () (declare (not safe)) (##vector-ref _obj6302_ _k6303_))
            _obj6302_)))
    (define values->list
      (lambda (_obj6300_)
        (if (let () (declare (not safe)) (##values? _obj6300_))
            (let () (declare (not safe)) (##vector->list _obj6300_))
            (list _obj6300_))))
    (define subvector->list__%
      (lambda (_obj6285_ _start6286_)
        (let ((_lst6288_
               (let () (declare (not safe)) (##vector->list _obj6285_))))
          (list-tail _lst6288_ _start6286_))))
    (define subvector->list__0
      (lambda (_obj6293_)
        (let ((_start6295_ '0))
          (declare (not safe))
          (subvector->list__% _obj6293_ _start6295_))))
    (define subvector->list
      (lambda _g8526_
        (let ((_g8525_ (let () (declare (not safe)) (##length _g8526_))))
          (cond ((let () (declare (not safe)) (##fx= _g8525_ 1))
                 (apply (lambda (_obj6293_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj6293_)))
                        _g8526_))
                ((let () (declare (not safe)) (##fx= _g8525_ 2))
                 (apply (lambda (_obj6297_ _start6298_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj6297_ _start6298_)))
                        _g8526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g8526_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args6282_ (apply make-table 'test: eq? _args6282_)))
    (define make-hash-table-eqv
      (lambda _args6280_ (apply make-table 'test: eqv? _args6280_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst6277_ . _args6278_)
        (apply list->table _lst6277_ 'test: eq? _args6278_)))
    (define list->hash-table-eqv
      (lambda (_lst6274_ . _args6275_)
        (apply list->table _lst6274_ 'test: eqv? _args6275_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht6271_ _k6272_) (table-ref _ht6271_ _k6272_ '#f)))
    (define hash-put!
      (lambda (_ht6267_ _k6268_ _v6269_)
        (table-set! _ht6267_ _k6268_ _v6269_)))
    (define hash-update!__%
      (lambda (_ht6246_ _k6247_ _update6248_ _default6249_)
        (let* ((_value6251_
                (let ()
                  (declare (not safe))
                  (table-ref _ht6246_ _k6247_ _default6249_)))
               (__tmp8527 (_update6248_ _value6251_)))
          (declare (not safe))
          (table-set! _ht6246_ _k6247_ __tmp8527))))
    (define hash-update!__0
      (lambda (_ht6256_ _k6257_ _update6258_)
        (let ((_default6260_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht6256_ _k6257_ _update6258_ _default6260_))))
    (define hash-update!
      (lambda _g8529_
        (let ((_g8528_ (let () (declare (not safe)) (##length _g8529_))))
          (cond ((let () (declare (not safe)) (##fx= _g8528_ 3))
                 (apply (lambda (_ht6256_ _k6257_ _update6258_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0 _ht6256_ _k6257_ _update6258_)))
                        _g8529_))
                ((let () (declare (not safe)) (##fx= _g8528_ 4))
                 (apply (lambda (_ht6262_ _k6263_ _update6264_ _default6265_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht6262_
                             _k6263_
                             _update6264_
                             _default6265_)))
                        _g8529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g8529_))))))
    (define hash-remove!
      (lambda (_ht6242_ _k6243_) (table-set! _ht6242_ _k6243_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht6240_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht6240_))))
    (define plist->hash-table__%
      (lambda (_plst6175_ _ht6176_)
        (let _lp6178_ ((_rest6180_ _plst6175_))
          (let* ((_rest61816192_ _rest6180_)
                 (_E61846196_
                  (lambda () (error '"No clause matching" _rest61816192_))))
            (let ((_K61866211_
                   (lambda (_rest6207_ _v6208_ _k6209_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht6176_ _k6209_ _v6208_))
                     (let () (declare (not safe)) (_lp6178_ _rest6207_))))
                  (_K61856201_ (lambda () _ht6176_)))
              (let ((_try-match61836204_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest61816192_ '()))
                           (let () (declare (not safe)) (_K61856201_))
                           (let () (declare (not safe)) (_E61846196_))))))
                (if (let () (declare (not safe)) (##pair? _rest61816192_))
                    (let ((_tl61886216_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest61816192_)))
                          (_hd61876214_
                           (let ()
                             (declare (not safe))
                             (##car _rest61816192_))))
                      (if (let () (declare (not safe)) (##pair? _tl61886216_))
                          (let ((_tl61906223_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl61886216_)))
                                (_hd61896221_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl61886216_))))
                            (let ((_k6219_ _hd61876214_)
                                  (_v6226_ _hd61896221_)
                                  (_rest6228_ _tl61906223_))
                              (let ()
                                (declare (not safe))
                                (_K61866211_ _rest6228_ _v6226_ _k6219_))))
                          (let () (declare (not safe)) (_try-match61836204_))))
                    (let () (declare (not safe)) (_try-match61836204_)))))))))
    (define plist->hash-table__0
      (lambda (_plst6233_)
        (let ((_ht6235_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst6233_ _ht6235_))))
    (define plist->hash-table
      (lambda _g8531_
        (let ((_g8530_ (let () (declare (not safe)) (##length _g8531_))))
          (cond ((let () (declare (not safe)) (##fx= _g8530_ 1))
                 (apply (lambda (_plst6233_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst6233_)))
                        _g8531_))
                ((let () (declare (not safe)) (##fx= _g8530_ 2))
                 (apply (lambda (_plst6237_ _ht6238_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst6237_ _ht6238_)))
                        _g8531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g8531_))))))
    (define plist->hash-table-eq
      (lambda (_plst6172_)
        (let ((__tmp8532
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst6172_ __tmp8532))))
    (define plist->hash-table-eqv
      (lambda (_plst6170_)
        (let ((__tmp8533
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst6170_ __tmp8533))))
    (define hash-key?
      (lambda (_ht6167_ _k6168_)
        (let ((__tmp8534
               (let ((__tmp8535
                      (let ()
                        (declare (not safe))
                        (table-ref _ht6167_ _k6168_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp8535 absent-value))))
          (declare (not safe))
          (not __tmp8534))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun6160_ _ht6161_)
        (let ((__tmp8536
               (lambda (_k6163_ _v6164_ _r6165_)
                 (let ((__tmp8537 (_fun6160_ _k6163_ _v6164_)))
                   (declare (not safe))
                   (cons __tmp8537 _r6165_)))))
          (declare (not safe))
          (hash-fold __tmp8536 '() _ht6161_))))
    (define hash-fold
      (lambda (_fun6151_ _iv6152_ _ht6153_)
        (let ((_ret6155_ _iv6152_))
          (let ((__tmp8538
                 (lambda (_k6157_ _v6158_)
                   (set! _ret6155_ (_fun6151_ _k6157_ _v6158_ _ret6155_)))))
            (declare (not safe))
            (table-for-each __tmp8538 _ht6153_))
          _ret6155_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht6146_)
        (let ((__tmp8539 (lambda (_k6148_ _v6149_) _k6148_)))
          (declare (not safe))
          (hash-map __tmp8539 _ht6146_))))
    (define hash-values
      (lambda (_ht6141_)
        (let ((__tmp8540 (lambda (_k6143_ _v6144_) _v6144_)))
          (declare (not safe))
          (hash-map __tmp8540 _ht6141_))))
    (define hash-copy
      (lambda (_hd6136_ . _rest6137_)
        (let ((_hd6139_ (table-copy _hd6136_)))
          (if (let () (declare (not safe)) (null? _rest6137_))
              _hd6139_
              (apply hash-copy! _hd6139_ _rest6137_)))))
    (define hash-copy!
      (lambda (_hd6131_ . _rest6132_)
        (for-each
         (lambda (_r6134_) (table-merge! _hd6131_ _r6134_))
         _rest6132_)
        _hd6131_))
    (define hash-merge
      (lambda (_hd6125_ . _rest6126_)
        (let ((__tmp8541
               (lambda (_tab6128_ _r6129_) (table-merge _r6129_ _tab6128_))))
          (declare (not safe))
          (foldl1 __tmp8541 _hd6125_ _rest6126_))))
    (define hash-merge!
      (lambda (_hd6119_ . _rest6120_)
        (let ((__tmp8542
               (lambda (_tab6122_ _r6123_) (table-merge! _r6123_ _tab6122_))))
          (declare (not safe))
          (foldl1 __tmp8542 _hd6119_ _rest6120_))))
    (define hash-clear!__%
      (lambda (_ht6104_ _size6105_)
        (let ((_gcht6107_
               (let () (declare (not safe)) (##vector-ref _ht6104_ '5))))
          (if (let ((__tmp8543 (fixnum? _gcht6107_)))
                (declare (not safe))
                (not __tmp8543))
              (let ()
                (declare (not safe))
                (##vector-set! _ht6104_ '5 _size6105_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht6112_)
        (let ((_size6114_ '0))
          (declare (not safe))
          (hash-clear!__% _ht6112_ _size6114_))))
    (define hash-clear!
      (lambda _g8545_
        (let ((_g8544_ (let () (declare (not safe)) (##length _g8545_))))
          (cond ((let () (declare (not safe)) (##fx= _g8544_ 1))
                 (apply (lambda (_ht6112_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht6112_)))
                        _g8545_))
                ((let () (declare (not safe)) (##fx= _g8544_ 2))
                 (apply (lambda (_ht6116_ _size6117_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht6116_ _size6117_)))
                        _g8545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g8545_))))))
    (define make-list__%
      (lambda (_k6085_ _val6086_)
        (if (fixnum? _k6085_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k6085_))
        (let _lp6088_ ((_n6090_ '0) (_r6091_ '()))
          (if (let () (declare (not safe)) (##fx< _n6090_ _k6085_))
              (let ((__tmp8547
                     (let () (declare (not safe)) (##fx+ _n6090_ '1)))
                    (__tmp8546
                     (let () (declare (not safe)) (cons _val6086_ _r6091_))))
                (declare (not safe))
                (_lp6088_ __tmp8547 __tmp8546))
              _r6091_))))
    (define make-list__0
      (lambda (_k6096_)
        (let ((_val6098_ '#f))
          (declare (not safe))
          (make-list__% _k6096_ _val6098_))))
    (define make-list
      (lambda _g8549_
        (let ((_g8548_ (let () (declare (not safe)) (##length _g8549_))))
          (cond ((let () (declare (not safe)) (##fx= _g8548_ 1))
                 (apply (lambda (_k6096_)
                          (let () (declare (not safe)) (make-list__0 _k6096_)))
                        _g8549_))
                ((let () (declare (not safe)) (##fx= _g8548_ 2))
                 (apply (lambda (_k6100_ _val6101_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k6100_ _val6101_)))
                        _g8549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g8549_))))))
    (define cons*
      (lambda (_x6075_ _y6076_ . _rest6077_)
        (letrec ((_recur6079_
                  (lambda (_x6081_ _rest6082_)
                    (if (let () (declare (not safe)) (pair? _rest6082_))
                        (let ((__tmp8550
                               (let ((__tmp8552
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6082_)))
                                     (__tmp8551
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6082_))))
                                 (declare (not safe))
                                 (_recur6079_ __tmp8552 __tmp8551))))
                          (declare (not safe))
                          (cons _x6081_ __tmp8550))
                        _x6081_))))
          (let ((__tmp8553
                 (let ()
                   (declare (not safe))
                   (_recur6079_ _y6076_ _rest6077_))))
            (declare (not safe))
            (cons _x6075_ __tmp8553)))))
    (define foldl1
      (lambda (_f6033_ _iv6034_ _lst6035_)
        (let _lp6037_ ((_rest6039_ _lst6035_) (_r6040_ _iv6034_))
          (let* ((_rest60416049_ _rest6039_)
                 (_else60436057_ (lambda () _r6040_))
                 (_K60456063_
                  (lambda (_rest6060_ _x6061_)
                    (let ((__tmp8554 (_f6033_ _x6061_ _r6040_)))
                      (declare (not safe))
                      (_lp6037_ _rest6060_ __tmp8554)))))
            (if (let () (declare (not safe)) (##pair? _rest60416049_))
                (let ((_hd60466066_
                       (let () (declare (not safe)) (##car _rest60416049_)))
                      (_tl60476068_
                       (let () (declare (not safe)) (##cdr _rest60416049_))))
                  (let* ((_x6071_ _hd60466066_) (_rest6073_ _tl60476068_))
                    (declare (not safe))
                    (_K60456063_ _rest6073_ _x6071_)))
                (let () (declare (not safe)) (_else60436057_)))))))
    (define foldl2
      (lambda (_f5956_ _iv5957_ _lst15958_ _lst25959_)
        (let _lp5961_ ((_rest15963_ _lst15958_)
                       (_rest25964_ _lst25959_)
                       (_r5965_ _iv5957_))
          (let* ((_rest159665974_ _rest15963_)
                 (_else59685982_ (lambda () _r5965_))
                 (_K59706021_
                  (lambda (_rest15985_ _x15986_)
                    (let* ((_rest259875995_ _rest25964_)
                           (_else59896003_ (lambda () _r5965_))
                           (_K59916009_
                            (lambda (_rest26006_ _x26007_)
                              (let ((__tmp8555
                                     (_f5956_ _x15986_ _x26007_ _r5965_)))
                                (declare (not safe))
                                (_lp5961_
                                 _rest15985_
                                 _rest26006_
                                 __tmp8555)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest259875995_))
                          (let ((_hd59926012_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest259875995_)))
                                (_tl59936014_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest259875995_))))
                            (let* ((_x26017_ _hd59926012_)
                                   (_rest26019_ _tl59936014_))
                              (declare (not safe))
                              (_K59916009_ _rest26019_ _x26017_)))
                          (let () (declare (not safe)) (_else59896003_)))))))
            (if (let () (declare (not safe)) (##pair? _rest159665974_))
                (let ((_hd59716024_
                       (let () (declare (not safe)) (##car _rest159665974_)))
                      (_tl59726026_
                       (let () (declare (not safe)) (##cdr _rest159665974_))))
                  (let* ((_x16029_ _hd59716024_) (_rest16031_ _tl59726026_))
                    (declare (not safe))
                    (_K59706021_ _rest16031_ _x16029_)))
                (let () (declare (not safe)) (_else59685982_)))))))
    (define foldl
      (lambda _g8557_
        (let ((_g8556_ (let () (declare (not safe)) (##length _g8557_))))
          (cond ((let () (declare (not safe)) (##fx= _g8556_ 3))
                 (apply (lambda (_f5941_ _iv5942_ _lst5943_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f5941_ _iv5942_ _lst5943_)))
                        _g8557_))
                ((let () (declare (not safe)) (##fx= _g8556_ 4))
                 (apply (lambda (_f5945_ _iv5946_ _lst15947_ _lst25948_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f5945_ _iv5946_ _lst15947_ _lst25948_)))
                        _g8557_))
                ((let () (declare (not safe)) (##fx>= _g8556_ 4))
                 (apply foldl* _g8557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g8557_))))))
    (define foldl*
      (lambda (_f5929_ _iv5930_ . _rest5931_)
        (let _recur5933_ ((_iv5935_ _iv5930_) (_rest5936_ _rest5931_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5936_))
              (let ((__tmp8559
                     (apply _f5929_
                            (let ((__tmp8561
                                   (lambda (_xs5938_ _r5939_)
                                     (let ((__tmp8562 (car _xs5938_)))
                                       (declare (not safe))
                                       (cons __tmp8562 _r5939_))))
                                  (__tmp8560 (list _iv5935_)))
                              (declare (not safe))
                              (foldr1 __tmp8561 __tmp8560 _rest5936_))))
                    (__tmp8558 (map cdr _rest5936_)))
                (declare (not safe))
                (_recur5933_ __tmp8559 __tmp8558))
              _iv5935_))))
    (define foldr1
      (lambda (_f5888_ _iv5889_ _lst5890_)
        (let _recur5892_ ((_rest5894_ _lst5890_))
          (let* ((_rest58955903_ _rest5894_)
                 (_else58975911_ (lambda () _iv5889_))
                 (_K58995917_
                  (lambda (_rest5914_ _x5915_)
                    (_f5888_ _x5915_
                             (let ()
                               (declare (not safe))
                               (_recur5892_ _rest5914_))))))
            (if (let () (declare (not safe)) (##pair? _rest58955903_))
                (let ((_hd59005920_
                       (let () (declare (not safe)) (##car _rest58955903_)))
                      (_tl59015922_
                       (let () (declare (not safe)) (##cdr _rest58955903_))))
                  (let* ((_x5925_ _hd59005920_) (_rest5927_ _tl59015922_))
                    (declare (not safe))
                    (_K58995917_ _rest5927_ _x5925_)))
                (let () (declare (not safe)) (_else58975911_)))))))
    (define foldr2
      (lambda (_f5812_ _iv5813_ _lst15814_ _lst25815_)
        (let _recur5817_ ((_rest15819_ _lst15814_) (_rest25820_ _lst25815_))
          (let* ((_rest158215829_ _rest15819_)
                 (_else58235837_ (lambda () _iv5813_))
                 (_K58255876_
                  (lambda (_rest15840_ _x15841_)
                    (let* ((_rest258425850_ _rest25820_)
                           (_else58445858_ (lambda () _iv5813_))
                           (_K58465864_
                            (lambda (_rest25861_ _x25862_)
                              (_f5812_ _x15841_
                                       _x25862_
                                       (let ()
                                         (declare (not safe))
                                         (_recur5817_
                                          _rest15840_
                                          _rest25861_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest258425850_))
                          (let ((_hd58475867_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest258425850_)))
                                (_tl58485869_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest258425850_))))
                            (let* ((_x25872_ _hd58475867_)
                                   (_rest25874_ _tl58485869_))
                              (declare (not safe))
                              (_K58465864_ _rest25874_ _x25872_)))
                          (let () (declare (not safe)) (_else58445858_)))))))
            (if (let () (declare (not safe)) (##pair? _rest158215829_))
                (let ((_hd58265879_
                       (let () (declare (not safe)) (##car _rest158215829_)))
                      (_tl58275881_
                       (let () (declare (not safe)) (##cdr _rest158215829_))))
                  (let* ((_x15884_ _hd58265879_) (_rest15886_ _tl58275881_))
                    (declare (not safe))
                    (_K58255876_ _rest15886_ _x15884_)))
                (let () (declare (not safe)) (_else58235837_)))))))
    (define foldr
      (lambda _g8564_
        (let ((_g8563_ (let () (declare (not safe)) (##length _g8564_))))
          (cond ((let () (declare (not safe)) (##fx= _g8563_ 3))
                 (apply (lambda (_f5797_ _iv5798_ _lst5799_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f5797_ _iv5798_ _lst5799_)))
                        _g8564_))
                ((let () (declare (not safe)) (##fx= _g8563_ 4))
                 (apply (lambda (_f5801_ _iv5802_ _lst15803_ _lst25804_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f5801_ _iv5802_ _lst15803_ _lst25804_)))
                        _g8564_))
                ((let () (declare (not safe)) (##fx>= _g8563_ 4))
                 (apply foldr* _g8564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g8564_))))))
    (define foldr*
      (lambda (_f5786_ _iv5787_ . _rest5788_)
        (let _recur5790_ ((_rest5792_ _rest5788_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5792_))
              (apply _f5786_
                     (let ((__tmp8567
                            (lambda (_xs5794_ _r5795_)
                              (let ((__tmp8568 (car _xs5794_)))
                                (declare (not safe))
                                (cons __tmp8568 _r5795_))))
                           (__tmp8565
                            (list (let ((__tmp8566 (map cdr _rest5792_)))
                                    (declare (not safe))
                                    (_recur5790_ __tmp8566)))))
                       (declare (not safe))
                       (foldr1 __tmp8567 __tmp8565 _rest5792_)))
              _iv5787_))))
    (define andmap1
      (lambda (_f5746_ _lst5747_)
        (let _lp5749_ ((_rest5751_ _lst5747_))
          (let* ((_rest57525760_ _rest5751_)
                 (_else57545768_ (lambda () '#t))
                 (_K57565774_
                  (lambda (_rest5771_ _x5772_)
                    (if (_f5746_ _x5772_)
                        (let () (declare (not safe)) (_lp5749_ _rest5771_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest57525760_))
                (let ((_hd57575777_
                       (let () (declare (not safe)) (##car _rest57525760_)))
                      (_tl57585779_
                       (let () (declare (not safe)) (##cdr _rest57525760_))))
                  (let* ((_x5782_ _hd57575777_) (_rest5784_ _tl57585779_))
                    (declare (not safe))
                    (_K57565774_ _rest5784_ _x5782_)))
                (let () (declare (not safe)) (_else57545768_)))))))
    (define andmap2
      (lambda (_f5671_ _lst15672_ _lst25673_)
        (let _lp5675_ ((_rest15677_ _lst15672_) (_rest25678_ _lst25673_))
          (let* ((_rest156795687_ _rest15677_)
                 (_else56815695_ (lambda () '#t))
                 (_K56835734_
                  (lambda (_rest15698_ _x15699_)
                    (let* ((_rest257005708_ _rest25678_)
                           (_else57025716_ (lambda () '#t))
                           (_K57045722_
                            (lambda (_rest25719_ _x25720_)
                              (if (_f5671_ _x15699_ _x25720_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp5675_ _rest15698_ _rest25719_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest257005708_))
                          (let ((_hd57055725_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest257005708_)))
                                (_tl57065727_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest257005708_))))
                            (let* ((_x25730_ _hd57055725_)
                                   (_rest25732_ _tl57065727_))
                              (declare (not safe))
                              (_K57045722_ _rest25732_ _x25730_)))
                          (let () (declare (not safe)) (_else57025716_)))))))
            (if (let () (declare (not safe)) (##pair? _rest156795687_))
                (let ((_hd56845737_
                       (let () (declare (not safe)) (##car _rest156795687_)))
                      (_tl56855739_
                       (let () (declare (not safe)) (##cdr _rest156795687_))))
                  (let* ((_x15742_ _hd56845737_) (_rest15744_ _tl56855739_))
                    (declare (not safe))
                    (_K56835734_ _rest15744_ _x15742_)))
                (let () (declare (not safe)) (_else56815695_)))))))
    (define andmap
      (lambda _g8570_
        (let ((_g8569_ (let () (declare (not safe)) (##length _g8570_))))
          (cond ((let () (declare (not safe)) (##fx= _g8569_ 2))
                 (apply (lambda (_f5659_ _lst5660_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f5659_ _lst5660_)))
                        _g8570_))
                ((let () (declare (not safe)) (##fx= _g8569_ 3))
                 (apply (lambda (_f5662_ _lst15663_ _lst25664_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f5662_ _lst15663_ _lst25664_)))
                        _g8570_))
                ((let () (declare (not safe)) (##fx>= _g8569_ 3))
                 (apply andmap* _g8570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g8570_))))))
    (define andmap*
      (lambda (_f5652_ . _rest5653_)
        (let _recur5655_ ((_rest5657_ _rest5653_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5657_))
              (if (apply _f5652_ (map car _rest5657_))
                  (let ((__tmp8571 (map cdr _rest5657_)))
                    (declare (not safe))
                    (_recur5655_ __tmp8571))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f5609_ _lst5610_)
        (let _lp5612_ ((_rest5614_ _lst5610_))
          (let* ((_rest56155623_ _rest5614_)
                 (_else56175631_ (lambda () '#f))
                 (_K56195640_
                  (lambda (_rest5634_ _x5635_)
                    (let ((_$e5637_ (_f5609_ _x5635_)))
                      (if _$e5637_
                          _$e5637_
                          (let ()
                            (declare (not safe))
                            (_lp5612_ _rest5634_)))))))
            (if (let () (declare (not safe)) (##pair? _rest56155623_))
                (let ((_hd56205643_
                       (let () (declare (not safe)) (##car _rest56155623_)))
                      (_tl56215645_
                       (let () (declare (not safe)) (##cdr _rest56155623_))))
                  (let* ((_x5648_ _hd56205643_) (_rest5650_ _tl56215645_))
                    (declare (not safe))
                    (_K56195640_ _rest5650_ _x5648_)))
                (let () (declare (not safe)) (_else56175631_)))))))
    (define ormap2
      (lambda (_f5531_ _lst15532_ _lst25533_)
        (let _lp5535_ ((_rest15537_ _lst15532_) (_rest25538_ _lst25533_))
          (let* ((_rest155395547_ _rest15537_)
                 (_else55415555_ (lambda () '#f))
                 (_K55435597_
                  (lambda (_rest15558_ _x15559_)
                    (let* ((_rest255605568_ _rest25538_)
                           (_else55625576_ (lambda () '#f))
                           (_K55645585_
                            (lambda (_rest25579_ _x25580_)
                              (let ((_$e5582_ (_f5531_ _x15559_ _x25580_)))
                                (if _$e5582_
                                    _$e5582_
                                    (let ()
                                      (declare (not safe))
                                      (_lp5535_ _rest15558_ _rest25579_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest255605568_))
                          (let ((_hd55655588_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest255605568_)))
                                (_tl55665590_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest255605568_))))
                            (let* ((_x25593_ _hd55655588_)
                                   (_rest25595_ _tl55665590_))
                              (declare (not safe))
                              (_K55645585_ _rest25595_ _x25593_)))
                          (let () (declare (not safe)) (_else55625576_)))))))
            (if (let () (declare (not safe)) (##pair? _rest155395547_))
                (let ((_hd55445600_
                       (let () (declare (not safe)) (##car _rest155395547_)))
                      (_tl55455602_
                       (let () (declare (not safe)) (##cdr _rest155395547_))))
                  (let* ((_x15605_ _hd55445600_) (_rest15607_ _tl55455602_))
                    (declare (not safe))
                    (_K55435597_ _rest15607_ _x15605_)))
                (let () (declare (not safe)) (_else55415555_)))))))
    (define ormap
      (lambda _g8573_
        (let ((_g8572_ (let () (declare (not safe)) (##length _g8573_))))
          (cond ((let () (declare (not safe)) (##fx= _g8572_ 2))
                 (apply (lambda (_f5519_ _lst5520_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f5519_ _lst5520_)))
                        _g8573_))
                ((let () (declare (not safe)) (##fx= _g8572_ 3))
                 (apply (lambda (_f5522_ _lst15523_ _lst25524_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f5522_ _lst15523_ _lst25524_)))
                        _g8573_))
                ((let () (declare (not safe)) (##fx>= _g8572_ 3))
                 (apply ormap* _g8573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g8573_))))))
    (define ormap*
      (lambda (_f5509_ . _rest5510_)
        (let _recur5512_ ((_rest5514_ _rest5510_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5514_))
              (let ((_$e5516_ (apply _f5509_ (map car _rest5514_))))
                (if _$e5516_
                    _$e5516_
                    (let ((__tmp8574 (map cdr _rest5514_)))
                      (declare (not safe))
                      (_recur5512_ __tmp8574))))
              '#f))))
    (define filter
      (lambda (_f5467_ _lst5468_)
        (let _recur5470_ ((_lst5472_ _lst5468_))
          (let* ((_lst54735481_ _lst5472_)
                 (_else54755489_ (lambda () '()))
                 (_K54775497_
                  (lambda (_rest5492_ _hd5493_)
                    (if (_f5467_ _hd5493_)
                        (let ((_tail5495_
                               (let ()
                                 (declare (not safe))
                                 (_recur5470_ _rest5492_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail5495_ _rest5492_))
                              _lst5472_
                              (let ()
                                (declare (not safe))
                                (cons _hd5493_ _tail5495_))))
                        (let ()
                          (declare (not safe))
                          (_recur5470_ _rest5492_))))))
            (if (let () (declare (not safe)) (##pair? _lst54735481_))
                (let ((_hd54785500_
                       (let () (declare (not safe)) (##car _lst54735481_)))
                      (_tl54795502_
                       (let () (declare (not safe)) (##cdr _lst54735481_))))
                  (let* ((_hd5505_ _hd54785500_) (_rest5507_ _tl54795502_))
                    (declare (not safe))
                    (_K54775497_ _rest5507_ _hd5505_)))
                (let () (declare (not safe)) (_else54755489_)))))))
    (define filter-map1
      (lambda (_f5422_ _lst5423_)
        (let _recur5425_ ((_rest5427_ _lst5423_))
          (let* ((_rest54285436_ _rest5427_)
                 (_else54305444_ (lambda () '()))
                 (_K54325455_
                  (lambda (_rest5447_ _x5448_)
                    (let ((_$e5450_ (_f5422_ _x5448_)))
                      (if _$e5450_
                          ((lambda (_r5453_)
                             (let ((__tmp8575
                                    (let ()
                                      (declare (not safe))
                                      (_recur5425_ _rest5447_))))
                               (declare (not safe))
                               (cons _r5453_ __tmp8575)))
                           _$e5450_)
                          (let ()
                            (declare (not safe))
                            (_recur5425_ _rest5447_)))))))
            (if (let () (declare (not safe)) (##pair? _rest54285436_))
                (let ((_hd54335458_
                       (let () (declare (not safe)) (##car _rest54285436_)))
                      (_tl54345460_
                       (let () (declare (not safe)) (##cdr _rest54285436_))))
                  (let* ((_x5463_ _hd54335458_) (_rest5465_ _tl54345460_))
                    (declare (not safe))
                    (_K54325455_ _rest5465_ _x5463_)))
                (let () (declare (not safe)) (_else54305444_)))))))
    (define filter-map2
      (lambda (_f5342_ _lst15343_ _lst25344_)
        (let _recur5346_ ((_rest15348_ _lst15343_) (_rest25349_ _lst25344_))
          (let* ((_rest153505358_ _rest15348_)
                 (_else53525366_ (lambda () '()))
                 (_K53545410_
                  (lambda (_rest15369_ _x15370_)
                    (let* ((_rest253715379_ _rest25349_)
                           (_else53735387_ (lambda () '()))
                           (_K53755398_
                            (lambda (_rest25390_ _x25391_)
                              (let ((_$e5393_ (_f5342_ _x15370_ _x25391_)))
                                (if _$e5393_
                                    ((lambda (_r5396_)
                                       (let ((__tmp8576
                                              (let ()
                                                (declare (not safe))
                                                (_recur5346_
                                                 _rest15369_
                                                 _rest25390_))))
                                         (declare (not safe))
                                         (cons _r5396_ __tmp8576)))
                                     _$e5393_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur5346_
                                       _rest15369_
                                       _rest25390_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest253715379_))
                          (let ((_hd53765401_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest253715379_)))
                                (_tl53775403_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest253715379_))))
                            (let* ((_x25406_ _hd53765401_)
                                   (_rest25408_ _tl53775403_))
                              (declare (not safe))
                              (_K53755398_ _rest25408_ _x25406_)))
                          (let () (declare (not safe)) (_else53735387_)))))))
            (if (let () (declare (not safe)) (##pair? _rest153505358_))
                (let ((_hd53555413_
                       (let () (declare (not safe)) (##car _rest153505358_)))
                      (_tl53565415_
                       (let () (declare (not safe)) (##cdr _rest153505358_))))
                  (let* ((_x15418_ _hd53555413_) (_rest15420_ _tl53565415_))
                    (declare (not safe))
                    (_K53545410_ _rest15420_ _x15418_)))
                (let () (declare (not safe)) (_else53525366_)))))))
    (define filter-map
      (lambda _g8578_
        (let ((_g8577_ (let () (declare (not safe)) (##length _g8578_))))
          (cond ((let () (declare (not safe)) (##fx= _g8577_ 2))
                 (apply (lambda (_f5330_ _lst5331_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f5330_ _lst5331_)))
                        _g8578_))
                ((let () (declare (not safe)) (##fx= _g8577_ 3))
                 (apply (lambda (_f5333_ _lst15334_ _lst25335_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f5333_ _lst15334_ _lst25335_)))
                        _g8578_))
                ((let () (declare (not safe)) (##fx>= _g8577_ 3))
                 (apply filter-map* _g8578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g8578_))))))
    (define filter-map*
      (lambda (_f5318_ . _rest5319_)
        (let _recur5321_ ((_rest5323_ _rest5319_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5323_))
              (let ((_$e5325_ (apply _f5318_ (map car _rest5323_))))
                (if _$e5325_
                    ((lambda (_r5328_)
                       (let ((__tmp8580
                              (let ((__tmp8581 (map cdr _rest5323_)))
                                (declare (not safe))
                                (_recur5321_ __tmp8581))))
                         (declare (not safe))
                         (cons _r5328_ __tmp8580)))
                     _$e5325_)
                    (let ((__tmp8579 (map cdr _rest5323_)))
                      (declare (not safe))
                      (_recur5321_ __tmp8579))))
              '()))))
    (define iota__%
      (lambda (_count5286_ _start5287_ _step5288_)
        (if (fixnum? _count5286_)
            '#!void
            (error '"expected fixnum" _count5286_))
        (if (let () (declare (not safe)) (number? _start5287_))
            '#!void
            (error '"expected number" _start5287_))
        (if (let () (declare (not safe)) (number? _step5288_))
            '#!void
            (error '"expected number" _step5288_))
        (let ((_root5290_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp5292_ ((_i5294_ '0)
                         (_x5295_ _start5287_)
                         (_tl5296_ _root5290_))
            (if (let () (declare (not safe)) (##fx< _i5294_ _count5286_))
                (let ((_tl*5298_
                       (let () (declare (not safe)) (cons _x5295_ '()))))
                  (let () (declare (not safe)) (##set-cdr! _tl5296_ _tl*5298_))
                  (let ((__tmp8583
                         (let () (declare (not safe)) (##fx+ _i5294_ '1)))
                        (__tmp8582 (+ _x5295_ _step5288_)))
                    (declare (not safe))
                    (_lp5292_ __tmp8583 __tmp8582 _tl*5298_)))
                (let () (declare (not safe)) (##cdr _root5290_)))))))
    (define iota__0
      (lambda (_count5303_)
        (let* ((_start5305_ '0) (_step5307_ '1))
          (declare (not safe))
          (iota__% _count5303_ _start5305_ _step5307_))))
    (define iota__1
      (lambda (_count5309_ _start5310_)
        (let ((_step5312_ '1))
          (declare (not safe))
          (iota__% _count5309_ _start5310_ _step5312_))))
    (define iota
      (lambda _g8585_
        (let ((_g8584_ (let () (declare (not safe)) (##length _g8585_))))
          (cond ((let () (declare (not safe)) (##fx= _g8584_ 1))
                 (apply (lambda (_count5303_)
                          (let () (declare (not safe)) (iota__0 _count5303_)))
                        _g8585_))
                ((let () (declare (not safe)) (##fx= _g8584_ 2))
                 (apply (lambda (_count5309_ _start5310_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count5309_ _start5310_)))
                        _g8585_))
                ((let () (declare (not safe)) (##fx= _g8584_ 3))
                 (apply (lambda (_count5314_ _start5315_ _step5316_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count5314_ _start5315_ _step5316_)))
                        _g8585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g8585_))))))
    (define last-pair
      (lambda (_lst5260_)
        (let* ((_lst52615268_ _lst5260_)
               (_E52635272_
                (lambda () (error '"No clause matching" _lst52615268_)))
               (_K52645277_
                (lambda (_rest5275_)
                  (if (let () (declare (not safe)) (pair? _rest5275_))
                      (let () (declare (not safe)) (last-pair _rest5275_))
                      _lst5260_))))
          (if (let () (declare (not safe)) (##pair? _lst52615268_))
              (let* ((_tl52665280_
                      (let () (declare (not safe)) (##cdr _lst52615268_)))
                     (_rest5283_ _tl52665280_))
                (declare (not safe))
                (_K52645277_ _rest5283_))
              (let () (declare (not safe)) (_E52635272_))))))
    (define last
      (lambda (_lst5258_)
        (car (let () (declare (not safe)) (last-pair _lst5258_)))))
    (define assgetq__%
      (lambda (_key5236_ _lst5238_ _default5240_)
        (let ((_$e5243_
               (if (let () (declare (not safe)) (pair? _lst5238_))
                   (assq _key5236_ _lst5238_)
                   '#f)))
          (if _$e5243_
              (cdr _$e5243_)
              (if (let () (declare (not safe)) (procedure? _default5240_))
                  (_default5240_ _key5236_)
                  _default5240_)))))
    (define assgetq__0
      (lambda (_key5249_ _lst5250_)
        (let ((_default5252_ '#f))
          (declare (not safe))
          (assgetq__% _key5249_ _lst5250_ _default5252_))))
    (define assgetq
      (lambda _g8587_
        (let ((_g8586_ (let () (declare (not safe)) (##length _g8587_))))
          (cond ((let () (declare (not safe)) (##fx= _g8586_ 2))
                 (apply (lambda (_key5249_ _lst5250_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key5249_ _lst5250_)))
                        _g8587_))
                ((let () (declare (not safe)) (##fx= _g8586_ 3))
                 (apply (lambda (_key5254_ _lst5255_ _default5256_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key5254_ _lst5255_ _default5256_)))
                        _g8587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g8587_))))))
    (define assgetv__%
      (lambda (_key5213_ _lst5215_ _default5217_)
        (let ((_$e5220_
               (if (let () (declare (not safe)) (pair? _lst5215_))
                   (assv _key5213_ _lst5215_)
                   '#f)))
          (if _$e5220_
              (cdr _$e5220_)
              (if (let () (declare (not safe)) (procedure? _default5217_))
                  (_default5217_ _key5213_)
                  _default5217_)))))
    (define assgetv__0
      (lambda (_key5226_ _lst5227_)
        (let ((_default5229_ '#f))
          (declare (not safe))
          (assgetv__% _key5226_ _lst5227_ _default5229_))))
    (define assgetv
      (lambda _g8589_
        (let ((_g8588_ (let () (declare (not safe)) (##length _g8589_))))
          (cond ((let () (declare (not safe)) (##fx= _g8588_ 2))
                 (apply (lambda (_key5226_ _lst5227_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key5226_ _lst5227_)))
                        _g8589_))
                ((let () (declare (not safe)) (##fx= _g8588_ 3))
                 (apply (lambda (_key5231_ _lst5232_ _default5233_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key5231_ _lst5232_ _default5233_)))
                        _g8589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g8589_))))))
    (define assget__%
      (lambda (_key5190_ _lst5192_ _default5194_)
        (let ((_$e5197_
               (if (let () (declare (not safe)) (pair? _lst5192_))
                   (assoc _key5190_ _lst5192_)
                   '#f)))
          (if _$e5197_
              (cdr _$e5197_)
              (if (let () (declare (not safe)) (procedure? _default5194_))
                  (_default5194_ _key5190_)
                  _default5194_)))))
    (define assget__0
      (lambda (_key5203_ _lst5204_)
        (let ((_default5206_ '#f))
          (declare (not safe))
          (assget__% _key5203_ _lst5204_ _default5206_))))
    (define assget
      (lambda _g8591_
        (let ((_g8590_ (let () (declare (not safe)) (##length _g8591_))))
          (cond ((let () (declare (not safe)) (##fx= _g8590_ 2))
                 (apply (lambda (_key5203_ _lst5204_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key5203_ _lst5204_)))
                        _g8591_))
                ((let () (declare (not safe)) (##fx= _g8590_ 3))
                 (apply (lambda (_key5208_ _lst5209_ _default5210_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key5208_ _lst5209_ _default5210_)))
                        _g8591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g8591_))))))
    (define pgetq__%
      (lambda (_key5119_ _lst5121_ _default5123_)
        (let _lp5126_ ((_rest5129_ _lst5121_))
          (let* ((_rest51315141_ _rest5129_)
                 (_else51335149_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5123_))
                        (_default5123_ _key5119_)
                        _default5123_)))
                 (_K51355158_
                  (lambda (_rest5152_ _v5153_ _k5155_)
                    (if (let () (declare (not safe)) (eq? _k5155_ _key5119_))
                        _v5153_
                        (let () (declare (not safe)) (_lp5126_ _rest5152_))))))
            (if (let () (declare (not safe)) (##pair? _rest51315141_))
                (let ((_hd51365161_
                       (let () (declare (not safe)) (##car _rest51315141_)))
                      (_tl51375163_
                       (let () (declare (not safe)) (##cdr _rest51315141_))))
                  (let ((_k5166_ _hd51365161_))
                    (if (let () (declare (not safe)) (##pair? _tl51375163_))
                        (let ((_hd51385168_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl51375163_)))
                              (_tl51395170_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl51375163_))))
                          (let* ((_v5173_ _hd51385168_)
                                 (_rest5175_ _tl51395170_))
                            (declare (not safe))
                            (_K51355158_ _rest5175_ _v5173_ _k5166_)))
                        (let () (declare (not safe)) (_else51335149_)))))
                (let () (declare (not safe)) (_else51335149_)))))))
    (define pgetq__0
      (lambda (_key5180_ _lst5181_)
        (let ((_default5183_ '#f))
          (declare (not safe))
          (pgetq__% _key5180_ _lst5181_ _default5183_))))
    (define pgetq
      (lambda _g8593_
        (let ((_g8592_ (let () (declare (not safe)) (##length _g8593_))))
          (cond ((let () (declare (not safe)) (##fx= _g8592_ 2))
                 (apply (lambda (_key5180_ _lst5181_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key5180_ _lst5181_)))
                        _g8593_))
                ((let () (declare (not safe)) (##fx= _g8592_ 3))
                 (apply (lambda (_key5185_ _lst5186_ _default5187_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key5185_ _lst5186_ _default5187_)))
                        _g8593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g8593_))))))
    (define pgetv__%
      (lambda (_key5048_ _lst5050_ _default5052_)
        (let _lp5055_ ((_rest5058_ _lst5050_))
          (let* ((_rest50605070_ _rest5058_)
                 (_else50625078_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5052_))
                        (_default5052_ _key5048_)
                        _default5052_)))
                 (_K50645087_
                  (lambda (_rest5081_ _v5082_ _k5084_)
                    (if (let () (declare (not safe)) (eqv? _k5084_ _key5048_))
                        _v5082_
                        (let () (declare (not safe)) (_lp5055_ _rest5081_))))))
            (if (let () (declare (not safe)) (##pair? _rest50605070_))
                (let ((_hd50655090_
                       (let () (declare (not safe)) (##car _rest50605070_)))
                      (_tl50665092_
                       (let () (declare (not safe)) (##cdr _rest50605070_))))
                  (let ((_k5095_ _hd50655090_))
                    (if (let () (declare (not safe)) (##pair? _tl50665092_))
                        (let ((_hd50675097_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl50665092_)))
                              (_tl50685099_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl50665092_))))
                          (let* ((_v5102_ _hd50675097_)
                                 (_rest5104_ _tl50685099_))
                            (declare (not safe))
                            (_K50645087_ _rest5104_ _v5102_ _k5095_)))
                        (let () (declare (not safe)) (_else50625078_)))))
                (let () (declare (not safe)) (_else50625078_)))))))
    (define pgetv__0
      (lambda (_key5109_ _lst5110_)
        (let ((_default5112_ '#f))
          (declare (not safe))
          (pgetv__% _key5109_ _lst5110_ _default5112_))))
    (define pgetv
      (lambda _g8595_
        (let ((_g8594_ (let () (declare (not safe)) (##length _g8595_))))
          (cond ((let () (declare (not safe)) (##fx= _g8594_ 2))
                 (apply (lambda (_key5109_ _lst5110_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key5109_ _lst5110_)))
                        _g8595_))
                ((let () (declare (not safe)) (##fx= _g8594_ 3))
                 (apply (lambda (_key5114_ _lst5115_ _default5116_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key5114_ _lst5115_ _default5116_)))
                        _g8595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g8595_))))))
    (define pget__%
      (lambda (_key4977_ _lst4979_ _default4981_)
        (let _lp4984_ ((_rest4987_ _lst4979_))
          (let* ((_rest49894999_ _rest4987_)
                 (_else49915007_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default4981_))
                        (_default4981_ _key4977_)
                        _default4981_)))
                 (_K49935016_
                  (lambda (_rest5010_ _v5011_ _k5013_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k5013_ _key4977_))
                        _v5011_
                        (let () (declare (not safe)) (_lp4984_ _rest5010_))))))
            (if (let () (declare (not safe)) (##pair? _rest49894999_))
                (let ((_hd49945019_
                       (let () (declare (not safe)) (##car _rest49894999_)))
                      (_tl49955021_
                       (let () (declare (not safe)) (##cdr _rest49894999_))))
                  (let ((_k5024_ _hd49945019_))
                    (if (let () (declare (not safe)) (##pair? _tl49955021_))
                        (let ((_hd49965026_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl49955021_)))
                              (_tl49975028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl49955021_))))
                          (let* ((_v5031_ _hd49965026_)
                                 (_rest5033_ _tl49975028_))
                            (declare (not safe))
                            (_K49935016_ _rest5033_ _v5031_ _k5024_)))
                        (let () (declare (not safe)) (_else49915007_)))))
                (let () (declare (not safe)) (_else49915007_)))))))
    (define pget__0
      (lambda (_key5038_ _lst5039_)
        (let ((_default5041_ '#f))
          (declare (not safe))
          (pget__% _key5038_ _lst5039_ _default5041_))))
    (define pget
      (lambda _g8597_
        (let ((_g8596_ (let () (declare (not safe)) (##length _g8597_))))
          (cond ((let () (declare (not safe)) (##fx= _g8596_ 2))
                 (apply (lambda (_key5038_ _lst5039_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key5038_ _lst5039_)))
                        _g8597_))
                ((let () (declare (not safe)) (##fx= _g8596_ 3))
                 (apply (lambda (_key5043_ _lst5044_ _default5045_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key5043_ _lst5044_ _default5045_)))
                        _g8597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g8597_))))))
    (define find
      (lambda (_pred4970_ _lst4971_)
        (let ((_$e4973_
               (let () (declare (not safe)) (memf _pred4970_ _lst4971_))))
          (if _$e4973_ (car _$e4973_) '#f))))
    (define memf
      (lambda (_proc4930_ _lst4931_)
        (let _lp4933_ ((_rest4935_ _lst4931_))
          (let* ((_rest49364944_ _rest4935_)
                 (_else49384952_ (lambda () '#f))
                 (_K49404958_
                  (lambda (_tl4955_ _hd4956_)
                    (if (_proc4930_ _hd4956_)
                        _rest4935_
                        (let () (declare (not safe)) (_lp4933_ _tl4955_))))))
            (if (let () (declare (not safe)) (##pair? _rest49364944_))
                (let ((_hd49414961_
                       (let () (declare (not safe)) (##car _rest49364944_)))
                      (_tl49424963_
                       (let () (declare (not safe)) (##cdr _rest49364944_))))
                  (let* ((_hd4966_ _hd49414961_) (_tl4968_ _tl49424963_))
                    (declare (not safe))
                    (_K49404958_ _tl4968_ _hd4966_)))
                (let () (declare (not safe)) (_else49384952_)))))))
    (define remove1
      (lambda (_el4883_ _lst4885_)
        (let _lp4888_ ((_rest4891_ _lst4885_) (_r4893_ '()))
          (let* ((_rest48954903_ _rest4891_)
                 (_else48974911_ (lambda () _lst4885_))
                 (_K48994918_
                  (lambda (_rest4914_ _hd4915_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el4883_ _hd4915_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4914_ _r4893_))
                        (let ((__tmp8598
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4915_ _r4893_))))
                          (declare (not safe))
                          (_lp4888_ _rest4914_ __tmp8598))))))
            (if (let () (declare (not safe)) (##pair? _rest48954903_))
                (let ((_hd49004921_
                       (let () (declare (not safe)) (##car _rest48954903_)))
                      (_tl49014923_
                       (let () (declare (not safe)) (##cdr _rest48954903_))))
                  (let* ((_hd4926_ _hd49004921_) (_rest4928_ _tl49014923_))
                    (declare (not safe))
                    (_K48994918_ _rest4928_ _hd4926_)))
                (let () (declare (not safe)) (_else48974911_)))))))
    (define remv
      (lambda (_el4836_ _lst4838_)
        (let _lp4841_ ((_rest4844_ _lst4838_) (_r4846_ '()))
          (let* ((_rest48484856_ _rest4844_)
                 (_else48504864_ (lambda () _lst4838_))
                 (_K48524871_
                  (lambda (_rest4867_ _hd4868_)
                    (if (let () (declare (not safe)) (eqv? _el4836_ _hd4868_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4867_ _r4846_))
                        (let ((__tmp8599
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4868_ _r4846_))))
                          (declare (not safe))
                          (_lp4841_ _rest4867_ __tmp8599))))))
            (if (let () (declare (not safe)) (##pair? _rest48484856_))
                (let ((_hd48534874_
                       (let () (declare (not safe)) (##car _rest48484856_)))
                      (_tl48544876_
                       (let () (declare (not safe)) (##cdr _rest48484856_))))
                  (let* ((_hd4879_ _hd48534874_) (_rest4881_ _tl48544876_))
                    (declare (not safe))
                    (_K48524871_ _rest4881_ _hd4879_)))
                (let () (declare (not safe)) (_else48504864_)))))))
    (define remq
      (lambda (_el4789_ _lst4791_)
        (let _lp4794_ ((_rest4797_ _lst4791_) (_r4799_ '()))
          (let* ((_rest48014809_ _rest4797_)
                 (_else48034817_ (lambda () _lst4791_))
                 (_K48054824_
                  (lambda (_rest4820_ _hd4821_)
                    (if (let () (declare (not safe)) (eq? _el4789_ _hd4821_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4820_ _r4799_))
                        (let ((__tmp8600
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4821_ _r4799_))))
                          (declare (not safe))
                          (_lp4794_ _rest4820_ __tmp8600))))))
            (if (let () (declare (not safe)) (##pair? _rest48014809_))
                (let ((_hd48064827_
                       (let () (declare (not safe)) (##car _rest48014809_)))
                      (_tl48074829_
                       (let () (declare (not safe)) (##cdr _rest48014809_))))
                  (let* ((_hd4832_ _hd48064827_) (_rest4834_ _tl48074829_))
                    (declare (not safe))
                    (_K48054824_ _rest4834_ _hd4832_)))
                (let () (declare (not safe)) (_else48034817_)))))))
    (define remf
      (lambda (_proc4748_ _lst4749_)
        (let _lp4751_ ((_rest4753_ _lst4749_) (_r4754_ '()))
          (let* ((_rest47554763_ _rest4753_)
                 (_else47574771_ (lambda () _lst4749_))
                 (_K47594777_
                  (lambda (_rest4774_ _hd4775_)
                    (if (_proc4748_ _hd4775_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4774_ _r4754_))
                        (let ((__tmp8601
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4775_ _r4754_))))
                          (declare (not safe))
                          (_lp4751_ _rest4774_ __tmp8601))))))
            (if (let () (declare (not safe)) (##pair? _rest47554763_))
                (let ((_hd47604780_
                       (let () (declare (not safe)) (##car _rest47554763_)))
                      (_tl47614782_
                       (let () (declare (not safe)) (##cdr _rest47554763_))))
                  (let* ((_hd4785_ _hd47604780_) (_rest4787_ _tl47614782_))
                    (declare (not safe))
                    (_K47594777_ _rest4787_ _hd4785_)))
                (let () (declare (not safe)) (_else47574771_)))))))
    (define 1+ (lambda (_x4746_) (+ _x4746_ '1)))
    (define 1- (lambda (_x4744_) (- _x4744_ '1)))
    (define fx1+ (lambda (_x4742_) (fx+ _x4742_ '1)))
    (define fx1- (lambda (_x4740_) (fx- _x4740_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define interned-symbol?
      (lambda (_x4738_)
        (if (let () (declare (not safe)) (symbol? _x4738_))
            (let ((__tmp8602 (uninterned-symbol? _x4738_)))
              (declare (not safe))
              (not __tmp8602))
            '#f)))
    (define make-symbol
      (lambda _args4734_
        (string->symbol
         (apply string-append
                (map (lambda (_x4736_)
                       (if (let () (declare (not safe)) (string? _x4736_))
                           _x4736_
                           (if (let () (declare (not safe)) (symbol? _x4736_))
                               (symbol->string _x4736_)
                               (if (keyword? _x4736_)
                                   (keyword->string _x4736_)
                                   (if (let ()
                                         (declare (not safe))
                                         (number? _x4736_))
                                       (number->string _x4736_)
                                       (error '"cannot convert to symbol"
                                              _x4736_))))))
                     _args4734_)))))
    (define interned-keyword?
      (lambda (_x4732_)
        (if (keyword? _x4732_)
            (let ((__tmp8603 (uninterned-keyword? _x4732_)))
              (declare (not safe))
              (not __tmp8603))
            '#f)))
    (define symbol->keyword
      (lambda (_sym4730_)
        ((if (uninterned-symbol? _sym4730_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym4730_))))
    (define keyword->symbol
      (lambda (_kw4728_)
        ((if (uninterned-keyword? _kw4728_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw4728_))))
    (define bytes->string__%
      (lambda (_bstr4706_ _enc4707_)
        (if (let () (declare (not safe)) (eq? _enc4707_ 'UTF-8))
            (utf8->string _bstr4706_)
            (let* ((_in4709_
                    (open-input-u8vector
                     (let ((__tmp8604
                            (let ((__tmp8605
                                   (let ((__tmp8606
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr4706_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp8606))))
                              (declare (not safe))
                              (cons _enc4707_ __tmp8605))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp8604))))
                   (_len4711_ (u8vector-length _bstr4706_))
                   (_out4713_ (make-string _len4711_))
                   (_n4715_ (read-substring _out4713_ '0 _len4711_ _in4709_)))
              (string-shrink! _out4713_ _n4715_)
              _out4713_))))
    (define bytes->string__0
      (lambda (_bstr4721_)
        (let ((_enc4723_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr4721_ _enc4723_))))
    (define bytes->string
      (lambda _g8608_
        (let ((_g8607_ (let () (declare (not safe)) (##length _g8608_))))
          (cond ((let () (declare (not safe)) (##fx= _g8607_ 1))
                 (apply (lambda (_bstr4721_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr4721_)))
                        _g8608_))
                ((let () (declare (not safe)) (##fx= _g8607_ 2))
                 (apply (lambda (_bstr4725_ _enc4726_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr4725_ _enc4726_)))
                        _g8608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g8608_))))))
    (define string->bytes__%
      (lambda (_str4692_ _enc4693_)
        (if (let () (declare (not safe)) (eq? _enc4693_ 'UTF-8))
            (string->utf8 _str4692_)
            (substring->bytes
             _str4692_
             '0
             (string-length _str4692_)
             _enc4693_))))
    (define string->bytes__0
      (lambda (_str4698_)
        (let ((_enc4700_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str4698_ _enc4700_))))
    (define string->bytes
      (lambda _g8610_
        (let ((_g8609_ (let () (declare (not safe)) (##length _g8610_))))
          (cond ((let () (declare (not safe)) (##fx= _g8609_ 1))
                 (apply (lambda (_str4698_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str4698_)))
                        _g8610_))
                ((let () (declare (not safe)) (##fx= _g8609_ 2))
                 (apply (lambda (_str4702_ _enc4703_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str4702_ _enc4703_)))
                        _g8610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g8610_))))))
    (define substring->bytes__%
      (lambda (_str4670_ _start4671_ _end4672_ _enc4673_)
        (if (let () (declare (not safe)) (eq? _enc4673_ 'UTF-8))
            (string->utf8 _str4670_ _start4671_ _end4672_)
            (let ((_out4675_
                   (open-output-u8vector
                    (let ((__tmp8611
                           (let () (declare (not safe)) (cons _enc4673_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp8611)))))
              (write-substring _str4670_ _start4671_ _end4672_ _out4675_)
              (get-output-u8vector _out4675_)))))
    (define substring->bytes__0
      (lambda (_str4680_ _start4681_ _end4682_)
        (let ((_enc4684_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__% _str4680_ _start4681_ _end4682_ _enc4684_))))
    (define substring->bytes
      (lambda _g8613_
        (let ((_g8612_ (let () (declare (not safe)) (##length _g8613_))))
          (cond ((let () (declare (not safe)) (##fx= _g8612_ 3))
                 (apply (lambda (_str4680_ _start4681_ _end4682_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str4680_
                             _start4681_
                             _end4682_)))
                        _g8613_))
                ((let () (declare (not safe)) (##fx= _g8612_ 4))
                 (apply (lambda (_str4686_ _start4687_ _end4688_ _enc4689_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str4686_
                             _start4687_
                             _end4688_
                             _enc4689_)))
                        _g8613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g8613_))))))
    (define string-empty?
      (lambda (_str4667_)
        (let ((__tmp8614 (string-length _str4667_)))
          (declare (not safe))
          (##fxzero? __tmp8614))))
    (define string-prefix?
      (lambda (_prefix4657_ _str4658_)
        (let ((_str-len4660_ (string-length _str4658_))
              (_prefix-len4661_ (string-length _prefix4657_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len4661_ _str-len4660_))
              (let _lp4663_ ((_i4665_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i4665_ _prefix-len4661_))
                    (if (let ((__tmp8617
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str4658_ _i4665_)))
                              (__tmp8616
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix4657_ _i4665_))))
                          (declare (not safe))
                          (eq? __tmp8617 __tmp8616))
                        (let ((__tmp8615
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i4665_ '1))))
                          (declare (not safe))
                          (_lp4663_ __tmp8615))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str4635_ _char4636_ _start4637_)
        (let ((_len4639_ (string-length _str4635_)))
          (let _lp4641_ ((_k4643_ _start4637_))
            (if (let () (declare (not safe)) (##fx< _k4643_ _len4639_))
                (if (let ((__tmp8619
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4635_ _k4643_))))
                      (declare (not safe))
                      (eq? _char4636_ __tmp8619))
                    _k4643_
                    (let ((__tmp8618
                           (let () (declare (not safe)) (##fx+ _k4643_ '1))))
                      (declare (not safe))
                      (_lp4641_ __tmp8618)))
                '#f)))))
    (define string-index__0
      (lambda (_str4648_ _char4649_)
        (let ((_start4651_ '0))
          (declare (not safe))
          (string-index__% _str4648_ _char4649_ _start4651_))))
    (define string-index
      (lambda _g8621_
        (let ((_g8620_ (let () (declare (not safe)) (##length _g8621_))))
          (cond ((let () (declare (not safe)) (##fx= _g8620_ 2))
                 (apply (lambda (_str4648_ _char4649_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str4648_ _char4649_)))
                        _g8621_))
                ((let () (declare (not safe)) (##fx= _g8620_ 3))
                 (apply (lambda (_str4653_ _char4654_ _start4655_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str4653_
                             _char4654_
                             _start4655_)))
                        _g8621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g8621_))))))
    (define string-rindex__%
      (lambda (_str4606_ _char4607_ _start4608_)
        (let* ((_len4610_ (string-length _str4606_))
               (_start4615_
                (let ((_$e4612_ _start4608_))
                  (if _$e4612_
                      _$e4612_
                      (let () (declare (not safe)) (##fx- _len4610_ '1))))))
          (let _lp4618_ ((_k4620_ _start4615_))
            (if (let () (declare (not safe)) (##fx>= _k4620_ '0))
                (if (let ((__tmp8623
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4606_ _k4620_))))
                      (declare (not safe))
                      (eq? _char4607_ __tmp8623))
                    _k4620_
                    (let ((__tmp8622
                           (let () (declare (not safe)) (##fx- _k4620_ '1))))
                      (declare (not safe))
                      (_lp4618_ __tmp8622)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str4625_ _char4626_)
        (let ((_start4628_ '#f))
          (declare (not safe))
          (string-rindex__% _str4625_ _char4626_ _start4628_))))
    (define string-rindex
      (lambda _g8625_
        (let ((_g8624_ (let () (declare (not safe)) (##length _g8625_))))
          (cond ((let () (declare (not safe)) (##fx= _g8624_ 2))
                 (apply (lambda (_str4625_ _char4626_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str4625_ _char4626_)))
                        _g8625_))
                ((let () (declare (not safe)) (##fx= _g8624_ 3))
                 (apply (lambda (_str4630_ _char4631_ _start4632_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str4630_
                             _char4631_
                             _start4632_)))
                        _g8625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g8625_))))))
    (define string-split
      (lambda (_str4590_ _char4591_)
        (let ((_len4593_ (string-length _str4590_)))
          (let _lp4595_ ((_start4597_ '0) (_r4598_ '()))
            (let ((_$e4600_
                   (let ()
                     (declare (not safe))
                     (string-index _str4590_ _char4591_ _start4597_))))
              (if _$e4600_
                  ((lambda (_end4603_)
                     (let ((__tmp8629
                            (let () (declare (not safe)) (##fx+ _end4603_ '1)))
                           (__tmp8627
                            (let ((__tmp8628
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str4590_
                                      _start4597_
                                      _end4603_))))
                              (declare (not safe))
                              (cons __tmp8628 _r4598_))))
                       (declare (not safe))
                       (_lp4595_ __tmp8629 __tmp8627)))
                   _$e4600_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start4597_ _len4593_))
                      (let ((__tmp8626
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str4590_
                                      _start4597_
                                      _len4593_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp8626 _r4598_))
                      (reverse _r4598_))))))))
    (define string-join
      (lambda (_strs4495_ _join4496_)
        (letrec ((_join-length4498_
                  (lambda (_strs4549_ _jlen4550_)
                    (let _lp4552_ ((_rest4554_ _strs4549_) (_len4555_ '0))
                      (let* ((_rest45564564_ _rest4554_)
                             (_else45584572_ (lambda () '0))
                             (_K45604578_
                              (lambda (_rest4575_ _hd4576_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd4576_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest4575_))
                                        (let ((__tmp8631
                                               (let ((__tmp8632
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd4576_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp8632
                                                        _jlen4550_
                                                        _len4555_))))
                                          (declare (not safe))
                                          (_lp4552_ _rest4575_ __tmp8631))
                                        (let ((__tmp8630
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd4576_))))
                                          (declare (not safe))
                                          (##fx+ __tmp8630 _len4555_)))
                                    (error '"expected string" _hd4576_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest45564564_))
                            (let ((_hd45614581_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest45564564_)))
                                  (_tl45624583_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest45564564_))))
                              (let* ((_hd4586_ _hd45614581_)
                                     (_rest4588_ _tl45624583_))
                                (declare (not safe))
                                (_K45604578_ _rest4588_ _hd4586_)))
                            (let ()
                              (declare (not safe))
                              (_else45584572_))))))))
          (let* ((_join4500_
                  (if (let () (declare (not safe)) (char? _join4496_))
                      (string _join4496_)
                      (if (let () (declare (not safe)) (string? _join4496_))
                          _join4496_
                          (error '"expected string or char" _join4496_))))
                 (_jlen4502_
                  (let () (declare (not safe)) (##string-length _join4500_)))
                 (_olen4504_
                  (let ()
                    (declare (not safe))
                    (_join-length4498_ _strs4495_ _jlen4502_)))
                 (_ostr4506_ (make-string _olen4504_)))
            (let _lp4509_ ((_rest4511_ _strs4495_) (_k4512_ '0))
              (let* ((_rest45134521_ _rest4511_)
                     (_else45154529_ (lambda () '""))
                     (_K45174537_
                      (lambda (_rest4532_ _hd4533_)
                        (let ((_hdlen4535_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd4533_))))
                          (if (let () (declare (not safe)) (pair? _rest4532_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd4533_
                                   '0
                                   _hdlen4535_
                                   _ostr4506_
                                   _k4512_))
                                (let ((__tmp8633
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k4512_ _hdlen4535_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join4500_
                                   '0
                                   _jlen4502_
                                   _ostr4506_
                                   __tmp8633))
                                (let ((__tmp8634
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k4512_
                                                _hdlen4535_
                                                _jlen4502_))))
                                  (declare (not safe))
                                  (_lp4509_ _rest4532_ __tmp8634)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd4533_
                                   '0
                                   _hdlen4535_
                                   _ostr4506_
                                   _k4512_))
                                _ostr4506_))))))
                (if (let () (declare (not safe)) (##pair? _rest45134521_))
                    (let ((_hd45184540_
                           (let ()
                             (declare (not safe))
                             (##car _rest45134521_)))
                          (_tl45194542_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest45134521_))))
                      (let* ((_hd4545_ _hd45184540_) (_rest4547_ _tl45194542_))
                        (declare (not safe))
                        (_K45174537_ _rest4547_ _hd4545_)))
                    (let () (declare (not safe)) (_else45154529_)))))))))))
