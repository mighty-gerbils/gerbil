(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1701718632)
  (begin
    (define displayln
      (lambda _args6433_
        (let _lp6435_ ((_rest6437_ _args6433_))
          (let* ((_rest64386446_ _rest6437_)
                 (_else64406454_ (lambda () (newline)))
                 (_K64426460_
                  (lambda (_rest6457_ _hd6458_)
                    (display _hd6458_)
                    (let () (declare (not safe)) (_lp6435_ _rest6457_)))))
            (if (let () (declare (not safe)) (##pair? _rest64386446_))
                (let ((_hd64436463_
                       (let () (declare (not safe)) (##car _rest64386446_)))
                      (_tl64446465_
                       (let () (declare (not safe)) (##cdr _rest64386446_))))
                  (let* ((_hd6468_ _hd64436463_) (_rest6470_ _tl64446465_))
                    (declare (not safe))
                    (_K64426460_ _rest6470_ _hd6468_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args6431_ (for-each display _args6431_)))
    (define file-newer?
      (lambda (_file16424_ _file26425_)
        (letrec ((_modification-time6427_
                  (lambda (_file6429_)
                    (let ((__tmp6482
                           (file-info-last-modification-time
                            (file-info _file6429_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp6482)))))
          (let ((__tmp6484
                 (let ()
                   (declare (not safe))
                   (_modification-time6427_ _file16424_)))
                (__tmp6483
                 (let ()
                   (declare (not safe))
                   (_modification-time6427_ _file26425_))))
            (declare (not safe))
            (##fl> __tmp6484 __tmp6483)))))
    (define create-directory*__%
      (lambda (_dir6398_ _perms6399_)
        (letrec ((_create16401_
                  (lambda (_path6412_)
                    (if (file-exists? _path6412_)
                        (if (let ((__tmp6485 (file-type _path6412_)))
                              (declare (not safe))
                              (eq? __tmp6485 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path6412_))
                        (if _perms6399_
                            (create-directory
                             (list 'path:
                                   _path6412_
                                   'permissions:
                                   _perms6399_))
                            (create-directory _path6412_))))))
          (if (file-exists? _dir6398_)
              '#!void
              (let _lp6403_ ((_start6405_ '0))
                (let ((_$e6407_
                       (let ()
                         (declare (not safe))
                         (string-index _dir6398_ '#\/ _start6405_))))
                  (if _$e6407_
                      ((lambda (_x6410_)
                         (if (let () (declare (not safe)) (##fx> _x6410_ '0))
                             (let ((__tmp6486
                                    (substring _dir6398_ '0 _x6410_)))
                               (declare (not safe))
                               (_create16401_ __tmp6486))
                             '#!void)
                         (let ((__tmp6487
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x6410_ '1))))
                           (declare (not safe))
                           (_lp6403_ __tmp6487)))
                       _$e6407_)
                      (let ()
                        (declare (not safe))
                        (_create16401_ _dir6398_)))))))))
    (define create-directory*__0
      (lambda (_dir6417_)
        (let ((_perms6419_ '493))
          (declare (not safe))
          (create-directory*__% _dir6417_ _perms6419_))))
    (define create-directory*
      (lambda _g6489_
        (let ((_g6488_ (let () (declare (not safe)) (##length _g6489_))))
          (cond ((let () (declare (not safe)) (##fx= _g6488_ 1))
                 (apply (lambda (_dir6417_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir6417_)))
                        _g6489_))
                ((let () (declare (not safe)) (##fx= _g6488_ 2))
                 (apply (lambda (_dir6421_ _perms6422_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir6421_ _perms6422_)))
                        _g6489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g6489_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g6490_ '#t))
    (define true?
      (lambda (_obj6394_) (let () (declare (not safe)) (eq? _obj6394_ '#t))))
    (define false (lambda _g6491_ '#f))
    (define void (lambda _g6492_ '#!void))
    (define void?
      (lambda (_obj6390_)
        (let () (declare (not safe)) (eq? _obj6390_ '#!void))))
    (define eof-object (lambda _g6493_ '#!eof))
    (define identity (lambda (_obj6387_) _obj6387_))
    (define dssl-object?
      (lambda (_obj6385_)
        (if (memq _obj6385_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj6383_)
        (let () (declare (not safe)) (eq? _obj6383_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj6381_)
        (let () (declare (not safe)) (eq? _obj6381_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj6379_)
        (let () (declare (not safe)) (eq? _obj6379_ '#!optional))))
    (define immediate?
      (lambda (_obj6375_)
        (let* ((_t6377_ (let () (declare (not safe)) (##type _obj6375_)))
               (__tmp6494 (let () (declare (not safe)) (##fxand _t6377_ '1))))
          (declare (not safe))
          (##fxzero? __tmp6494))))
    (define nonnegative-fixnum?
      (lambda (_obj6373_)
        (if (fixnum? _obj6373_)
            (let ((__tmp6495 (fxnegative? _obj6373_)))
              (declare (not safe))
              (not __tmp6495))
            '#f)))
    (define values-count
      (lambda (_obj6371_)
        (if (let () (declare (not safe)) (##values? _obj6371_))
            (let () (declare (not safe)) (##vector-length _obj6371_))
            '1)))
    (define values-ref
      (lambda (_obj6368_ _k6369_)
        (if (let () (declare (not safe)) (##values? _obj6368_))
            (let () (declare (not safe)) (##vector-ref _obj6368_ _k6369_))
            _obj6368_)))
    (define values->list
      (lambda (_obj6366_)
        (if (let () (declare (not safe)) (##values? _obj6366_))
            (let () (declare (not safe)) (##vector->list _obj6366_))
            (list _obj6366_))))
    (define subvector->list__%
      (lambda (_obj6351_ _start6352_)
        (let ((_lst6354_
               (let () (declare (not safe)) (##vector->list _obj6351_))))
          (list-tail _lst6354_ _start6352_))))
    (define subvector->list__0
      (lambda (_obj6359_)
        (let ((_start6361_ '0))
          (declare (not safe))
          (subvector->list__% _obj6359_ _start6361_))))
    (define subvector->list
      (lambda _g6497_
        (let ((_g6496_ (let () (declare (not safe)) (##length _g6497_))))
          (cond ((let () (declare (not safe)) (##fx= _g6496_ 1))
                 (apply (lambda (_obj6359_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj6359_)))
                        _g6497_))
                ((let () (declare (not safe)) (##fx= _g6496_ 2))
                 (apply (lambda (_obj6363_ _start6364_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj6363_ _start6364_)))
                        _g6497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g6497_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args6348_ (apply make-table 'test: eq? _args6348_)))
    (define make-hash-table-eqv
      (lambda _args6346_ (apply make-table 'test: eqv? _args6346_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst6343_ . _args6344_)
        (apply list->table _lst6343_ 'test: eq? _args6344_)))
    (define list->hash-table-eqv
      (lambda (_lst6340_ . _args6341_)
        (apply list->table _lst6340_ 'test: eqv? _args6341_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht6337_ _k6338_) (table-ref _ht6337_ _k6338_ '#f)))
    (define hash-put!
      (lambda (_ht6333_ _k6334_ _v6335_)
        (table-set! _ht6333_ _k6334_ _v6335_)))
    (define hash-update!__%
      (lambda (_ht6312_ _k6313_ _update6314_ _default6315_)
        (let* ((_value6317_
                (let ()
                  (declare (not safe))
                  (table-ref _ht6312_ _k6313_ _default6315_)))
               (__tmp6498 (_update6314_ _value6317_)))
          (declare (not safe))
          (table-set! _ht6312_ _k6313_ __tmp6498))))
    (define hash-update!__0
      (lambda (_ht6322_ _k6323_ _update6324_)
        (let ((_default6326_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht6322_ _k6323_ _update6324_ _default6326_))))
    (define hash-update!
      (lambda _g6500_
        (let ((_g6499_ (let () (declare (not safe)) (##length _g6500_))))
          (cond ((let () (declare (not safe)) (##fx= _g6499_ 3))
                 (apply (lambda (_ht6322_ _k6323_ _update6324_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0 _ht6322_ _k6323_ _update6324_)))
                        _g6500_))
                ((let () (declare (not safe)) (##fx= _g6499_ 4))
                 (apply (lambda (_ht6328_ _k6329_ _update6330_ _default6331_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht6328_
                             _k6329_
                             _update6330_
                             _default6331_)))
                        _g6500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g6500_))))))
    (define hash-remove!
      (lambda (_ht6308_ _k6309_) (table-set! _ht6308_ _k6309_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht6306_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht6306_))))
    (define plist->hash-table__%
      (lambda (_plst6241_ _ht6242_)
        (let _lp6244_ ((_rest6246_ _plst6241_))
          (let* ((_rest62476258_ _rest6246_)
                 (_E62506262_
                  (lambda () (error '"No clause matching" _rest62476258_))))
            (let ((_K62526277_
                   (lambda (_rest6273_ _v6274_ _k6275_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht6242_ _k6275_ _v6274_))
                     (let () (declare (not safe)) (_lp6244_ _rest6273_))))
                  (_K62516267_ (lambda () _ht6242_)))
              (let ((_try-match62496270_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest62476258_ '()))
                           (let () (declare (not safe)) (_K62516267_))
                           (let () (declare (not safe)) (_E62506262_))))))
                (if (let () (declare (not safe)) (##pair? _rest62476258_))
                    (let ((_tl62546282_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest62476258_)))
                          (_hd62536280_
                           (let ()
                             (declare (not safe))
                             (##car _rest62476258_))))
                      (if (let () (declare (not safe)) (##pair? _tl62546282_))
                          (let ((_tl62566289_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl62546282_)))
                                (_hd62556287_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl62546282_))))
                            (let ((_k6285_ _hd62536280_)
                                  (_v6292_ _hd62556287_)
                                  (_rest6294_ _tl62566289_))
                              (let ()
                                (declare (not safe))
                                (_K62526277_ _rest6294_ _v6292_ _k6285_))))
                          (let () (declare (not safe)) (_try-match62496270_))))
                    (let () (declare (not safe)) (_try-match62496270_)))))))))
    (define plist->hash-table__0
      (lambda (_plst6299_)
        (let ((_ht6301_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst6299_ _ht6301_))))
    (define plist->hash-table
      (lambda _g6502_
        (let ((_g6501_ (let () (declare (not safe)) (##length _g6502_))))
          (cond ((let () (declare (not safe)) (##fx= _g6501_ 1))
                 (apply (lambda (_plst6299_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst6299_)))
                        _g6502_))
                ((let () (declare (not safe)) (##fx= _g6501_ 2))
                 (apply (lambda (_plst6303_ _ht6304_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst6303_ _ht6304_)))
                        _g6502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g6502_))))))
    (define plist->hash-table-eq
      (lambda (_plst6238_)
        (let ((__tmp6503
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst6238_ __tmp6503))))
    (define plist->hash-table-eqv
      (lambda (_plst6236_)
        (let ((__tmp6504
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst6236_ __tmp6504))))
    (define hash-key?
      (lambda (_ht6233_ _k6234_)
        (let ((__tmp6505
               (let ((__tmp6506
                      (let ()
                        (declare (not safe))
                        (table-ref _ht6233_ _k6234_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp6506 absent-value))))
          (declare (not safe))
          (not __tmp6505))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun6226_ _ht6227_)
        (let ((__tmp6507
               (lambda (_k6229_ _v6230_ _r6231_)
                 (let ((__tmp6508 (_fun6226_ _k6229_ _v6230_)))
                   (declare (not safe))
                   (cons __tmp6508 _r6231_)))))
          (declare (not safe))
          (hash-fold __tmp6507 '() _ht6227_))))
    (define hash-fold
      (lambda (_fun6217_ _iv6218_ _ht6219_)
        (let ((_ret6221_ _iv6218_))
          (let ((__tmp6509
                 (lambda (_k6223_ _v6224_)
                   (set! _ret6221_ (_fun6217_ _k6223_ _v6224_ _ret6221_)))))
            (declare (not safe))
            (table-for-each __tmp6509 _ht6219_))
          _ret6221_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht6212_)
        (let ((__tmp6510 (lambda (_k6214_ _v6215_) _k6214_)))
          (declare (not safe))
          (hash-map __tmp6510 _ht6212_))))
    (define hash-values
      (lambda (_ht6207_)
        (let ((__tmp6511 (lambda (_k6209_ _v6210_) _v6210_)))
          (declare (not safe))
          (hash-map __tmp6511 _ht6207_))))
    (define hash-copy
      (lambda (_hd6202_ . _rest6203_)
        (let ((_hd6205_ (table-copy _hd6202_)))
          (if (let () (declare (not safe)) (null? _rest6203_))
              _hd6205_
              (apply hash-copy! _hd6205_ _rest6203_)))))
    (define hash-copy!
      (lambda (_hd6197_ . _rest6198_)
        (for-each
         (lambda (_r6200_) (table-merge! _hd6197_ _r6200_))
         _rest6198_)
        _hd6197_))
    (define hash-merge
      (lambda (_hd6191_ . _rest6192_)
        (let ((__tmp6512
               (lambda (_tab6194_ _r6195_) (table-merge _r6195_ _tab6194_))))
          (declare (not safe))
          (foldl1 __tmp6512 _hd6191_ _rest6192_))))
    (define hash-merge!
      (lambda (_hd6185_ . _rest6186_)
        (let ((__tmp6513
               (lambda (_tab6188_ _r6189_) (table-merge! _r6189_ _tab6188_))))
          (declare (not safe))
          (foldl1 __tmp6513 _hd6185_ _rest6186_))))
    (define hash-clear!__%
      (lambda (_ht6170_ _size6171_)
        (let ((_gcht6173_
               (let () (declare (not safe)) (##vector-ref _ht6170_ '5))))
          (if (let ((__tmp6514 (fixnum? _gcht6173_)))
                (declare (not safe))
                (not __tmp6514))
              (let ()
                (declare (not safe))
                (##vector-set! _ht6170_ '5 _size6171_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht6178_)
        (let ((_size6180_ '0))
          (declare (not safe))
          (hash-clear!__% _ht6178_ _size6180_))))
    (define hash-clear!
      (lambda _g6516_
        (let ((_g6515_ (let () (declare (not safe)) (##length _g6516_))))
          (cond ((let () (declare (not safe)) (##fx= _g6515_ 1))
                 (apply (lambda (_ht6178_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht6178_)))
                        _g6516_))
                ((let () (declare (not safe)) (##fx= _g6515_ 2))
                 (apply (lambda (_ht6182_ _size6183_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht6182_ _size6183_)))
                        _g6516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g6516_))))))
    (define make-list__%
      (lambda (_k6151_ _val6152_)
        (if (fixnum? _k6151_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k6151_))
        (let _lp6154_ ((_n6156_ '0) (_r6157_ '()))
          (if (let () (declare (not safe)) (##fx< _n6156_ _k6151_))
              (let ((__tmp6518
                     (let () (declare (not safe)) (##fx+ _n6156_ '1)))
                    (__tmp6517
                     (let () (declare (not safe)) (cons _val6152_ _r6157_))))
                (declare (not safe))
                (_lp6154_ __tmp6518 __tmp6517))
              _r6157_))))
    (define make-list__0
      (lambda (_k6162_)
        (let ((_val6164_ '#f))
          (declare (not safe))
          (make-list__% _k6162_ _val6164_))))
    (define make-list
      (lambda _g6520_
        (let ((_g6519_ (let () (declare (not safe)) (##length _g6520_))))
          (cond ((let () (declare (not safe)) (##fx= _g6519_ 1))
                 (apply (lambda (_k6162_)
                          (let () (declare (not safe)) (make-list__0 _k6162_)))
                        _g6520_))
                ((let () (declare (not safe)) (##fx= _g6519_ 2))
                 (apply (lambda (_k6166_ _val6167_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k6166_ _val6167_)))
                        _g6520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g6520_))))))
    (define cons*
      (lambda (_x6141_ _y6142_ . _rest6143_)
        (letrec ((_recur6145_
                  (lambda (_x6147_ _rest6148_)
                    (if (let () (declare (not safe)) (pair? _rest6148_))
                        (let ((__tmp6521
                               (let ((__tmp6523
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6148_)))
                                     (__tmp6522
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6148_))))
                                 (declare (not safe))
                                 (_recur6145_ __tmp6523 __tmp6522))))
                          (declare (not safe))
                          (cons _x6147_ __tmp6521))
                        _x6147_))))
          (let ((__tmp6524
                 (let ()
                   (declare (not safe))
                   (_recur6145_ _y6142_ _rest6143_))))
            (declare (not safe))
            (cons _x6141_ __tmp6524)))))
    (define foldl1
      (lambda (_f6099_ _iv6100_ _lst6101_)
        (let _lp6103_ ((_rest6105_ _lst6101_) (_r6106_ _iv6100_))
          (let* ((_rest61076115_ _rest6105_)
                 (_else61096123_ (lambda () _r6106_))
                 (_K61116129_
                  (lambda (_rest6126_ _x6127_)
                    (let ((__tmp6525 (_f6099_ _x6127_ _r6106_)))
                      (declare (not safe))
                      (_lp6103_ _rest6126_ __tmp6525)))))
            (if (let () (declare (not safe)) (##pair? _rest61076115_))
                (let ((_hd61126132_
                       (let () (declare (not safe)) (##car _rest61076115_)))
                      (_tl61136134_
                       (let () (declare (not safe)) (##cdr _rest61076115_))))
                  (let* ((_x6137_ _hd61126132_) (_rest6139_ _tl61136134_))
                    (declare (not safe))
                    (_K61116129_ _rest6139_ _x6137_)))
                (let () (declare (not safe)) (_else61096123_)))))))
    (define foldl2
      (lambda (_f6022_ _iv6023_ _lst16024_ _lst26025_)
        (let _lp6027_ ((_rest16029_ _lst16024_)
                       (_rest26030_ _lst26025_)
                       (_r6031_ _iv6023_))
          (let* ((_rest160326040_ _rest16029_)
                 (_else60346048_ (lambda () _r6031_))
                 (_K60366087_
                  (lambda (_rest16051_ _x16052_)
                    (let* ((_rest260536061_ _rest26030_)
                           (_else60556069_ (lambda () _r6031_))
                           (_K60576075_
                            (lambda (_rest26072_ _x26073_)
                              (let ((__tmp6526
                                     (_f6022_ _x16052_ _x26073_ _r6031_)))
                                (declare (not safe))
                                (_lp6027_
                                 _rest16051_
                                 _rest26072_
                                 __tmp6526)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest260536061_))
                          (let ((_hd60586078_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest260536061_)))
                                (_tl60596080_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest260536061_))))
                            (let* ((_x26083_ _hd60586078_)
                                   (_rest26085_ _tl60596080_))
                              (declare (not safe))
                              (_K60576075_ _rest26085_ _x26083_)))
                          (let () (declare (not safe)) (_else60556069_)))))))
            (if (let () (declare (not safe)) (##pair? _rest160326040_))
                (let ((_hd60376090_
                       (let () (declare (not safe)) (##car _rest160326040_)))
                      (_tl60386092_
                       (let () (declare (not safe)) (##cdr _rest160326040_))))
                  (let* ((_x16095_ _hd60376090_) (_rest16097_ _tl60386092_))
                    (declare (not safe))
                    (_K60366087_ _rest16097_ _x16095_)))
                (let () (declare (not safe)) (_else60346048_)))))))
    (define foldl
      (lambda _g6528_
        (let ((_g6527_ (let () (declare (not safe)) (##length _g6528_))))
          (cond ((let () (declare (not safe)) (##fx= _g6527_ 3))
                 (apply (lambda (_f6007_ _iv6008_ _lst6009_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f6007_ _iv6008_ _lst6009_)))
                        _g6528_))
                ((let () (declare (not safe)) (##fx= _g6527_ 4))
                 (apply (lambda (_f6011_ _iv6012_ _lst16013_ _lst26014_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f6011_ _iv6012_ _lst16013_ _lst26014_)))
                        _g6528_))
                ((let () (declare (not safe)) (##fx>= _g6527_ 4))
                 (apply foldl* _g6528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g6528_))))))
    (define foldl*
      (lambda (_f5995_ _iv5996_ . _rest5997_)
        (let _recur5999_ ((_iv6001_ _iv5996_) (_rest6002_ _rest5997_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest6002_))
              (let ((__tmp6530
                     (apply _f5995_
                            (let ((__tmp6532
                                   (lambda (_xs6004_ _r6005_)
                                     (let ((__tmp6533 (car _xs6004_)))
                                       (declare (not safe))
                                       (cons __tmp6533 _r6005_))))
                                  (__tmp6531 (list _iv6001_)))
                              (declare (not safe))
                              (foldr1 __tmp6532 __tmp6531 _rest6002_))))
                    (__tmp6529 (map cdr _rest6002_)))
                (declare (not safe))
                (_recur5999_ __tmp6530 __tmp6529))
              _iv6001_))))
    (define foldr1
      (lambda (_f5954_ _iv5955_ _lst5956_)
        (let _recur5958_ ((_rest5960_ _lst5956_))
          (let* ((_rest59615969_ _rest5960_)
                 (_else59635977_ (lambda () _iv5955_))
                 (_K59655983_
                  (lambda (_rest5980_ _x5981_)
                    (_f5954_ _x5981_
                             (let ()
                               (declare (not safe))
                               (_recur5958_ _rest5980_))))))
            (if (let () (declare (not safe)) (##pair? _rest59615969_))
                (let ((_hd59665986_
                       (let () (declare (not safe)) (##car _rest59615969_)))
                      (_tl59675988_
                       (let () (declare (not safe)) (##cdr _rest59615969_))))
                  (let* ((_x5991_ _hd59665986_) (_rest5993_ _tl59675988_))
                    (declare (not safe))
                    (_K59655983_ _rest5993_ _x5991_)))
                (let () (declare (not safe)) (_else59635977_)))))))
    (define foldr2
      (lambda (_f5878_ _iv5879_ _lst15880_ _lst25881_)
        (let _recur5883_ ((_rest15885_ _lst15880_) (_rest25886_ _lst25881_))
          (let* ((_rest158875895_ _rest15885_)
                 (_else58895903_ (lambda () _iv5879_))
                 (_K58915942_
                  (lambda (_rest15906_ _x15907_)
                    (let* ((_rest259085916_ _rest25886_)
                           (_else59105924_ (lambda () _iv5879_))
                           (_K59125930_
                            (lambda (_rest25927_ _x25928_)
                              (_f5878_ _x15907_
                                       _x25928_
                                       (let ()
                                         (declare (not safe))
                                         (_recur5883_
                                          _rest15906_
                                          _rest25927_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest259085916_))
                          (let ((_hd59135933_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest259085916_)))
                                (_tl59145935_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest259085916_))))
                            (let* ((_x25938_ _hd59135933_)
                                   (_rest25940_ _tl59145935_))
                              (declare (not safe))
                              (_K59125930_ _rest25940_ _x25938_)))
                          (let () (declare (not safe)) (_else59105924_)))))))
            (if (let () (declare (not safe)) (##pair? _rest158875895_))
                (let ((_hd58925945_
                       (let () (declare (not safe)) (##car _rest158875895_)))
                      (_tl58935947_
                       (let () (declare (not safe)) (##cdr _rest158875895_))))
                  (let* ((_x15950_ _hd58925945_) (_rest15952_ _tl58935947_))
                    (declare (not safe))
                    (_K58915942_ _rest15952_ _x15950_)))
                (let () (declare (not safe)) (_else58895903_)))))))
    (define foldr
      (lambda _g6535_
        (let ((_g6534_ (let () (declare (not safe)) (##length _g6535_))))
          (cond ((let () (declare (not safe)) (##fx= _g6534_ 3))
                 (apply (lambda (_f5863_ _iv5864_ _lst5865_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f5863_ _iv5864_ _lst5865_)))
                        _g6535_))
                ((let () (declare (not safe)) (##fx= _g6534_ 4))
                 (apply (lambda (_f5867_ _iv5868_ _lst15869_ _lst25870_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f5867_ _iv5868_ _lst15869_ _lst25870_)))
                        _g6535_))
                ((let () (declare (not safe)) (##fx>= _g6534_ 4))
                 (apply foldr* _g6535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g6535_))))))
    (define foldr*
      (lambda (_f5852_ _iv5853_ . _rest5854_)
        (let _recur5856_ ((_rest5858_ _rest5854_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5858_))
              (apply _f5852_
                     (let ((__tmp6538
                            (lambda (_xs5860_ _r5861_)
                              (let ((__tmp6539 (car _xs5860_)))
                                (declare (not safe))
                                (cons __tmp6539 _r5861_))))
                           (__tmp6536
                            (list (let ((__tmp6537 (map cdr _rest5858_)))
                                    (declare (not safe))
                                    (_recur5856_ __tmp6537)))))
                       (declare (not safe))
                       (foldr1 __tmp6538 __tmp6536 _rest5858_)))
              _iv5853_))))
    (define andmap1
      (lambda (_f5812_ _lst5813_)
        (let _lp5815_ ((_rest5817_ _lst5813_))
          (let* ((_rest58185826_ _rest5817_)
                 (_else58205834_ (lambda () '#t))
                 (_K58225840_
                  (lambda (_rest5837_ _x5838_)
                    (if (_f5812_ _x5838_)
                        (let () (declare (not safe)) (_lp5815_ _rest5837_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest58185826_))
                (let ((_hd58235843_
                       (let () (declare (not safe)) (##car _rest58185826_)))
                      (_tl58245845_
                       (let () (declare (not safe)) (##cdr _rest58185826_))))
                  (let* ((_x5848_ _hd58235843_) (_rest5850_ _tl58245845_))
                    (declare (not safe))
                    (_K58225840_ _rest5850_ _x5848_)))
                (let () (declare (not safe)) (_else58205834_)))))))
    (define andmap2
      (lambda (_f5737_ _lst15738_ _lst25739_)
        (let _lp5741_ ((_rest15743_ _lst15738_) (_rest25744_ _lst25739_))
          (let* ((_rest157455753_ _rest15743_)
                 (_else57475761_ (lambda () '#t))
                 (_K57495800_
                  (lambda (_rest15764_ _x15765_)
                    (let* ((_rest257665774_ _rest25744_)
                           (_else57685782_ (lambda () '#t))
                           (_K57705788_
                            (lambda (_rest25785_ _x25786_)
                              (if (_f5737_ _x15765_ _x25786_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp5741_ _rest15764_ _rest25785_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest257665774_))
                          (let ((_hd57715791_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest257665774_)))
                                (_tl57725793_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest257665774_))))
                            (let* ((_x25796_ _hd57715791_)
                                   (_rest25798_ _tl57725793_))
                              (declare (not safe))
                              (_K57705788_ _rest25798_ _x25796_)))
                          (let () (declare (not safe)) (_else57685782_)))))))
            (if (let () (declare (not safe)) (##pair? _rest157455753_))
                (let ((_hd57505803_
                       (let () (declare (not safe)) (##car _rest157455753_)))
                      (_tl57515805_
                       (let () (declare (not safe)) (##cdr _rest157455753_))))
                  (let* ((_x15808_ _hd57505803_) (_rest15810_ _tl57515805_))
                    (declare (not safe))
                    (_K57495800_ _rest15810_ _x15808_)))
                (let () (declare (not safe)) (_else57475761_)))))))
    (define andmap
      (lambda _g6541_
        (let ((_g6540_ (let () (declare (not safe)) (##length _g6541_))))
          (cond ((let () (declare (not safe)) (##fx= _g6540_ 2))
                 (apply (lambda (_f5725_ _lst5726_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f5725_ _lst5726_)))
                        _g6541_))
                ((let () (declare (not safe)) (##fx= _g6540_ 3))
                 (apply (lambda (_f5728_ _lst15729_ _lst25730_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f5728_ _lst15729_ _lst25730_)))
                        _g6541_))
                ((let () (declare (not safe)) (##fx>= _g6540_ 3))
                 (apply andmap* _g6541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g6541_))))))
    (define andmap*
      (lambda (_f5718_ . _rest5719_)
        (let _recur5721_ ((_rest5723_ _rest5719_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5723_))
              (if (apply _f5718_ (map car _rest5723_))
                  (let ((__tmp6542 (map cdr _rest5723_)))
                    (declare (not safe))
                    (_recur5721_ __tmp6542))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f5675_ _lst5676_)
        (let _lp5678_ ((_rest5680_ _lst5676_))
          (let* ((_rest56815689_ _rest5680_)
                 (_else56835697_ (lambda () '#f))
                 (_K56855706_
                  (lambda (_rest5700_ _x5701_)
                    (let ((_$e5703_ (_f5675_ _x5701_)))
                      (if _$e5703_
                          _$e5703_
                          (let ()
                            (declare (not safe))
                            (_lp5678_ _rest5700_)))))))
            (if (let () (declare (not safe)) (##pair? _rest56815689_))
                (let ((_hd56865709_
                       (let () (declare (not safe)) (##car _rest56815689_)))
                      (_tl56875711_
                       (let () (declare (not safe)) (##cdr _rest56815689_))))
                  (let* ((_x5714_ _hd56865709_) (_rest5716_ _tl56875711_))
                    (declare (not safe))
                    (_K56855706_ _rest5716_ _x5714_)))
                (let () (declare (not safe)) (_else56835697_)))))))
    (define ormap2
      (lambda (_f5597_ _lst15598_ _lst25599_)
        (let _lp5601_ ((_rest15603_ _lst15598_) (_rest25604_ _lst25599_))
          (let* ((_rest156055613_ _rest15603_)
                 (_else56075621_ (lambda () '#f))
                 (_K56095663_
                  (lambda (_rest15624_ _x15625_)
                    (let* ((_rest256265634_ _rest25604_)
                           (_else56285642_ (lambda () '#f))
                           (_K56305651_
                            (lambda (_rest25645_ _x25646_)
                              (let ((_$e5648_ (_f5597_ _x15625_ _x25646_)))
                                (if _$e5648_
                                    _$e5648_
                                    (let ()
                                      (declare (not safe))
                                      (_lp5601_ _rest15624_ _rest25645_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest256265634_))
                          (let ((_hd56315654_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest256265634_)))
                                (_tl56325656_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest256265634_))))
                            (let* ((_x25659_ _hd56315654_)
                                   (_rest25661_ _tl56325656_))
                              (declare (not safe))
                              (_K56305651_ _rest25661_ _x25659_)))
                          (let () (declare (not safe)) (_else56285642_)))))))
            (if (let () (declare (not safe)) (##pair? _rest156055613_))
                (let ((_hd56105666_
                       (let () (declare (not safe)) (##car _rest156055613_)))
                      (_tl56115668_
                       (let () (declare (not safe)) (##cdr _rest156055613_))))
                  (let* ((_x15671_ _hd56105666_) (_rest15673_ _tl56115668_))
                    (declare (not safe))
                    (_K56095663_ _rest15673_ _x15671_)))
                (let () (declare (not safe)) (_else56075621_)))))))
    (define ormap
      (lambda _g6544_
        (let ((_g6543_ (let () (declare (not safe)) (##length _g6544_))))
          (cond ((let () (declare (not safe)) (##fx= _g6543_ 2))
                 (apply (lambda (_f5585_ _lst5586_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f5585_ _lst5586_)))
                        _g6544_))
                ((let () (declare (not safe)) (##fx= _g6543_ 3))
                 (apply (lambda (_f5588_ _lst15589_ _lst25590_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f5588_ _lst15589_ _lst25590_)))
                        _g6544_))
                ((let () (declare (not safe)) (##fx>= _g6543_ 3))
                 (apply ormap* _g6544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g6544_))))))
    (define ormap*
      (lambda (_f5575_ . _rest5576_)
        (let _recur5578_ ((_rest5580_ _rest5576_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5580_))
              (let ((_$e5582_ (apply _f5575_ (map car _rest5580_))))
                (if _$e5582_
                    _$e5582_
                    (let ((__tmp6545 (map cdr _rest5580_)))
                      (declare (not safe))
                      (_recur5578_ __tmp6545))))
              '#f))))
    (define filter
      (lambda (_f5533_ _lst5534_)
        (let _recur5536_ ((_lst5538_ _lst5534_))
          (let* ((_lst55395547_ _lst5538_)
                 (_else55415555_ (lambda () '()))
                 (_K55435563_
                  (lambda (_rest5558_ _hd5559_)
                    (if (_f5533_ _hd5559_)
                        (let ((_tail5561_
                               (let ()
                                 (declare (not safe))
                                 (_recur5536_ _rest5558_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail5561_ _rest5558_))
                              _lst5538_
                              (let ()
                                (declare (not safe))
                                (cons _hd5559_ _tail5561_))))
                        (let ()
                          (declare (not safe))
                          (_recur5536_ _rest5558_))))))
            (if (let () (declare (not safe)) (##pair? _lst55395547_))
                (let ((_hd55445566_
                       (let () (declare (not safe)) (##car _lst55395547_)))
                      (_tl55455568_
                       (let () (declare (not safe)) (##cdr _lst55395547_))))
                  (let* ((_hd5571_ _hd55445566_) (_rest5573_ _tl55455568_))
                    (declare (not safe))
                    (_K55435563_ _rest5573_ _hd5571_)))
                (let () (declare (not safe)) (_else55415555_)))))))
    (define filter-map1
      (lambda (_f5488_ _lst5489_)
        (let _recur5491_ ((_rest5493_ _lst5489_))
          (let* ((_rest54945502_ _rest5493_)
                 (_else54965510_ (lambda () '()))
                 (_K54985521_
                  (lambda (_rest5513_ _x5514_)
                    (let ((_$e5516_ (_f5488_ _x5514_)))
                      (if _$e5516_
                          ((lambda (_r5519_)
                             (let ((__tmp6546
                                    (let ()
                                      (declare (not safe))
                                      (_recur5491_ _rest5513_))))
                               (declare (not safe))
                               (cons _r5519_ __tmp6546)))
                           _$e5516_)
                          (let ()
                            (declare (not safe))
                            (_recur5491_ _rest5513_)))))))
            (if (let () (declare (not safe)) (##pair? _rest54945502_))
                (let ((_hd54995524_
                       (let () (declare (not safe)) (##car _rest54945502_)))
                      (_tl55005526_
                       (let () (declare (not safe)) (##cdr _rest54945502_))))
                  (let* ((_x5529_ _hd54995524_) (_rest5531_ _tl55005526_))
                    (declare (not safe))
                    (_K54985521_ _rest5531_ _x5529_)))
                (let () (declare (not safe)) (_else54965510_)))))))
    (define filter-map2
      (lambda (_f5408_ _lst15409_ _lst25410_)
        (let _recur5412_ ((_rest15414_ _lst15409_) (_rest25415_ _lst25410_))
          (let* ((_rest154165424_ _rest15414_)
                 (_else54185432_ (lambda () '()))
                 (_K54205476_
                  (lambda (_rest15435_ _x15436_)
                    (let* ((_rest254375445_ _rest25415_)
                           (_else54395453_ (lambda () '()))
                           (_K54415464_
                            (lambda (_rest25456_ _x25457_)
                              (let ((_$e5459_ (_f5408_ _x15436_ _x25457_)))
                                (if _$e5459_
                                    ((lambda (_r5462_)
                                       (let ((__tmp6547
                                              (let ()
                                                (declare (not safe))
                                                (_recur5412_
                                                 _rest15435_
                                                 _rest25456_))))
                                         (declare (not safe))
                                         (cons _r5462_ __tmp6547)))
                                     _$e5459_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur5412_
                                       _rest15435_
                                       _rest25456_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest254375445_))
                          (let ((_hd54425467_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest254375445_)))
                                (_tl54435469_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest254375445_))))
                            (let* ((_x25472_ _hd54425467_)
                                   (_rest25474_ _tl54435469_))
                              (declare (not safe))
                              (_K54415464_ _rest25474_ _x25472_)))
                          (let () (declare (not safe)) (_else54395453_)))))))
            (if (let () (declare (not safe)) (##pair? _rest154165424_))
                (let ((_hd54215479_
                       (let () (declare (not safe)) (##car _rest154165424_)))
                      (_tl54225481_
                       (let () (declare (not safe)) (##cdr _rest154165424_))))
                  (let* ((_x15484_ _hd54215479_) (_rest15486_ _tl54225481_))
                    (declare (not safe))
                    (_K54205476_ _rest15486_ _x15484_)))
                (let () (declare (not safe)) (_else54185432_)))))))
    (define filter-map
      (lambda _g6549_
        (let ((_g6548_ (let () (declare (not safe)) (##length _g6549_))))
          (cond ((let () (declare (not safe)) (##fx= _g6548_ 2))
                 (apply (lambda (_f5396_ _lst5397_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f5396_ _lst5397_)))
                        _g6549_))
                ((let () (declare (not safe)) (##fx= _g6548_ 3))
                 (apply (lambda (_f5399_ _lst15400_ _lst25401_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f5399_ _lst15400_ _lst25401_)))
                        _g6549_))
                ((let () (declare (not safe)) (##fx>= _g6548_ 3))
                 (apply filter-map* _g6549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g6549_))))))
    (define filter-map*
      (lambda (_f5384_ . _rest5385_)
        (let _recur5387_ ((_rest5389_ _rest5385_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5389_))
              (let ((_$e5391_ (apply _f5384_ (map car _rest5389_))))
                (if _$e5391_
                    ((lambda (_r5394_)
                       (let ((__tmp6551
                              (let ((__tmp6552 (map cdr _rest5389_)))
                                (declare (not safe))
                                (_recur5387_ __tmp6552))))
                         (declare (not safe))
                         (cons _r5394_ __tmp6551)))
                     _$e5391_)
                    (let ((__tmp6550 (map cdr _rest5389_)))
                      (declare (not safe))
                      (_recur5387_ __tmp6550))))
              '()))))
    (define iota__%
      (lambda (_count5352_ _start5353_ _step5354_)
        (if (fixnum? _count5352_)
            '#!void
            (error '"expected fixnum" _count5352_))
        (if (let () (declare (not safe)) (number? _start5353_))
            '#!void
            (error '"expected number" _start5353_))
        (if (let () (declare (not safe)) (number? _step5354_))
            '#!void
            (error '"expected number" _step5354_))
        (let ((_root5356_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp5358_ ((_i5360_ '0)
                         (_x5361_ _start5353_)
                         (_tl5362_ _root5356_))
            (if (let () (declare (not safe)) (##fx< _i5360_ _count5352_))
                (let ((_tl*5364_
                       (let () (declare (not safe)) (cons _x5361_ '()))))
                  (let () (declare (not safe)) (##set-cdr! _tl5362_ _tl*5364_))
                  (let ((__tmp6554
                         (let () (declare (not safe)) (##fx+ _i5360_ '1)))
                        (__tmp6553 (+ _x5361_ _step5354_)))
                    (declare (not safe))
                    (_lp5358_ __tmp6554 __tmp6553 _tl*5364_)))
                (let () (declare (not safe)) (##cdr _root5356_)))))))
    (define iota__0
      (lambda (_count5369_)
        (let* ((_start5371_ '0) (_step5373_ '1))
          (declare (not safe))
          (iota__% _count5369_ _start5371_ _step5373_))))
    (define iota__1
      (lambda (_count5375_ _start5376_)
        (let ((_step5378_ '1))
          (declare (not safe))
          (iota__% _count5375_ _start5376_ _step5378_))))
    (define iota
      (lambda _g6556_
        (let ((_g6555_ (let () (declare (not safe)) (##length _g6556_))))
          (cond ((let () (declare (not safe)) (##fx= _g6555_ 1))
                 (apply (lambda (_count5369_)
                          (let () (declare (not safe)) (iota__0 _count5369_)))
                        _g6556_))
                ((let () (declare (not safe)) (##fx= _g6555_ 2))
                 (apply (lambda (_count5375_ _start5376_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count5375_ _start5376_)))
                        _g6556_))
                ((let () (declare (not safe)) (##fx= _g6555_ 3))
                 (apply (lambda (_count5380_ _start5381_ _step5382_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count5380_ _start5381_ _step5382_)))
                        _g6556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g6556_))))))
    (define last-pair
      (lambda (_lst5326_)
        (let* ((_lst53275334_ _lst5326_)
               (_E53295338_
                (lambda () (error '"No clause matching" _lst53275334_)))
               (_K53305343_
                (lambda (_rest5341_)
                  (if (let () (declare (not safe)) (pair? _rest5341_))
                      (let () (declare (not safe)) (last-pair _rest5341_))
                      _lst5326_))))
          (if (let () (declare (not safe)) (##pair? _lst53275334_))
              (let* ((_tl53325346_
                      (let () (declare (not safe)) (##cdr _lst53275334_)))
                     (_rest5349_ _tl53325346_))
                (declare (not safe))
                (_K53305343_ _rest5349_))
              (let () (declare (not safe)) (_E53295338_))))))
    (define last
      (lambda (_lst5324_)
        (car (let () (declare (not safe)) (last-pair _lst5324_)))))
    (define assgetq__%
      (lambda (_key5302_ _lst5304_ _default5306_)
        (let ((_$e5309_
               (if (let () (declare (not safe)) (pair? _lst5304_))
                   (assq _key5302_ _lst5304_)
                   '#f)))
          (if _$e5309_
              (cdr _$e5309_)
              (if (let () (declare (not safe)) (procedure? _default5306_))
                  (_default5306_ _key5302_)
                  _default5306_)))))
    (define assgetq__0
      (lambda (_key5315_ _lst5316_)
        (let ((_default5318_ '#f))
          (declare (not safe))
          (assgetq__% _key5315_ _lst5316_ _default5318_))))
    (define assgetq
      (lambda _g6558_
        (let ((_g6557_ (let () (declare (not safe)) (##length _g6558_))))
          (cond ((let () (declare (not safe)) (##fx= _g6557_ 2))
                 (apply (lambda (_key5315_ _lst5316_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key5315_ _lst5316_)))
                        _g6558_))
                ((let () (declare (not safe)) (##fx= _g6557_ 3))
                 (apply (lambda (_key5320_ _lst5321_ _default5322_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key5320_ _lst5321_ _default5322_)))
                        _g6558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g6558_))))))
    (define assgetv__%
      (lambda (_key5279_ _lst5281_ _default5283_)
        (let ((_$e5286_
               (if (let () (declare (not safe)) (pair? _lst5281_))
                   (assv _key5279_ _lst5281_)
                   '#f)))
          (if _$e5286_
              (cdr _$e5286_)
              (if (let () (declare (not safe)) (procedure? _default5283_))
                  (_default5283_ _key5279_)
                  _default5283_)))))
    (define assgetv__0
      (lambda (_key5292_ _lst5293_)
        (let ((_default5295_ '#f))
          (declare (not safe))
          (assgetv__% _key5292_ _lst5293_ _default5295_))))
    (define assgetv
      (lambda _g6560_
        (let ((_g6559_ (let () (declare (not safe)) (##length _g6560_))))
          (cond ((let () (declare (not safe)) (##fx= _g6559_ 2))
                 (apply (lambda (_key5292_ _lst5293_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key5292_ _lst5293_)))
                        _g6560_))
                ((let () (declare (not safe)) (##fx= _g6559_ 3))
                 (apply (lambda (_key5297_ _lst5298_ _default5299_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key5297_ _lst5298_ _default5299_)))
                        _g6560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g6560_))))))
    (define assget__%
      (lambda (_key5256_ _lst5258_ _default5260_)
        (let ((_$e5263_
               (if (let () (declare (not safe)) (pair? _lst5258_))
                   (assoc _key5256_ _lst5258_)
                   '#f)))
          (if _$e5263_
              (cdr _$e5263_)
              (if (let () (declare (not safe)) (procedure? _default5260_))
                  (_default5260_ _key5256_)
                  _default5260_)))))
    (define assget__0
      (lambda (_key5269_ _lst5270_)
        (let ((_default5272_ '#f))
          (declare (not safe))
          (assget__% _key5269_ _lst5270_ _default5272_))))
    (define assget
      (lambda _g6562_
        (let ((_g6561_ (let () (declare (not safe)) (##length _g6562_))))
          (cond ((let () (declare (not safe)) (##fx= _g6561_ 2))
                 (apply (lambda (_key5269_ _lst5270_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key5269_ _lst5270_)))
                        _g6562_))
                ((let () (declare (not safe)) (##fx= _g6561_ 3))
                 (apply (lambda (_key5274_ _lst5275_ _default5276_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key5274_ _lst5275_ _default5276_)))
                        _g6562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g6562_))))))
    (define pgetq__%
      (lambda (_key5185_ _lst5187_ _default5189_)
        (let _lp5192_ ((_rest5195_ _lst5187_))
          (let* ((_rest51975207_ _rest5195_)
                 (_else51995215_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5189_))
                        (_default5189_ _key5185_)
                        _default5189_)))
                 (_K52015224_
                  (lambda (_rest5218_ _v5219_ _k5221_)
                    (if (let () (declare (not safe)) (eq? _k5221_ _key5185_))
                        _v5219_
                        (let () (declare (not safe)) (_lp5192_ _rest5218_))))))
            (if (let () (declare (not safe)) (##pair? _rest51975207_))
                (let ((_hd52025227_
                       (let () (declare (not safe)) (##car _rest51975207_)))
                      (_tl52035229_
                       (let () (declare (not safe)) (##cdr _rest51975207_))))
                  (let ((_k5232_ _hd52025227_))
                    (if (let () (declare (not safe)) (##pair? _tl52035229_))
                        (let ((_hd52045234_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl52035229_)))
                              (_tl52055236_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl52035229_))))
                          (let* ((_v5239_ _hd52045234_)
                                 (_rest5241_ _tl52055236_))
                            (declare (not safe))
                            (_K52015224_ _rest5241_ _v5239_ _k5232_)))
                        (let () (declare (not safe)) (_else51995215_)))))
                (let () (declare (not safe)) (_else51995215_)))))))
    (define pgetq__0
      (lambda (_key5246_ _lst5247_)
        (let ((_default5249_ '#f))
          (declare (not safe))
          (pgetq__% _key5246_ _lst5247_ _default5249_))))
    (define pgetq
      (lambda _g6564_
        (let ((_g6563_ (let () (declare (not safe)) (##length _g6564_))))
          (cond ((let () (declare (not safe)) (##fx= _g6563_ 2))
                 (apply (lambda (_key5246_ _lst5247_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key5246_ _lst5247_)))
                        _g6564_))
                ((let () (declare (not safe)) (##fx= _g6563_ 3))
                 (apply (lambda (_key5251_ _lst5252_ _default5253_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key5251_ _lst5252_ _default5253_)))
                        _g6564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g6564_))))))
    (define pgetv__%
      (lambda (_key5114_ _lst5116_ _default5118_)
        (let _lp5121_ ((_rest5124_ _lst5116_))
          (let* ((_rest51265136_ _rest5124_)
                 (_else51285144_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5118_))
                        (_default5118_ _key5114_)
                        _default5118_)))
                 (_K51305153_
                  (lambda (_rest5147_ _v5148_ _k5150_)
                    (if (let () (declare (not safe)) (eqv? _k5150_ _key5114_))
                        _v5148_
                        (let () (declare (not safe)) (_lp5121_ _rest5147_))))))
            (if (let () (declare (not safe)) (##pair? _rest51265136_))
                (let ((_hd51315156_
                       (let () (declare (not safe)) (##car _rest51265136_)))
                      (_tl51325158_
                       (let () (declare (not safe)) (##cdr _rest51265136_))))
                  (let ((_k5161_ _hd51315156_))
                    (if (let () (declare (not safe)) (##pair? _tl51325158_))
                        (let ((_hd51335163_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl51325158_)))
                              (_tl51345165_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl51325158_))))
                          (let* ((_v5168_ _hd51335163_)
                                 (_rest5170_ _tl51345165_))
                            (declare (not safe))
                            (_K51305153_ _rest5170_ _v5168_ _k5161_)))
                        (let () (declare (not safe)) (_else51285144_)))))
                (let () (declare (not safe)) (_else51285144_)))))))
    (define pgetv__0
      (lambda (_key5175_ _lst5176_)
        (let ((_default5178_ '#f))
          (declare (not safe))
          (pgetv__% _key5175_ _lst5176_ _default5178_))))
    (define pgetv
      (lambda _g6566_
        (let ((_g6565_ (let () (declare (not safe)) (##length _g6566_))))
          (cond ((let () (declare (not safe)) (##fx= _g6565_ 2))
                 (apply (lambda (_key5175_ _lst5176_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key5175_ _lst5176_)))
                        _g6566_))
                ((let () (declare (not safe)) (##fx= _g6565_ 3))
                 (apply (lambda (_key5180_ _lst5181_ _default5182_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key5180_ _lst5181_ _default5182_)))
                        _g6566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g6566_))))))
    (define pget__%
      (lambda (_key5043_ _lst5045_ _default5047_)
        (let _lp5050_ ((_rest5053_ _lst5045_))
          (let* ((_rest50555065_ _rest5053_)
                 (_else50575073_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5047_))
                        (_default5047_ _key5043_)
                        _default5047_)))
                 (_K50595082_
                  (lambda (_rest5076_ _v5077_ _k5079_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k5079_ _key5043_))
                        _v5077_
                        (let () (declare (not safe)) (_lp5050_ _rest5076_))))))
            (if (let () (declare (not safe)) (##pair? _rest50555065_))
                (let ((_hd50605085_
                       (let () (declare (not safe)) (##car _rest50555065_)))
                      (_tl50615087_
                       (let () (declare (not safe)) (##cdr _rest50555065_))))
                  (let ((_k5090_ _hd50605085_))
                    (if (let () (declare (not safe)) (##pair? _tl50615087_))
                        (let ((_hd50625092_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl50615087_)))
                              (_tl50635094_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl50615087_))))
                          (let* ((_v5097_ _hd50625092_)
                                 (_rest5099_ _tl50635094_))
                            (declare (not safe))
                            (_K50595082_ _rest5099_ _v5097_ _k5090_)))
                        (let () (declare (not safe)) (_else50575073_)))))
                (let () (declare (not safe)) (_else50575073_)))))))
    (define pget__0
      (lambda (_key5104_ _lst5105_)
        (let ((_default5107_ '#f))
          (declare (not safe))
          (pget__% _key5104_ _lst5105_ _default5107_))))
    (define pget
      (lambda _g6568_
        (let ((_g6567_ (let () (declare (not safe)) (##length _g6568_))))
          (cond ((let () (declare (not safe)) (##fx= _g6567_ 2))
                 (apply (lambda (_key5104_ _lst5105_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key5104_ _lst5105_)))
                        _g6568_))
                ((let () (declare (not safe)) (##fx= _g6567_ 3))
                 (apply (lambda (_key5109_ _lst5110_ _default5111_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key5109_ _lst5110_ _default5111_)))
                        _g6568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g6568_))))))
    (define find
      (lambda (_pred5036_ _lst5037_)
        (let ((_$e5039_
               (let () (declare (not safe)) (memf _pred5036_ _lst5037_))))
          (if _$e5039_ (car _$e5039_) '#f))))
    (define memf
      (lambda (_proc4996_ _lst4997_)
        (let _lp4999_ ((_rest5001_ _lst4997_))
          (let* ((_rest50025010_ _rest5001_)
                 (_else50045018_ (lambda () '#f))
                 (_K50065024_
                  (lambda (_tl5021_ _hd5022_)
                    (if (_proc4996_ _hd5022_)
                        _rest5001_
                        (let () (declare (not safe)) (_lp4999_ _tl5021_))))))
            (if (let () (declare (not safe)) (##pair? _rest50025010_))
                (let ((_hd50075027_
                       (let () (declare (not safe)) (##car _rest50025010_)))
                      (_tl50085029_
                       (let () (declare (not safe)) (##cdr _rest50025010_))))
                  (let* ((_hd5032_ _hd50075027_) (_tl5034_ _tl50085029_))
                    (declare (not safe))
                    (_K50065024_ _tl5034_ _hd5032_)))
                (let () (declare (not safe)) (_else50045018_)))))))
    (define remove1
      (lambda (_el4949_ _lst4951_)
        (let _lp4954_ ((_rest4957_ _lst4951_) (_r4959_ '()))
          (let* ((_rest49614969_ _rest4957_)
                 (_else49634977_ (lambda () _lst4951_))
                 (_K49654984_
                  (lambda (_rest4980_ _hd4981_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el4949_ _hd4981_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4980_ _r4959_))
                        (let ((__tmp6569
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4981_ _r4959_))))
                          (declare (not safe))
                          (_lp4954_ _rest4980_ __tmp6569))))))
            (if (let () (declare (not safe)) (##pair? _rest49614969_))
                (let ((_hd49664987_
                       (let () (declare (not safe)) (##car _rest49614969_)))
                      (_tl49674989_
                       (let () (declare (not safe)) (##cdr _rest49614969_))))
                  (let* ((_hd4992_ _hd49664987_) (_rest4994_ _tl49674989_))
                    (declare (not safe))
                    (_K49654984_ _rest4994_ _hd4992_)))
                (let () (declare (not safe)) (_else49634977_)))))))
    (define remv
      (lambda (_el4902_ _lst4904_)
        (let _lp4907_ ((_rest4910_ _lst4904_) (_r4912_ '()))
          (let* ((_rest49144922_ _rest4910_)
                 (_else49164930_ (lambda () _lst4904_))
                 (_K49184937_
                  (lambda (_rest4933_ _hd4934_)
                    (if (let () (declare (not safe)) (eqv? _el4902_ _hd4934_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4933_ _r4912_))
                        (let ((__tmp6570
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4934_ _r4912_))))
                          (declare (not safe))
                          (_lp4907_ _rest4933_ __tmp6570))))))
            (if (let () (declare (not safe)) (##pair? _rest49144922_))
                (let ((_hd49194940_
                       (let () (declare (not safe)) (##car _rest49144922_)))
                      (_tl49204942_
                       (let () (declare (not safe)) (##cdr _rest49144922_))))
                  (let* ((_hd4945_ _hd49194940_) (_rest4947_ _tl49204942_))
                    (declare (not safe))
                    (_K49184937_ _rest4947_ _hd4945_)))
                (let () (declare (not safe)) (_else49164930_)))))))
    (define remq
      (lambda (_el4855_ _lst4857_)
        (let _lp4860_ ((_rest4863_ _lst4857_) (_r4865_ '()))
          (let* ((_rest48674875_ _rest4863_)
                 (_else48694883_ (lambda () _lst4857_))
                 (_K48714890_
                  (lambda (_rest4886_ _hd4887_)
                    (if (let () (declare (not safe)) (eq? _el4855_ _hd4887_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4886_ _r4865_))
                        (let ((__tmp6571
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4887_ _r4865_))))
                          (declare (not safe))
                          (_lp4860_ _rest4886_ __tmp6571))))))
            (if (let () (declare (not safe)) (##pair? _rest48674875_))
                (let ((_hd48724893_
                       (let () (declare (not safe)) (##car _rest48674875_)))
                      (_tl48734895_
                       (let () (declare (not safe)) (##cdr _rest48674875_))))
                  (let* ((_hd4898_ _hd48724893_) (_rest4900_ _tl48734895_))
                    (declare (not safe))
                    (_K48714890_ _rest4900_ _hd4898_)))
                (let () (declare (not safe)) (_else48694883_)))))))
    (define remf
      (lambda (_proc4814_ _lst4815_)
        (let _lp4817_ ((_rest4819_ _lst4815_) (_r4820_ '()))
          (let* ((_rest48214829_ _rest4819_)
                 (_else48234837_ (lambda () _lst4815_))
                 (_K48254843_
                  (lambda (_rest4840_ _hd4841_)
                    (if (_proc4814_ _hd4841_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4840_ _r4820_))
                        (let ((__tmp6572
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4841_ _r4820_))))
                          (declare (not safe))
                          (_lp4817_ _rest4840_ __tmp6572))))))
            (if (let () (declare (not safe)) (##pair? _rest48214829_))
                (let ((_hd48264846_
                       (let () (declare (not safe)) (##car _rest48214829_)))
                      (_tl48274848_
                       (let () (declare (not safe)) (##cdr _rest48214829_))))
                  (let* ((_hd4851_ _hd48264846_) (_rest4853_ _tl48274848_))
                    (declare (not safe))
                    (_K48254843_ _rest4853_ _hd4851_)))
                (let () (declare (not safe)) (_else48234837_)))))))
    (define 1+ (lambda (_x4812_) (+ _x4812_ '1)))
    (define 1- (lambda (_x4810_) (- _x4810_ '1)))
    (define fx1+ (lambda (_x4808_) (fx+ _x4808_ '1)))
    (define fx1- (lambda (_x4806_) (fx- _x4806_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x4804_)
        (if (fixnum? _x4804_)
            (let () (declare (not safe)) (##fx>= _x4804_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x4802_)
        (if (fixnum? _x4802_)
            (let () (declare (not safe)) (##fx> _x4802_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x4800_) (let () (declare (not safe)) (eq? _x4800_ '0))))
    (define fx<0?
      (lambda (_x4798_)
        (if (fixnum? _x4798_)
            (let () (declare (not safe)) (##fx< _x4798_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x4796_)
        (if (fixnum? _x4796_)
            (let () (declare (not safe)) (##fx<= _x4796_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x4794_)
        (if (let () (declare (not safe)) (symbol? _x4794_))
            (let ((__tmp6573 (uninterned-symbol? _x4794_)))
              (declare (not safe))
              (not __tmp6573))
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
                  (let ((__tmp6574 (car _x4766_)))
                    (declare (not safe))
                    (display-as-string __tmp6574 _port4767_))
                  (let ((__tmp6575 (cdr _x4766_)))
                    (declare (not safe))
                    (display-as-string __tmp6575 _port4767_)))
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
      (lambda _g6577_
        (let ((_g6576_ (let () (declare (not safe)) (##length _g6577_))))
          (cond ((let () (declare (not safe)) (##fx= _g6576_ 1))
                 (apply (lambda (_x4754_)
                          (let () (declare (not safe)) (as-string__0 _x4754_)))
                        _g6577_))
                (#t (apply as-string__1 _g6577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g6577_))))))
    (define make-symbol__0
      (lambda (_x4750_)
        (if (interned-symbol? _x4750_)
            _x4750_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x4750_))))))
    (define make-symbol__1
      (lambda _args4752_ (string->symbol (apply as-string _args4752_))))
    (define make-symbol
      (lambda _g6579_
        (let ((_g6578_ (let () (declare (not safe)) (##length _g6579_))))
          (cond ((let () (declare (not safe)) (##fx= _g6578_ 1))
                 (apply (lambda (_x4750_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x4750_)))
                        _g6579_))
                (#t (apply make-symbol__1 _g6579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g6579_))))))
    (define make-keyword__0
      (lambda (_x4746_)
        (if (interned-keyword? _x4746_)
            _x4746_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x4746_))))))
    (define make-keyword__1
      (lambda _args4748_ (string->keyword (apply as-string _args4748_))))
    (define make-keyword
      (lambda _g6581_
        (let ((_g6580_ (let () (declare (not safe)) (##length _g6581_))))
          (cond ((let () (declare (not safe)) (##fx= _g6580_ 1))
                 (apply (lambda (_x4746_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x4746_)))
                        _g6581_))
                (#t (apply make-keyword__1 _g6581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g6581_))))))
    (define interned-keyword?
      (lambda (_x4744_)
        (if (keyword? _x4744_)
            (let ((__tmp6582 (uninterned-keyword? _x4744_)))
              (declare (not safe))
              (not __tmp6582))
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
                     (let ((__tmp6583
                            (let ((__tmp6584
                                   (let ((__tmp6585
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr4718_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp6585))))
                              (declare (not safe))
                              (cons _enc4719_ __tmp6584))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp6583))))
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
      (lambda _g6587_
        (let ((_g6586_ (let () (declare (not safe)) (##length _g6587_))))
          (cond ((let () (declare (not safe)) (##fx= _g6586_ 1))
                 (apply (lambda (_bstr4733_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr4733_)))
                        _g6587_))
                ((let () (declare (not safe)) (##fx= _g6586_ 2))
                 (apply (lambda (_bstr4737_ _enc4738_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr4737_ _enc4738_)))
                        _g6587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g6587_))))))
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
      (lambda _g6589_
        (let ((_g6588_ (let () (declare (not safe)) (##length _g6589_))))
          (cond ((let () (declare (not safe)) (##fx= _g6588_ 1))
                 (apply (lambda (_str4710_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str4710_)))
                        _g6589_))
                ((let () (declare (not safe)) (##fx= _g6588_ 2))
                 (apply (lambda (_str4714_ _enc4715_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str4714_ _enc4715_)))
                        _g6589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g6589_))))))
    (define substring->bytes__%
      (lambda (_str4682_ _start4683_ _end4684_ _enc4685_)
        (if (let () (declare (not safe)) (eq? _enc4685_ 'UTF-8))
            (string->utf8 _str4682_ _start4683_ _end4684_)
            (let ((_out4687_
                   (open-output-u8vector
                    (let ((__tmp6590
                           (let () (declare (not safe)) (cons _enc4685_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp6590)))))
              (write-substring _str4682_ _start4683_ _end4684_ _out4687_)
              (get-output-u8vector _out4687_)))))
    (define substring->bytes__0
      (lambda (_str4692_ _start4693_ _end4694_)
        (let ((_enc4696_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__% _str4692_ _start4693_ _end4694_ _enc4696_))))
    (define substring->bytes
      (lambda _g6592_
        (let ((_g6591_ (let () (declare (not safe)) (##length _g6592_))))
          (cond ((let () (declare (not safe)) (##fx= _g6591_ 3))
                 (apply (lambda (_str4692_ _start4693_ _end4694_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str4692_
                             _start4693_
                             _end4694_)))
                        _g6592_))
                ((let () (declare (not safe)) (##fx= _g6591_ 4))
                 (apply (lambda (_str4698_ _start4699_ _end4700_ _enc4701_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str4698_
                             _start4699_
                             _end4700_
                             _enc4701_)))
                        _g6592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g6592_))))))
    (define string-empty?
      (lambda (_str4679_)
        (let ((__tmp6593 (string-length _str4679_)))
          (declare (not safe))
          (##fxzero? __tmp6593))))
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
                    (if (let ((__tmp6596
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str4670_ _i4677_)))
                              (__tmp6595
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix4669_ _i4677_))))
                          (declare (not safe))
                          (eq? __tmp6596 __tmp6595))
                        (let ((__tmp6594
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i4677_ '1))))
                          (declare (not safe))
                          (_lp4675_ __tmp6594))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str4647_ _char4648_ _start4649_)
        (let ((_len4651_ (string-length _str4647_)))
          (let _lp4653_ ((_k4655_ _start4649_))
            (if (let () (declare (not safe)) (##fx< _k4655_ _len4651_))
                (if (let ((__tmp6598
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4647_ _k4655_))))
                      (declare (not safe))
                      (eq? _char4648_ __tmp6598))
                    _k4655_
                    (let ((__tmp6597
                           (let () (declare (not safe)) (##fx+ _k4655_ '1))))
                      (declare (not safe))
                      (_lp4653_ __tmp6597)))
                '#f)))))
    (define string-index__0
      (lambda (_str4660_ _char4661_)
        (let ((_start4663_ '0))
          (declare (not safe))
          (string-index__% _str4660_ _char4661_ _start4663_))))
    (define string-index
      (lambda _g6600_
        (let ((_g6599_ (let () (declare (not safe)) (##length _g6600_))))
          (cond ((let () (declare (not safe)) (##fx= _g6599_ 2))
                 (apply (lambda (_str4660_ _char4661_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str4660_ _char4661_)))
                        _g6600_))
                ((let () (declare (not safe)) (##fx= _g6599_ 3))
                 (apply (lambda (_str4665_ _char4666_ _start4667_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str4665_
                             _char4666_
                             _start4667_)))
                        _g6600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g6600_))))))
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
                (if (let ((__tmp6602
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4618_ _k4632_))))
                      (declare (not safe))
                      (eq? _char4619_ __tmp6602))
                    _k4632_
                    (let ((__tmp6601
                           (let () (declare (not safe)) (##fx- _k4632_ '1))))
                      (declare (not safe))
                      (_lp4630_ __tmp6601)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str4637_ _char4638_)
        (let ((_start4640_ '#f))
          (declare (not safe))
          (string-rindex__% _str4637_ _char4638_ _start4640_))))
    (define string-rindex
      (lambda _g6604_
        (let ((_g6603_ (let () (declare (not safe)) (##length _g6604_))))
          (cond ((let () (declare (not safe)) (##fx= _g6603_ 2))
                 (apply (lambda (_str4637_ _char4638_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str4637_ _char4638_)))
                        _g6604_))
                ((let () (declare (not safe)) (##fx= _g6603_ 3))
                 (apply (lambda (_str4642_ _char4643_ _start4644_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str4642_
                             _char4643_
                             _start4644_)))
                        _g6604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g6604_))))))
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
                     (let ((__tmp6608
                            (let () (declare (not safe)) (##fx+ _end4615_ '1)))
                           (__tmp6606
                            (let ((__tmp6607
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str4602_
                                      _start4609_
                                      _end4615_))))
                              (declare (not safe))
                              (cons __tmp6607 _r4610_))))
                       (declare (not safe))
                       (_lp4607_ __tmp6608 __tmp6606)))
                   _$e4612_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start4609_ _len4605_))
                      (let ((__tmp6605
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str4602_
                                      _start4609_
                                      _len4605_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp6605 _r4610_))
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
                                        (let ((__tmp6610
                                               (let ((__tmp6611
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd4588_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp6611
                                                        _jlen4562_
                                                        _len4567_))))
                                          (declare (not safe))
                                          (_lp4564_ _rest4587_ __tmp6610))
                                        (let ((__tmp6609
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd4588_))))
                                          (declare (not safe))
                                          (##fx+ __tmp6609 _len4567_)))
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
                                (let ((__tmp6612
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k4524_ _hdlen4547_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join4512_
                                   '0
                                   _jlen4514_
                                   _ostr4518_
                                   __tmp6612))
                                (let ((__tmp6613
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k4524_
                                                _hdlen4547_
                                                _jlen4514_))))
                                  (declare (not safe))
                                  (_lp4521_ _rest4544_ __tmp6613)))
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
