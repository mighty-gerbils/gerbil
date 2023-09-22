(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1695381360)
  (begin
    (define displayln
      (lambda _args6379_
        (let _lp6381_ ((_rest6383_ _args6379_))
          (let* ((_rest63846392_ _rest6383_)
                 (_else63866400_ (lambda () (newline)))
                 (_K63886406_
                  (lambda (_rest6403_ _hd6404_)
                    (display _hd6404_)
                    (let () (declare (not safe)) (_lp6381_ _rest6403_)))))
            (if (let () (declare (not safe)) (##pair? _rest63846392_))
                (let ((_hd63896409_
                       (let () (declare (not safe)) (##car _rest63846392_)))
                      (_tl63906411_
                       (let () (declare (not safe)) (##cdr _rest63846392_))))
                  (let* ((_hd6414_ _hd63896409_) (_rest6416_ _tl63906411_))
                    (declare (not safe))
                    (_K63886406_ _rest6416_ _hd6414_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args6377_ (for-each display _args6377_)))
    (define file-newer?
      (lambda (_file16370_ _file26371_)
        (letrec ((_modification-time6373_
                  (lambda (_file6375_)
                    (let ((__tmp8523
                           (file-info-last-modification-time
                            (file-info _file6375_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp8523)))))
          (let ((__tmp8525
                 (let ()
                   (declare (not safe))
                   (_modification-time6373_ _file16370_)))
                (__tmp8524
                 (let ()
                   (declare (not safe))
                   (_modification-time6373_ _file26371_))))
            (declare (not safe))
            (##fl> __tmp8525 __tmp8524)))))
    (define create-directory*__%
      (lambda (_dir6344_ _perms6345_)
        (letrec ((_create16347_
                  (lambda (_path6358_)
                    (if (file-exists? _path6358_)
                        (if (let ((__tmp8526 (file-type _path6358_)))
                              (declare (not safe))
                              (eq? __tmp8526 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path6358_))
                        (if _perms6345_
                            (create-directory
                             (list 'path:
                                   _path6358_
                                   'permissions:
                                   _perms6345_))
                            (create-directory _path6358_))))))
          (if (file-exists? _dir6344_)
              '#!void
              (let _lp6349_ ((_start6351_ '0))
                (let ((_$e6353_
                       (let ()
                         (declare (not safe))
                         (string-index _dir6344_ '#\/ _start6351_))))
                  (if _$e6353_
                      ((lambda (_x6356_)
                         (if (let () (declare (not safe)) (##fx> _x6356_ '0))
                             (let ((__tmp8527
                                    (substring _dir6344_ '0 _x6356_)))
                               (declare (not safe))
                               (_create16347_ __tmp8527))
                             '#!void)
                         (let ((__tmp8528
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x6356_ '1))))
                           (declare (not safe))
                           (_lp6349_ __tmp8528)))
                       _$e6353_)
                      (let ()
                        (declare (not safe))
                        (_create16347_ _dir6344_)))))))))
    (define create-directory*__0
      (lambda (_dir6363_)
        (let ((_perms6365_ '493))
          (declare (not safe))
          (create-directory*__% _dir6363_ _perms6365_))))
    (define create-directory*
      (lambda _g8530_
        (let ((_g8529_ (let () (declare (not safe)) (##length _g8530_))))
          (cond ((let () (declare (not safe)) (##fx= _g8529_ 1))
                 (apply (lambda (_dir6363_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir6363_)))
                        _g8530_))
                ((let () (declare (not safe)) (##fx= _g8529_ 2))
                 (apply (lambda (_dir6367_ _perms6368_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir6367_ _perms6368_)))
                        _g8530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g8530_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g8531_ '#t))
    (define true?
      (lambda (_obj6340_) (let () (declare (not safe)) (eq? _obj6340_ '#t))))
    (define false (lambda _g8532_ '#f))
    (define void (lambda _g8533_ '#!void))
    (define void?
      (lambda (_obj6336_)
        (let () (declare (not safe)) (eq? _obj6336_ '#!void))))
    (define eof-object (lambda _g8534_ '#!eof))
    (define identity (lambda (_obj6333_) _obj6333_))
    (define dssl-object?
      (lambda (_obj6331_)
        (if (memq _obj6331_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj6329_)
        (let () (declare (not safe)) (eq? _obj6329_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj6327_)
        (let () (declare (not safe)) (eq? _obj6327_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj6325_)
        (let () (declare (not safe)) (eq? _obj6325_ '#!optional))))
    (define immediate?
      (lambda (_obj6321_)
        (let* ((_t6323_ (let () (declare (not safe)) (##type _obj6321_)))
               (__tmp8535 (let () (declare (not safe)) (##fxand _t6323_ '1))))
          (declare (not safe))
          (##fxzero? __tmp8535))))
    (define nonnegative-fixnum?
      (lambda (_obj6319_)
        (if (fixnum? _obj6319_)
            (let ((__tmp8536 (fxnegative? _obj6319_)))
              (declare (not safe))
              (not __tmp8536))
            '#f)))
    (define values-count
      (lambda (_obj6317_)
        (if (let () (declare (not safe)) (##values? _obj6317_))
            (let () (declare (not safe)) (##vector-length _obj6317_))
            '1)))
    (define values-ref
      (lambda (_obj6314_ _k6315_)
        (if (let () (declare (not safe)) (##values? _obj6314_))
            (let () (declare (not safe)) (##vector-ref _obj6314_ _k6315_))
            _obj6314_)))
    (define values->list
      (lambda (_obj6312_)
        (if (let () (declare (not safe)) (##values? _obj6312_))
            (let () (declare (not safe)) (##vector->list _obj6312_))
            (list _obj6312_))))
    (define subvector->list__%
      (lambda (_obj6297_ _start6298_)
        (let ((_lst6300_
               (let () (declare (not safe)) (##vector->list _obj6297_))))
          (list-tail _lst6300_ _start6298_))))
    (define subvector->list__0
      (lambda (_obj6305_)
        (let ((_start6307_ '0))
          (declare (not safe))
          (subvector->list__% _obj6305_ _start6307_))))
    (define subvector->list
      (lambda _g8538_
        (let ((_g8537_ (let () (declare (not safe)) (##length _g8538_))))
          (cond ((let () (declare (not safe)) (##fx= _g8537_ 1))
                 (apply (lambda (_obj6305_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj6305_)))
                        _g8538_))
                ((let () (declare (not safe)) (##fx= _g8537_ 2))
                 (apply (lambda (_obj6309_ _start6310_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj6309_ _start6310_)))
                        _g8538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g8538_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args6294_ (apply make-table 'test: eq? _args6294_)))
    (define make-hash-table-eqv
      (lambda _args6292_ (apply make-table 'test: eqv? _args6292_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst6289_ . _args6290_)
        (apply list->table _lst6289_ 'test: eq? _args6290_)))
    (define list->hash-table-eqv
      (lambda (_lst6286_ . _args6287_)
        (apply list->table _lst6286_ 'test: eqv? _args6287_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht6283_ _k6284_) (table-ref _ht6283_ _k6284_ '#f)))
    (define hash-put!
      (lambda (_ht6279_ _k6280_ _v6281_)
        (table-set! _ht6279_ _k6280_ _v6281_)))
    (define hash-update!__%
      (lambda (_ht6258_ _k6259_ _update6260_ _default6261_)
        (let* ((_value6263_
                (let ()
                  (declare (not safe))
                  (table-ref _ht6258_ _k6259_ _default6261_)))
               (__tmp8539 (_update6260_ _value6263_)))
          (declare (not safe))
          (table-set! _ht6258_ _k6259_ __tmp8539))))
    (define hash-update!__0
      (lambda (_ht6268_ _k6269_ _update6270_)
        (let ((_default6272_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht6268_ _k6269_ _update6270_ _default6272_))))
    (define hash-update!
      (lambda _g8541_
        (let ((_g8540_ (let () (declare (not safe)) (##length _g8541_))))
          (cond ((let () (declare (not safe)) (##fx= _g8540_ 3))
                 (apply (lambda (_ht6268_ _k6269_ _update6270_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0 _ht6268_ _k6269_ _update6270_)))
                        _g8541_))
                ((let () (declare (not safe)) (##fx= _g8540_ 4))
                 (apply (lambda (_ht6274_ _k6275_ _update6276_ _default6277_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht6274_
                             _k6275_
                             _update6276_
                             _default6277_)))
                        _g8541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g8541_))))))
    (define hash-remove!
      (lambda (_ht6254_ _k6255_) (table-set! _ht6254_ _k6255_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht6252_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht6252_))))
    (define plist->hash-table__%
      (lambda (_plst6187_ _ht6188_)
        (let _lp6190_ ((_rest6192_ _plst6187_))
          (let* ((_rest61936204_ _rest6192_)
                 (_E61966208_
                  (lambda () (error '"No clause matching" _rest61936204_))))
            (let ((_K61986223_
                   (lambda (_rest6219_ _v6220_ _k6221_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht6188_ _k6221_ _v6220_))
                     (let () (declare (not safe)) (_lp6190_ _rest6219_))))
                  (_K61976213_ (lambda () _ht6188_)))
              (let ((_try-match61956216_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest61936204_ '()))
                           (let () (declare (not safe)) (_K61976213_))
                           (let () (declare (not safe)) (_E61966208_))))))
                (if (let () (declare (not safe)) (##pair? _rest61936204_))
                    (let ((_tl62006228_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest61936204_)))
                          (_hd61996226_
                           (let ()
                             (declare (not safe))
                             (##car _rest61936204_))))
                      (if (let () (declare (not safe)) (##pair? _tl62006228_))
                          (let ((_tl62026235_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl62006228_)))
                                (_hd62016233_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl62006228_))))
                            (let ((_k6231_ _hd61996226_)
                                  (_v6238_ _hd62016233_)
                                  (_rest6240_ _tl62026235_))
                              (let ()
                                (declare (not safe))
                                (_K61986223_ _rest6240_ _v6238_ _k6231_))))
                          (let () (declare (not safe)) (_try-match61956216_))))
                    (let () (declare (not safe)) (_try-match61956216_)))))))))
    (define plist->hash-table__0
      (lambda (_plst6245_)
        (let ((_ht6247_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst6245_ _ht6247_))))
    (define plist->hash-table
      (lambda _g8543_
        (let ((_g8542_ (let () (declare (not safe)) (##length _g8543_))))
          (cond ((let () (declare (not safe)) (##fx= _g8542_ 1))
                 (apply (lambda (_plst6245_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst6245_)))
                        _g8543_))
                ((let () (declare (not safe)) (##fx= _g8542_ 2))
                 (apply (lambda (_plst6249_ _ht6250_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst6249_ _ht6250_)))
                        _g8543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g8543_))))))
    (define plist->hash-table-eq
      (lambda (_plst6184_)
        (let ((__tmp8544
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst6184_ __tmp8544))))
    (define plist->hash-table-eqv
      (lambda (_plst6182_)
        (let ((__tmp8545
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst6182_ __tmp8545))))
    (define hash-key?
      (lambda (_ht6179_ _k6180_)
        (let ((__tmp8546
               (let ((__tmp8547
                      (let ()
                        (declare (not safe))
                        (table-ref _ht6179_ _k6180_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp8547 absent-value))))
          (declare (not safe))
          (not __tmp8546))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun6172_ _ht6173_)
        (let ((__tmp8548
               (lambda (_k6175_ _v6176_ _r6177_)
                 (let ((__tmp8549 (_fun6172_ _k6175_ _v6176_)))
                   (declare (not safe))
                   (cons __tmp8549 _r6177_)))))
          (declare (not safe))
          (hash-fold __tmp8548 '() _ht6173_))))
    (define hash-fold
      (lambda (_fun6163_ _iv6164_ _ht6165_)
        (let ((_ret6167_ _iv6164_))
          (let ((__tmp8550
                 (lambda (_k6169_ _v6170_)
                   (set! _ret6167_ (_fun6163_ _k6169_ _v6170_ _ret6167_)))))
            (declare (not safe))
            (table-for-each __tmp8550 _ht6165_))
          _ret6167_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht6158_)
        (let ((__tmp8551 (lambda (_k6160_ _v6161_) _k6160_)))
          (declare (not safe))
          (hash-map __tmp8551 _ht6158_))))
    (define hash-values
      (lambda (_ht6153_)
        (let ((__tmp8552 (lambda (_k6155_ _v6156_) _v6156_)))
          (declare (not safe))
          (hash-map __tmp8552 _ht6153_))))
    (define hash-copy
      (lambda (_hd6148_ . _rest6149_)
        (let ((_hd6151_ (table-copy _hd6148_)))
          (if (let () (declare (not safe)) (null? _rest6149_))
              _hd6151_
              (apply hash-copy! _hd6151_ _rest6149_)))))
    (define hash-copy!
      (lambda (_hd6143_ . _rest6144_)
        (for-each
         (lambda (_r6146_) (table-merge! _hd6143_ _r6146_))
         _rest6144_)
        _hd6143_))
    (define hash-merge
      (lambda (_hd6137_ . _rest6138_)
        (let ((__tmp8553
               (lambda (_tab6140_ _r6141_) (table-merge _r6141_ _tab6140_))))
          (declare (not safe))
          (foldl1 __tmp8553 _hd6137_ _rest6138_))))
    (define hash-merge!
      (lambda (_hd6131_ . _rest6132_)
        (let ((__tmp8554
               (lambda (_tab6134_ _r6135_) (table-merge! _r6135_ _tab6134_))))
          (declare (not safe))
          (foldl1 __tmp8554 _hd6131_ _rest6132_))))
    (define hash-clear!__%
      (lambda (_ht6116_ _size6117_)
        (let ((_gcht6119_
               (let () (declare (not safe)) (##vector-ref _ht6116_ '5))))
          (if (let ((__tmp8555 (fixnum? _gcht6119_)))
                (declare (not safe))
                (not __tmp8555))
              (let ()
                (declare (not safe))
                (##vector-set! _ht6116_ '5 _size6117_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht6124_)
        (let ((_size6126_ '0))
          (declare (not safe))
          (hash-clear!__% _ht6124_ _size6126_))))
    (define hash-clear!
      (lambda _g8557_
        (let ((_g8556_ (let () (declare (not safe)) (##length _g8557_))))
          (cond ((let () (declare (not safe)) (##fx= _g8556_ 1))
                 (apply (lambda (_ht6124_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht6124_)))
                        _g8557_))
                ((let () (declare (not safe)) (##fx= _g8556_ 2))
                 (apply (lambda (_ht6128_ _size6129_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht6128_ _size6129_)))
                        _g8557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g8557_))))))
    (define make-list__%
      (lambda (_k6097_ _val6098_)
        (if (fixnum? _k6097_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k6097_))
        (let _lp6100_ ((_n6102_ '0) (_r6103_ '()))
          (if (let () (declare (not safe)) (##fx< _n6102_ _k6097_))
              (let ((__tmp8559
                     (let () (declare (not safe)) (##fx+ _n6102_ '1)))
                    (__tmp8558
                     (let () (declare (not safe)) (cons _val6098_ _r6103_))))
                (declare (not safe))
                (_lp6100_ __tmp8559 __tmp8558))
              _r6103_))))
    (define make-list__0
      (lambda (_k6108_)
        (let ((_val6110_ '#f))
          (declare (not safe))
          (make-list__% _k6108_ _val6110_))))
    (define make-list
      (lambda _g8561_
        (let ((_g8560_ (let () (declare (not safe)) (##length _g8561_))))
          (cond ((let () (declare (not safe)) (##fx= _g8560_ 1))
                 (apply (lambda (_k6108_)
                          (let () (declare (not safe)) (make-list__0 _k6108_)))
                        _g8561_))
                ((let () (declare (not safe)) (##fx= _g8560_ 2))
                 (apply (lambda (_k6112_ _val6113_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k6112_ _val6113_)))
                        _g8561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g8561_))))))
    (define cons*
      (lambda (_x6087_ _y6088_ . _rest6089_)
        (letrec ((_recur6091_
                  (lambda (_x6093_ _rest6094_)
                    (if (let () (declare (not safe)) (pair? _rest6094_))
                        (let ((__tmp8562
                               (let ((__tmp8564
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6094_)))
                                     (__tmp8563
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6094_))))
                                 (declare (not safe))
                                 (_recur6091_ __tmp8564 __tmp8563))))
                          (declare (not safe))
                          (cons _x6093_ __tmp8562))
                        _x6093_))))
          (let ((__tmp8565
                 (let ()
                   (declare (not safe))
                   (_recur6091_ _y6088_ _rest6089_))))
            (declare (not safe))
            (cons _x6087_ __tmp8565)))))
    (define foldl1
      (lambda (_f6045_ _iv6046_ _lst6047_)
        (let _lp6049_ ((_rest6051_ _lst6047_) (_r6052_ _iv6046_))
          (let* ((_rest60536061_ _rest6051_)
                 (_else60556069_ (lambda () _r6052_))
                 (_K60576075_
                  (lambda (_rest6072_ _x6073_)
                    (let ((__tmp8566 (_f6045_ _x6073_ _r6052_)))
                      (declare (not safe))
                      (_lp6049_ _rest6072_ __tmp8566)))))
            (if (let () (declare (not safe)) (##pair? _rest60536061_))
                (let ((_hd60586078_
                       (let () (declare (not safe)) (##car _rest60536061_)))
                      (_tl60596080_
                       (let () (declare (not safe)) (##cdr _rest60536061_))))
                  (let* ((_x6083_ _hd60586078_) (_rest6085_ _tl60596080_))
                    (declare (not safe))
                    (_K60576075_ _rest6085_ _x6083_)))
                (let () (declare (not safe)) (_else60556069_)))))))
    (define foldl2
      (lambda (_f5968_ _iv5969_ _lst15970_ _lst25971_)
        (let _lp5973_ ((_rest15975_ _lst15970_)
                       (_rest25976_ _lst25971_)
                       (_r5977_ _iv5969_))
          (let* ((_rest159785986_ _rest15975_)
                 (_else59805994_ (lambda () _r5977_))
                 (_K59826033_
                  (lambda (_rest15997_ _x15998_)
                    (let* ((_rest259996007_ _rest25976_)
                           (_else60016015_ (lambda () _r5977_))
                           (_K60036021_
                            (lambda (_rest26018_ _x26019_)
                              (let ((__tmp8567
                                     (_f5968_ _x15998_ _x26019_ _r5977_)))
                                (declare (not safe))
                                (_lp5973_
                                 _rest15997_
                                 _rest26018_
                                 __tmp8567)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest259996007_))
                          (let ((_hd60046024_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest259996007_)))
                                (_tl60056026_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest259996007_))))
                            (let* ((_x26029_ _hd60046024_)
                                   (_rest26031_ _tl60056026_))
                              (declare (not safe))
                              (_K60036021_ _rest26031_ _x26029_)))
                          (let () (declare (not safe)) (_else60016015_)))))))
            (if (let () (declare (not safe)) (##pair? _rest159785986_))
                (let ((_hd59836036_
                       (let () (declare (not safe)) (##car _rest159785986_)))
                      (_tl59846038_
                       (let () (declare (not safe)) (##cdr _rest159785986_))))
                  (let* ((_x16041_ _hd59836036_) (_rest16043_ _tl59846038_))
                    (declare (not safe))
                    (_K59826033_ _rest16043_ _x16041_)))
                (let () (declare (not safe)) (_else59805994_)))))))
    (define foldl
      (lambda _g8569_
        (let ((_g8568_ (let () (declare (not safe)) (##length _g8569_))))
          (cond ((let () (declare (not safe)) (##fx= _g8568_ 3))
                 (apply (lambda (_f5953_ _iv5954_ _lst5955_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f5953_ _iv5954_ _lst5955_)))
                        _g8569_))
                ((let () (declare (not safe)) (##fx= _g8568_ 4))
                 (apply (lambda (_f5957_ _iv5958_ _lst15959_ _lst25960_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f5957_ _iv5958_ _lst15959_ _lst25960_)))
                        _g8569_))
                ((let () (declare (not safe)) (##fx>= _g8568_ 4))
                 (apply foldl* _g8569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g8569_))))))
    (define foldl*
      (lambda (_f5941_ _iv5942_ . _rest5943_)
        (let _recur5945_ ((_iv5947_ _iv5942_) (_rest5948_ _rest5943_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5948_))
              (let ((__tmp8571
                     (apply _f5941_
                            (let ((__tmp8573
                                   (lambda (_xs5950_ _r5951_)
                                     (let ((__tmp8574 (car _xs5950_)))
                                       (declare (not safe))
                                       (cons __tmp8574 _r5951_))))
                                  (__tmp8572 (list _iv5947_)))
                              (declare (not safe))
                              (foldr1 __tmp8573 __tmp8572 _rest5948_))))
                    (__tmp8570 (map cdr _rest5948_)))
                (declare (not safe))
                (_recur5945_ __tmp8571 __tmp8570))
              _iv5947_))))
    (define foldr1
      (lambda (_f5900_ _iv5901_ _lst5902_)
        (let _recur5904_ ((_rest5906_ _lst5902_))
          (let* ((_rest59075915_ _rest5906_)
                 (_else59095923_ (lambda () _iv5901_))
                 (_K59115929_
                  (lambda (_rest5926_ _x5927_)
                    (_f5900_ _x5927_
                             (let ()
                               (declare (not safe))
                               (_recur5904_ _rest5926_))))))
            (if (let () (declare (not safe)) (##pair? _rest59075915_))
                (let ((_hd59125932_
                       (let () (declare (not safe)) (##car _rest59075915_)))
                      (_tl59135934_
                       (let () (declare (not safe)) (##cdr _rest59075915_))))
                  (let* ((_x5937_ _hd59125932_) (_rest5939_ _tl59135934_))
                    (declare (not safe))
                    (_K59115929_ _rest5939_ _x5937_)))
                (let () (declare (not safe)) (_else59095923_)))))))
    (define foldr2
      (lambda (_f5824_ _iv5825_ _lst15826_ _lst25827_)
        (let _recur5829_ ((_rest15831_ _lst15826_) (_rest25832_ _lst25827_))
          (let* ((_rest158335841_ _rest15831_)
                 (_else58355849_ (lambda () _iv5825_))
                 (_K58375888_
                  (lambda (_rest15852_ _x15853_)
                    (let* ((_rest258545862_ _rest25832_)
                           (_else58565870_ (lambda () _iv5825_))
                           (_K58585876_
                            (lambda (_rest25873_ _x25874_)
                              (_f5824_ _x15853_
                                       _x25874_
                                       (let ()
                                         (declare (not safe))
                                         (_recur5829_
                                          _rest15852_
                                          _rest25873_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest258545862_))
                          (let ((_hd58595879_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest258545862_)))
                                (_tl58605881_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest258545862_))))
                            (let* ((_x25884_ _hd58595879_)
                                   (_rest25886_ _tl58605881_))
                              (declare (not safe))
                              (_K58585876_ _rest25886_ _x25884_)))
                          (let () (declare (not safe)) (_else58565870_)))))))
            (if (let () (declare (not safe)) (##pair? _rest158335841_))
                (let ((_hd58385891_
                       (let () (declare (not safe)) (##car _rest158335841_)))
                      (_tl58395893_
                       (let () (declare (not safe)) (##cdr _rest158335841_))))
                  (let* ((_x15896_ _hd58385891_) (_rest15898_ _tl58395893_))
                    (declare (not safe))
                    (_K58375888_ _rest15898_ _x15896_)))
                (let () (declare (not safe)) (_else58355849_)))))))
    (define foldr
      (lambda _g8576_
        (let ((_g8575_ (let () (declare (not safe)) (##length _g8576_))))
          (cond ((let () (declare (not safe)) (##fx= _g8575_ 3))
                 (apply (lambda (_f5809_ _iv5810_ _lst5811_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f5809_ _iv5810_ _lst5811_)))
                        _g8576_))
                ((let () (declare (not safe)) (##fx= _g8575_ 4))
                 (apply (lambda (_f5813_ _iv5814_ _lst15815_ _lst25816_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f5813_ _iv5814_ _lst15815_ _lst25816_)))
                        _g8576_))
                ((let () (declare (not safe)) (##fx>= _g8575_ 4))
                 (apply foldr* _g8576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g8576_))))))
    (define foldr*
      (lambda (_f5798_ _iv5799_ . _rest5800_)
        (let _recur5802_ ((_rest5804_ _rest5800_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5804_))
              (apply _f5798_
                     (let ((__tmp8579
                            (lambda (_xs5806_ _r5807_)
                              (let ((__tmp8580 (car _xs5806_)))
                                (declare (not safe))
                                (cons __tmp8580 _r5807_))))
                           (__tmp8577
                            (list (let ((__tmp8578 (map cdr _rest5804_)))
                                    (declare (not safe))
                                    (_recur5802_ __tmp8578)))))
                       (declare (not safe))
                       (foldr1 __tmp8579 __tmp8577 _rest5804_)))
              _iv5799_))))
    (define andmap1
      (lambda (_f5758_ _lst5759_)
        (let _lp5761_ ((_rest5763_ _lst5759_))
          (let* ((_rest57645772_ _rest5763_)
                 (_else57665780_ (lambda () '#t))
                 (_K57685786_
                  (lambda (_rest5783_ _x5784_)
                    (if (_f5758_ _x5784_)
                        (let () (declare (not safe)) (_lp5761_ _rest5783_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest57645772_))
                (let ((_hd57695789_
                       (let () (declare (not safe)) (##car _rest57645772_)))
                      (_tl57705791_
                       (let () (declare (not safe)) (##cdr _rest57645772_))))
                  (let* ((_x5794_ _hd57695789_) (_rest5796_ _tl57705791_))
                    (declare (not safe))
                    (_K57685786_ _rest5796_ _x5794_)))
                (let () (declare (not safe)) (_else57665780_)))))))
    (define andmap2
      (lambda (_f5683_ _lst15684_ _lst25685_)
        (let _lp5687_ ((_rest15689_ _lst15684_) (_rest25690_ _lst25685_))
          (let* ((_rest156915699_ _rest15689_)
                 (_else56935707_ (lambda () '#t))
                 (_K56955746_
                  (lambda (_rest15710_ _x15711_)
                    (let* ((_rest257125720_ _rest25690_)
                           (_else57145728_ (lambda () '#t))
                           (_K57165734_
                            (lambda (_rest25731_ _x25732_)
                              (if (_f5683_ _x15711_ _x25732_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp5687_ _rest15710_ _rest25731_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest257125720_))
                          (let ((_hd57175737_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest257125720_)))
                                (_tl57185739_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest257125720_))))
                            (let* ((_x25742_ _hd57175737_)
                                   (_rest25744_ _tl57185739_))
                              (declare (not safe))
                              (_K57165734_ _rest25744_ _x25742_)))
                          (let () (declare (not safe)) (_else57145728_)))))))
            (if (let () (declare (not safe)) (##pair? _rest156915699_))
                (let ((_hd56965749_
                       (let () (declare (not safe)) (##car _rest156915699_)))
                      (_tl56975751_
                       (let () (declare (not safe)) (##cdr _rest156915699_))))
                  (let* ((_x15754_ _hd56965749_) (_rest15756_ _tl56975751_))
                    (declare (not safe))
                    (_K56955746_ _rest15756_ _x15754_)))
                (let () (declare (not safe)) (_else56935707_)))))))
    (define andmap
      (lambda _g8582_
        (let ((_g8581_ (let () (declare (not safe)) (##length _g8582_))))
          (cond ((let () (declare (not safe)) (##fx= _g8581_ 2))
                 (apply (lambda (_f5671_ _lst5672_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f5671_ _lst5672_)))
                        _g8582_))
                ((let () (declare (not safe)) (##fx= _g8581_ 3))
                 (apply (lambda (_f5674_ _lst15675_ _lst25676_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f5674_ _lst15675_ _lst25676_)))
                        _g8582_))
                ((let () (declare (not safe)) (##fx>= _g8581_ 3))
                 (apply andmap* _g8582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g8582_))))))
    (define andmap*
      (lambda (_f5664_ . _rest5665_)
        (let _recur5667_ ((_rest5669_ _rest5665_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5669_))
              (if (apply _f5664_ (map car _rest5669_))
                  (let ((__tmp8583 (map cdr _rest5669_)))
                    (declare (not safe))
                    (_recur5667_ __tmp8583))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f5621_ _lst5622_)
        (let _lp5624_ ((_rest5626_ _lst5622_))
          (let* ((_rest56275635_ _rest5626_)
                 (_else56295643_ (lambda () '#f))
                 (_K56315652_
                  (lambda (_rest5646_ _x5647_)
                    (let ((_$e5649_ (_f5621_ _x5647_)))
                      (if _$e5649_
                          _$e5649_
                          (let ()
                            (declare (not safe))
                            (_lp5624_ _rest5646_)))))))
            (if (let () (declare (not safe)) (##pair? _rest56275635_))
                (let ((_hd56325655_
                       (let () (declare (not safe)) (##car _rest56275635_)))
                      (_tl56335657_
                       (let () (declare (not safe)) (##cdr _rest56275635_))))
                  (let* ((_x5660_ _hd56325655_) (_rest5662_ _tl56335657_))
                    (declare (not safe))
                    (_K56315652_ _rest5662_ _x5660_)))
                (let () (declare (not safe)) (_else56295643_)))))))
    (define ormap2
      (lambda (_f5543_ _lst15544_ _lst25545_)
        (let _lp5547_ ((_rest15549_ _lst15544_) (_rest25550_ _lst25545_))
          (let* ((_rest155515559_ _rest15549_)
                 (_else55535567_ (lambda () '#f))
                 (_K55555609_
                  (lambda (_rest15570_ _x15571_)
                    (let* ((_rest255725580_ _rest25550_)
                           (_else55745588_ (lambda () '#f))
                           (_K55765597_
                            (lambda (_rest25591_ _x25592_)
                              (let ((_$e5594_ (_f5543_ _x15571_ _x25592_)))
                                (if _$e5594_
                                    _$e5594_
                                    (let ()
                                      (declare (not safe))
                                      (_lp5547_ _rest15570_ _rest25591_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest255725580_))
                          (let ((_hd55775600_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest255725580_)))
                                (_tl55785602_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest255725580_))))
                            (let* ((_x25605_ _hd55775600_)
                                   (_rest25607_ _tl55785602_))
                              (declare (not safe))
                              (_K55765597_ _rest25607_ _x25605_)))
                          (let () (declare (not safe)) (_else55745588_)))))))
            (if (let () (declare (not safe)) (##pair? _rest155515559_))
                (let ((_hd55565612_
                       (let () (declare (not safe)) (##car _rest155515559_)))
                      (_tl55575614_
                       (let () (declare (not safe)) (##cdr _rest155515559_))))
                  (let* ((_x15617_ _hd55565612_) (_rest15619_ _tl55575614_))
                    (declare (not safe))
                    (_K55555609_ _rest15619_ _x15617_)))
                (let () (declare (not safe)) (_else55535567_)))))))
    (define ormap
      (lambda _g8585_
        (let ((_g8584_ (let () (declare (not safe)) (##length _g8585_))))
          (cond ((let () (declare (not safe)) (##fx= _g8584_ 2))
                 (apply (lambda (_f5531_ _lst5532_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f5531_ _lst5532_)))
                        _g8585_))
                ((let () (declare (not safe)) (##fx= _g8584_ 3))
                 (apply (lambda (_f5534_ _lst15535_ _lst25536_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f5534_ _lst15535_ _lst25536_)))
                        _g8585_))
                ((let () (declare (not safe)) (##fx>= _g8584_ 3))
                 (apply ormap* _g8585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g8585_))))))
    (define ormap*
      (lambda (_f5521_ . _rest5522_)
        (let _recur5524_ ((_rest5526_ _rest5522_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5526_))
              (let ((_$e5528_ (apply _f5521_ (map car _rest5526_))))
                (if _$e5528_
                    _$e5528_
                    (let ((__tmp8586 (map cdr _rest5526_)))
                      (declare (not safe))
                      (_recur5524_ __tmp8586))))
              '#f))))
    (define filter
      (lambda (_f5479_ _lst5480_)
        (let _recur5482_ ((_lst5484_ _lst5480_))
          (let* ((_lst54855493_ _lst5484_)
                 (_else54875501_ (lambda () '()))
                 (_K54895509_
                  (lambda (_rest5504_ _hd5505_)
                    (if (_f5479_ _hd5505_)
                        (let ((_tail5507_
                               (let ()
                                 (declare (not safe))
                                 (_recur5482_ _rest5504_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail5507_ _rest5504_))
                              _lst5484_
                              (let ()
                                (declare (not safe))
                                (cons _hd5505_ _tail5507_))))
                        (let ()
                          (declare (not safe))
                          (_recur5482_ _rest5504_))))))
            (if (let () (declare (not safe)) (##pair? _lst54855493_))
                (let ((_hd54905512_
                       (let () (declare (not safe)) (##car _lst54855493_)))
                      (_tl54915514_
                       (let () (declare (not safe)) (##cdr _lst54855493_))))
                  (let* ((_hd5517_ _hd54905512_) (_rest5519_ _tl54915514_))
                    (declare (not safe))
                    (_K54895509_ _rest5519_ _hd5517_)))
                (let () (declare (not safe)) (_else54875501_)))))))
    (define filter-map1
      (lambda (_f5434_ _lst5435_)
        (let _recur5437_ ((_rest5439_ _lst5435_))
          (let* ((_rest54405448_ _rest5439_)
                 (_else54425456_ (lambda () '()))
                 (_K54445467_
                  (lambda (_rest5459_ _x5460_)
                    (let ((_$e5462_ (_f5434_ _x5460_)))
                      (if _$e5462_
                          ((lambda (_r5465_)
                             (let ((__tmp8587
                                    (let ()
                                      (declare (not safe))
                                      (_recur5437_ _rest5459_))))
                               (declare (not safe))
                               (cons _r5465_ __tmp8587)))
                           _$e5462_)
                          (let ()
                            (declare (not safe))
                            (_recur5437_ _rest5459_)))))))
            (if (let () (declare (not safe)) (##pair? _rest54405448_))
                (let ((_hd54455470_
                       (let () (declare (not safe)) (##car _rest54405448_)))
                      (_tl54465472_
                       (let () (declare (not safe)) (##cdr _rest54405448_))))
                  (let* ((_x5475_ _hd54455470_) (_rest5477_ _tl54465472_))
                    (declare (not safe))
                    (_K54445467_ _rest5477_ _x5475_)))
                (let () (declare (not safe)) (_else54425456_)))))))
    (define filter-map2
      (lambda (_f5354_ _lst15355_ _lst25356_)
        (let _recur5358_ ((_rest15360_ _lst15355_) (_rest25361_ _lst25356_))
          (let* ((_rest153625370_ _rest15360_)
                 (_else53645378_ (lambda () '()))
                 (_K53665422_
                  (lambda (_rest15381_ _x15382_)
                    (let* ((_rest253835391_ _rest25361_)
                           (_else53855399_ (lambda () '()))
                           (_K53875410_
                            (lambda (_rest25402_ _x25403_)
                              (let ((_$e5405_ (_f5354_ _x15382_ _x25403_)))
                                (if _$e5405_
                                    ((lambda (_r5408_)
                                       (let ((__tmp8588
                                              (let ()
                                                (declare (not safe))
                                                (_recur5358_
                                                 _rest15381_
                                                 _rest25402_))))
                                         (declare (not safe))
                                         (cons _r5408_ __tmp8588)))
                                     _$e5405_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur5358_
                                       _rest15381_
                                       _rest25402_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest253835391_))
                          (let ((_hd53885413_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest253835391_)))
                                (_tl53895415_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest253835391_))))
                            (let* ((_x25418_ _hd53885413_)
                                   (_rest25420_ _tl53895415_))
                              (declare (not safe))
                              (_K53875410_ _rest25420_ _x25418_)))
                          (let () (declare (not safe)) (_else53855399_)))))))
            (if (let () (declare (not safe)) (##pair? _rest153625370_))
                (let ((_hd53675425_
                       (let () (declare (not safe)) (##car _rest153625370_)))
                      (_tl53685427_
                       (let () (declare (not safe)) (##cdr _rest153625370_))))
                  (let* ((_x15430_ _hd53675425_) (_rest15432_ _tl53685427_))
                    (declare (not safe))
                    (_K53665422_ _rest15432_ _x15430_)))
                (let () (declare (not safe)) (_else53645378_)))))))
    (define filter-map
      (lambda _g8590_
        (let ((_g8589_ (let () (declare (not safe)) (##length _g8590_))))
          (cond ((let () (declare (not safe)) (##fx= _g8589_ 2))
                 (apply (lambda (_f5342_ _lst5343_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f5342_ _lst5343_)))
                        _g8590_))
                ((let () (declare (not safe)) (##fx= _g8589_ 3))
                 (apply (lambda (_f5345_ _lst15346_ _lst25347_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f5345_ _lst15346_ _lst25347_)))
                        _g8590_))
                ((let () (declare (not safe)) (##fx>= _g8589_ 3))
                 (apply filter-map* _g8590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g8590_))))))
    (define filter-map*
      (lambda (_f5330_ . _rest5331_)
        (let _recur5333_ ((_rest5335_ _rest5331_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5335_))
              (let ((_$e5337_ (apply _f5330_ (map car _rest5335_))))
                (if _$e5337_
                    ((lambda (_r5340_)
                       (let ((__tmp8592
                              (let ((__tmp8593 (map cdr _rest5335_)))
                                (declare (not safe))
                                (_recur5333_ __tmp8593))))
                         (declare (not safe))
                         (cons _r5340_ __tmp8592)))
                     _$e5337_)
                    (let ((__tmp8591 (map cdr _rest5335_)))
                      (declare (not safe))
                      (_recur5333_ __tmp8591))))
              '()))))
    (define iota__%
      (lambda (_count5298_ _start5299_ _step5300_)
        (if (fixnum? _count5298_)
            '#!void
            (error '"expected fixnum" _count5298_))
        (if (let () (declare (not safe)) (number? _start5299_))
            '#!void
            (error '"expected number" _start5299_))
        (if (let () (declare (not safe)) (number? _step5300_))
            '#!void
            (error '"expected number" _step5300_))
        (let ((_root5302_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp5304_ ((_i5306_ '0)
                         (_x5307_ _start5299_)
                         (_tl5308_ _root5302_))
            (if (let () (declare (not safe)) (##fx< _i5306_ _count5298_))
                (let ((_tl*5310_
                       (let () (declare (not safe)) (cons _x5307_ '()))))
                  (let () (declare (not safe)) (##set-cdr! _tl5308_ _tl*5310_))
                  (let ((__tmp8595
                         (let () (declare (not safe)) (##fx+ _i5306_ '1)))
                        (__tmp8594 (+ _x5307_ _step5300_)))
                    (declare (not safe))
                    (_lp5304_ __tmp8595 __tmp8594 _tl*5310_)))
                (let () (declare (not safe)) (##cdr _root5302_)))))))
    (define iota__0
      (lambda (_count5315_)
        (let* ((_start5317_ '0) (_step5319_ '1))
          (declare (not safe))
          (iota__% _count5315_ _start5317_ _step5319_))))
    (define iota__1
      (lambda (_count5321_ _start5322_)
        (let ((_step5324_ '1))
          (declare (not safe))
          (iota__% _count5321_ _start5322_ _step5324_))))
    (define iota
      (lambda _g8597_
        (let ((_g8596_ (let () (declare (not safe)) (##length _g8597_))))
          (cond ((let () (declare (not safe)) (##fx= _g8596_ 1))
                 (apply (lambda (_count5315_)
                          (let () (declare (not safe)) (iota__0 _count5315_)))
                        _g8597_))
                ((let () (declare (not safe)) (##fx= _g8596_ 2))
                 (apply (lambda (_count5321_ _start5322_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count5321_ _start5322_)))
                        _g8597_))
                ((let () (declare (not safe)) (##fx= _g8596_ 3))
                 (apply (lambda (_count5326_ _start5327_ _step5328_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count5326_ _start5327_ _step5328_)))
                        _g8597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g8597_))))))
    (define last-pair
      (lambda (_lst5272_)
        (let* ((_lst52735280_ _lst5272_)
               (_E52755284_
                (lambda () (error '"No clause matching" _lst52735280_)))
               (_K52765289_
                (lambda (_rest5287_)
                  (if (let () (declare (not safe)) (pair? _rest5287_))
                      (let () (declare (not safe)) (last-pair _rest5287_))
                      _lst5272_))))
          (if (let () (declare (not safe)) (##pair? _lst52735280_))
              (let* ((_tl52785292_
                      (let () (declare (not safe)) (##cdr _lst52735280_)))
                     (_rest5295_ _tl52785292_))
                (declare (not safe))
                (_K52765289_ _rest5295_))
              (let () (declare (not safe)) (_E52755284_))))))
    (define last
      (lambda (_lst5270_)
        (car (let () (declare (not safe)) (last-pair _lst5270_)))))
    (define assgetq__%
      (lambda (_key5248_ _lst5250_ _default5252_)
        (let ((_$e5255_
               (if (let () (declare (not safe)) (pair? _lst5250_))
                   (assq _key5248_ _lst5250_)
                   '#f)))
          (if _$e5255_
              (cdr _$e5255_)
              (if (let () (declare (not safe)) (procedure? _default5252_))
                  (_default5252_ _key5248_)
                  _default5252_)))))
    (define assgetq__0
      (lambda (_key5261_ _lst5262_)
        (let ((_default5264_ '#f))
          (declare (not safe))
          (assgetq__% _key5261_ _lst5262_ _default5264_))))
    (define assgetq
      (lambda _g8599_
        (let ((_g8598_ (let () (declare (not safe)) (##length _g8599_))))
          (cond ((let () (declare (not safe)) (##fx= _g8598_ 2))
                 (apply (lambda (_key5261_ _lst5262_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key5261_ _lst5262_)))
                        _g8599_))
                ((let () (declare (not safe)) (##fx= _g8598_ 3))
                 (apply (lambda (_key5266_ _lst5267_ _default5268_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key5266_ _lst5267_ _default5268_)))
                        _g8599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g8599_))))))
    (define assgetv__%
      (lambda (_key5225_ _lst5227_ _default5229_)
        (let ((_$e5232_
               (if (let () (declare (not safe)) (pair? _lst5227_))
                   (assv _key5225_ _lst5227_)
                   '#f)))
          (if _$e5232_
              (cdr _$e5232_)
              (if (let () (declare (not safe)) (procedure? _default5229_))
                  (_default5229_ _key5225_)
                  _default5229_)))))
    (define assgetv__0
      (lambda (_key5238_ _lst5239_)
        (let ((_default5241_ '#f))
          (declare (not safe))
          (assgetv__% _key5238_ _lst5239_ _default5241_))))
    (define assgetv
      (lambda _g8601_
        (let ((_g8600_ (let () (declare (not safe)) (##length _g8601_))))
          (cond ((let () (declare (not safe)) (##fx= _g8600_ 2))
                 (apply (lambda (_key5238_ _lst5239_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key5238_ _lst5239_)))
                        _g8601_))
                ((let () (declare (not safe)) (##fx= _g8600_ 3))
                 (apply (lambda (_key5243_ _lst5244_ _default5245_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key5243_ _lst5244_ _default5245_)))
                        _g8601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g8601_))))))
    (define assget__%
      (lambda (_key5202_ _lst5204_ _default5206_)
        (let ((_$e5209_
               (if (let () (declare (not safe)) (pair? _lst5204_))
                   (assoc _key5202_ _lst5204_)
                   '#f)))
          (if _$e5209_
              (cdr _$e5209_)
              (if (let () (declare (not safe)) (procedure? _default5206_))
                  (_default5206_ _key5202_)
                  _default5206_)))))
    (define assget__0
      (lambda (_key5215_ _lst5216_)
        (let ((_default5218_ '#f))
          (declare (not safe))
          (assget__% _key5215_ _lst5216_ _default5218_))))
    (define assget
      (lambda _g8603_
        (let ((_g8602_ (let () (declare (not safe)) (##length _g8603_))))
          (cond ((let () (declare (not safe)) (##fx= _g8602_ 2))
                 (apply (lambda (_key5215_ _lst5216_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key5215_ _lst5216_)))
                        _g8603_))
                ((let () (declare (not safe)) (##fx= _g8602_ 3))
                 (apply (lambda (_key5220_ _lst5221_ _default5222_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key5220_ _lst5221_ _default5222_)))
                        _g8603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g8603_))))))
    (define pgetq__%
      (lambda (_key5131_ _lst5133_ _default5135_)
        (let _lp5138_ ((_rest5141_ _lst5133_))
          (let* ((_rest51435153_ _rest5141_)
                 (_else51455161_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5135_))
                        (_default5135_ _key5131_)
                        _default5135_)))
                 (_K51475170_
                  (lambda (_rest5164_ _v5165_ _k5167_)
                    (if (let () (declare (not safe)) (eq? _k5167_ _key5131_))
                        _v5165_
                        (let () (declare (not safe)) (_lp5138_ _rest5164_))))))
            (if (let () (declare (not safe)) (##pair? _rest51435153_))
                (let ((_hd51485173_
                       (let () (declare (not safe)) (##car _rest51435153_)))
                      (_tl51495175_
                       (let () (declare (not safe)) (##cdr _rest51435153_))))
                  (let ((_k5178_ _hd51485173_))
                    (if (let () (declare (not safe)) (##pair? _tl51495175_))
                        (let ((_hd51505180_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl51495175_)))
                              (_tl51515182_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl51495175_))))
                          (let* ((_v5185_ _hd51505180_)
                                 (_rest5187_ _tl51515182_))
                            (declare (not safe))
                            (_K51475170_ _rest5187_ _v5185_ _k5178_)))
                        (let () (declare (not safe)) (_else51455161_)))))
                (let () (declare (not safe)) (_else51455161_)))))))
    (define pgetq__0
      (lambda (_key5192_ _lst5193_)
        (let ((_default5195_ '#f))
          (declare (not safe))
          (pgetq__% _key5192_ _lst5193_ _default5195_))))
    (define pgetq
      (lambda _g8605_
        (let ((_g8604_ (let () (declare (not safe)) (##length _g8605_))))
          (cond ((let () (declare (not safe)) (##fx= _g8604_ 2))
                 (apply (lambda (_key5192_ _lst5193_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key5192_ _lst5193_)))
                        _g8605_))
                ((let () (declare (not safe)) (##fx= _g8604_ 3))
                 (apply (lambda (_key5197_ _lst5198_ _default5199_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key5197_ _lst5198_ _default5199_)))
                        _g8605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g8605_))))))
    (define pgetv__%
      (lambda (_key5060_ _lst5062_ _default5064_)
        (let _lp5067_ ((_rest5070_ _lst5062_))
          (let* ((_rest50725082_ _rest5070_)
                 (_else50745090_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default5064_))
                        (_default5064_ _key5060_)
                        _default5064_)))
                 (_K50765099_
                  (lambda (_rest5093_ _v5094_ _k5096_)
                    (if (let () (declare (not safe)) (eqv? _k5096_ _key5060_))
                        _v5094_
                        (let () (declare (not safe)) (_lp5067_ _rest5093_))))))
            (if (let () (declare (not safe)) (##pair? _rest50725082_))
                (let ((_hd50775102_
                       (let () (declare (not safe)) (##car _rest50725082_)))
                      (_tl50785104_
                       (let () (declare (not safe)) (##cdr _rest50725082_))))
                  (let ((_k5107_ _hd50775102_))
                    (if (let () (declare (not safe)) (##pair? _tl50785104_))
                        (let ((_hd50795109_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl50785104_)))
                              (_tl50805111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl50785104_))))
                          (let* ((_v5114_ _hd50795109_)
                                 (_rest5116_ _tl50805111_))
                            (declare (not safe))
                            (_K50765099_ _rest5116_ _v5114_ _k5107_)))
                        (let () (declare (not safe)) (_else50745090_)))))
                (let () (declare (not safe)) (_else50745090_)))))))
    (define pgetv__0
      (lambda (_key5121_ _lst5122_)
        (let ((_default5124_ '#f))
          (declare (not safe))
          (pgetv__% _key5121_ _lst5122_ _default5124_))))
    (define pgetv
      (lambda _g8607_
        (let ((_g8606_ (let () (declare (not safe)) (##length _g8607_))))
          (cond ((let () (declare (not safe)) (##fx= _g8606_ 2))
                 (apply (lambda (_key5121_ _lst5122_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key5121_ _lst5122_)))
                        _g8607_))
                ((let () (declare (not safe)) (##fx= _g8606_ 3))
                 (apply (lambda (_key5126_ _lst5127_ _default5128_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key5126_ _lst5127_ _default5128_)))
                        _g8607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g8607_))))))
    (define pget__%
      (lambda (_key4989_ _lst4991_ _default4993_)
        (let _lp4996_ ((_rest4999_ _lst4991_))
          (let* ((_rest50015011_ _rest4999_)
                 (_else50035019_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default4993_))
                        (_default4993_ _key4989_)
                        _default4993_)))
                 (_K50055028_
                  (lambda (_rest5022_ _v5023_ _k5025_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k5025_ _key4989_))
                        _v5023_
                        (let () (declare (not safe)) (_lp4996_ _rest5022_))))))
            (if (let () (declare (not safe)) (##pair? _rest50015011_))
                (let ((_hd50065031_
                       (let () (declare (not safe)) (##car _rest50015011_)))
                      (_tl50075033_
                       (let () (declare (not safe)) (##cdr _rest50015011_))))
                  (let ((_k5036_ _hd50065031_))
                    (if (let () (declare (not safe)) (##pair? _tl50075033_))
                        (let ((_hd50085038_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl50075033_)))
                              (_tl50095040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl50075033_))))
                          (let* ((_v5043_ _hd50085038_)
                                 (_rest5045_ _tl50095040_))
                            (declare (not safe))
                            (_K50055028_ _rest5045_ _v5043_ _k5036_)))
                        (let () (declare (not safe)) (_else50035019_)))))
                (let () (declare (not safe)) (_else50035019_)))))))
    (define pget__0
      (lambda (_key5050_ _lst5051_)
        (let ((_default5053_ '#f))
          (declare (not safe))
          (pget__% _key5050_ _lst5051_ _default5053_))))
    (define pget
      (lambda _g8609_
        (let ((_g8608_ (let () (declare (not safe)) (##length _g8609_))))
          (cond ((let () (declare (not safe)) (##fx= _g8608_ 2))
                 (apply (lambda (_key5050_ _lst5051_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key5050_ _lst5051_)))
                        _g8609_))
                ((let () (declare (not safe)) (##fx= _g8608_ 3))
                 (apply (lambda (_key5055_ _lst5056_ _default5057_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key5055_ _lst5056_ _default5057_)))
                        _g8609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g8609_))))))
    (define find
      (lambda (_pred4982_ _lst4983_)
        (let ((_$e4985_
               (let () (declare (not safe)) (memf _pred4982_ _lst4983_))))
          (if _$e4985_ (car _$e4985_) '#f))))
    (define memf
      (lambda (_proc4942_ _lst4943_)
        (let _lp4945_ ((_rest4947_ _lst4943_))
          (let* ((_rest49484956_ _rest4947_)
                 (_else49504964_ (lambda () '#f))
                 (_K49524970_
                  (lambda (_tl4967_ _hd4968_)
                    (if (_proc4942_ _hd4968_)
                        _rest4947_
                        (let () (declare (not safe)) (_lp4945_ _tl4967_))))))
            (if (let () (declare (not safe)) (##pair? _rest49484956_))
                (let ((_hd49534973_
                       (let () (declare (not safe)) (##car _rest49484956_)))
                      (_tl49544975_
                       (let () (declare (not safe)) (##cdr _rest49484956_))))
                  (let* ((_hd4978_ _hd49534973_) (_tl4980_ _tl49544975_))
                    (declare (not safe))
                    (_K49524970_ _tl4980_ _hd4978_)))
                (let () (declare (not safe)) (_else49504964_)))))))
    (define remove1
      (lambda (_el4895_ _lst4897_)
        (let _lp4900_ ((_rest4903_ _lst4897_) (_r4905_ '()))
          (let* ((_rest49074915_ _rest4903_)
                 (_else49094923_ (lambda () _lst4897_))
                 (_K49114930_
                  (lambda (_rest4926_ _hd4927_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el4895_ _hd4927_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4926_ _r4905_))
                        (let ((__tmp8610
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4927_ _r4905_))))
                          (declare (not safe))
                          (_lp4900_ _rest4926_ __tmp8610))))))
            (if (let () (declare (not safe)) (##pair? _rest49074915_))
                (let ((_hd49124933_
                       (let () (declare (not safe)) (##car _rest49074915_)))
                      (_tl49134935_
                       (let () (declare (not safe)) (##cdr _rest49074915_))))
                  (let* ((_hd4938_ _hd49124933_) (_rest4940_ _tl49134935_))
                    (declare (not safe))
                    (_K49114930_ _rest4940_ _hd4938_)))
                (let () (declare (not safe)) (_else49094923_)))))))
    (define remv
      (lambda (_el4848_ _lst4850_)
        (let _lp4853_ ((_rest4856_ _lst4850_) (_r4858_ '()))
          (let* ((_rest48604868_ _rest4856_)
                 (_else48624876_ (lambda () _lst4850_))
                 (_K48644883_
                  (lambda (_rest4879_ _hd4880_)
                    (if (let () (declare (not safe)) (eqv? _el4848_ _hd4880_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4879_ _r4858_))
                        (let ((__tmp8611
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4880_ _r4858_))))
                          (declare (not safe))
                          (_lp4853_ _rest4879_ __tmp8611))))))
            (if (let () (declare (not safe)) (##pair? _rest48604868_))
                (let ((_hd48654886_
                       (let () (declare (not safe)) (##car _rest48604868_)))
                      (_tl48664888_
                       (let () (declare (not safe)) (##cdr _rest48604868_))))
                  (let* ((_hd4891_ _hd48654886_) (_rest4893_ _tl48664888_))
                    (declare (not safe))
                    (_K48644883_ _rest4893_ _hd4891_)))
                (let () (declare (not safe)) (_else48624876_)))))))
    (define remq
      (lambda (_el4801_ _lst4803_)
        (let _lp4806_ ((_rest4809_ _lst4803_) (_r4811_ '()))
          (let* ((_rest48134821_ _rest4809_)
                 (_else48154829_ (lambda () _lst4803_))
                 (_K48174836_
                  (lambda (_rest4832_ _hd4833_)
                    (if (let () (declare (not safe)) (eq? _el4801_ _hd4833_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4832_ _r4811_))
                        (let ((__tmp8612
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4833_ _r4811_))))
                          (declare (not safe))
                          (_lp4806_ _rest4832_ __tmp8612))))))
            (if (let () (declare (not safe)) (##pair? _rest48134821_))
                (let ((_hd48184839_
                       (let () (declare (not safe)) (##car _rest48134821_)))
                      (_tl48194841_
                       (let () (declare (not safe)) (##cdr _rest48134821_))))
                  (let* ((_hd4844_ _hd48184839_) (_rest4846_ _tl48194841_))
                    (declare (not safe))
                    (_K48174836_ _rest4846_ _hd4844_)))
                (let () (declare (not safe)) (_else48154829_)))))))
    (define remf
      (lambda (_proc4760_ _lst4761_)
        (let _lp4763_ ((_rest4765_ _lst4761_) (_r4766_ '()))
          (let* ((_rest47674775_ _rest4765_)
                 (_else47694783_ (lambda () _lst4761_))
                 (_K47714789_
                  (lambda (_rest4786_ _hd4787_)
                    (if (_proc4760_ _hd4787_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4786_ _r4766_))
                        (let ((__tmp8613
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4787_ _r4766_))))
                          (declare (not safe))
                          (_lp4763_ _rest4786_ __tmp8613))))))
            (if (let () (declare (not safe)) (##pair? _rest47674775_))
                (let ((_hd47724792_
                       (let () (declare (not safe)) (##car _rest47674775_)))
                      (_tl47734794_
                       (let () (declare (not safe)) (##cdr _rest47674775_))))
                  (let* ((_hd4797_ _hd47724792_) (_rest4799_ _tl47734794_))
                    (declare (not safe))
                    (_K47714789_ _rest4799_ _hd4797_)))
                (let () (declare (not safe)) (_else47694783_)))))))
    (define 1+ (lambda (_x4758_) (+ _x4758_ '1)))
    (define 1- (lambda (_x4756_) (- _x4756_ '1)))
    (define fx1+ (lambda (_x4754_) (fx+ _x4754_ '1)))
    (define fx1- (lambda (_x4752_) (fx- _x4752_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define interned-symbol?
      (lambda (_x4750_)
        (if (let () (declare (not safe)) (symbol? _x4750_))
            (let ((__tmp8614 (uninterned-symbol? _x4750_)))
              (declare (not safe))
              (not __tmp8614))
            '#f)))
    (define make-symbol
      (lambda _args4746_
        (string->symbol
         (apply string-append
                (map (lambda (_x4748_)
                       (if (let () (declare (not safe)) (string? _x4748_))
                           _x4748_
                           (if (let () (declare (not safe)) (symbol? _x4748_))
                               (symbol->string _x4748_)
                               (if (keyword? _x4748_)
                                   (keyword->string _x4748_)
                                   (if (let ()
                                         (declare (not safe))
                                         (number? _x4748_))
                                       (number->string _x4748_)
                                       (error '"cannot convert to symbol"
                                              _x4748_))))))
                     _args4746_)))))
    (define interned-keyword?
      (lambda (_x4744_)
        (if (keyword? _x4744_)
            (let ((__tmp8615 (uninterned-keyword? _x4744_)))
              (declare (not safe))
              (not __tmp8615))
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
                     (let ((__tmp8616
                            (let ((__tmp8617
                                   (let ((__tmp8618
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr4718_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp8618))))
                              (declare (not safe))
                              (cons _enc4719_ __tmp8617))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp8616))))
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
      (lambda _g8620_
        (let ((_g8619_ (let () (declare (not safe)) (##length _g8620_))))
          (cond ((let () (declare (not safe)) (##fx= _g8619_ 1))
                 (apply (lambda (_bstr4733_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr4733_)))
                        _g8620_))
                ((let () (declare (not safe)) (##fx= _g8619_ 2))
                 (apply (lambda (_bstr4737_ _enc4738_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr4737_ _enc4738_)))
                        _g8620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g8620_))))))
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
      (lambda _g8622_
        (let ((_g8621_ (let () (declare (not safe)) (##length _g8622_))))
          (cond ((let () (declare (not safe)) (##fx= _g8621_ 1))
                 (apply (lambda (_str4710_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str4710_)))
                        _g8622_))
                ((let () (declare (not safe)) (##fx= _g8621_ 2))
                 (apply (lambda (_str4714_ _enc4715_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str4714_ _enc4715_)))
                        _g8622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g8622_))))))
    (define substring->bytes__%
      (lambda (_str4682_ _start4683_ _end4684_ _enc4685_)
        (if (let () (declare (not safe)) (eq? _enc4685_ 'UTF-8))
            (string->utf8 _str4682_ _start4683_ _end4684_)
            (let ((_out4687_
                   (open-output-u8vector
                    (let ((__tmp8623
                           (let () (declare (not safe)) (cons _enc4685_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp8623)))))
              (write-substring _str4682_ _start4683_ _end4684_ _out4687_)
              (get-output-u8vector _out4687_)))))
    (define substring->bytes__0
      (lambda (_str4692_ _start4693_ _end4694_)
        (let ((_enc4696_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__% _str4692_ _start4693_ _end4694_ _enc4696_))))
    (define substring->bytes
      (lambda _g8625_
        (let ((_g8624_ (let () (declare (not safe)) (##length _g8625_))))
          (cond ((let () (declare (not safe)) (##fx= _g8624_ 3))
                 (apply (lambda (_str4692_ _start4693_ _end4694_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str4692_
                             _start4693_
                             _end4694_)))
                        _g8625_))
                ((let () (declare (not safe)) (##fx= _g8624_ 4))
                 (apply (lambda (_str4698_ _start4699_ _end4700_ _enc4701_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str4698_
                             _start4699_
                             _end4700_
                             _enc4701_)))
                        _g8625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g8625_))))))
    (define string-empty?
      (lambda (_str4679_)
        (let ((__tmp8626 (string-length _str4679_)))
          (declare (not safe))
          (##fxzero? __tmp8626))))
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
                    (if (let ((__tmp8629
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str4670_ _i4677_)))
                              (__tmp8628
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix4669_ _i4677_))))
                          (declare (not safe))
                          (eq? __tmp8629 __tmp8628))
                        (let ((__tmp8627
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i4677_ '1))))
                          (declare (not safe))
                          (_lp4675_ __tmp8627))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str4647_ _char4648_ _start4649_)
        (let ((_len4651_ (string-length _str4647_)))
          (let _lp4653_ ((_k4655_ _start4649_))
            (if (let () (declare (not safe)) (##fx< _k4655_ _len4651_))
                (if (let ((__tmp8631
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4647_ _k4655_))))
                      (declare (not safe))
                      (eq? _char4648_ __tmp8631))
                    _k4655_
                    (let ((__tmp8630
                           (let () (declare (not safe)) (##fx+ _k4655_ '1))))
                      (declare (not safe))
                      (_lp4653_ __tmp8630)))
                '#f)))))
    (define string-index__0
      (lambda (_str4660_ _char4661_)
        (let ((_start4663_ '0))
          (declare (not safe))
          (string-index__% _str4660_ _char4661_ _start4663_))))
    (define string-index
      (lambda _g8633_
        (let ((_g8632_ (let () (declare (not safe)) (##length _g8633_))))
          (cond ((let () (declare (not safe)) (##fx= _g8632_ 2))
                 (apply (lambda (_str4660_ _char4661_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str4660_ _char4661_)))
                        _g8633_))
                ((let () (declare (not safe)) (##fx= _g8632_ 3))
                 (apply (lambda (_str4665_ _char4666_ _start4667_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str4665_
                             _char4666_
                             _start4667_)))
                        _g8633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g8633_))))))
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
                (if (let ((__tmp8635
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4618_ _k4632_))))
                      (declare (not safe))
                      (eq? _char4619_ __tmp8635))
                    _k4632_
                    (let ((__tmp8634
                           (let () (declare (not safe)) (##fx- _k4632_ '1))))
                      (declare (not safe))
                      (_lp4630_ __tmp8634)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str4637_ _char4638_)
        (let ((_start4640_ '#f))
          (declare (not safe))
          (string-rindex__% _str4637_ _char4638_ _start4640_))))
    (define string-rindex
      (lambda _g8637_
        (let ((_g8636_ (let () (declare (not safe)) (##length _g8637_))))
          (cond ((let () (declare (not safe)) (##fx= _g8636_ 2))
                 (apply (lambda (_str4637_ _char4638_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str4637_ _char4638_)))
                        _g8637_))
                ((let () (declare (not safe)) (##fx= _g8636_ 3))
                 (apply (lambda (_str4642_ _char4643_ _start4644_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str4642_
                             _char4643_
                             _start4644_)))
                        _g8637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g8637_))))))
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
                     (let ((__tmp8641
                            (let () (declare (not safe)) (##fx+ _end4615_ '1)))
                           (__tmp8639
                            (let ((__tmp8640
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str4602_
                                      _start4609_
                                      _end4615_))))
                              (declare (not safe))
                              (cons __tmp8640 _r4610_))))
                       (declare (not safe))
                       (_lp4607_ __tmp8641 __tmp8639)))
                   _$e4612_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start4609_ _len4605_))
                      (let ((__tmp8638
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str4602_
                                      _start4609_
                                      _len4605_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp8638 _r4610_))
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
                                        (let ((__tmp8643
                                               (let ((__tmp8644
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd4588_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp8644
                                                        _jlen4562_
                                                        _len4567_))))
                                          (declare (not safe))
                                          (_lp4564_ _rest4587_ __tmp8643))
                                        (let ((__tmp8642
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd4588_))))
                                          (declare (not safe))
                                          (##fx+ __tmp8642 _len4567_)))
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
                                (let ((__tmp8645
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k4524_ _hdlen4547_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join4512_
                                   '0
                                   _jlen4514_
                                   _ostr4518_
                                   __tmp8645))
                                (let ((__tmp8646
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k4524_
                                                _hdlen4547_
                                                _jlen4514_))))
                                  (declare (not safe))
                                  (_lp4521_ _rest4544_ __tmp8646)))
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
