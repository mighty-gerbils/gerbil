(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707844653)
  (begin
    (define displayln
      (lambda _args59326_
        (let _lp59328_ ((_rest59330_ _args59326_))
          (let* ((_rest5933159339_ _rest59330_)
                 (_else5933359347_ (lambda () (newline)))
                 (_K5933559353_
                  (lambda (_rest59350_ _hd59351_)
                    (display _hd59351_)
                    (let () (declare (not safe)) (_lp59328_ _rest59350_)))))
            (if (let () (declare (not safe)) (##pair? _rest5933159339_))
                (let ((_hd5933659356_
                       (let () (declare (not safe)) (##car _rest5933159339_)))
                      (_tl5933759358_
                       (let () (declare (not safe)) (##cdr _rest5933159339_))))
                  (let* ((_hd59361_ _hd5933659356_)
                         (_rest59363_ _tl5933759358_))
                    (declare (not safe))
                    (_K5933559353_ _rest59363_ _hd59361_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args59324_ (for-each display _args59324_)))
    (define file-newer?
      (lambda (_file159317_ _file259318_)
        (letrec ((_modification-time59320_
                  (lambda (_file59322_)
                    (let ((__tmp64326
                           (file-info-last-modification-time
                            (file-info _file59322_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp64326)))))
          (let ((__tmp64328
                 (let ()
                   (declare (not safe))
                   (_modification-time59320_ _file159317_)))
                (__tmp64327
                 (let ()
                   (declare (not safe))
                   (_modification-time59320_ _file259318_))))
            (declare (not safe))
            (##fl> __tmp64328 __tmp64327)))))
    (define create-directory*__%
      (lambda (_dir59291_ _perms59292_)
        (letrec ((_create159294_
                  (lambda (_path59305_)
                    (if (file-exists? _path59305_)
                        (if (let ((__tmp64329 (file-type _path59305_)))
                              (declare (not safe))
                              (eq? __tmp64329 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path59305_))
                        (if _perms59292_
                            (create-directory
                             (list 'path:
                                   _path59305_
                                   'permissions:
                                   _perms59292_))
                            (create-directory _path59305_))))))
          (if (file-exists? _dir59291_)
              '#!void
              (let _lp59296_ ((_start59298_ '0))
                (let ((_$e59300_
                       (let ()
                         (declare (not safe))
                         (string-index _dir59291_ '#\/ _start59298_))))
                  (if _$e59300_
                      ((lambda (_x59303_)
                         (if (let () (declare (not safe)) (##fx> _x59303_ '0))
                             (let ((__tmp64330
                                    (substring _dir59291_ '0 _x59303_)))
                               (declare (not safe))
                               (_create159294_ __tmp64330))
                             '#!void)
                         (let ((__tmp64331
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x59303_ '1))))
                           (declare (not safe))
                           (_lp59296_ __tmp64331)))
                       _$e59300_)
                      (let ()
                        (declare (not safe))
                        (_create159294_ _dir59291_)))))))))
    (define create-directory*__0
      (lambda (_dir59310_)
        (let ((_perms59312_ '493))
          (declare (not safe))
          (create-directory*__% _dir59310_ _perms59312_))))
    (define create-directory*
      (lambda _g64333_
        (let ((_g64332_ (let () (declare (not safe)) (##length _g64333_))))
          (cond ((let () (declare (not safe)) (##fx= _g64332_ 1))
                 (apply (lambda (_dir59310_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir59310_)))
                        _g64333_))
                ((let () (declare (not safe)) (##fx= _g64332_ 2))
                 (apply (lambda (_dir59314_ _perms59315_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir59314_ _perms59315_)))
                        _g64333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g64333_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g64334_ '#t))
    (define true?
      (lambda (_obj59287_) (let () (declare (not safe)) (eq? _obj59287_ '#t))))
    (define false (lambda _g64335_ '#f))
    (define void (lambda _g64336_ '#!void))
    (define void?
      (lambda (_obj59283_)
        (let () (declare (not safe)) (eq? _obj59283_ '#!void))))
    (define eof-object (lambda _g64337_ '#!eof))
    (define identity (lambda (_obj59280_) _obj59280_))
    (define dssl-object?
      (lambda (_obj59278_)
        (if (memq _obj59278_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj59276_)
        (let () (declare (not safe)) (eq? _obj59276_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj59274_)
        (let () (declare (not safe)) (eq? _obj59274_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj59272_)
        (let () (declare (not safe)) (eq? _obj59272_ '#!optional))))
    (define immediate?
      (lambda (_obj59268_)
        (let* ((_t59270_ (let () (declare (not safe)) (##type _obj59268_)))
               (__tmp64338
                (let () (declare (not safe)) (##fxand _t59270_ '1))))
          (declare (not safe))
          (##fxzero? __tmp64338))))
    (define nonnegative-fixnum?
      (lambda (_obj59266_)
        (if (fixnum? _obj59266_)
            (let ((__tmp64339 (fxnegative? _obj59266_)))
              (declare (not safe))
              (not __tmp64339))
            '#f)))
    (define values-count
      (lambda (_obj59264_)
        (if (let () (declare (not safe)) (##values? _obj59264_))
            (let () (declare (not safe)) (##vector-length _obj59264_))
            '1)))
    (define values-ref
      (lambda (_obj59261_ _k59262_)
        (if (let () (declare (not safe)) (##values? _obj59261_))
            (let () (declare (not safe)) (##vector-ref _obj59261_ _k59262_))
            _obj59261_)))
    (define values->list
      (lambda (_obj59259_)
        (if (let () (declare (not safe)) (##values? _obj59259_))
            (let () (declare (not safe)) (##vector->list _obj59259_))
            (list _obj59259_))))
    (define subvector->list__%
      (lambda (_obj59244_ _start59245_)
        (let ((_lst59247_
               (let () (declare (not safe)) (##vector->list _obj59244_))))
          (list-tail _lst59247_ _start59245_))))
    (define subvector->list__0
      (lambda (_obj59252_)
        (let ((_start59254_ '0))
          (declare (not safe))
          (subvector->list__% _obj59252_ _start59254_))))
    (define subvector->list
      (lambda _g64341_
        (let ((_g64340_ (let () (declare (not safe)) (##length _g64341_))))
          (cond ((let () (declare (not safe)) (##fx= _g64340_ 1))
                 (apply (lambda (_obj59252_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj59252_)))
                        _g64341_))
                ((let () (declare (not safe)) (##fx= _g64340_ 2))
                 (apply (lambda (_obj59256_ _start59257_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj59256_ _start59257_)))
                        _g64341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g64341_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args59241_ (apply make-table 'test: eq? _args59241_)))
    (define make-hash-table-eqv
      (lambda _args59239_ (apply make-table 'test: eqv? _args59239_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst59236_ . _args59237_)
        (apply list->table _lst59236_ 'test: eq? _args59237_)))
    (define list->hash-table-eqv
      (lambda (_lst59233_ . _args59234_)
        (apply list->table _lst59233_ 'test: eqv? _args59234_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht59230_ _k59231_) (table-ref _ht59230_ _k59231_ '#f)))
    (define hash-put!
      (lambda (_ht59226_ _k59227_ _v59228_)
        (table-set! _ht59226_ _k59227_ _v59228_)))
    (define hash-update!__%
      (lambda (_ht59205_ _k59206_ _update59207_ _default59208_)
        (let* ((_value59210_
                (let ()
                  (declare (not safe))
                  (table-ref _ht59205_ _k59206_ _default59208_)))
               (__tmp64342 (_update59207_ _value59210_)))
          (declare (not safe))
          (table-set! _ht59205_ _k59206_ __tmp64342))))
    (define hash-update!__0
      (lambda (_ht59215_ _k59216_ _update59217_)
        (let ((_default59219_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht59215_ _k59216_ _update59217_ _default59219_))))
    (define hash-update!
      (lambda _g64344_
        (let ((_g64343_ (let () (declare (not safe)) (##length _g64344_))))
          (cond ((let () (declare (not safe)) (##fx= _g64343_ 3))
                 (apply (lambda (_ht59215_ _k59216_ _update59217_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht59215_
                             _k59216_
                             _update59217_)))
                        _g64344_))
                ((let () (declare (not safe)) (##fx= _g64343_ 4))
                 (apply (lambda (_ht59221_
                                 _k59222_
                                 _update59223_
                                 _default59224_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht59221_
                             _k59222_
                             _update59223_
                             _default59224_)))
                        _g64344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g64344_))))))
    (define hash-remove!
      (lambda (_ht59201_ _k59202_) (table-set! _ht59201_ _k59202_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht59199_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht59199_))))
    (define plist->hash-table__%
      (lambda (_plst59134_ _ht59135_)
        (let _lp59137_ ((_rest59139_ _plst59134_))
          (let* ((_rest5914059151_ _rest59139_)
                 (_E5914359155_
                  (lambda () (error '"No clause matching" _rest5914059151_))))
            (let ((_K5914559170_
                   (lambda (_rest59166_ _v59167_ _k59168_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht59135_ _k59168_ _v59167_))
                     (let () (declare (not safe)) (_lp59137_ _rest59166_))))
                  (_K5914459160_ (lambda () _ht59135_)))
              (let ((_try-match5914259163_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5914059151_ '()))
                           (let () (declare (not safe)) (_K5914459160_))
                           (let () (declare (not safe)) (_E5914359155_))))))
                (if (let () (declare (not safe)) (##pair? _rest5914059151_))
                    (let ((_tl5914759175_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5914059151_)))
                          (_hd5914659173_
                           (let ()
                             (declare (not safe))
                             (##car _rest5914059151_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5914759175_))
                          (let ((_tl5914959182_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5914759175_)))
                                (_hd5914859180_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5914759175_))))
                            (let ((_k59178_ _hd5914659173_)
                                  (_v59185_ _hd5914859180_)
                                  (_rest59187_ _tl5914959182_))
                              (let ()
                                (declare (not safe))
                                (_K5914559170_
                                 _rest59187_
                                 _v59185_
                                 _k59178_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5914259163_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5914259163_)))))))))
    (define plist->hash-table__0
      (lambda (_plst59192_)
        (let ((_ht59194_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst59192_ _ht59194_))))
    (define plist->hash-table
      (lambda _g64346_
        (let ((_g64345_ (let () (declare (not safe)) (##length _g64346_))))
          (cond ((let () (declare (not safe)) (##fx= _g64345_ 1))
                 (apply (lambda (_plst59192_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst59192_)))
                        _g64346_))
                ((let () (declare (not safe)) (##fx= _g64345_ 2))
                 (apply (lambda (_plst59196_ _ht59197_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst59196_ _ht59197_)))
                        _g64346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g64346_))))))
    (define plist->hash-table-eq
      (lambda (_plst59131_)
        (let ((__tmp64347
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst59131_ __tmp64347))))
    (define plist->hash-table-eqv
      (lambda (_plst59129_)
        (let ((__tmp64348
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst59129_ __tmp64348))))
    (define hash-key?
      (lambda (_ht59126_ _k59127_)
        (let ((__tmp64349
               (let ((__tmp64350
                      (let ()
                        (declare (not safe))
                        (table-ref _ht59126_ _k59127_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp64350 absent-value))))
          (declare (not safe))
          (not __tmp64349))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun59119_ _ht59120_)
        (let ((__tmp64351
               (lambda (_k59122_ _v59123_ _r59124_)
                 (let ((__tmp64352 (_fun59119_ _k59122_ _v59123_)))
                   (declare (not safe))
                   (cons __tmp64352 _r59124_)))))
          (declare (not safe))
          (hash-fold __tmp64351 '() _ht59120_))))
    (define hash-fold
      (lambda (_fun59110_ _iv59111_ _ht59112_)
        (let ((_ret59114_ _iv59111_))
          (let ((__tmp64353
                 (lambda (_k59116_ _v59117_)
                   (set! _ret59114_
                         (_fun59110_ _k59116_ _v59117_ _ret59114_)))))
            (declare (not safe))
            (table-for-each __tmp64353 _ht59112_))
          _ret59114_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht59105_)
        (let ((__tmp64354 (lambda (_k59107_ _v59108_) _k59107_)))
          (declare (not safe))
          (hash-map __tmp64354 _ht59105_))))
    (define hash-values
      (lambda (_ht59100_)
        (let ((__tmp64355 (lambda (_k59102_ _v59103_) _v59103_)))
          (declare (not safe))
          (hash-map __tmp64355 _ht59100_))))
    (define hash-copy
      (lambda (_hd59095_ . _rest59096_)
        (let ((_hd59098_ (table-copy _hd59095_)))
          (if (let () (declare (not safe)) (null? _rest59096_))
              _hd59098_
              (apply hash-copy! _hd59098_ _rest59096_)))))
    (define hash-copy!
      (lambda (_hd59090_ . _rest59091_)
        (for-each
         (lambda (_r59093_) (table-merge! _hd59090_ _r59093_))
         _rest59091_)
        _hd59090_))
    (define hash-merge
      (lambda (_hd59084_ . _rest59085_)
        (let ((__tmp64356
               (lambda (_tab59087_ _r59088_)
                 (table-merge _r59088_ _tab59087_))))
          (declare (not safe))
          (foldl1 __tmp64356 _hd59084_ _rest59085_))))
    (define hash-merge!
      (lambda (_hd59078_ . _rest59079_)
        (let ((__tmp64357
               (lambda (_tab59081_ _r59082_)
                 (table-merge! _r59082_ _tab59081_))))
          (declare (not safe))
          (foldl1 __tmp64357 _hd59078_ _rest59079_))))
    (define hash-clear!__%
      (lambda (_ht59063_ _size59064_)
        (let ((_gcht59066_
               (let () (declare (not safe)) (##vector-ref _ht59063_ '5))))
          (if (let ((__tmp64358 (fixnum? _gcht59066_)))
                (declare (not safe))
                (not __tmp64358))
              (let ()
                (declare (not safe))
                (##vector-set! _ht59063_ '5 _size59064_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht59071_)
        (let ((_size59073_ '0))
          (declare (not safe))
          (hash-clear!__% _ht59071_ _size59073_))))
    (define hash-clear!
      (lambda _g64360_
        (let ((_g64359_ (let () (declare (not safe)) (##length _g64360_))))
          (cond ((let () (declare (not safe)) (##fx= _g64359_ 1))
                 (apply (lambda (_ht59071_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht59071_)))
                        _g64360_))
                ((let () (declare (not safe)) (##fx= _g64359_ 2))
                 (apply (lambda (_ht59075_ _size59076_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht59075_ _size59076_)))
                        _g64360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g64360_))))))
    (define make-list__%
      (lambda (_k59044_ _val59045_)
        (if (fixnum? _k59044_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k59044_))
        (let _lp59047_ ((_n59049_ '0) (_r59050_ '()))
          (if (let () (declare (not safe)) (##fx< _n59049_ _k59044_))
              (let ((__tmp64362
                     (let () (declare (not safe)) (##fx+ _n59049_ '1)))
                    (__tmp64361
                     (let () (declare (not safe)) (cons _val59045_ _r59050_))))
                (declare (not safe))
                (_lp59047_ __tmp64362 __tmp64361))
              _r59050_))))
    (define make-list__0
      (lambda (_k59055_)
        (let ((_val59057_ '#f))
          (declare (not safe))
          (make-list__% _k59055_ _val59057_))))
    (define make-list
      (lambda _g64364_
        (let ((_g64363_ (let () (declare (not safe)) (##length _g64364_))))
          (cond ((let () (declare (not safe)) (##fx= _g64363_ 1))
                 (apply (lambda (_k59055_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k59055_)))
                        _g64364_))
                ((let () (declare (not safe)) (##fx= _g64363_ 2))
                 (apply (lambda (_k59059_ _val59060_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k59059_ _val59060_)))
                        _g64364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g64364_))))))
    (define cons*
      (lambda (_x59034_ _y59035_ . _rest59036_)
        (letrec ((_recur59038_
                  (lambda (_x59040_ _rest59041_)
                    (if (let () (declare (not safe)) (pair? _rest59041_))
                        (let ((__tmp64365
                               (let ((__tmp64367
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest59041_)))
                                     (__tmp64366
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest59041_))))
                                 (declare (not safe))
                                 (_recur59038_ __tmp64367 __tmp64366))))
                          (declare (not safe))
                          (cons _x59040_ __tmp64365))
                        _x59040_))))
          (let ((__tmp64368
                 (let ()
                   (declare (not safe))
                   (_recur59038_ _y59035_ _rest59036_))))
            (declare (not safe))
            (cons _x59034_ __tmp64368)))))
    (define foldl1
      (lambda (_f58992_ _iv58993_ _lst58994_)
        (let _lp58996_ ((_rest58998_ _lst58994_) (_r58999_ _iv58993_))
          (let* ((_rest5900059008_ _rest58998_)
                 (_else5900259016_ (lambda () _r58999_))
                 (_K5900459022_
                  (lambda (_rest59019_ _x59020_)
                    (let ((__tmp64369 (_f58992_ _x59020_ _r58999_)))
                      (declare (not safe))
                      (_lp58996_ _rest59019_ __tmp64369)))))
            (if (let () (declare (not safe)) (##pair? _rest5900059008_))
                (let ((_hd5900559025_
                       (let () (declare (not safe)) (##car _rest5900059008_)))
                      (_tl5900659027_
                       (let () (declare (not safe)) (##cdr _rest5900059008_))))
                  (let* ((_x59030_ _hd5900559025_)
                         (_rest59032_ _tl5900659027_))
                    (declare (not safe))
                    (_K5900459022_ _rest59032_ _x59030_)))
                (let () (declare (not safe)) (_else5900259016_)))))))
    (define foldl2
      (lambda (_f58915_ _iv58916_ _lst158917_ _lst258918_)
        (let _lp58920_ ((_rest158922_ _lst158917_)
                        (_rest258923_ _lst258918_)
                        (_r58924_ _iv58916_))
          (let* ((_rest15892558933_ _rest158922_)
                 (_else5892758941_ (lambda () _r58924_))
                 (_K5892958980_
                  (lambda (_rest158944_ _x158945_)
                    (let* ((_rest25894658954_ _rest258923_)
                           (_else5894858962_ (lambda () _r58924_))
                           (_K5895058968_
                            (lambda (_rest258965_ _x258966_)
                              (let ((__tmp64370
                                     (_f58915_ _x158945_ _x258966_ _r58924_)))
                                (declare (not safe))
                                (_lp58920_
                                 _rest158944_
                                 _rest258965_
                                 __tmp64370)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25894658954_))
                          (let ((_hd5895158971_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25894658954_)))
                                (_tl5895258973_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25894658954_))))
                            (let* ((_x258976_ _hd5895158971_)
                                   (_rest258978_ _tl5895258973_))
                              (declare (not safe))
                              (_K5895058968_ _rest258978_ _x258976_)))
                          (let () (declare (not safe)) (_else5894858962_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15892558933_))
                (let ((_hd5893058983_
                       (let () (declare (not safe)) (##car _rest15892558933_)))
                      (_tl5893158985_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15892558933_))))
                  (let* ((_x158988_ _hd5893058983_)
                         (_rest158990_ _tl5893158985_))
                    (declare (not safe))
                    (_K5892958980_ _rest158990_ _x158988_)))
                (let () (declare (not safe)) (_else5892758941_)))))))
    (define foldl
      (lambda _g64372_
        (let ((_g64371_ (let () (declare (not safe)) (##length _g64372_))))
          (cond ((let () (declare (not safe)) (##fx= _g64371_ 3))
                 (apply (lambda (_f58900_ _iv58901_ _lst58902_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58900_ _iv58901_ _lst58902_)))
                        _g64372_))
                ((let () (declare (not safe)) (##fx= _g64371_ 4))
                 (apply (lambda (_f58904_ _iv58905_ _lst158906_ _lst258907_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58904_
                                    _iv58905_
                                    _lst158906_
                                    _lst258907_)))
                        _g64372_))
                ((let () (declare (not safe)) (##fx>= _g64371_ 4))
                 (apply foldl* _g64372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g64372_))))))
    (define foldl*
      (lambda (_f58888_ _iv58889_ . _rest58890_)
        (let _recur58892_ ((_iv58894_ _iv58889_) (_rest58895_ _rest58890_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58895_))
              (let ((__tmp64374
                     (apply _f58888_
                            (let ((__tmp64376
                                   (lambda (_xs58897_ _r58898_)
                                     (let ((__tmp64377 (car _xs58897_)))
                                       (declare (not safe))
                                       (cons __tmp64377 _r58898_))))
                                  (__tmp64375 (list _iv58894_)))
                              (declare (not safe))
                              (foldr1 __tmp64376 __tmp64375 _rest58895_))))
                    (__tmp64373 (map cdr _rest58895_)))
                (declare (not safe))
                (_recur58892_ __tmp64374 __tmp64373))
              _iv58894_))))
    (define foldr1
      (lambda (_f58847_ _iv58848_ _lst58849_)
        (let _recur58851_ ((_rest58853_ _lst58849_))
          (let* ((_rest5885458862_ _rest58853_)
                 (_else5885658870_ (lambda () _iv58848_))
                 (_K5885858876_
                  (lambda (_rest58873_ _x58874_)
                    (_f58847_
                     _x58874_
                     (let ()
                       (declare (not safe))
                       (_recur58851_ _rest58873_))))))
            (if (let () (declare (not safe)) (##pair? _rest5885458862_))
                (let ((_hd5885958879_
                       (let () (declare (not safe)) (##car _rest5885458862_)))
                      (_tl5886058881_
                       (let () (declare (not safe)) (##cdr _rest5885458862_))))
                  (let* ((_x58884_ _hd5885958879_)
                         (_rest58886_ _tl5886058881_))
                    (declare (not safe))
                    (_K5885858876_ _rest58886_ _x58884_)))
                (let () (declare (not safe)) (_else5885658870_)))))))
    (define foldr2
      (lambda (_f58771_ _iv58772_ _lst158773_ _lst258774_)
        (let _recur58776_ ((_rest158778_ _lst158773_)
                           (_rest258779_ _lst258774_))
          (let* ((_rest15878058788_ _rest158778_)
                 (_else5878258796_ (lambda () _iv58772_))
                 (_K5878458835_
                  (lambda (_rest158799_ _x158800_)
                    (let* ((_rest25880158809_ _rest258779_)
                           (_else5880358817_ (lambda () _iv58772_))
                           (_K5880558823_
                            (lambda (_rest258820_ _x258821_)
                              (_f58771_
                               _x158800_
                               _x258821_
                               (let ()
                                 (declare (not safe))
                                 (_recur58776_ _rest158799_ _rest258820_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25880158809_))
                          (let ((_hd5880658826_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25880158809_)))
                                (_tl5880758828_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25880158809_))))
                            (let* ((_x258831_ _hd5880658826_)
                                   (_rest258833_ _tl5880758828_))
                              (declare (not safe))
                              (_K5880558823_ _rest258833_ _x258831_)))
                          (let () (declare (not safe)) (_else5880358817_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15878058788_))
                (let ((_hd5878558838_
                       (let () (declare (not safe)) (##car _rest15878058788_)))
                      (_tl5878658840_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15878058788_))))
                  (let* ((_x158843_ _hd5878558838_)
                         (_rest158845_ _tl5878658840_))
                    (declare (not safe))
                    (_K5878458835_ _rest158845_ _x158843_)))
                (let () (declare (not safe)) (_else5878258796_)))))))
    (define foldr
      (lambda _g64379_
        (let ((_g64378_ (let () (declare (not safe)) (##length _g64379_))))
          (cond ((let () (declare (not safe)) (##fx= _g64378_ 3))
                 (apply (lambda (_f58756_ _iv58757_ _lst58758_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58756_ _iv58757_ _lst58758_)))
                        _g64379_))
                ((let () (declare (not safe)) (##fx= _g64378_ 4))
                 (apply (lambda (_f58760_ _iv58761_ _lst158762_ _lst258763_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58760_
                                    _iv58761_
                                    _lst158762_
                                    _lst258763_)))
                        _g64379_))
                ((let () (declare (not safe)) (##fx>= _g64378_ 4))
                 (apply foldr* _g64379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g64379_))))))
    (define foldr*
      (lambda (_f58745_ _iv58746_ . _rest58747_)
        (let _recur58749_ ((_rest58751_ _rest58747_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58751_))
              (apply _f58745_
                     (let ((__tmp64382
                            (lambda (_xs58753_ _r58754_)
                              (let ((__tmp64383 (car _xs58753_)))
                                (declare (not safe))
                                (cons __tmp64383 _r58754_))))
                           (__tmp64380
                            (list (let ((__tmp64381 (map cdr _rest58751_)))
                                    (declare (not safe))
                                    (_recur58749_ __tmp64381)))))
                       (declare (not safe))
                       (foldr1 __tmp64382 __tmp64380 _rest58751_)))
              _iv58746_))))
    (define drop
      (lambda (_l58742_ _k58743_)
        (if (let () (declare (not safe)) (##fxpositive? _k58743_))
            (let ((__tmp64385 (cdr _l58742_))
                  (__tmp64384 (let () (declare (not safe)) (fx- _k58743_ '1))))
              (declare (not safe))
              (drop __tmp64385 __tmp64384))
            _l58742_)))
    (define remove-nulls!
      (lambda (_l58629_)
        (let* ((_l5863058643_ _l58629_)
               (_E5863458647_
                (lambda () (error '"No clause matching" _l5863058643_))))
          (let ((_K5863958732_
                 (lambda (_r58730_)
                   (let () (declare (not safe)) (remove-nulls! _r58730_))))
                (_K5863658719_
                 (lambda (_r58659_)
                   (let _loop58661_ ((_l58663_ _l58629_) (_r58664_ _r58659_))
                     (let* ((_r5866558678_ _r58664_)
                            (_E5866958682_
                             (lambda ()
                               (error '"No clause matching" _r5866558678_))))
                       (let ((_K5867458709_
                              (lambda (_rr58707_)
                                (set-cdr!
                                 _l58663_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58707_)))))
                             (_K5867158696_
                              (lambda (_rr58694_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58661_ _r58664_ _rr58694_))))
                             (_K5867058687_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5866558678_))
                             (let ((_tl5867658714_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5866558678_)))
                                   (_hd5867558712_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5866558678_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5867558712_))
                                   (let ((_rr58717_ _tl5867658714_))
                                     (declare (not safe))
                                     (_K5867458709_ _rr58717_))
                                   (let ((_rr58702_ _tl5867658714_))
                                     (declare (not safe))
                                     (_K5867158696_ _rr58702_))))
                             '#!void))))
                   _l58629_))
                (_K5863558652_ (lambda () _l58629_)))
            (if (let () (declare (not safe)) (##pair? _l5863058643_))
                (let ((_tl5864158737_
                       (let () (declare (not safe)) (##cdr _l5863058643_)))
                      (_hd5864058735_
                       (let () (declare (not safe)) (##car _l5863058643_))))
                  (if (let () (declare (not safe)) (##null? _hd5864058735_))
                      (let ((_r58740_ _tl5864158737_))
                        (declare (not safe))
                        (remove-nulls! _r58740_))
                      (let ((_r58725_ _tl5864158737_))
                        (declare (not safe))
                        (_K5863658719_ _r58725_))))
                (let () (declare (not safe)) (_K5863558652_)))))))
    (define append1!
      (lambda (_l58624_ _x58625_)
        (let ((_l258627_ (let () (declare (not safe)) (cons _x58625_ '()))))
          (if (let () (declare (not safe)) (pair? _l58624_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58624_))
               _l258627_)
              _l258627_))))
    (define append-reverse
      (lambda (_rev-head58621_ _tail58622_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58622_ _rev-head58621_))))
    (define append-reverse-until
      (lambda (_pred58574_ _rhead58575_ _tail58576_)
        (let _loop58578_ ((_rhead58580_ _rhead58575_)
                          (_tail58581_ _tail58576_))
          (let* ((_rhead5858258591_ _rhead58580_)
                 (_E5858558595_
                  (lambda () (error '"No clause matching" _rhead5858258591_))))
            (let ((_K5858958618_ (lambda () (values '() _tail58581_)))
                  (_K5858658602_
                   (lambda (_r58599_ _a58600_)
                     (if (_pred58574_ _a58600_)
                         (values _rhead58580_ _tail58581_)
                         (let ((__tmp64386
                                (let ()
                                  (declare (not safe))
                                  (cons _a58600_ _tail58581_))))
                           (declare (not safe))
                           (_loop58578_ _r58599_ __tmp64386))))))
              (let ((_try-match5858458614_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5858258591_))
                           (let ((_tl5858858607_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5858258591_)))
                                 (_hd5858758605_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5858258591_))))
                             (let ((_a58610_ _hd5858758605_)
                                   (_r58612_ _tl5858858607_))
                               (let ()
                                 (declare (not safe))
                                 (_K5858658602_ _r58612_ _a58610_))))
                           (let () (declare (not safe)) (_E5858558595_))))))
                (if (let () (declare (not safe)) (##null? _rhead5858258591_))
                    (let () (declare (not safe)) (_K5858958618_))
                    (let ()
                      (declare (not safe))
                      (_try-match5858458614_)))))))))
    (define andmap1
      (lambda (_f58534_ _lst58535_)
        (let _lp58537_ ((_rest58539_ _lst58535_))
          (let* ((_rest5854058548_ _rest58539_)
                 (_else5854258556_ (lambda () '#t))
                 (_K5854458562_
                  (lambda (_rest58559_ _x58560_)
                    (if (_f58534_ _x58560_)
                        (let () (declare (not safe)) (_lp58537_ _rest58559_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5854058548_))
                (let ((_hd5854558565_
                       (let () (declare (not safe)) (##car _rest5854058548_)))
                      (_tl5854658567_
                       (let () (declare (not safe)) (##cdr _rest5854058548_))))
                  (let* ((_x58570_ _hd5854558565_)
                         (_rest58572_ _tl5854658567_))
                    (declare (not safe))
                    (_K5854458562_ _rest58572_ _x58570_)))
                (let () (declare (not safe)) (_else5854258556_)))))))
    (define andmap2
      (lambda (_f58459_ _lst158460_ _lst258461_)
        (let _lp58463_ ((_rest158465_ _lst158460_) (_rest258466_ _lst258461_))
          (let* ((_rest15846758475_ _rest158465_)
                 (_else5846958483_ (lambda () '#t))
                 (_K5847158522_
                  (lambda (_rest158486_ _x158487_)
                    (let* ((_rest25848858496_ _rest258466_)
                           (_else5849058504_ (lambda () '#t))
                           (_K5849258510_
                            (lambda (_rest258507_ _x258508_)
                              (if (_f58459_ _x158487_ _x258508_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58463_ _rest158486_ _rest258507_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25848858496_))
                          (let ((_hd5849358513_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25848858496_)))
                                (_tl5849458515_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25848858496_))))
                            (let* ((_x258518_ _hd5849358513_)
                                   (_rest258520_ _tl5849458515_))
                              (declare (not safe))
                              (_K5849258510_ _rest258520_ _x258518_)))
                          (let () (declare (not safe)) (_else5849058504_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15846758475_))
                (let ((_hd5847258525_
                       (let () (declare (not safe)) (##car _rest15846758475_)))
                      (_tl5847358527_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15846758475_))))
                  (let* ((_x158530_ _hd5847258525_)
                         (_rest158532_ _tl5847358527_))
                    (declare (not safe))
                    (_K5847158522_ _rest158532_ _x158530_)))
                (let () (declare (not safe)) (_else5846958483_)))))))
    (define andmap
      (lambda _g64388_
        (let ((_g64387_ (let () (declare (not safe)) (##length _g64388_))))
          (cond ((let () (declare (not safe)) (##fx= _g64387_ 2))
                 (apply (lambda (_f58447_ _lst58448_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58447_ _lst58448_)))
                        _g64388_))
                ((let () (declare (not safe)) (##fx= _g64387_ 3))
                 (apply (lambda (_f58450_ _lst158451_ _lst258452_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58450_ _lst158451_ _lst258452_)))
                        _g64388_))
                ((let () (declare (not safe)) (##fx>= _g64387_ 3))
                 (apply andmap* _g64388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g64388_))))))
    (define andmap*
      (lambda (_f58440_ . _rest58441_)
        (let _recur58443_ ((_rest58445_ _rest58441_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58445_))
              (if (apply _f58440_ (map car _rest58445_))
                  (let ((__tmp64389 (map cdr _rest58445_)))
                    (declare (not safe))
                    (_recur58443_ __tmp64389))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f58397_ _lst58398_)
        (let _lp58400_ ((_rest58402_ _lst58398_))
          (let* ((_rest5840358411_ _rest58402_)
                 (_else5840558419_ (lambda () '#f))
                 (_K5840758428_
                  (lambda (_rest58422_ _x58423_)
                    (let ((_$e58425_ (_f58397_ _x58423_)))
                      (if _$e58425_
                          _$e58425_
                          (let ()
                            (declare (not safe))
                            (_lp58400_ _rest58422_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5840358411_))
                (let ((_hd5840858431_
                       (let () (declare (not safe)) (##car _rest5840358411_)))
                      (_tl5840958433_
                       (let () (declare (not safe)) (##cdr _rest5840358411_))))
                  (let* ((_x58436_ _hd5840858431_)
                         (_rest58438_ _tl5840958433_))
                    (declare (not safe))
                    (_K5840758428_ _rest58438_ _x58436_)))
                (let () (declare (not safe)) (_else5840558419_)))))))
    (define ormap2
      (lambda (_f58319_ _lst158320_ _lst258321_)
        (let _lp58323_ ((_rest158325_ _lst158320_) (_rest258326_ _lst258321_))
          (let* ((_rest15832758335_ _rest158325_)
                 (_else5832958343_ (lambda () '#f))
                 (_K5833158385_
                  (lambda (_rest158346_ _x158347_)
                    (let* ((_rest25834858356_ _rest258326_)
                           (_else5835058364_ (lambda () '#f))
                           (_K5835258373_
                            (lambda (_rest258367_ _x258368_)
                              (let ((_$e58370_ (_f58319_ _x158347_ _x258368_)))
                                (if _$e58370_
                                    _$e58370_
                                    (let ()
                                      (declare (not safe))
                                      (_lp58323_
                                       _rest158346_
                                       _rest258367_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25834858356_))
                          (let ((_hd5835358376_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25834858356_)))
                                (_tl5835458378_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25834858356_))))
                            (let* ((_x258381_ _hd5835358376_)
                                   (_rest258383_ _tl5835458378_))
                              (declare (not safe))
                              (_K5835258373_ _rest258383_ _x258381_)))
                          (let () (declare (not safe)) (_else5835058364_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15832758335_))
                (let ((_hd5833258388_
                       (let () (declare (not safe)) (##car _rest15832758335_)))
                      (_tl5833358390_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15832758335_))))
                  (let* ((_x158393_ _hd5833258388_)
                         (_rest158395_ _tl5833358390_))
                    (declare (not safe))
                    (_K5833158385_ _rest158395_ _x158393_)))
                (let () (declare (not safe)) (_else5832958343_)))))))
    (define ormap
      (lambda _g64391_
        (let ((_g64390_ (let () (declare (not safe)) (##length _g64391_))))
          (cond ((let () (declare (not safe)) (##fx= _g64390_ 2))
                 (apply (lambda (_f58307_ _lst58308_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f58307_ _lst58308_)))
                        _g64391_))
                ((let () (declare (not safe)) (##fx= _g64390_ 3))
                 (apply (lambda (_f58310_ _lst158311_ _lst258312_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f58310_ _lst158311_ _lst258312_)))
                        _g64391_))
                ((let () (declare (not safe)) (##fx>= _g64390_ 3))
                 (apply ormap* _g64391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g64391_))))))
    (define ormap*
      (lambda (_f58297_ . _rest58298_)
        (let _recur58300_ ((_rest58302_ _rest58298_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58302_))
              (let ((_$e58304_ (apply _f58297_ (map car _rest58302_))))
                (if _$e58304_
                    _$e58304_
                    (let ((__tmp64392 (map cdr _rest58302_)))
                      (declare (not safe))
                      (_recur58300_ __tmp64392))))
              '#f))))
    (define filter
      (lambda (_f58255_ _lst58256_)
        (let _recur58258_ ((_lst58260_ _lst58256_))
          (let* ((_lst5826158269_ _lst58260_)
                 (_else5826358277_ (lambda () '()))
                 (_K5826558285_
                  (lambda (_rest58280_ _hd58281_)
                    (if (_f58255_ _hd58281_)
                        (let ((_tail58283_
                               (let ()
                                 (declare (not safe))
                                 (_recur58258_ _rest58280_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail58283_ _rest58280_))
                              _lst58260_
                              (let ()
                                (declare (not safe))
                                (cons _hd58281_ _tail58283_))))
                        (let ()
                          (declare (not safe))
                          (_recur58258_ _rest58280_))))))
            (if (let () (declare (not safe)) (##pair? _lst5826158269_))
                (let ((_hd5826658288_
                       (let () (declare (not safe)) (##car _lst5826158269_)))
                      (_tl5826758290_
                       (let () (declare (not safe)) (##cdr _lst5826158269_))))
                  (let* ((_hd58293_ _hd5826658288_)
                         (_rest58295_ _tl5826758290_))
                    (declare (not safe))
                    (_K5826558285_ _rest58295_ _hd58293_)))
                (let () (declare (not safe)) (_else5826358277_)))))))
    (define filter-map1
      (lambda (_f58210_ _lst58211_)
        (let _recur58213_ ((_rest58215_ _lst58211_))
          (let* ((_rest5821658224_ _rest58215_)
                 (_else5821858232_ (lambda () '()))
                 (_K5822058243_
                  (lambda (_rest58235_ _x58236_)
                    (let ((_$e58238_ (_f58210_ _x58236_)))
                      (if _$e58238_
                          ((lambda (_r58241_)
                             (let ((__tmp64393
                                    (let ()
                                      (declare (not safe))
                                      (_recur58213_ _rest58235_))))
                               (declare (not safe))
                               (cons _r58241_ __tmp64393)))
                           _$e58238_)
                          (let ()
                            (declare (not safe))
                            (_recur58213_ _rest58235_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5821658224_))
                (let ((_hd5822158246_
                       (let () (declare (not safe)) (##car _rest5821658224_)))
                      (_tl5822258248_
                       (let () (declare (not safe)) (##cdr _rest5821658224_))))
                  (let* ((_x58251_ _hd5822158246_)
                         (_rest58253_ _tl5822258248_))
                    (declare (not safe))
                    (_K5822058243_ _rest58253_ _x58251_)))
                (let () (declare (not safe)) (_else5821858232_)))))))
    (define filter-map2
      (lambda (_f58130_ _lst158131_ _lst258132_)
        (let _recur58134_ ((_rest158136_ _lst158131_)
                           (_rest258137_ _lst258132_))
          (let* ((_rest15813858146_ _rest158136_)
                 (_else5814058154_ (lambda () '()))
                 (_K5814258198_
                  (lambda (_rest158157_ _x158158_)
                    (let* ((_rest25815958167_ _rest258137_)
                           (_else5816158175_ (lambda () '()))
                           (_K5816358186_
                            (lambda (_rest258178_ _x258179_)
                              (let ((_$e58181_ (_f58130_ _x158158_ _x258179_)))
                                (if _$e58181_
                                    ((lambda (_r58184_)
                                       (let ((__tmp64394
                                              (let ()
                                                (declare (not safe))
                                                (_recur58134_
                                                 _rest158157_
                                                 _rest258178_))))
                                         (declare (not safe))
                                         (cons _r58184_ __tmp64394)))
                                     _$e58181_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur58134_
                                       _rest158157_
                                       _rest258178_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25815958167_))
                          (let ((_hd5816458189_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25815958167_)))
                                (_tl5816558191_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25815958167_))))
                            (let* ((_x258194_ _hd5816458189_)
                                   (_rest258196_ _tl5816558191_))
                              (declare (not safe))
                              (_K5816358186_ _rest258196_ _x258194_)))
                          (let () (declare (not safe)) (_else5816158175_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15813858146_))
                (let ((_hd5814358201_
                       (let () (declare (not safe)) (##car _rest15813858146_)))
                      (_tl5814458203_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15813858146_))))
                  (let* ((_x158206_ _hd5814358201_)
                         (_rest158208_ _tl5814458203_))
                    (declare (not safe))
                    (_K5814258198_ _rest158208_ _x158206_)))
                (let () (declare (not safe)) (_else5814058154_)))))))
    (define filter-map
      (lambda _g64396_
        (let ((_g64395_ (let () (declare (not safe)) (##length _g64396_))))
          (cond ((let () (declare (not safe)) (##fx= _g64395_ 2))
                 (apply (lambda (_f58118_ _lst58119_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f58118_ _lst58119_)))
                        _g64396_))
                ((let () (declare (not safe)) (##fx= _g64395_ 3))
                 (apply (lambda (_f58121_ _lst158122_ _lst258123_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f58121_ _lst158122_ _lst258123_)))
                        _g64396_))
                ((let () (declare (not safe)) (##fx>= _g64395_ 3))
                 (apply filter-map* _g64396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g64396_))))))
    (define filter-map*
      (lambda (_f58106_ . _rest58107_)
        (let _recur58109_ ((_rest58111_ _rest58107_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58111_))
              (let ((_$e58113_ (apply _f58106_ (map car _rest58111_))))
                (if _$e58113_
                    ((lambda (_r58116_)
                       (let ((__tmp64398
                              (let ((__tmp64399 (map cdr _rest58111_)))
                                (declare (not safe))
                                (_recur58109_ __tmp64399))))
                         (declare (not safe))
                         (cons _r58116_ __tmp64398)))
                     _$e58113_)
                    (let ((__tmp64397 (map cdr _rest58111_)))
                      (declare (not safe))
                      (_recur58109_ __tmp64397))))
              '()))))
    (define iota__%
      (lambda (_count58074_ _start58075_ _step58076_)
        (if (fixnum? _count58074_)
            '#!void
            (error '"expected fixnum" _count58074_))
        (if (let () (declare (not safe)) (number? _start58075_))
            '#!void
            (error '"expected number" _start58075_))
        (if (let () (declare (not safe)) (number? _step58076_))
            '#!void
            (error '"expected number" _step58076_))
        (let ((_root58078_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp58080_ ((_i58082_ '0)
                          (_x58083_ _start58075_)
                          (_tl58084_ _root58078_))
            (if (let () (declare (not safe)) (##fx< _i58082_ _count58074_))
                (let ((_tl*58086_
                       (let () (declare (not safe)) (cons _x58083_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl58084_ _tl*58086_))
                  (let ((__tmp64401
                         (let () (declare (not safe)) (##fx+ _i58082_ '1)))
                        (__tmp64400 (+ _x58083_ _step58076_)))
                    (declare (not safe))
                    (_lp58080_ __tmp64401 __tmp64400 _tl*58086_)))
                (let () (declare (not safe)) (##cdr _root58078_)))))))
    (define iota__0
      (lambda (_count58091_)
        (let* ((_start58093_ '0) (_step58095_ '1))
          (declare (not safe))
          (iota__% _count58091_ _start58093_ _step58095_))))
    (define iota__1
      (lambda (_count58097_ _start58098_)
        (let ((_step58100_ '1))
          (declare (not safe))
          (iota__% _count58097_ _start58098_ _step58100_))))
    (define iota
      (lambda _g64403_
        (let ((_g64402_ (let () (declare (not safe)) (##length _g64403_))))
          (cond ((let () (declare (not safe)) (##fx= _g64402_ 1))
                 (apply (lambda (_count58091_)
                          (let () (declare (not safe)) (iota__0 _count58091_)))
                        _g64403_))
                ((let () (declare (not safe)) (##fx= _g64402_ 2))
                 (apply (lambda (_count58097_ _start58098_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count58097_ _start58098_)))
                        _g64403_))
                ((let () (declare (not safe)) (##fx= _g64402_ 3))
                 (apply (lambda (_count58102_ _start58103_ _step58104_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count58102_ _start58103_ _step58104_)))
                        _g64403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g64403_))))))
    (define last-pair
      (lambda (_lst58048_)
        (let* ((_lst5804958056_ _lst58048_)
               (_E5805158060_
                (lambda () (error '"No clause matching" _lst5804958056_)))
               (_K5805258065_
                (lambda (_rest58063_)
                  (if (let () (declare (not safe)) (pair? _rest58063_))
                      (let () (declare (not safe)) (last-pair _rest58063_))
                      _lst58048_))))
          (if (let () (declare (not safe)) (##pair? _lst5804958056_))
              (let* ((_tl5805458068_
                      (let () (declare (not safe)) (##cdr _lst5804958056_)))
                     (_rest58071_ _tl5805458068_))
                (declare (not safe))
                (_K5805258065_ _rest58071_))
              (let () (declare (not safe)) (_E5805158060_))))))
    (define last
      (lambda (_lst58046_)
        (car (let () (declare (not safe)) (last-pair _lst58046_)))))
    (define assgetq__%
      (lambda (_key58024_ _lst58026_ _default58028_)
        (let ((_$e58031_
               (if (let () (declare (not safe)) (pair? _lst58026_))
                   (assq _key58024_ _lst58026_)
                   '#f)))
          (if _$e58031_
              (cdr _$e58031_)
              (if (let () (declare (not safe)) (procedure? _default58028_))
                  (_default58028_ _key58024_)
                  _default58028_)))))
    (define assgetq__0
      (lambda (_key58037_ _lst58038_)
        (let ((_default58040_ '#f))
          (declare (not safe))
          (assgetq__% _key58037_ _lst58038_ _default58040_))))
    (define assgetq
      (lambda _g64405_
        (let ((_g64404_ (let () (declare (not safe)) (##length _g64405_))))
          (cond ((let () (declare (not safe)) (##fx= _g64404_ 2))
                 (apply (lambda (_key58037_ _lst58038_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key58037_ _lst58038_)))
                        _g64405_))
                ((let () (declare (not safe)) (##fx= _g64404_ 3))
                 (apply (lambda (_key58042_ _lst58043_ _default58044_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key58042_ _lst58043_ _default58044_)))
                        _g64405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g64405_))))))
    (define assgetv__%
      (lambda (_key58001_ _lst58003_ _default58005_)
        (let ((_$e58008_
               (if (let () (declare (not safe)) (pair? _lst58003_))
                   (assv _key58001_ _lst58003_)
                   '#f)))
          (if _$e58008_
              (cdr _$e58008_)
              (if (let () (declare (not safe)) (procedure? _default58005_))
                  (_default58005_ _key58001_)
                  _default58005_)))))
    (define assgetv__0
      (lambda (_key58014_ _lst58015_)
        (let ((_default58017_ '#f))
          (declare (not safe))
          (assgetv__% _key58014_ _lst58015_ _default58017_))))
    (define assgetv
      (lambda _g64407_
        (let ((_g64406_ (let () (declare (not safe)) (##length _g64407_))))
          (cond ((let () (declare (not safe)) (##fx= _g64406_ 2))
                 (apply (lambda (_key58014_ _lst58015_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key58014_ _lst58015_)))
                        _g64407_))
                ((let () (declare (not safe)) (##fx= _g64406_ 3))
                 (apply (lambda (_key58019_ _lst58020_ _default58021_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key58019_ _lst58020_ _default58021_)))
                        _g64407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g64407_))))))
    (define assget__%
      (lambda (_key57978_ _lst57980_ _default57982_)
        (let ((_$e57985_
               (if (let () (declare (not safe)) (pair? _lst57980_))
                   (assoc _key57978_ _lst57980_)
                   '#f)))
          (if _$e57985_
              (cdr _$e57985_)
              (if (let () (declare (not safe)) (procedure? _default57982_))
                  (_default57982_ _key57978_)
                  _default57982_)))))
    (define assget__0
      (lambda (_key57991_ _lst57992_)
        (let ((_default57994_ '#f))
          (declare (not safe))
          (assget__% _key57991_ _lst57992_ _default57994_))))
    (define assget
      (lambda _g64409_
        (let ((_g64408_ (let () (declare (not safe)) (##length _g64409_))))
          (cond ((let () (declare (not safe)) (##fx= _g64408_ 2))
                 (apply (lambda (_key57991_ _lst57992_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57991_ _lst57992_)))
                        _g64409_))
                ((let () (declare (not safe)) (##fx= _g64408_ 3))
                 (apply (lambda (_key57996_ _lst57997_ _default57998_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57996_ _lst57997_ _default57998_)))
                        _g64409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g64409_))))))
    (define pgetq__%
      (lambda (_key57907_ _lst57909_ _default57911_)
        (let _lp57914_ ((_rest57917_ _lst57909_))
          (let* ((_rest5791957929_ _rest57917_)
                 (_else5792157937_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57911_))
                        (_default57911_ _key57907_)
                        _default57911_)))
                 (_K5792357946_
                  (lambda (_rest57940_ _v57941_ _k57943_)
                    (if (let () (declare (not safe)) (eq? _k57943_ _key57907_))
                        _v57941_
                        (let ()
                          (declare (not safe))
                          (_lp57914_ _rest57940_))))))
            (if (let () (declare (not safe)) (##pair? _rest5791957929_))
                (let ((_hd5792457949_
                       (let () (declare (not safe)) (##car _rest5791957929_)))
                      (_tl5792557951_
                       (let () (declare (not safe)) (##cdr _rest5791957929_))))
                  (let ((_k57954_ _hd5792457949_))
                    (if (let () (declare (not safe)) (##pair? _tl5792557951_))
                        (let ((_hd5792657956_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5792557951_)))
                              (_tl5792757958_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5792557951_))))
                          (let* ((_v57961_ _hd5792657956_)
                                 (_rest57963_ _tl5792757958_))
                            (declare (not safe))
                            (_K5792357946_ _rest57963_ _v57961_ _k57954_)))
                        (let () (declare (not safe)) (_else5792157937_)))))
                (let () (declare (not safe)) (_else5792157937_)))))))
    (define pgetq__0
      (lambda (_key57968_ _lst57969_)
        (let ((_default57971_ '#f))
          (declare (not safe))
          (pgetq__% _key57968_ _lst57969_ _default57971_))))
    (define pgetq
      (lambda _g64411_
        (let ((_g64410_ (let () (declare (not safe)) (##length _g64411_))))
          (cond ((let () (declare (not safe)) (##fx= _g64410_ 2))
                 (apply (lambda (_key57968_ _lst57969_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57968_ _lst57969_)))
                        _g64411_))
                ((let () (declare (not safe)) (##fx= _g64410_ 3))
                 (apply (lambda (_key57973_ _lst57974_ _default57975_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57973_ _lst57974_ _default57975_)))
                        _g64411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g64411_))))))
    (define pgetv__%
      (lambda (_key57836_ _lst57838_ _default57840_)
        (let _lp57843_ ((_rest57846_ _lst57838_))
          (let* ((_rest5784857858_ _rest57846_)
                 (_else5785057866_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57840_))
                        (_default57840_ _key57836_)
                        _default57840_)))
                 (_K5785257875_
                  (lambda (_rest57869_ _v57870_ _k57872_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57872_ _key57836_))
                        _v57870_
                        (let ()
                          (declare (not safe))
                          (_lp57843_ _rest57869_))))))
            (if (let () (declare (not safe)) (##pair? _rest5784857858_))
                (let ((_hd5785357878_
                       (let () (declare (not safe)) (##car _rest5784857858_)))
                      (_tl5785457880_
                       (let () (declare (not safe)) (##cdr _rest5784857858_))))
                  (let ((_k57883_ _hd5785357878_))
                    (if (let () (declare (not safe)) (##pair? _tl5785457880_))
                        (let ((_hd5785557885_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5785457880_)))
                              (_tl5785657887_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5785457880_))))
                          (let* ((_v57890_ _hd5785557885_)
                                 (_rest57892_ _tl5785657887_))
                            (declare (not safe))
                            (_K5785257875_ _rest57892_ _v57890_ _k57883_)))
                        (let () (declare (not safe)) (_else5785057866_)))))
                (let () (declare (not safe)) (_else5785057866_)))))))
    (define pgetv__0
      (lambda (_key57897_ _lst57898_)
        (let ((_default57900_ '#f))
          (declare (not safe))
          (pgetv__% _key57897_ _lst57898_ _default57900_))))
    (define pgetv
      (lambda _g64413_
        (let ((_g64412_ (let () (declare (not safe)) (##length _g64413_))))
          (cond ((let () (declare (not safe)) (##fx= _g64412_ 2))
                 (apply (lambda (_key57897_ _lst57898_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57897_ _lst57898_)))
                        _g64413_))
                ((let () (declare (not safe)) (##fx= _g64412_ 3))
                 (apply (lambda (_key57902_ _lst57903_ _default57904_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57902_ _lst57903_ _default57904_)))
                        _g64413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g64413_))))))
    (define pget__%
      (lambda (_key57765_ _lst57767_ _default57769_)
        (let _lp57772_ ((_rest57775_ _lst57767_))
          (let* ((_rest5777757787_ _rest57775_)
                 (_else5777957795_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57769_))
                        (_default57769_ _key57765_)
                        _default57769_)))
                 (_K5778157804_
                  (lambda (_rest57798_ _v57799_ _k57801_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57801_ _key57765_))
                        _v57799_
                        (let ()
                          (declare (not safe))
                          (_lp57772_ _rest57798_))))))
            (if (let () (declare (not safe)) (##pair? _rest5777757787_))
                (let ((_hd5778257807_
                       (let () (declare (not safe)) (##car _rest5777757787_)))
                      (_tl5778357809_
                       (let () (declare (not safe)) (##cdr _rest5777757787_))))
                  (let ((_k57812_ _hd5778257807_))
                    (if (let () (declare (not safe)) (##pair? _tl5778357809_))
                        (let ((_hd5778457814_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5778357809_)))
                              (_tl5778557816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5778357809_))))
                          (let* ((_v57819_ _hd5778457814_)
                                 (_rest57821_ _tl5778557816_))
                            (declare (not safe))
                            (_K5778157804_ _rest57821_ _v57819_ _k57812_)))
                        (let () (declare (not safe)) (_else5777957795_)))))
                (let () (declare (not safe)) (_else5777957795_)))))))
    (define pget__0
      (lambda (_key57826_ _lst57827_)
        (let ((_default57829_ '#f))
          (declare (not safe))
          (pget__% _key57826_ _lst57827_ _default57829_))))
    (define pget
      (lambda _g64415_
        (let ((_g64414_ (let () (declare (not safe)) (##length _g64415_))))
          (cond ((let () (declare (not safe)) (##fx= _g64414_ 2))
                 (apply (lambda (_key57826_ _lst57827_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57826_ _lst57827_)))
                        _g64415_))
                ((let () (declare (not safe)) (##fx= _g64414_ 3))
                 (apply (lambda (_key57831_ _lst57832_ _default57833_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57831_ _lst57832_ _default57833_)))
                        _g64415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g64415_))))))
    (define find
      (lambda (_pred57758_ _lst57759_)
        (let ((_$e57761_
               (let () (declare (not safe)) (memf _pred57758_ _lst57759_))))
          (if _$e57761_ (car _$e57761_) '#f))))
    (define memf
      (lambda (_proc57718_ _lst57719_)
        (let _lp57721_ ((_rest57723_ _lst57719_))
          (let* ((_rest5772457732_ _rest57723_)
                 (_else5772657740_ (lambda () '#f))
                 (_K5772857746_
                  (lambda (_tl57743_ _hd57744_)
                    (if (_proc57718_ _hd57744_)
                        _rest57723_
                        (let () (declare (not safe)) (_lp57721_ _tl57743_))))))
            (if (let () (declare (not safe)) (##pair? _rest5772457732_))
                (let ((_hd5772957749_
                       (let () (declare (not safe)) (##car _rest5772457732_)))
                      (_tl5773057751_
                       (let () (declare (not safe)) (##cdr _rest5772457732_))))
                  (let* ((_hd57754_ _hd5772957749_) (_tl57756_ _tl5773057751_))
                    (declare (not safe))
                    (_K5772857746_ _tl57756_ _hd57754_)))
                (let () (declare (not safe)) (_else5772657740_)))))))
    (define remove1
      (lambda (_el57671_ _lst57673_)
        (let _lp57676_ ((_rest57679_ _lst57673_) (_r57681_ '()))
          (let* ((_rest5768357691_ _rest57679_)
                 (_else5768557699_ (lambda () _lst57673_))
                 (_K5768757706_
                  (lambda (_rest57702_ _hd57703_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57671_ _hd57703_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57702_ _r57681_))
                        (let ((__tmp64416
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57703_ _r57681_))))
                          (declare (not safe))
                          (_lp57676_ _rest57702_ __tmp64416))))))
            (if (let () (declare (not safe)) (##pair? _rest5768357691_))
                (let ((_hd5768857709_
                       (let () (declare (not safe)) (##car _rest5768357691_)))
                      (_tl5768957711_
                       (let () (declare (not safe)) (##cdr _rest5768357691_))))
                  (let* ((_hd57714_ _hd5768857709_)
                         (_rest57716_ _tl5768957711_))
                    (declare (not safe))
                    (_K5768757706_ _rest57716_ _hd57714_)))
                (let () (declare (not safe)) (_else5768557699_)))))))
    (define remv
      (lambda (_el57624_ _lst57626_)
        (let _lp57629_ ((_rest57632_ _lst57626_) (_r57634_ '()))
          (let* ((_rest5763657644_ _rest57632_)
                 (_else5763857652_ (lambda () _lst57626_))
                 (_K5764057659_
                  (lambda (_rest57655_ _hd57656_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57624_ _hd57656_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57655_ _r57634_))
                        (let ((__tmp64417
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57656_ _r57634_))))
                          (declare (not safe))
                          (_lp57629_ _rest57655_ __tmp64417))))))
            (if (let () (declare (not safe)) (##pair? _rest5763657644_))
                (let ((_hd5764157662_
                       (let () (declare (not safe)) (##car _rest5763657644_)))
                      (_tl5764257664_
                       (let () (declare (not safe)) (##cdr _rest5763657644_))))
                  (let* ((_hd57667_ _hd5764157662_)
                         (_rest57669_ _tl5764257664_))
                    (declare (not safe))
                    (_K5764057659_ _rest57669_ _hd57667_)))
                (let () (declare (not safe)) (_else5763857652_)))))))
    (define remq
      (lambda (_el57577_ _lst57579_)
        (let _lp57582_ ((_rest57585_ _lst57579_) (_r57587_ '()))
          (let* ((_rest5758957597_ _rest57585_)
                 (_else5759157605_ (lambda () _lst57579_))
                 (_K5759357612_
                  (lambda (_rest57608_ _hd57609_)
                    (if (let () (declare (not safe)) (eq? _el57577_ _hd57609_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57608_ _r57587_))
                        (let ((__tmp64418
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57609_ _r57587_))))
                          (declare (not safe))
                          (_lp57582_ _rest57608_ __tmp64418))))))
            (if (let () (declare (not safe)) (##pair? _rest5758957597_))
                (let ((_hd5759457615_
                       (let () (declare (not safe)) (##car _rest5758957597_)))
                      (_tl5759557617_
                       (let () (declare (not safe)) (##cdr _rest5758957597_))))
                  (let* ((_hd57620_ _hd5759457615_)
                         (_rest57622_ _tl5759557617_))
                    (declare (not safe))
                    (_K5759357612_ _rest57622_ _hd57620_)))
                (let () (declare (not safe)) (_else5759157605_)))))))
    (define remf
      (lambda (_proc57536_ _lst57537_)
        (let _lp57539_ ((_rest57541_ _lst57537_) (_r57542_ '()))
          (let* ((_rest5754357551_ _rest57541_)
                 (_else5754557559_ (lambda () _lst57537_))
                 (_K5754757565_
                  (lambda (_rest57562_ _hd57563_)
                    (if (_proc57536_ _hd57563_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57562_ _r57542_))
                        (let ((__tmp64419
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57563_ _r57542_))))
                          (declare (not safe))
                          (_lp57539_ _rest57562_ __tmp64419))))))
            (if (let () (declare (not safe)) (##pair? _rest5754357551_))
                (let ((_hd5754857568_
                       (let () (declare (not safe)) (##car _rest5754357551_)))
                      (_tl5754957570_
                       (let () (declare (not safe)) (##cdr _rest5754357551_))))
                  (let* ((_hd57573_ _hd5754857568_)
                         (_rest57575_ _tl5754957570_))
                    (declare (not safe))
                    (_K5754757565_ _rest57575_ _hd57573_)))
                (let () (declare (not safe)) (_else5754557559_)))))))
    (define 1+ (lambda (_x57534_) (+ _x57534_ '1)))
    (define 1- (lambda (_x57532_) (- _x57532_ '1)))
    (define fx1+ (lambda (_x57530_) (fx+ _x57530_ '1)))
    (define fx1- (lambda (_x57528_) (fx- _x57528_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57526_)
        (if (fixnum? _x57526_)
            (let () (declare (not safe)) (##fx>= _x57526_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57524_)
        (if (fixnum? _x57524_)
            (let () (declare (not safe)) (##fx> _x57524_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57522_) (let () (declare (not safe)) (eq? _x57522_ '0))))
    (define fx<0?
      (lambda (_x57520_)
        (if (fixnum? _x57520_)
            (let () (declare (not safe)) (##fx< _x57520_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57518_)
        (if (fixnum? _x57518_)
            (let () (declare (not safe)) (##fx<= _x57518_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57516_)
        (if (let () (declare (not safe)) (symbol? _x57516_))
            (let ((__tmp64420 (uninterned-symbol? _x57516_)))
              (declare (not safe))
              (not __tmp64420))
            '#f)))
    (define display-as-string
      (lambda (_x57488_ _port57489_)
        (if (or (let () (declare (not safe)) (string? _x57488_))
                (let () (declare (not safe)) (symbol? _x57488_))
                (keyword? _x57488_)
                (let () (declare (not safe)) (number? _x57488_))
                (let () (declare (not safe)) (char? _x57488_)))
            (display _x57488_ _port57489_)
            (if (let () (declare (not safe)) (pair? _x57488_))
                (begin
                  (let ((__tmp64421 (car _x57488_)))
                    (declare (not safe))
                    (display-as-string __tmp64421 _port57489_))
                  (let ((__tmp64422 (cdr _x57488_)))
                    (declare (not safe))
                    (display-as-string __tmp64422 _port57489_)))
                (if (let () (declare (not safe)) (vector? _x57488_))
                    (vector-for-each
                     (lambda (_g5750257504_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5750257504_ _port57489_)))
                     _x57488_)
                    (if (or (let () (declare (not safe)) (null? _x57488_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57488_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57488_))
                            (let () (declare (not safe)) (boolean? _x57488_)))
                        '#!void
                        (error '"cannot convert as string" _x57488_)))))))
    (define as-string__0
      (lambda (_x57476_)
        (if (let () (declare (not safe)) (string? _x57476_))
            _x57476_
            (if (let () (declare (not safe)) (symbol? _x57476_))
                (symbol->string _x57476_)
                (if (keyword? _x57476_)
                    (keyword->string _x57476_)
                    (call-with-output-string
                     '()
                     (lambda (_g5747757479_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57476_ _g5747757479_)))))))))
    (define as-string__1
      (lambda _args57482_
        (call-with-output-string
         '()
         (lambda (_g5748357485_)
           (let ()
             (declare (not safe))
             (display-as-string _args57482_ _g5748357485_))))))
    (define as-string
      (lambda _g64424_
        (let ((_g64423_ (let () (declare (not safe)) (##length _g64424_))))
          (cond ((let () (declare (not safe)) (##fx= _g64423_ 1))
                 (apply (lambda (_x57476_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57476_)))
                        _g64424_))
                (#t (apply as-string__1 _g64424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g64424_))))))
    (define make-symbol__0
      (lambda (_x57472_)
        (if (interned-symbol? _x57472_)
            _x57472_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57472_))))))
    (define make-symbol__1
      (lambda _args57474_ (string->symbol (apply as-string _args57474_))))
    (define make-symbol
      (lambda _g64426_
        (let ((_g64425_ (let () (declare (not safe)) (##length _g64426_))))
          (cond ((let () (declare (not safe)) (##fx= _g64425_ 1))
                 (apply (lambda (_x57472_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57472_)))
                        _g64426_))
                (#t (apply make-symbol__1 _g64426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g64426_))))))
    (define make-keyword__0
      (lambda (_x57468_)
        (if (interned-keyword? _x57468_)
            _x57468_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57468_))))))
    (define make-keyword__1
      (lambda _args57470_ (string->keyword (apply as-string _args57470_))))
    (define make-keyword
      (lambda _g64428_
        (let ((_g64427_ (let () (declare (not safe)) (##length _g64428_))))
          (cond ((let () (declare (not safe)) (##fx= _g64427_ 1))
                 (apply (lambda (_x57468_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57468_)))
                        _g64428_))
                (#t (apply make-keyword__1 _g64428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g64428_))))))
    (define interned-keyword?
      (lambda (_x57466_)
        (if (keyword? _x57466_)
            (let ((__tmp64429 (uninterned-keyword? _x57466_)))
              (declare (not safe))
              (not __tmp64429))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57464_)
        ((if (uninterned-symbol? _sym57464_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57464_))))
    (define keyword->symbol
      (lambda (_kw57462_)
        ((if (uninterned-keyword? _kw57462_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57462_))))
    (define bytes->string__%
      (lambda (_bstr57440_ _enc57441_)
        (if (let () (declare (not safe)) (eq? _enc57441_ 'UTF-8))
            (utf8->string _bstr57440_)
            (let* ((_in57443_
                    (open-input-u8vector
                     (let ((__tmp64430
                            (let ((__tmp64431
                                   (let ((__tmp64432
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57440_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp64432))))
                              (declare (not safe))
                              (cons _enc57441_ __tmp64431))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp64430))))
                   (_len57445_ (u8vector-length _bstr57440_))
                   (_out57447_ (make-string _len57445_))
                   (_n57449_
                    (read-substring _out57447_ '0 _len57445_ _in57443_)))
              (string-shrink! _out57447_ _n57449_)
              _out57447_))))
    (define bytes->string__0
      (lambda (_bstr57455_)
        (let ((_enc57457_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57455_ _enc57457_))))
    (define bytes->string
      (lambda _g64434_
        (let ((_g64433_ (let () (declare (not safe)) (##length _g64434_))))
          (cond ((let () (declare (not safe)) (##fx= _g64433_ 1))
                 (apply (lambda (_bstr57455_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57455_)))
                        _g64434_))
                ((let () (declare (not safe)) (##fx= _g64433_ 2))
                 (apply (lambda (_bstr57459_ _enc57460_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57459_ _enc57460_)))
                        _g64434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g64434_))))))
    (define string->bytes__%
      (lambda (_str57426_ _enc57427_)
        (if (let () (declare (not safe)) (eq? _enc57427_ 'UTF-8))
            (string->utf8 _str57426_)
            (substring->bytes
             _str57426_
             '0
             (string-length _str57426_)
             _enc57427_))))
    (define string->bytes__0
      (lambda (_str57432_)
        (let ((_enc57434_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57432_ _enc57434_))))
    (define string->bytes
      (lambda _g64436_
        (let ((_g64435_ (let () (declare (not safe)) (##length _g64436_))))
          (cond ((let () (declare (not safe)) (##fx= _g64435_ 1))
                 (apply (lambda (_str57432_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57432_)))
                        _g64436_))
                ((let () (declare (not safe)) (##fx= _g64435_ 2))
                 (apply (lambda (_str57436_ _enc57437_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57436_ _enc57437_)))
                        _g64436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g64436_))))))
    (define substring->bytes__%
      (lambda (_str57404_ _start57405_ _end57406_ _enc57407_)
        (if (let () (declare (not safe)) (eq? _enc57407_ 'UTF-8))
            (string->utf8 _str57404_ _start57405_ _end57406_)
            (let ((_out57409_
                   (open-output-u8vector
                    (let ((__tmp64437
                           (let ()
                             (declare (not safe))
                             (cons _enc57407_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp64437)))))
              (write-substring _str57404_ _start57405_ _end57406_ _out57409_)
              (get-output-u8vector _out57409_)))))
    (define substring->bytes__0
      (lambda (_str57414_ _start57415_ _end57416_)
        (let ((_enc57418_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str57414_
           _start57415_
           _end57416_
           _enc57418_))))
    (define substring->bytes
      (lambda _g64439_
        (let ((_g64438_ (let () (declare (not safe)) (##length _g64439_))))
          (cond ((let () (declare (not safe)) (##fx= _g64438_ 3))
                 (apply (lambda (_str57414_ _start57415_ _end57416_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str57414_
                             _start57415_
                             _end57416_)))
                        _g64439_))
                ((let () (declare (not safe)) (##fx= _g64438_ 4))
                 (apply (lambda (_str57420_ _start57421_ _end57422_ _enc57423_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57420_
                             _start57421_
                             _end57422_
                             _enc57423_)))
                        _g64439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g64439_))))))
    (define string-empty?
      (lambda (_str57401_)
        (let ((__tmp64440 (string-length _str57401_)))
          (declare (not safe))
          (##fxzero? __tmp64440))))
    (define string-prefix?
      (lambda (_prefix57391_ _str57392_)
        (let ((_str-len57394_ (string-length _str57392_))
              (_prefix-len57395_ (string-length _prefix57391_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len57395_ _str-len57394_))
              (let _lp57397_ ((_i57399_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i57399_ _prefix-len57395_))
                    (if (let ((__tmp64443
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str57392_ _i57399_)))
                              (__tmp64442
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix57391_ _i57399_))))
                          (declare (not safe))
                          (eq? __tmp64443 __tmp64442))
                        (let ((__tmp64441
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i57399_ '1))))
                          (declare (not safe))
                          (_lp57397_ __tmp64441))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str57369_ _char57370_ _start57371_)
        (let ((_len57373_ (string-length _str57369_)))
          (let _lp57375_ ((_k57377_ _start57371_))
            (if (let () (declare (not safe)) (##fx< _k57377_ _len57373_))
                (if (let ((__tmp64445
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57369_ _k57377_))))
                      (declare (not safe))
                      (eq? _char57370_ __tmp64445))
                    _k57377_
                    (let ((__tmp64444
                           (let () (declare (not safe)) (##fx+ _k57377_ '1))))
                      (declare (not safe))
                      (_lp57375_ __tmp64444)))
                '#f)))))
    (define string-index__0
      (lambda (_str57382_ _char57383_)
        (let ((_start57385_ '0))
          (declare (not safe))
          (string-index__% _str57382_ _char57383_ _start57385_))))
    (define string-index
      (lambda _g64447_
        (let ((_g64446_ (let () (declare (not safe)) (##length _g64447_))))
          (cond ((let () (declare (not safe)) (##fx= _g64446_ 2))
                 (apply (lambda (_str57382_ _char57383_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str57382_ _char57383_)))
                        _g64447_))
                ((let () (declare (not safe)) (##fx= _g64446_ 3))
                 (apply (lambda (_str57387_ _char57388_ _start57389_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str57387_
                             _char57388_
                             _start57389_)))
                        _g64447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g64447_))))))
    (define string-rindex__%
      (lambda (_str57340_ _char57341_ _start57342_)
        (let* ((_len57344_ (string-length _str57340_))
               (_start57349_
                (let ((_$e57346_ _start57342_))
                  (if _$e57346_
                      _$e57346_
                      (let () (declare (not safe)) (##fx- _len57344_ '1))))))
          (let _lp57352_ ((_k57354_ _start57349_))
            (if (let () (declare (not safe)) (##fx>= _k57354_ '0))
                (if (let ((__tmp64449
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57340_ _k57354_))))
                      (declare (not safe))
                      (eq? _char57341_ __tmp64449))
                    _k57354_
                    (let ((__tmp64448
                           (let () (declare (not safe)) (##fx- _k57354_ '1))))
                      (declare (not safe))
                      (_lp57352_ __tmp64448)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str57359_ _char57360_)
        (let ((_start57362_ '#f))
          (declare (not safe))
          (string-rindex__% _str57359_ _char57360_ _start57362_))))
    (define string-rindex
      (lambda _g64451_
        (let ((_g64450_ (let () (declare (not safe)) (##length _g64451_))))
          (cond ((let () (declare (not safe)) (##fx= _g64450_ 2))
                 (apply (lambda (_str57359_ _char57360_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str57359_ _char57360_)))
                        _g64451_))
                ((let () (declare (not safe)) (##fx= _g64450_ 3))
                 (apply (lambda (_str57364_ _char57365_ _start57366_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str57364_
                             _char57365_
                             _start57366_)))
                        _g64451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g64451_))))))
    (define string-split
      (lambda (_str57324_ _char57325_)
        (let ((_len57327_ (string-length _str57324_)))
          (let _lp57329_ ((_start57331_ '0) (_r57332_ '()))
            (let ((_$e57334_
                   (let ()
                     (declare (not safe))
                     (string-index _str57324_ _char57325_ _start57331_))))
              (if _$e57334_
                  ((lambda (_end57337_)
                     (let ((__tmp64455
                            (let ()
                              (declare (not safe))
                              (##fx+ _end57337_ '1)))
                           (__tmp64453
                            (let ((__tmp64454
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57324_
                                      _start57331_
                                      _end57337_))))
                              (declare (not safe))
                              (cons __tmp64454 _r57332_))))
                       (declare (not safe))
                       (_lp57329_ __tmp64455 __tmp64453)))
                   _$e57334_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start57331_ _len57327_))
                      (let ((__tmp64452
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57324_
                                      _start57331_
                                      _len57327_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp64452 _r57332_))
                      (reverse _r57332_))))))))
    (define string-join
      (lambda (_strs57229_ _join57230_)
        (letrec ((_join-length57232_
                  (lambda (_strs57283_ _jlen57284_)
                    (let _lp57286_ ((_rest57288_ _strs57283_) (_len57289_ '0))
                      (let* ((_rest5729057298_ _rest57288_)
                             (_else5729257306_ (lambda () '0))
                             (_K5729457312_
                              (lambda (_rest57309_ _hd57310_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd57310_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest57309_))
                                        (let ((__tmp64457
                                               (let ((__tmp64458
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd57310_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp64458
                                                        _jlen57284_
                                                        _len57289_))))
                                          (declare (not safe))
                                          (_lp57286_ _rest57309_ __tmp64457))
                                        (let ((__tmp64456
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd57310_))))
                                          (declare (not safe))
                                          (##fx+ __tmp64456 _len57289_)))
                                    (error '"expected string" _hd57310_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5729057298_))
                            (let ((_hd5729557315_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5729057298_)))
                                  (_tl5729657317_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5729057298_))))
                              (let* ((_hd57320_ _hd5729557315_)
                                     (_rest57322_ _tl5729657317_))
                                (declare (not safe))
                                (_K5729457312_ _rest57322_ _hd57320_)))
                            (let ()
                              (declare (not safe))
                              (_else5729257306_))))))))
          (let* ((_join57234_
                  (if (let () (declare (not safe)) (char? _join57230_))
                      (string _join57230_)
                      (if (let () (declare (not safe)) (string? _join57230_))
                          _join57230_
                          (error '"expected string or char" _join57230_))))
                 (_jlen57236_
                  (let () (declare (not safe)) (##string-length _join57234_)))
                 (_olen57238_
                  (let ()
                    (declare (not safe))
                    (_join-length57232_ _strs57229_ _jlen57236_)))
                 (_ostr57240_ (make-string _olen57238_)))
            (let _lp57243_ ((_rest57245_ _strs57229_) (_k57246_ '0))
              (let* ((_rest5724757255_ _rest57245_)
                     (_else5724957263_ (lambda () '""))
                     (_K5725157271_
                      (lambda (_rest57266_ _hd57267_)
                        (let ((_hdlen57269_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd57267_))))
                          (if (let () (declare (not safe)) (pair? _rest57266_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57267_
                                   '0
                                   _hdlen57269_
                                   _ostr57240_
                                   _k57246_))
                                (let ((__tmp64459
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57246_ _hdlen57269_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join57234_
                                   '0
                                   _jlen57236_
                                   _ostr57240_
                                   __tmp64459))
                                (let ((__tmp64460
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57246_
                                                _hdlen57269_
                                                _jlen57236_))))
                                  (declare (not safe))
                                  (_lp57243_ _rest57266_ __tmp64460)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57267_
                                   '0
                                   _hdlen57269_
                                   _ostr57240_
                                   _k57246_))
                                _ostr57240_))))))
                (if (let () (declare (not safe)) (##pair? _rest5724757255_))
                    (let ((_hd5725257274_
                           (let ()
                             (declare (not safe))
                             (##car _rest5724757255_)))
                          (_tl5725357276_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5724757255_))))
                      (let* ((_hd57279_ _hd5725257274_)
                             (_rest57281_ _tl5725357276_))
                        (declare (not safe))
                        (_K5725157271_ _rest57281_ _hd57279_)))
                    (let () (declare (not safe)) (_else5724957263_)))))))))
    (define read-u8vector
      (lambda (_bytes57226_ _port57227_)
        (read-subu8vector
         _bytes57226_
         '0
         (u8vector-length _bytes57226_)
         _port57227_)))
    (define write-u8vector
      (lambda (_bytes57223_ _port57224_)
        (write-subu8vector
         _bytes57223_
         '0
         (u8vector-length _bytes57223_)
         _port57224_)))
    (define read-string
      (lambda (_str57220_ _port57221_)
        (read-substring _str57220_ '0 (string-length _str57220_) _port57221_)))
    (define write-string
      (lambda (_str57217_ _port57218_)
        (write-substring
         _str57217_
         '0
         (string-length _str57217_)
         _port57218_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag57186_
               _dbg-exprs57187_
               _dbg-thunks57188_
               _expr57189_
               _thunk57190_)
        (letrec ((_o57192_ (current-output-port))
                 (_e57193_ (current-error-port))
                 (_p57194_ (DBG-printer))
                 (_f57195_
                  (lambda () (force-output _o57192_) (force-output _e57193_)))
                 (_d57196_ (lambda (_x57203_) (display _x57203_ _e57193_)))
                 (_w57197_ (lambda (_x57205_) (_p57194_ _x57205_ _e57193_)))
                 (_n57198_ (lambda () (newline _e57193_)))
                 (_v57199_
                  (lambda (_l57208_)
                    (for-each
                     (lambda (_x57210_)
                       (let () (declare (not safe)) (_d57196_ '" "))
                       (let () (declare (not safe)) (_w57197_ _x57210_)))
                     _l57208_)
                    (let () (declare (not safe)) (_n57198_))))
                 (_x57200_
                  (lambda (_expr57212_ _thunk57213_)
                    (let () (declare (not safe)) (_f57195_))
                    (let () (declare (not safe)) (_d57196_ '"  "))
                    (let () (declare (not safe)) (_w57197_ _expr57212_))
                    (let () (declare (not safe)) (_d57196_ '" =>"))
                    (call-with-values
                     _thunk57213_
                     (lambda _x57215_
                       (let () (declare (not safe)) (_v57199_ _x57215_))
                       (let () (declare (not safe)) (_f57195_))
                       (apply values _x57215_))))))
          (if _tag57186_
              (begin
                (if (let () (declare (not safe)) (eq? _tag57186_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f57195_))
                      (let () (declare (not safe)) (_d57196_ _tag57186_))
                      (let () (declare (not safe)) (_n57198_))))
                (for-each _x57200_ _dbg-exprs57187_ _dbg-thunks57188_)
                (if _thunk57190_
                    (let ()
                      (declare (not safe))
                      (_x57200_ _expr57189_ _thunk57190_))
                    '#!void))
              (if _thunk57190_ (_thunk57190_) '#!void)))))))
