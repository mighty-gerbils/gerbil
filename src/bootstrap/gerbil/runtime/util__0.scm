(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707610211)
  (begin
    (define displayln
      (lambda _args59241_
        (let _lp59243_ ((_rest59245_ _args59241_))
          (let* ((_rest5924659254_ _rest59245_)
                 (_else5924859262_ (lambda () (newline)))
                 (_K5925059268_
                  (lambda (_rest59265_ _hd59266_)
                    (display _hd59266_)
                    (let () (declare (not safe)) (_lp59243_ _rest59265_)))))
            (if (let () (declare (not safe)) (##pair? _rest5924659254_))
                (let ((_hd5925159271_
                       (let () (declare (not safe)) (##car _rest5924659254_)))
                      (_tl5925259273_
                       (let () (declare (not safe)) (##cdr _rest5924659254_))))
                  (let* ((_hd59276_ _hd5925159271_)
                         (_rest59278_ _tl5925259273_))
                    (declare (not safe))
                    (_K5925059268_ _rest59278_ _hd59276_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args59239_ (for-each display _args59239_)))
    (define file-newer?
      (lambda (_file159232_ _file259233_)
        (letrec ((_modification-time59235_
                  (lambda (_file59237_)
                    (let ((__tmp64141
                           (file-info-last-modification-time
                            (file-info _file59237_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp64141)))))
          (let ((__tmp64143
                 (let ()
                   (declare (not safe))
                   (_modification-time59235_ _file159232_)))
                (__tmp64142
                 (let ()
                   (declare (not safe))
                   (_modification-time59235_ _file259233_))))
            (declare (not safe))
            (##fl> __tmp64143 __tmp64142)))))
    (define create-directory*__%
      (lambda (_dir59206_ _perms59207_)
        (letrec ((_create159209_
                  (lambda (_path59220_)
                    (if (file-exists? _path59220_)
                        (if (let ((__tmp64144 (file-type _path59220_)))
                              (declare (not safe))
                              (eq? __tmp64144 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path59220_))
                        (if _perms59207_
                            (create-directory
                             (list 'path:
                                   _path59220_
                                   'permissions:
                                   _perms59207_))
                            (create-directory _path59220_))))))
          (if (file-exists? _dir59206_)
              '#!void
              (let _lp59211_ ((_start59213_ '0))
                (let ((_$e59215_
                       (let ()
                         (declare (not safe))
                         (string-index _dir59206_ '#\/ _start59213_))))
                  (if _$e59215_
                      ((lambda (_x59218_)
                         (if (let () (declare (not safe)) (##fx> _x59218_ '0))
                             (let ((__tmp64145
                                    (substring _dir59206_ '0 _x59218_)))
                               (declare (not safe))
                               (_create159209_ __tmp64145))
                             '#!void)
                         (let ((__tmp64146
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x59218_ '1))))
                           (declare (not safe))
                           (_lp59211_ __tmp64146)))
                       _$e59215_)
                      (let ()
                        (declare (not safe))
                        (_create159209_ _dir59206_)))))))))
    (define create-directory*__0
      (lambda (_dir59225_)
        (let ((_perms59227_ '493))
          (declare (not safe))
          (create-directory*__% _dir59225_ _perms59227_))))
    (define create-directory*
      (lambda _g64148_
        (let ((_g64147_ (let () (declare (not safe)) (##length _g64148_))))
          (cond ((let () (declare (not safe)) (##fx= _g64147_ 1))
                 (apply (lambda (_dir59225_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir59225_)))
                        _g64148_))
                ((let () (declare (not safe)) (##fx= _g64147_ 2))
                 (apply (lambda (_dir59229_ _perms59230_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir59229_ _perms59230_)))
                        _g64148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g64148_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g64149_ '#t))
    (define true?
      (lambda (_obj59202_) (let () (declare (not safe)) (eq? _obj59202_ '#t))))
    (define false (lambda _g64150_ '#f))
    (define void (lambda _g64151_ '#!void))
    (define void?
      (lambda (_obj59198_)
        (let () (declare (not safe)) (eq? _obj59198_ '#!void))))
    (define eof-object (lambda _g64152_ '#!eof))
    (define identity (lambda (_obj59195_) _obj59195_))
    (define dssl-object?
      (lambda (_obj59193_)
        (if (memq _obj59193_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj59191_)
        (let () (declare (not safe)) (eq? _obj59191_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj59189_)
        (let () (declare (not safe)) (eq? _obj59189_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj59187_)
        (let () (declare (not safe)) (eq? _obj59187_ '#!optional))))
    (define immediate?
      (lambda (_obj59183_)
        (let* ((_t59185_ (let () (declare (not safe)) (##type _obj59183_)))
               (__tmp64153
                (let () (declare (not safe)) (##fxand _t59185_ '1))))
          (declare (not safe))
          (##fxzero? __tmp64153))))
    (define nonnegative-fixnum?
      (lambda (_obj59181_)
        (if (fixnum? _obj59181_)
            (let ((__tmp64154 (fxnegative? _obj59181_)))
              (declare (not safe))
              (not __tmp64154))
            '#f)))
    (define values-count
      (lambda (_obj59179_)
        (if (let () (declare (not safe)) (##values? _obj59179_))
            (let () (declare (not safe)) (##vector-length _obj59179_))
            '1)))
    (define values-ref
      (lambda (_obj59176_ _k59177_)
        (if (let () (declare (not safe)) (##values? _obj59176_))
            (let () (declare (not safe)) (##vector-ref _obj59176_ _k59177_))
            _obj59176_)))
    (define values->list
      (lambda (_obj59174_)
        (if (let () (declare (not safe)) (##values? _obj59174_))
            (let () (declare (not safe)) (##vector->list _obj59174_))
            (list _obj59174_))))
    (define subvector->list__%
      (lambda (_obj59159_ _start59160_)
        (let ((_lst59162_
               (let () (declare (not safe)) (##vector->list _obj59159_))))
          (list-tail _lst59162_ _start59160_))))
    (define subvector->list__0
      (lambda (_obj59167_)
        (let ((_start59169_ '0))
          (declare (not safe))
          (subvector->list__% _obj59167_ _start59169_))))
    (define subvector->list
      (lambda _g64156_
        (let ((_g64155_ (let () (declare (not safe)) (##length _g64156_))))
          (cond ((let () (declare (not safe)) (##fx= _g64155_ 1))
                 (apply (lambda (_obj59167_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj59167_)))
                        _g64156_))
                ((let () (declare (not safe)) (##fx= _g64155_ 2))
                 (apply (lambda (_obj59171_ _start59172_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj59171_ _start59172_)))
                        _g64156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g64156_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args59156_ (apply make-table 'test: eq? _args59156_)))
    (define make-hash-table-eqv
      (lambda _args59154_ (apply make-table 'test: eqv? _args59154_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst59151_ . _args59152_)
        (apply list->table _lst59151_ 'test: eq? _args59152_)))
    (define list->hash-table-eqv
      (lambda (_lst59148_ . _args59149_)
        (apply list->table _lst59148_ 'test: eqv? _args59149_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht59145_ _k59146_) (table-ref _ht59145_ _k59146_ '#f)))
    (define hash-put!
      (lambda (_ht59141_ _k59142_ _v59143_)
        (table-set! _ht59141_ _k59142_ _v59143_)))
    (define hash-update!__%
      (lambda (_ht59120_ _k59121_ _update59122_ _default59123_)
        (let* ((_value59125_
                (let ()
                  (declare (not safe))
                  (table-ref _ht59120_ _k59121_ _default59123_)))
               (__tmp64157 (_update59122_ _value59125_)))
          (declare (not safe))
          (table-set! _ht59120_ _k59121_ __tmp64157))))
    (define hash-update!__0
      (lambda (_ht59130_ _k59131_ _update59132_)
        (let ((_default59134_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht59130_ _k59131_ _update59132_ _default59134_))))
    (define hash-update!
      (lambda _g64159_
        (let ((_g64158_ (let () (declare (not safe)) (##length _g64159_))))
          (cond ((let () (declare (not safe)) (##fx= _g64158_ 3))
                 (apply (lambda (_ht59130_ _k59131_ _update59132_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht59130_
                             _k59131_
                             _update59132_)))
                        _g64159_))
                ((let () (declare (not safe)) (##fx= _g64158_ 4))
                 (apply (lambda (_ht59136_
                                 _k59137_
                                 _update59138_
                                 _default59139_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht59136_
                             _k59137_
                             _update59138_
                             _default59139_)))
                        _g64159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g64159_))))))
    (define hash-remove!
      (lambda (_ht59116_ _k59117_) (table-set! _ht59116_ _k59117_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht59114_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht59114_))))
    (define plist->hash-table__%
      (lambda (_plst59049_ _ht59050_)
        (let _lp59052_ ((_rest59054_ _plst59049_))
          (let* ((_rest5905559066_ _rest59054_)
                 (_E5905859070_
                  (lambda () (error '"No clause matching" _rest5905559066_))))
            (let ((_K5906059085_
                   (lambda (_rest59081_ _v59082_ _k59083_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht59050_ _k59083_ _v59082_))
                     (let () (declare (not safe)) (_lp59052_ _rest59081_))))
                  (_K5905959075_ (lambda () _ht59050_)))
              (let ((_try-match5905759078_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5905559066_ '()))
                           (let () (declare (not safe)) (_K5905959075_))
                           (let () (declare (not safe)) (_E5905859070_))))))
                (if (let () (declare (not safe)) (##pair? _rest5905559066_))
                    (let ((_tl5906259090_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5905559066_)))
                          (_hd5906159088_
                           (let ()
                             (declare (not safe))
                             (##car _rest5905559066_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5906259090_))
                          (let ((_tl5906459097_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5906259090_)))
                                (_hd5906359095_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5906259090_))))
                            (let ((_k59093_ _hd5906159088_)
                                  (_v59100_ _hd5906359095_)
                                  (_rest59102_ _tl5906459097_))
                              (let ()
                                (declare (not safe))
                                (_K5906059085_
                                 _rest59102_
                                 _v59100_
                                 _k59093_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5905759078_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5905759078_)))))))))
    (define plist->hash-table__0
      (lambda (_plst59107_)
        (let ((_ht59109_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst59107_ _ht59109_))))
    (define plist->hash-table
      (lambda _g64161_
        (let ((_g64160_ (let () (declare (not safe)) (##length _g64161_))))
          (cond ((let () (declare (not safe)) (##fx= _g64160_ 1))
                 (apply (lambda (_plst59107_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst59107_)))
                        _g64161_))
                ((let () (declare (not safe)) (##fx= _g64160_ 2))
                 (apply (lambda (_plst59111_ _ht59112_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst59111_ _ht59112_)))
                        _g64161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g64161_))))))
    (define plist->hash-table-eq
      (lambda (_plst59046_)
        (let ((__tmp64162
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst59046_ __tmp64162))))
    (define plist->hash-table-eqv
      (lambda (_plst59044_)
        (let ((__tmp64163
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst59044_ __tmp64163))))
    (define hash-key?
      (lambda (_ht59041_ _k59042_)
        (let ((__tmp64164
               (let ((__tmp64165
                      (let ()
                        (declare (not safe))
                        (table-ref _ht59041_ _k59042_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp64165 absent-value))))
          (declare (not safe))
          (not __tmp64164))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun59034_ _ht59035_)
        (let ((__tmp64166
               (lambda (_k59037_ _v59038_ _r59039_)
                 (let ((__tmp64167 (_fun59034_ _k59037_ _v59038_)))
                   (declare (not safe))
                   (cons __tmp64167 _r59039_)))))
          (declare (not safe))
          (hash-fold __tmp64166 '() _ht59035_))))
    (define hash-fold
      (lambda (_fun59025_ _iv59026_ _ht59027_)
        (let ((_ret59029_ _iv59026_))
          (let ((__tmp64168
                 (lambda (_k59031_ _v59032_)
                   (set! _ret59029_
                         (_fun59025_ _k59031_ _v59032_ _ret59029_)))))
            (declare (not safe))
            (table-for-each __tmp64168 _ht59027_))
          _ret59029_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht59020_)
        (let ((__tmp64169 (lambda (_k59022_ _v59023_) _k59022_)))
          (declare (not safe))
          (hash-map __tmp64169 _ht59020_))))
    (define hash-values
      (lambda (_ht59015_)
        (let ((__tmp64170 (lambda (_k59017_ _v59018_) _v59018_)))
          (declare (not safe))
          (hash-map __tmp64170 _ht59015_))))
    (define hash-copy
      (lambda (_hd59010_ . _rest59011_)
        (let ((_hd59013_ (table-copy _hd59010_)))
          (if (let () (declare (not safe)) (null? _rest59011_))
              _hd59013_
              (apply hash-copy! _hd59013_ _rest59011_)))))
    (define hash-copy!
      (lambda (_hd59005_ . _rest59006_)
        (for-each
         (lambda (_r59008_) (table-merge! _hd59005_ _r59008_))
         _rest59006_)
        _hd59005_))
    (define hash-merge
      (lambda (_hd58999_ . _rest59000_)
        (let ((__tmp64171
               (lambda (_tab59002_ _r59003_)
                 (table-merge _r59003_ _tab59002_))))
          (declare (not safe))
          (foldl1 __tmp64171 _hd58999_ _rest59000_))))
    (define hash-merge!
      (lambda (_hd58993_ . _rest58994_)
        (let ((__tmp64172
               (lambda (_tab58996_ _r58997_)
                 (table-merge! _r58997_ _tab58996_))))
          (declare (not safe))
          (foldl1 __tmp64172 _hd58993_ _rest58994_))))
    (define hash-clear!__%
      (lambda (_ht58978_ _size58979_)
        (let ((_gcht58981_
               (let () (declare (not safe)) (##vector-ref _ht58978_ '5))))
          (if (let ((__tmp64173 (fixnum? _gcht58981_)))
                (declare (not safe))
                (not __tmp64173))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58978_ '5 _size58979_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58986_)
        (let ((_size58988_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58986_ _size58988_))))
    (define hash-clear!
      (lambda _g64175_
        (let ((_g64174_ (let () (declare (not safe)) (##length _g64175_))))
          (cond ((let () (declare (not safe)) (##fx= _g64174_ 1))
                 (apply (lambda (_ht58986_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58986_)))
                        _g64175_))
                ((let () (declare (not safe)) (##fx= _g64174_ 2))
                 (apply (lambda (_ht58990_ _size58991_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58990_ _size58991_)))
                        _g64175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g64175_))))))
    (define make-list__%
      (lambda (_k58959_ _val58960_)
        (if (fixnum? _k58959_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58959_))
        (let _lp58962_ ((_n58964_ '0) (_r58965_ '()))
          (if (let () (declare (not safe)) (##fx< _n58964_ _k58959_))
              (let ((__tmp64177
                     (let () (declare (not safe)) (##fx+ _n58964_ '1)))
                    (__tmp64176
                     (let () (declare (not safe)) (cons _val58960_ _r58965_))))
                (declare (not safe))
                (_lp58962_ __tmp64177 __tmp64176))
              _r58965_))))
    (define make-list__0
      (lambda (_k58970_)
        (let ((_val58972_ '#f))
          (declare (not safe))
          (make-list__% _k58970_ _val58972_))))
    (define make-list
      (lambda _g64179_
        (let ((_g64178_ (let () (declare (not safe)) (##length _g64179_))))
          (cond ((let () (declare (not safe)) (##fx= _g64178_ 1))
                 (apply (lambda (_k58970_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58970_)))
                        _g64179_))
                ((let () (declare (not safe)) (##fx= _g64178_ 2))
                 (apply (lambda (_k58974_ _val58975_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58974_ _val58975_)))
                        _g64179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g64179_))))))
    (define cons*
      (lambda (_x58949_ _y58950_ . _rest58951_)
        (letrec ((_recur58953_
                  (lambda (_x58955_ _rest58956_)
                    (if (let () (declare (not safe)) (pair? _rest58956_))
                        (let ((__tmp64180
                               (let ((__tmp64182
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58956_)))
                                     (__tmp64181
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58956_))))
                                 (declare (not safe))
                                 (_recur58953_ __tmp64182 __tmp64181))))
                          (declare (not safe))
                          (cons _x58955_ __tmp64180))
                        _x58955_))))
          (let ((__tmp64183
                 (let ()
                   (declare (not safe))
                   (_recur58953_ _y58950_ _rest58951_))))
            (declare (not safe))
            (cons _x58949_ __tmp64183)))))
    (define foldl1
      (lambda (_f58907_ _iv58908_ _lst58909_)
        (let _lp58911_ ((_rest58913_ _lst58909_) (_r58914_ _iv58908_))
          (let* ((_rest5891558923_ _rest58913_)
                 (_else5891758931_ (lambda () _r58914_))
                 (_K5891958937_
                  (lambda (_rest58934_ _x58935_)
                    (let ((__tmp64184 (_f58907_ _x58935_ _r58914_)))
                      (declare (not safe))
                      (_lp58911_ _rest58934_ __tmp64184)))))
            (if (let () (declare (not safe)) (##pair? _rest5891558923_))
                (let ((_hd5892058940_
                       (let () (declare (not safe)) (##car _rest5891558923_)))
                      (_tl5892158942_
                       (let () (declare (not safe)) (##cdr _rest5891558923_))))
                  (let* ((_x58945_ _hd5892058940_)
                         (_rest58947_ _tl5892158942_))
                    (declare (not safe))
                    (_K5891958937_ _rest58947_ _x58945_)))
                (let () (declare (not safe)) (_else5891758931_)))))))
    (define foldl2
      (lambda (_f58830_ _iv58831_ _lst158832_ _lst258833_)
        (let _lp58835_ ((_rest158837_ _lst158832_)
                        (_rest258838_ _lst258833_)
                        (_r58839_ _iv58831_))
          (let* ((_rest15884058848_ _rest158837_)
                 (_else5884258856_ (lambda () _r58839_))
                 (_K5884458895_
                  (lambda (_rest158859_ _x158860_)
                    (let* ((_rest25886158869_ _rest258838_)
                           (_else5886358877_ (lambda () _r58839_))
                           (_K5886558883_
                            (lambda (_rest258880_ _x258881_)
                              (let ((__tmp64185
                                     (_f58830_ _x158860_ _x258881_ _r58839_)))
                                (declare (not safe))
                                (_lp58835_
                                 _rest158859_
                                 _rest258880_
                                 __tmp64185)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25886158869_))
                          (let ((_hd5886658886_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25886158869_)))
                                (_tl5886758888_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25886158869_))))
                            (let* ((_x258891_ _hd5886658886_)
                                   (_rest258893_ _tl5886758888_))
                              (declare (not safe))
                              (_K5886558883_ _rest258893_ _x258891_)))
                          (let () (declare (not safe)) (_else5886358877_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15884058848_))
                (let ((_hd5884558898_
                       (let () (declare (not safe)) (##car _rest15884058848_)))
                      (_tl5884658900_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15884058848_))))
                  (let* ((_x158903_ _hd5884558898_)
                         (_rest158905_ _tl5884658900_))
                    (declare (not safe))
                    (_K5884458895_ _rest158905_ _x158903_)))
                (let () (declare (not safe)) (_else5884258856_)))))))
    (define foldl
      (lambda _g64187_
        (let ((_g64186_ (let () (declare (not safe)) (##length _g64187_))))
          (cond ((let () (declare (not safe)) (##fx= _g64186_ 3))
                 (apply (lambda (_f58815_ _iv58816_ _lst58817_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58815_ _iv58816_ _lst58817_)))
                        _g64187_))
                ((let () (declare (not safe)) (##fx= _g64186_ 4))
                 (apply (lambda (_f58819_ _iv58820_ _lst158821_ _lst258822_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58819_
                                    _iv58820_
                                    _lst158821_
                                    _lst258822_)))
                        _g64187_))
                ((let () (declare (not safe)) (##fx>= _g64186_ 4))
                 (apply foldl* _g64187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g64187_))))))
    (define foldl*
      (lambda (_f58803_ _iv58804_ . _rest58805_)
        (let _recur58807_ ((_iv58809_ _iv58804_) (_rest58810_ _rest58805_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58810_))
              (let ((__tmp64189
                     (apply _f58803_
                            (let ((__tmp64191
                                   (lambda (_xs58812_ _r58813_)
                                     (let ((__tmp64192 (car _xs58812_)))
                                       (declare (not safe))
                                       (cons __tmp64192 _r58813_))))
                                  (__tmp64190 (list _iv58809_)))
                              (declare (not safe))
                              (foldr1 __tmp64191 __tmp64190 _rest58810_))))
                    (__tmp64188 (map cdr _rest58810_)))
                (declare (not safe))
                (_recur58807_ __tmp64189 __tmp64188))
              _iv58809_))))
    (define foldr1
      (lambda (_f58762_ _iv58763_ _lst58764_)
        (let _recur58766_ ((_rest58768_ _lst58764_))
          (let* ((_rest5876958777_ _rest58768_)
                 (_else5877158785_ (lambda () _iv58763_))
                 (_K5877358791_
                  (lambda (_rest58788_ _x58789_)
                    (_f58762_
                     _x58789_
                     (let ()
                       (declare (not safe))
                       (_recur58766_ _rest58788_))))))
            (if (let () (declare (not safe)) (##pair? _rest5876958777_))
                (let ((_hd5877458794_
                       (let () (declare (not safe)) (##car _rest5876958777_)))
                      (_tl5877558796_
                       (let () (declare (not safe)) (##cdr _rest5876958777_))))
                  (let* ((_x58799_ _hd5877458794_)
                         (_rest58801_ _tl5877558796_))
                    (declare (not safe))
                    (_K5877358791_ _rest58801_ _x58799_)))
                (let () (declare (not safe)) (_else5877158785_)))))))
    (define foldr2
      (lambda (_f58686_ _iv58687_ _lst158688_ _lst258689_)
        (let _recur58691_ ((_rest158693_ _lst158688_)
                           (_rest258694_ _lst258689_))
          (let* ((_rest15869558703_ _rest158693_)
                 (_else5869758711_ (lambda () _iv58687_))
                 (_K5869958750_
                  (lambda (_rest158714_ _x158715_)
                    (let* ((_rest25871658724_ _rest258694_)
                           (_else5871858732_ (lambda () _iv58687_))
                           (_K5872058738_
                            (lambda (_rest258735_ _x258736_)
                              (_f58686_
                               _x158715_
                               _x258736_
                               (let ()
                                 (declare (not safe))
                                 (_recur58691_ _rest158714_ _rest258735_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25871658724_))
                          (let ((_hd5872158741_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25871658724_)))
                                (_tl5872258743_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25871658724_))))
                            (let* ((_x258746_ _hd5872158741_)
                                   (_rest258748_ _tl5872258743_))
                              (declare (not safe))
                              (_K5872058738_ _rest258748_ _x258746_)))
                          (let () (declare (not safe)) (_else5871858732_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15869558703_))
                (let ((_hd5870058753_
                       (let () (declare (not safe)) (##car _rest15869558703_)))
                      (_tl5870158755_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15869558703_))))
                  (let* ((_x158758_ _hd5870058753_)
                         (_rest158760_ _tl5870158755_))
                    (declare (not safe))
                    (_K5869958750_ _rest158760_ _x158758_)))
                (let () (declare (not safe)) (_else5869758711_)))))))
    (define foldr
      (lambda _g64194_
        (let ((_g64193_ (let () (declare (not safe)) (##length _g64194_))))
          (cond ((let () (declare (not safe)) (##fx= _g64193_ 3))
                 (apply (lambda (_f58671_ _iv58672_ _lst58673_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58671_ _iv58672_ _lst58673_)))
                        _g64194_))
                ((let () (declare (not safe)) (##fx= _g64193_ 4))
                 (apply (lambda (_f58675_ _iv58676_ _lst158677_ _lst258678_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58675_
                                    _iv58676_
                                    _lst158677_
                                    _lst258678_)))
                        _g64194_))
                ((let () (declare (not safe)) (##fx>= _g64193_ 4))
                 (apply foldr* _g64194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g64194_))))))
    (define foldr*
      (lambda (_f58660_ _iv58661_ . _rest58662_)
        (let _recur58664_ ((_rest58666_ _rest58662_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58666_))
              (apply _f58660_
                     (let ((__tmp64197
                            (lambda (_xs58668_ _r58669_)
                              (let ((__tmp64198 (car _xs58668_)))
                                (declare (not safe))
                                (cons __tmp64198 _r58669_))))
                           (__tmp64195
                            (list (let ((__tmp64196 (map cdr _rest58666_)))
                                    (declare (not safe))
                                    (_recur58664_ __tmp64196)))))
                       (declare (not safe))
                       (foldr1 __tmp64197 __tmp64195 _rest58666_)))
              _iv58661_))))
    (define remove-nulls!
      (lambda (_l58547_)
        (let* ((_l5854858561_ _l58547_)
               (_E5855258565_
                (lambda () (error '"No clause matching" _l5854858561_))))
          (let ((_K5855758650_
                 (lambda (_r58648_)
                   (let () (declare (not safe)) (remove-nulls! _r58648_))))
                (_K5855458637_
                 (lambda (_r58577_)
                   (let _loop58579_ ((_l58581_ _l58547_) (_r58582_ _r58577_))
                     (let* ((_r5858358596_ _r58582_)
                            (_E5858758600_
                             (lambda ()
                               (error '"No clause matching" _r5858358596_))))
                       (let ((_K5859258627_
                              (lambda (_rr58625_)
                                (set-cdr!
                                 _l58581_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58625_)))))
                             (_K5858958614_
                              (lambda (_rr58612_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58579_ _r58582_ _rr58612_))))
                             (_K5858858605_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5858358596_))
                             (let ((_tl5859458632_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5858358596_)))
                                   (_hd5859358630_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5858358596_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5859358630_))
                                   (let ((_rr58635_ _tl5859458632_))
                                     (declare (not safe))
                                     (_K5859258627_ _rr58635_))
                                   (let ((_rr58620_ _tl5859458632_))
                                     (declare (not safe))
                                     (_K5858958614_ _rr58620_))))
                             '#!void))))
                   _l58547_))
                (_K5855358570_ (lambda () _l58547_)))
            (if (let () (declare (not safe)) (##pair? _l5854858561_))
                (let ((_tl5855958655_
                       (let () (declare (not safe)) (##cdr _l5854858561_)))
                      (_hd5855858653_
                       (let () (declare (not safe)) (##car _l5854858561_))))
                  (if (let () (declare (not safe)) (##null? _hd5855858653_))
                      (let ((_r58658_ _tl5855958655_))
                        (declare (not safe))
                        (remove-nulls! _r58658_))
                      (let ((_r58643_ _tl5855958655_))
                        (declare (not safe))
                        (_K5855458637_ _r58643_))))
                (let () (declare (not safe)) (_K5855358570_)))))))
    (define append1!
      (lambda (_l58542_ _x58543_)
        (let ((_l258545_ (let () (declare (not safe)) (cons _x58543_ '()))))
          (if (let () (declare (not safe)) (pair? _l58542_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58542_))
               _l258545_)
              _l258545_))))
    (define append-reverse
      (lambda (_rev-head58539_ _tail58540_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58540_ _rev-head58539_))))
    (define append-reverse-until
      (lambda (_pred58492_ _rhead58493_ _tail58494_)
        (let _loop58496_ ((_rhead58498_ _rhead58493_)
                          (_tail58499_ _tail58494_))
          (let* ((_rhead5850058509_ _rhead58498_)
                 (_E5850358513_
                  (lambda () (error '"No clause matching" _rhead5850058509_))))
            (let ((_K5850758536_ (lambda () (values '() _tail58499_)))
                  (_K5850458520_
                   (lambda (_r58517_ _a58518_)
                     (if (_pred58492_ _a58518_)
                         (values _rhead58498_ _tail58499_)
                         (let ((__tmp64199
                                (let ()
                                  (declare (not safe))
                                  (cons _a58518_ _tail58499_))))
                           (declare (not safe))
                           (_loop58496_ _r58517_ __tmp64199))))))
              (let ((_try-match5850258532_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5850058509_))
                           (let ((_tl5850658525_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5850058509_)))
                                 (_hd5850558523_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5850058509_))))
                             (let ((_a58528_ _hd5850558523_)
                                   (_r58530_ _tl5850658525_))
                               (let ()
                                 (declare (not safe))
                                 (_K5850458520_ _r58530_ _a58528_))))
                           (let () (declare (not safe)) (_E5850358513_))))))
                (if (let () (declare (not safe)) (##null? _rhead5850058509_))
                    (let () (declare (not safe)) (_K5850758536_))
                    (let ()
                      (declare (not safe))
                      (_try-match5850258532_)))))))))
    (define andmap1
      (lambda (_f58452_ _lst58453_)
        (let _lp58455_ ((_rest58457_ _lst58453_))
          (let* ((_rest5845858466_ _rest58457_)
                 (_else5846058474_ (lambda () '#t))
                 (_K5846258480_
                  (lambda (_rest58477_ _x58478_)
                    (if (_f58452_ _x58478_)
                        (let () (declare (not safe)) (_lp58455_ _rest58477_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5845858466_))
                (let ((_hd5846358483_
                       (let () (declare (not safe)) (##car _rest5845858466_)))
                      (_tl5846458485_
                       (let () (declare (not safe)) (##cdr _rest5845858466_))))
                  (let* ((_x58488_ _hd5846358483_)
                         (_rest58490_ _tl5846458485_))
                    (declare (not safe))
                    (_K5846258480_ _rest58490_ _x58488_)))
                (let () (declare (not safe)) (_else5846058474_)))))))
    (define andmap2
      (lambda (_f58377_ _lst158378_ _lst258379_)
        (let _lp58381_ ((_rest158383_ _lst158378_) (_rest258384_ _lst258379_))
          (let* ((_rest15838558393_ _rest158383_)
                 (_else5838758401_ (lambda () '#t))
                 (_K5838958440_
                  (lambda (_rest158404_ _x158405_)
                    (let* ((_rest25840658414_ _rest258384_)
                           (_else5840858422_ (lambda () '#t))
                           (_K5841058428_
                            (lambda (_rest258425_ _x258426_)
                              (if (_f58377_ _x158405_ _x258426_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58381_ _rest158404_ _rest258425_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25840658414_))
                          (let ((_hd5841158431_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25840658414_)))
                                (_tl5841258433_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25840658414_))))
                            (let* ((_x258436_ _hd5841158431_)
                                   (_rest258438_ _tl5841258433_))
                              (declare (not safe))
                              (_K5841058428_ _rest258438_ _x258436_)))
                          (let () (declare (not safe)) (_else5840858422_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15838558393_))
                (let ((_hd5839058443_
                       (let () (declare (not safe)) (##car _rest15838558393_)))
                      (_tl5839158445_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15838558393_))))
                  (let* ((_x158448_ _hd5839058443_)
                         (_rest158450_ _tl5839158445_))
                    (declare (not safe))
                    (_K5838958440_ _rest158450_ _x158448_)))
                (let () (declare (not safe)) (_else5838758401_)))))))
    (define andmap
      (lambda _g64201_
        (let ((_g64200_ (let () (declare (not safe)) (##length _g64201_))))
          (cond ((let () (declare (not safe)) (##fx= _g64200_ 2))
                 (apply (lambda (_f58365_ _lst58366_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58365_ _lst58366_)))
                        _g64201_))
                ((let () (declare (not safe)) (##fx= _g64200_ 3))
                 (apply (lambda (_f58368_ _lst158369_ _lst258370_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58368_ _lst158369_ _lst258370_)))
                        _g64201_))
                ((let () (declare (not safe)) (##fx>= _g64200_ 3))
                 (apply andmap* _g64201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g64201_))))))
    (define andmap*
      (lambda (_f58358_ . _rest58359_)
        (let _recur58361_ ((_rest58363_ _rest58359_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58363_))
              (if (apply _f58358_ (map car _rest58363_))
                  (let ((__tmp64202 (map cdr _rest58363_)))
                    (declare (not safe))
                    (_recur58361_ __tmp64202))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f58315_ _lst58316_)
        (let _lp58318_ ((_rest58320_ _lst58316_))
          (let* ((_rest5832158329_ _rest58320_)
                 (_else5832358337_ (lambda () '#f))
                 (_K5832558346_
                  (lambda (_rest58340_ _x58341_)
                    (let ((_$e58343_ (_f58315_ _x58341_)))
                      (if _$e58343_
                          _$e58343_
                          (let ()
                            (declare (not safe))
                            (_lp58318_ _rest58340_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5832158329_))
                (let ((_hd5832658349_
                       (let () (declare (not safe)) (##car _rest5832158329_)))
                      (_tl5832758351_
                       (let () (declare (not safe)) (##cdr _rest5832158329_))))
                  (let* ((_x58354_ _hd5832658349_)
                         (_rest58356_ _tl5832758351_))
                    (declare (not safe))
                    (_K5832558346_ _rest58356_ _x58354_)))
                (let () (declare (not safe)) (_else5832358337_)))))))
    (define ormap2
      (lambda (_f58237_ _lst158238_ _lst258239_)
        (let _lp58241_ ((_rest158243_ _lst158238_) (_rest258244_ _lst258239_))
          (let* ((_rest15824558253_ _rest158243_)
                 (_else5824758261_ (lambda () '#f))
                 (_K5824958303_
                  (lambda (_rest158264_ _x158265_)
                    (let* ((_rest25826658274_ _rest258244_)
                           (_else5826858282_ (lambda () '#f))
                           (_K5827058291_
                            (lambda (_rest258285_ _x258286_)
                              (let ((_$e58288_ (_f58237_ _x158265_ _x258286_)))
                                (if _$e58288_
                                    _$e58288_
                                    (let ()
                                      (declare (not safe))
                                      (_lp58241_
                                       _rest158264_
                                       _rest258285_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25826658274_))
                          (let ((_hd5827158294_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25826658274_)))
                                (_tl5827258296_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25826658274_))))
                            (let* ((_x258299_ _hd5827158294_)
                                   (_rest258301_ _tl5827258296_))
                              (declare (not safe))
                              (_K5827058291_ _rest258301_ _x258299_)))
                          (let () (declare (not safe)) (_else5826858282_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15824558253_))
                (let ((_hd5825058306_
                       (let () (declare (not safe)) (##car _rest15824558253_)))
                      (_tl5825158308_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15824558253_))))
                  (let* ((_x158311_ _hd5825058306_)
                         (_rest158313_ _tl5825158308_))
                    (declare (not safe))
                    (_K5824958303_ _rest158313_ _x158311_)))
                (let () (declare (not safe)) (_else5824758261_)))))))
    (define ormap
      (lambda _g64204_
        (let ((_g64203_ (let () (declare (not safe)) (##length _g64204_))))
          (cond ((let () (declare (not safe)) (##fx= _g64203_ 2))
                 (apply (lambda (_f58225_ _lst58226_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f58225_ _lst58226_)))
                        _g64204_))
                ((let () (declare (not safe)) (##fx= _g64203_ 3))
                 (apply (lambda (_f58228_ _lst158229_ _lst258230_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f58228_ _lst158229_ _lst258230_)))
                        _g64204_))
                ((let () (declare (not safe)) (##fx>= _g64203_ 3))
                 (apply ormap* _g64204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g64204_))))))
    (define ormap*
      (lambda (_f58215_ . _rest58216_)
        (let _recur58218_ ((_rest58220_ _rest58216_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58220_))
              (let ((_$e58222_ (apply _f58215_ (map car _rest58220_))))
                (if _$e58222_
                    _$e58222_
                    (let ((__tmp64205 (map cdr _rest58220_)))
                      (declare (not safe))
                      (_recur58218_ __tmp64205))))
              '#f))))
    (define filter
      (lambda (_f58173_ _lst58174_)
        (let _recur58176_ ((_lst58178_ _lst58174_))
          (let* ((_lst5817958187_ _lst58178_)
                 (_else5818158195_ (lambda () '()))
                 (_K5818358203_
                  (lambda (_rest58198_ _hd58199_)
                    (if (_f58173_ _hd58199_)
                        (let ((_tail58201_
                               (let ()
                                 (declare (not safe))
                                 (_recur58176_ _rest58198_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail58201_ _rest58198_))
                              _lst58178_
                              (let ()
                                (declare (not safe))
                                (cons _hd58199_ _tail58201_))))
                        (let ()
                          (declare (not safe))
                          (_recur58176_ _rest58198_))))))
            (if (let () (declare (not safe)) (##pair? _lst5817958187_))
                (let ((_hd5818458206_
                       (let () (declare (not safe)) (##car _lst5817958187_)))
                      (_tl5818558208_
                       (let () (declare (not safe)) (##cdr _lst5817958187_))))
                  (let* ((_hd58211_ _hd5818458206_)
                         (_rest58213_ _tl5818558208_))
                    (declare (not safe))
                    (_K5818358203_ _rest58213_ _hd58211_)))
                (let () (declare (not safe)) (_else5818158195_)))))))
    (define filter-map1
      (lambda (_f58128_ _lst58129_)
        (let _recur58131_ ((_rest58133_ _lst58129_))
          (let* ((_rest5813458142_ _rest58133_)
                 (_else5813658150_ (lambda () '()))
                 (_K5813858161_
                  (lambda (_rest58153_ _x58154_)
                    (let ((_$e58156_ (_f58128_ _x58154_)))
                      (if _$e58156_
                          ((lambda (_r58159_)
                             (let ((__tmp64206
                                    (let ()
                                      (declare (not safe))
                                      (_recur58131_ _rest58153_))))
                               (declare (not safe))
                               (cons _r58159_ __tmp64206)))
                           _$e58156_)
                          (let ()
                            (declare (not safe))
                            (_recur58131_ _rest58153_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5813458142_))
                (let ((_hd5813958164_
                       (let () (declare (not safe)) (##car _rest5813458142_)))
                      (_tl5814058166_
                       (let () (declare (not safe)) (##cdr _rest5813458142_))))
                  (let* ((_x58169_ _hd5813958164_)
                         (_rest58171_ _tl5814058166_))
                    (declare (not safe))
                    (_K5813858161_ _rest58171_ _x58169_)))
                (let () (declare (not safe)) (_else5813658150_)))))))
    (define filter-map2
      (lambda (_f58048_ _lst158049_ _lst258050_)
        (let _recur58052_ ((_rest158054_ _lst158049_)
                           (_rest258055_ _lst258050_))
          (let* ((_rest15805658064_ _rest158054_)
                 (_else5805858072_ (lambda () '()))
                 (_K5806058116_
                  (lambda (_rest158075_ _x158076_)
                    (let* ((_rest25807758085_ _rest258055_)
                           (_else5807958093_ (lambda () '()))
                           (_K5808158104_
                            (lambda (_rest258096_ _x258097_)
                              (let ((_$e58099_ (_f58048_ _x158076_ _x258097_)))
                                (if _$e58099_
                                    ((lambda (_r58102_)
                                       (let ((__tmp64207
                                              (let ()
                                                (declare (not safe))
                                                (_recur58052_
                                                 _rest158075_
                                                 _rest258096_))))
                                         (declare (not safe))
                                         (cons _r58102_ __tmp64207)))
                                     _$e58099_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur58052_
                                       _rest158075_
                                       _rest258096_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25807758085_))
                          (let ((_hd5808258107_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25807758085_)))
                                (_tl5808358109_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25807758085_))))
                            (let* ((_x258112_ _hd5808258107_)
                                   (_rest258114_ _tl5808358109_))
                              (declare (not safe))
                              (_K5808158104_ _rest258114_ _x258112_)))
                          (let () (declare (not safe)) (_else5807958093_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15805658064_))
                (let ((_hd5806158119_
                       (let () (declare (not safe)) (##car _rest15805658064_)))
                      (_tl5806258121_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15805658064_))))
                  (let* ((_x158124_ _hd5806158119_)
                         (_rest158126_ _tl5806258121_))
                    (declare (not safe))
                    (_K5806058116_ _rest158126_ _x158124_)))
                (let () (declare (not safe)) (_else5805858072_)))))))
    (define filter-map
      (lambda _g64209_
        (let ((_g64208_ (let () (declare (not safe)) (##length _g64209_))))
          (cond ((let () (declare (not safe)) (##fx= _g64208_ 2))
                 (apply (lambda (_f58036_ _lst58037_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f58036_ _lst58037_)))
                        _g64209_))
                ((let () (declare (not safe)) (##fx= _g64208_ 3))
                 (apply (lambda (_f58039_ _lst158040_ _lst258041_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f58039_ _lst158040_ _lst258041_)))
                        _g64209_))
                ((let () (declare (not safe)) (##fx>= _g64208_ 3))
                 (apply filter-map* _g64209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g64209_))))))
    (define filter-map*
      (lambda (_f58024_ . _rest58025_)
        (let _recur58027_ ((_rest58029_ _rest58025_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58029_))
              (let ((_$e58031_ (apply _f58024_ (map car _rest58029_))))
                (if _$e58031_
                    ((lambda (_r58034_)
                       (let ((__tmp64211
                              (let ((__tmp64212 (map cdr _rest58029_)))
                                (declare (not safe))
                                (_recur58027_ __tmp64212))))
                         (declare (not safe))
                         (cons _r58034_ __tmp64211)))
                     _$e58031_)
                    (let ((__tmp64210 (map cdr _rest58029_)))
                      (declare (not safe))
                      (_recur58027_ __tmp64210))))
              '()))))
    (define iota__%
      (lambda (_count57992_ _start57993_ _step57994_)
        (if (fixnum? _count57992_)
            '#!void
            (error '"expected fixnum" _count57992_))
        (if (let () (declare (not safe)) (number? _start57993_))
            '#!void
            (error '"expected number" _start57993_))
        (if (let () (declare (not safe)) (number? _step57994_))
            '#!void
            (error '"expected number" _step57994_))
        (let ((_root57996_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57998_ ((_i58000_ '0)
                          (_x58001_ _start57993_)
                          (_tl58002_ _root57996_))
            (if (let () (declare (not safe)) (##fx< _i58000_ _count57992_))
                (let ((_tl*58004_
                       (let () (declare (not safe)) (cons _x58001_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl58002_ _tl*58004_))
                  (let ((__tmp64214
                         (let () (declare (not safe)) (##fx+ _i58000_ '1)))
                        (__tmp64213 (+ _x58001_ _step57994_)))
                    (declare (not safe))
                    (_lp57998_ __tmp64214 __tmp64213 _tl*58004_)))
                (let () (declare (not safe)) (##cdr _root57996_)))))))
    (define iota__0
      (lambda (_count58009_)
        (let* ((_start58011_ '0) (_step58013_ '1))
          (declare (not safe))
          (iota__% _count58009_ _start58011_ _step58013_))))
    (define iota__1
      (lambda (_count58015_ _start58016_)
        (let ((_step58018_ '1))
          (declare (not safe))
          (iota__% _count58015_ _start58016_ _step58018_))))
    (define iota
      (lambda _g64216_
        (let ((_g64215_ (let () (declare (not safe)) (##length _g64216_))))
          (cond ((let () (declare (not safe)) (##fx= _g64215_ 1))
                 (apply (lambda (_count58009_)
                          (let () (declare (not safe)) (iota__0 _count58009_)))
                        _g64216_))
                ((let () (declare (not safe)) (##fx= _g64215_ 2))
                 (apply (lambda (_count58015_ _start58016_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count58015_ _start58016_)))
                        _g64216_))
                ((let () (declare (not safe)) (##fx= _g64215_ 3))
                 (apply (lambda (_count58020_ _start58021_ _step58022_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count58020_ _start58021_ _step58022_)))
                        _g64216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g64216_))))))
    (define last-pair
      (lambda (_lst57966_)
        (let* ((_lst5796757974_ _lst57966_)
               (_E5796957978_
                (lambda () (error '"No clause matching" _lst5796757974_)))
               (_K5797057983_
                (lambda (_rest57981_)
                  (if (let () (declare (not safe)) (pair? _rest57981_))
                      (let () (declare (not safe)) (last-pair _rest57981_))
                      _lst57966_))))
          (if (let () (declare (not safe)) (##pair? _lst5796757974_))
              (let* ((_tl5797257986_
                      (let () (declare (not safe)) (##cdr _lst5796757974_)))
                     (_rest57989_ _tl5797257986_))
                (declare (not safe))
                (_K5797057983_ _rest57989_))
              (let () (declare (not safe)) (_E5796957978_))))))
    (define last
      (lambda (_lst57964_)
        (car (let () (declare (not safe)) (last-pair _lst57964_)))))
    (define assgetq__%
      (lambda (_key57942_ _lst57944_ _default57946_)
        (let ((_$e57949_
               (if (let () (declare (not safe)) (pair? _lst57944_))
                   (assq _key57942_ _lst57944_)
                   '#f)))
          (if _$e57949_
              (cdr _$e57949_)
              (if (let () (declare (not safe)) (procedure? _default57946_))
                  (_default57946_ _key57942_)
                  _default57946_)))))
    (define assgetq__0
      (lambda (_key57955_ _lst57956_)
        (let ((_default57958_ '#f))
          (declare (not safe))
          (assgetq__% _key57955_ _lst57956_ _default57958_))))
    (define assgetq
      (lambda _g64218_
        (let ((_g64217_ (let () (declare (not safe)) (##length _g64218_))))
          (cond ((let () (declare (not safe)) (##fx= _g64217_ 2))
                 (apply (lambda (_key57955_ _lst57956_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57955_ _lst57956_)))
                        _g64218_))
                ((let () (declare (not safe)) (##fx= _g64217_ 3))
                 (apply (lambda (_key57960_ _lst57961_ _default57962_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57960_ _lst57961_ _default57962_)))
                        _g64218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g64218_))))))
    (define assgetv__%
      (lambda (_key57919_ _lst57921_ _default57923_)
        (let ((_$e57926_
               (if (let () (declare (not safe)) (pair? _lst57921_))
                   (assv _key57919_ _lst57921_)
                   '#f)))
          (if _$e57926_
              (cdr _$e57926_)
              (if (let () (declare (not safe)) (procedure? _default57923_))
                  (_default57923_ _key57919_)
                  _default57923_)))))
    (define assgetv__0
      (lambda (_key57932_ _lst57933_)
        (let ((_default57935_ '#f))
          (declare (not safe))
          (assgetv__% _key57932_ _lst57933_ _default57935_))))
    (define assgetv
      (lambda _g64220_
        (let ((_g64219_ (let () (declare (not safe)) (##length _g64220_))))
          (cond ((let () (declare (not safe)) (##fx= _g64219_ 2))
                 (apply (lambda (_key57932_ _lst57933_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57932_ _lst57933_)))
                        _g64220_))
                ((let () (declare (not safe)) (##fx= _g64219_ 3))
                 (apply (lambda (_key57937_ _lst57938_ _default57939_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57937_ _lst57938_ _default57939_)))
                        _g64220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g64220_))))))
    (define assget__%
      (lambda (_key57896_ _lst57898_ _default57900_)
        (let ((_$e57903_
               (if (let () (declare (not safe)) (pair? _lst57898_))
                   (assoc _key57896_ _lst57898_)
                   '#f)))
          (if _$e57903_
              (cdr _$e57903_)
              (if (let () (declare (not safe)) (procedure? _default57900_))
                  (_default57900_ _key57896_)
                  _default57900_)))))
    (define assget__0
      (lambda (_key57909_ _lst57910_)
        (let ((_default57912_ '#f))
          (declare (not safe))
          (assget__% _key57909_ _lst57910_ _default57912_))))
    (define assget
      (lambda _g64222_
        (let ((_g64221_ (let () (declare (not safe)) (##length _g64222_))))
          (cond ((let () (declare (not safe)) (##fx= _g64221_ 2))
                 (apply (lambda (_key57909_ _lst57910_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57909_ _lst57910_)))
                        _g64222_))
                ((let () (declare (not safe)) (##fx= _g64221_ 3))
                 (apply (lambda (_key57914_ _lst57915_ _default57916_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57914_ _lst57915_ _default57916_)))
                        _g64222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g64222_))))))
    (define pgetq__%
      (lambda (_key57825_ _lst57827_ _default57829_)
        (let _lp57832_ ((_rest57835_ _lst57827_))
          (let* ((_rest5783757847_ _rest57835_)
                 (_else5783957855_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57829_))
                        (_default57829_ _key57825_)
                        _default57829_)))
                 (_K5784157864_
                  (lambda (_rest57858_ _v57859_ _k57861_)
                    (if (let () (declare (not safe)) (eq? _k57861_ _key57825_))
                        _v57859_
                        (let ()
                          (declare (not safe))
                          (_lp57832_ _rest57858_))))))
            (if (let () (declare (not safe)) (##pair? _rest5783757847_))
                (let ((_hd5784257867_
                       (let () (declare (not safe)) (##car _rest5783757847_)))
                      (_tl5784357869_
                       (let () (declare (not safe)) (##cdr _rest5783757847_))))
                  (let ((_k57872_ _hd5784257867_))
                    (if (let () (declare (not safe)) (##pair? _tl5784357869_))
                        (let ((_hd5784457874_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5784357869_)))
                              (_tl5784557876_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5784357869_))))
                          (let* ((_v57879_ _hd5784457874_)
                                 (_rest57881_ _tl5784557876_))
                            (declare (not safe))
                            (_K5784157864_ _rest57881_ _v57879_ _k57872_)))
                        (let () (declare (not safe)) (_else5783957855_)))))
                (let () (declare (not safe)) (_else5783957855_)))))))
    (define pgetq__0
      (lambda (_key57886_ _lst57887_)
        (let ((_default57889_ '#f))
          (declare (not safe))
          (pgetq__% _key57886_ _lst57887_ _default57889_))))
    (define pgetq
      (lambda _g64224_
        (let ((_g64223_ (let () (declare (not safe)) (##length _g64224_))))
          (cond ((let () (declare (not safe)) (##fx= _g64223_ 2))
                 (apply (lambda (_key57886_ _lst57887_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57886_ _lst57887_)))
                        _g64224_))
                ((let () (declare (not safe)) (##fx= _g64223_ 3))
                 (apply (lambda (_key57891_ _lst57892_ _default57893_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57891_ _lst57892_ _default57893_)))
                        _g64224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g64224_))))))
    (define pgetv__%
      (lambda (_key57754_ _lst57756_ _default57758_)
        (let _lp57761_ ((_rest57764_ _lst57756_))
          (let* ((_rest5776657776_ _rest57764_)
                 (_else5776857784_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57758_))
                        (_default57758_ _key57754_)
                        _default57758_)))
                 (_K5777057793_
                  (lambda (_rest57787_ _v57788_ _k57790_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57790_ _key57754_))
                        _v57788_
                        (let ()
                          (declare (not safe))
                          (_lp57761_ _rest57787_))))))
            (if (let () (declare (not safe)) (##pair? _rest5776657776_))
                (let ((_hd5777157796_
                       (let () (declare (not safe)) (##car _rest5776657776_)))
                      (_tl5777257798_
                       (let () (declare (not safe)) (##cdr _rest5776657776_))))
                  (let ((_k57801_ _hd5777157796_))
                    (if (let () (declare (not safe)) (##pair? _tl5777257798_))
                        (let ((_hd5777357803_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5777257798_)))
                              (_tl5777457805_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5777257798_))))
                          (let* ((_v57808_ _hd5777357803_)
                                 (_rest57810_ _tl5777457805_))
                            (declare (not safe))
                            (_K5777057793_ _rest57810_ _v57808_ _k57801_)))
                        (let () (declare (not safe)) (_else5776857784_)))))
                (let () (declare (not safe)) (_else5776857784_)))))))
    (define pgetv__0
      (lambda (_key57815_ _lst57816_)
        (let ((_default57818_ '#f))
          (declare (not safe))
          (pgetv__% _key57815_ _lst57816_ _default57818_))))
    (define pgetv
      (lambda _g64226_
        (let ((_g64225_ (let () (declare (not safe)) (##length _g64226_))))
          (cond ((let () (declare (not safe)) (##fx= _g64225_ 2))
                 (apply (lambda (_key57815_ _lst57816_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57815_ _lst57816_)))
                        _g64226_))
                ((let () (declare (not safe)) (##fx= _g64225_ 3))
                 (apply (lambda (_key57820_ _lst57821_ _default57822_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57820_ _lst57821_ _default57822_)))
                        _g64226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g64226_))))))
    (define pget__%
      (lambda (_key57683_ _lst57685_ _default57687_)
        (let _lp57690_ ((_rest57693_ _lst57685_))
          (let* ((_rest5769557705_ _rest57693_)
                 (_else5769757713_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57687_))
                        (_default57687_ _key57683_)
                        _default57687_)))
                 (_K5769957722_
                  (lambda (_rest57716_ _v57717_ _k57719_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57719_ _key57683_))
                        _v57717_
                        (let ()
                          (declare (not safe))
                          (_lp57690_ _rest57716_))))))
            (if (let () (declare (not safe)) (##pair? _rest5769557705_))
                (let ((_hd5770057725_
                       (let () (declare (not safe)) (##car _rest5769557705_)))
                      (_tl5770157727_
                       (let () (declare (not safe)) (##cdr _rest5769557705_))))
                  (let ((_k57730_ _hd5770057725_))
                    (if (let () (declare (not safe)) (##pair? _tl5770157727_))
                        (let ((_hd5770257732_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5770157727_)))
                              (_tl5770357734_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5770157727_))))
                          (let* ((_v57737_ _hd5770257732_)
                                 (_rest57739_ _tl5770357734_))
                            (declare (not safe))
                            (_K5769957722_ _rest57739_ _v57737_ _k57730_)))
                        (let () (declare (not safe)) (_else5769757713_)))))
                (let () (declare (not safe)) (_else5769757713_)))))))
    (define pget__0
      (lambda (_key57744_ _lst57745_)
        (let ((_default57747_ '#f))
          (declare (not safe))
          (pget__% _key57744_ _lst57745_ _default57747_))))
    (define pget
      (lambda _g64228_
        (let ((_g64227_ (let () (declare (not safe)) (##length _g64228_))))
          (cond ((let () (declare (not safe)) (##fx= _g64227_ 2))
                 (apply (lambda (_key57744_ _lst57745_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57744_ _lst57745_)))
                        _g64228_))
                ((let () (declare (not safe)) (##fx= _g64227_ 3))
                 (apply (lambda (_key57749_ _lst57750_ _default57751_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57749_ _lst57750_ _default57751_)))
                        _g64228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g64228_))))))
    (define find
      (lambda (_pred57676_ _lst57677_)
        (let ((_$e57679_
               (let () (declare (not safe)) (memf _pred57676_ _lst57677_))))
          (if _$e57679_ (car _$e57679_) '#f))))
    (define memf
      (lambda (_proc57636_ _lst57637_)
        (let _lp57639_ ((_rest57641_ _lst57637_))
          (let* ((_rest5764257650_ _rest57641_)
                 (_else5764457658_ (lambda () '#f))
                 (_K5764657664_
                  (lambda (_tl57661_ _hd57662_)
                    (if (_proc57636_ _hd57662_)
                        _rest57641_
                        (let () (declare (not safe)) (_lp57639_ _tl57661_))))))
            (if (let () (declare (not safe)) (##pair? _rest5764257650_))
                (let ((_hd5764757667_
                       (let () (declare (not safe)) (##car _rest5764257650_)))
                      (_tl5764857669_
                       (let () (declare (not safe)) (##cdr _rest5764257650_))))
                  (let* ((_hd57672_ _hd5764757667_) (_tl57674_ _tl5764857669_))
                    (declare (not safe))
                    (_K5764657664_ _tl57674_ _hd57672_)))
                (let () (declare (not safe)) (_else5764457658_)))))))
    (define remove1
      (lambda (_el57589_ _lst57591_)
        (let _lp57594_ ((_rest57597_ _lst57591_) (_r57599_ '()))
          (let* ((_rest5760157609_ _rest57597_)
                 (_else5760357617_ (lambda () _lst57591_))
                 (_K5760557624_
                  (lambda (_rest57620_ _hd57621_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57589_ _hd57621_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57620_ _r57599_))
                        (let ((__tmp64229
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57621_ _r57599_))))
                          (declare (not safe))
                          (_lp57594_ _rest57620_ __tmp64229))))))
            (if (let () (declare (not safe)) (##pair? _rest5760157609_))
                (let ((_hd5760657627_
                       (let () (declare (not safe)) (##car _rest5760157609_)))
                      (_tl5760757629_
                       (let () (declare (not safe)) (##cdr _rest5760157609_))))
                  (let* ((_hd57632_ _hd5760657627_)
                         (_rest57634_ _tl5760757629_))
                    (declare (not safe))
                    (_K5760557624_ _rest57634_ _hd57632_)))
                (let () (declare (not safe)) (_else5760357617_)))))))
    (define remv
      (lambda (_el57542_ _lst57544_)
        (let _lp57547_ ((_rest57550_ _lst57544_) (_r57552_ '()))
          (let* ((_rest5755457562_ _rest57550_)
                 (_else5755657570_ (lambda () _lst57544_))
                 (_K5755857577_
                  (lambda (_rest57573_ _hd57574_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57542_ _hd57574_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57573_ _r57552_))
                        (let ((__tmp64230
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57574_ _r57552_))))
                          (declare (not safe))
                          (_lp57547_ _rest57573_ __tmp64230))))))
            (if (let () (declare (not safe)) (##pair? _rest5755457562_))
                (let ((_hd5755957580_
                       (let () (declare (not safe)) (##car _rest5755457562_)))
                      (_tl5756057582_
                       (let () (declare (not safe)) (##cdr _rest5755457562_))))
                  (let* ((_hd57585_ _hd5755957580_)
                         (_rest57587_ _tl5756057582_))
                    (declare (not safe))
                    (_K5755857577_ _rest57587_ _hd57585_)))
                (let () (declare (not safe)) (_else5755657570_)))))))
    (define remq
      (lambda (_el57495_ _lst57497_)
        (let _lp57500_ ((_rest57503_ _lst57497_) (_r57505_ '()))
          (let* ((_rest5750757515_ _rest57503_)
                 (_else5750957523_ (lambda () _lst57497_))
                 (_K5751157530_
                  (lambda (_rest57526_ _hd57527_)
                    (if (let () (declare (not safe)) (eq? _el57495_ _hd57527_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57526_ _r57505_))
                        (let ((__tmp64231
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57527_ _r57505_))))
                          (declare (not safe))
                          (_lp57500_ _rest57526_ __tmp64231))))))
            (if (let () (declare (not safe)) (##pair? _rest5750757515_))
                (let ((_hd5751257533_
                       (let () (declare (not safe)) (##car _rest5750757515_)))
                      (_tl5751357535_
                       (let () (declare (not safe)) (##cdr _rest5750757515_))))
                  (let* ((_hd57538_ _hd5751257533_)
                         (_rest57540_ _tl5751357535_))
                    (declare (not safe))
                    (_K5751157530_ _rest57540_ _hd57538_)))
                (let () (declare (not safe)) (_else5750957523_)))))))
    (define remf
      (lambda (_proc57454_ _lst57455_)
        (let _lp57457_ ((_rest57459_ _lst57455_) (_r57460_ '()))
          (let* ((_rest5746157469_ _rest57459_)
                 (_else5746357477_ (lambda () _lst57455_))
                 (_K5746557483_
                  (lambda (_rest57480_ _hd57481_)
                    (if (_proc57454_ _hd57481_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57480_ _r57460_))
                        (let ((__tmp64232
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57481_ _r57460_))))
                          (declare (not safe))
                          (_lp57457_ _rest57480_ __tmp64232))))))
            (if (let () (declare (not safe)) (##pair? _rest5746157469_))
                (let ((_hd5746657486_
                       (let () (declare (not safe)) (##car _rest5746157469_)))
                      (_tl5746757488_
                       (let () (declare (not safe)) (##cdr _rest5746157469_))))
                  (let* ((_hd57491_ _hd5746657486_)
                         (_rest57493_ _tl5746757488_))
                    (declare (not safe))
                    (_K5746557483_ _rest57493_ _hd57491_)))
                (let () (declare (not safe)) (_else5746357477_)))))))
    (define 1+ (lambda (_x57452_) (+ _x57452_ '1)))
    (define 1- (lambda (_x57450_) (- _x57450_ '1)))
    (define fx1+ (lambda (_x57448_) (fx+ _x57448_ '1)))
    (define fx1- (lambda (_x57446_) (fx- _x57446_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57444_)
        (if (fixnum? _x57444_)
            (let () (declare (not safe)) (##fx>= _x57444_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57442_)
        (if (fixnum? _x57442_)
            (let () (declare (not safe)) (##fx> _x57442_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57440_) (let () (declare (not safe)) (eq? _x57440_ '0))))
    (define fx<0?
      (lambda (_x57438_)
        (if (fixnum? _x57438_)
            (let () (declare (not safe)) (##fx< _x57438_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57436_)
        (if (fixnum? _x57436_)
            (let () (declare (not safe)) (##fx<= _x57436_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57434_)
        (if (let () (declare (not safe)) (symbol? _x57434_))
            (let ((__tmp64233 (uninterned-symbol? _x57434_)))
              (declare (not safe))
              (not __tmp64233))
            '#f)))
    (define display-as-string
      (lambda (_x57406_ _port57407_)
        (if (or (let () (declare (not safe)) (string? _x57406_))
                (let () (declare (not safe)) (symbol? _x57406_))
                (keyword? _x57406_)
                (let () (declare (not safe)) (number? _x57406_))
                (let () (declare (not safe)) (char? _x57406_)))
            (display _x57406_ _port57407_)
            (if (let () (declare (not safe)) (pair? _x57406_))
                (begin
                  (let ((__tmp64234 (car _x57406_)))
                    (declare (not safe))
                    (display-as-string __tmp64234 _port57407_))
                  (let ((__tmp64235 (cdr _x57406_)))
                    (declare (not safe))
                    (display-as-string __tmp64235 _port57407_)))
                (if (let () (declare (not safe)) (vector? _x57406_))
                    (vector-for-each
                     (lambda (_g5742057422_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5742057422_ _port57407_)))
                     _x57406_)
                    (if (or (let () (declare (not safe)) (null? _x57406_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57406_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57406_))
                            (let () (declare (not safe)) (boolean? _x57406_)))
                        '#!void
                        (error '"cannot convert as string" _x57406_)))))))
    (define as-string__0
      (lambda (_x57394_)
        (if (let () (declare (not safe)) (string? _x57394_))
            _x57394_
            (if (let () (declare (not safe)) (symbol? _x57394_))
                (symbol->string _x57394_)
                (if (keyword? _x57394_)
                    (keyword->string _x57394_)
                    (call-with-output-string
                     '()
                     (lambda (_g5739557397_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57394_ _g5739557397_)))))))))
    (define as-string__1
      (lambda _args57400_
        (call-with-output-string
         '()
         (lambda (_g5740157403_)
           (let ()
             (declare (not safe))
             (display-as-string _args57400_ _g5740157403_))))))
    (define as-string
      (lambda _g64237_
        (let ((_g64236_ (let () (declare (not safe)) (##length _g64237_))))
          (cond ((let () (declare (not safe)) (##fx= _g64236_ 1))
                 (apply (lambda (_x57394_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57394_)))
                        _g64237_))
                (#t (apply as-string__1 _g64237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g64237_))))))
    (define make-symbol__0
      (lambda (_x57390_)
        (if (interned-symbol? _x57390_)
            _x57390_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57390_))))))
    (define make-symbol__1
      (lambda _args57392_ (string->symbol (apply as-string _args57392_))))
    (define make-symbol
      (lambda _g64239_
        (let ((_g64238_ (let () (declare (not safe)) (##length _g64239_))))
          (cond ((let () (declare (not safe)) (##fx= _g64238_ 1))
                 (apply (lambda (_x57390_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57390_)))
                        _g64239_))
                (#t (apply make-symbol__1 _g64239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g64239_))))))
    (define make-keyword__0
      (lambda (_x57386_)
        (if (interned-keyword? _x57386_)
            _x57386_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57386_))))))
    (define make-keyword__1
      (lambda _args57388_ (string->keyword (apply as-string _args57388_))))
    (define make-keyword
      (lambda _g64241_
        (let ((_g64240_ (let () (declare (not safe)) (##length _g64241_))))
          (cond ((let () (declare (not safe)) (##fx= _g64240_ 1))
                 (apply (lambda (_x57386_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57386_)))
                        _g64241_))
                (#t (apply make-keyword__1 _g64241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g64241_))))))
    (define interned-keyword?
      (lambda (_x57384_)
        (if (keyword? _x57384_)
            (let ((__tmp64242 (uninterned-keyword? _x57384_)))
              (declare (not safe))
              (not __tmp64242))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57382_)
        ((if (uninterned-symbol? _sym57382_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57382_))))
    (define keyword->symbol
      (lambda (_kw57380_)
        ((if (uninterned-keyword? _kw57380_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57380_))))
    (define bytes->string__%
      (lambda (_bstr57358_ _enc57359_)
        (if (let () (declare (not safe)) (eq? _enc57359_ 'UTF-8))
            (utf8->string _bstr57358_)
            (let* ((_in57361_
                    (open-input-u8vector
                     (let ((__tmp64243
                            (let ((__tmp64244
                                   (let ((__tmp64245
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57358_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp64245))))
                              (declare (not safe))
                              (cons _enc57359_ __tmp64244))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp64243))))
                   (_len57363_ (u8vector-length _bstr57358_))
                   (_out57365_ (make-string _len57363_))
                   (_n57367_
                    (read-substring _out57365_ '0 _len57363_ _in57361_)))
              (string-shrink! _out57365_ _n57367_)
              _out57365_))))
    (define bytes->string__0
      (lambda (_bstr57373_)
        (let ((_enc57375_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57373_ _enc57375_))))
    (define bytes->string
      (lambda _g64247_
        (let ((_g64246_ (let () (declare (not safe)) (##length _g64247_))))
          (cond ((let () (declare (not safe)) (##fx= _g64246_ 1))
                 (apply (lambda (_bstr57373_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57373_)))
                        _g64247_))
                ((let () (declare (not safe)) (##fx= _g64246_ 2))
                 (apply (lambda (_bstr57377_ _enc57378_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57377_ _enc57378_)))
                        _g64247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g64247_))))))
    (define string->bytes__%
      (lambda (_str57344_ _enc57345_)
        (if (let () (declare (not safe)) (eq? _enc57345_ 'UTF-8))
            (string->utf8 _str57344_)
            (substring->bytes
             _str57344_
             '0
             (string-length _str57344_)
             _enc57345_))))
    (define string->bytes__0
      (lambda (_str57350_)
        (let ((_enc57352_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57350_ _enc57352_))))
    (define string->bytes
      (lambda _g64249_
        (let ((_g64248_ (let () (declare (not safe)) (##length _g64249_))))
          (cond ((let () (declare (not safe)) (##fx= _g64248_ 1))
                 (apply (lambda (_str57350_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57350_)))
                        _g64249_))
                ((let () (declare (not safe)) (##fx= _g64248_ 2))
                 (apply (lambda (_str57354_ _enc57355_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57354_ _enc57355_)))
                        _g64249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g64249_))))))
    (define substring->bytes__%
      (lambda (_str57322_ _start57323_ _end57324_ _enc57325_)
        (if (let () (declare (not safe)) (eq? _enc57325_ 'UTF-8))
            (string->utf8 _str57322_ _start57323_ _end57324_)
            (let ((_out57327_
                   (open-output-u8vector
                    (let ((__tmp64250
                           (let ()
                             (declare (not safe))
                             (cons _enc57325_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp64250)))))
              (write-substring _str57322_ _start57323_ _end57324_ _out57327_)
              (get-output-u8vector _out57327_)))))
    (define substring->bytes__0
      (lambda (_str57332_ _start57333_ _end57334_)
        (let ((_enc57336_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str57332_
           _start57333_
           _end57334_
           _enc57336_))))
    (define substring->bytes
      (lambda _g64252_
        (let ((_g64251_ (let () (declare (not safe)) (##length _g64252_))))
          (cond ((let () (declare (not safe)) (##fx= _g64251_ 3))
                 (apply (lambda (_str57332_ _start57333_ _end57334_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str57332_
                             _start57333_
                             _end57334_)))
                        _g64252_))
                ((let () (declare (not safe)) (##fx= _g64251_ 4))
                 (apply (lambda (_str57338_ _start57339_ _end57340_ _enc57341_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57338_
                             _start57339_
                             _end57340_
                             _enc57341_)))
                        _g64252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g64252_))))))
    (define string-empty?
      (lambda (_str57319_)
        (let ((__tmp64253 (string-length _str57319_)))
          (declare (not safe))
          (##fxzero? __tmp64253))))
    (define string-prefix?
      (lambda (_prefix57309_ _str57310_)
        (let ((_str-len57312_ (string-length _str57310_))
              (_prefix-len57313_ (string-length _prefix57309_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len57313_ _str-len57312_))
              (let _lp57315_ ((_i57317_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i57317_ _prefix-len57313_))
                    (if (let ((__tmp64256
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str57310_ _i57317_)))
                              (__tmp64255
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix57309_ _i57317_))))
                          (declare (not safe))
                          (eq? __tmp64256 __tmp64255))
                        (let ((__tmp64254
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i57317_ '1))))
                          (declare (not safe))
                          (_lp57315_ __tmp64254))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str57287_ _char57288_ _start57289_)
        (let ((_len57291_ (string-length _str57287_)))
          (let _lp57293_ ((_k57295_ _start57289_))
            (if (let () (declare (not safe)) (##fx< _k57295_ _len57291_))
                (if (let ((__tmp64258
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57287_ _k57295_))))
                      (declare (not safe))
                      (eq? _char57288_ __tmp64258))
                    _k57295_
                    (let ((__tmp64257
                           (let () (declare (not safe)) (##fx+ _k57295_ '1))))
                      (declare (not safe))
                      (_lp57293_ __tmp64257)))
                '#f)))))
    (define string-index__0
      (lambda (_str57300_ _char57301_)
        (let ((_start57303_ '0))
          (declare (not safe))
          (string-index__% _str57300_ _char57301_ _start57303_))))
    (define string-index
      (lambda _g64260_
        (let ((_g64259_ (let () (declare (not safe)) (##length _g64260_))))
          (cond ((let () (declare (not safe)) (##fx= _g64259_ 2))
                 (apply (lambda (_str57300_ _char57301_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str57300_ _char57301_)))
                        _g64260_))
                ((let () (declare (not safe)) (##fx= _g64259_ 3))
                 (apply (lambda (_str57305_ _char57306_ _start57307_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str57305_
                             _char57306_
                             _start57307_)))
                        _g64260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g64260_))))))
    (define string-rindex__%
      (lambda (_str57258_ _char57259_ _start57260_)
        (let* ((_len57262_ (string-length _str57258_))
               (_start57267_
                (let ((_$e57264_ _start57260_))
                  (if _$e57264_
                      _$e57264_
                      (let () (declare (not safe)) (##fx- _len57262_ '1))))))
          (let _lp57270_ ((_k57272_ _start57267_))
            (if (let () (declare (not safe)) (##fx>= _k57272_ '0))
                (if (let ((__tmp64262
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57258_ _k57272_))))
                      (declare (not safe))
                      (eq? _char57259_ __tmp64262))
                    _k57272_
                    (let ((__tmp64261
                           (let () (declare (not safe)) (##fx- _k57272_ '1))))
                      (declare (not safe))
                      (_lp57270_ __tmp64261)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str57277_ _char57278_)
        (let ((_start57280_ '#f))
          (declare (not safe))
          (string-rindex__% _str57277_ _char57278_ _start57280_))))
    (define string-rindex
      (lambda _g64264_
        (let ((_g64263_ (let () (declare (not safe)) (##length _g64264_))))
          (cond ((let () (declare (not safe)) (##fx= _g64263_ 2))
                 (apply (lambda (_str57277_ _char57278_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str57277_ _char57278_)))
                        _g64264_))
                ((let () (declare (not safe)) (##fx= _g64263_ 3))
                 (apply (lambda (_str57282_ _char57283_ _start57284_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str57282_
                             _char57283_
                             _start57284_)))
                        _g64264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g64264_))))))
    (define string-split
      (lambda (_str57242_ _char57243_)
        (let ((_len57245_ (string-length _str57242_)))
          (let _lp57247_ ((_start57249_ '0) (_r57250_ '()))
            (let ((_$e57252_
                   (let ()
                     (declare (not safe))
                     (string-index _str57242_ _char57243_ _start57249_))))
              (if _$e57252_
                  ((lambda (_end57255_)
                     (let ((__tmp64268
                            (let ()
                              (declare (not safe))
                              (##fx+ _end57255_ '1)))
                           (__tmp64266
                            (let ((__tmp64267
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57242_
                                      _start57249_
                                      _end57255_))))
                              (declare (not safe))
                              (cons __tmp64267 _r57250_))))
                       (declare (not safe))
                       (_lp57247_ __tmp64268 __tmp64266)))
                   _$e57252_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start57249_ _len57245_))
                      (let ((__tmp64265
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57242_
                                      _start57249_
                                      _len57245_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp64265 _r57250_))
                      (reverse _r57250_))))))))
    (define string-join
      (lambda (_strs57147_ _join57148_)
        (letrec ((_join-length57150_
                  (lambda (_strs57201_ _jlen57202_)
                    (let _lp57204_ ((_rest57206_ _strs57201_) (_len57207_ '0))
                      (let* ((_rest5720857216_ _rest57206_)
                             (_else5721057224_ (lambda () '0))
                             (_K5721257230_
                              (lambda (_rest57227_ _hd57228_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd57228_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest57227_))
                                        (let ((__tmp64270
                                               (let ((__tmp64271
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd57228_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp64271
                                                        _jlen57202_
                                                        _len57207_))))
                                          (declare (not safe))
                                          (_lp57204_ _rest57227_ __tmp64270))
                                        (let ((__tmp64269
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd57228_))))
                                          (declare (not safe))
                                          (##fx+ __tmp64269 _len57207_)))
                                    (error '"expected string" _hd57228_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5720857216_))
                            (let ((_hd5721357233_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5720857216_)))
                                  (_tl5721457235_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5720857216_))))
                              (let* ((_hd57238_ _hd5721357233_)
                                     (_rest57240_ _tl5721457235_))
                                (declare (not safe))
                                (_K5721257230_ _rest57240_ _hd57238_)))
                            (let ()
                              (declare (not safe))
                              (_else5721057224_))))))))
          (let* ((_join57152_
                  (if (let () (declare (not safe)) (char? _join57148_))
                      (string _join57148_)
                      (if (let () (declare (not safe)) (string? _join57148_))
                          _join57148_
                          (error '"expected string or char" _join57148_))))
                 (_jlen57154_
                  (let () (declare (not safe)) (##string-length _join57152_)))
                 (_olen57156_
                  (let ()
                    (declare (not safe))
                    (_join-length57150_ _strs57147_ _jlen57154_)))
                 (_ostr57158_ (make-string _olen57156_)))
            (let _lp57161_ ((_rest57163_ _strs57147_) (_k57164_ '0))
              (let* ((_rest5716557173_ _rest57163_)
                     (_else5716757181_ (lambda () '""))
                     (_K5716957189_
                      (lambda (_rest57184_ _hd57185_)
                        (let ((_hdlen57187_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd57185_))))
                          (if (let () (declare (not safe)) (pair? _rest57184_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57185_
                                   '0
                                   _hdlen57187_
                                   _ostr57158_
                                   _k57164_))
                                (let ((__tmp64272
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57164_ _hdlen57187_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join57152_
                                   '0
                                   _jlen57154_
                                   _ostr57158_
                                   __tmp64272))
                                (let ((__tmp64273
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57164_
                                                _hdlen57187_
                                                _jlen57154_))))
                                  (declare (not safe))
                                  (_lp57161_ _rest57184_ __tmp64273)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57185_
                                   '0
                                   _hdlen57187_
                                   _ostr57158_
                                   _k57164_))
                                _ostr57158_))))))
                (if (let () (declare (not safe)) (##pair? _rest5716557173_))
                    (let ((_hd5717057192_
                           (let ()
                             (declare (not safe))
                             (##car _rest5716557173_)))
                          (_tl5717157194_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5716557173_))))
                      (let* ((_hd57197_ _hd5717057192_)
                             (_rest57199_ _tl5717157194_))
                        (declare (not safe))
                        (_K5716957189_ _rest57199_ _hd57197_)))
                    (let () (declare (not safe)) (_else5716757181_)))))))))
    (define read-u8vector
      (lambda (_bytes57144_ _port57145_)
        (read-subu8vector
         _bytes57144_
         '0
         (u8vector-length _bytes57144_)
         _port57145_)))
    (define write-u8vector
      (lambda (_bytes57141_ _port57142_)
        (write-subu8vector
         _bytes57141_
         '0
         (u8vector-length _bytes57141_)
         _port57142_)))
    (define read-string
      (lambda (_str57138_ _port57139_)
        (read-substring _str57138_ '0 (string-length _str57138_) _port57139_)))
    (define write-string
      (lambda (_str57135_ _port57136_)
        (write-substring
         _str57135_
         '0
         (string-length _str57135_)
         _port57136_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag57104_
               _dbg-exprs57105_
               _dbg-thunks57106_
               _expr57107_
               _thunk57108_)
        (letrec ((_o57110_ (current-output-port))
                 (_e57111_ (current-error-port))
                 (_p57112_ (DBG-printer))
                 (_f57113_
                  (lambda () (force-output _o57110_) (force-output _e57111_)))
                 (_d57114_ (lambda (_x57121_) (display _x57121_ _e57111_)))
                 (_w57115_ (lambda (_x57123_) (_p57112_ _x57123_ _e57111_)))
                 (_n57116_ (lambda () (newline _e57111_)))
                 (_v57117_
                  (lambda (_l57126_)
                    (for-each
                     (lambda (_x57128_)
                       (let () (declare (not safe)) (_d57114_ '" "))
                       (let () (declare (not safe)) (_w57115_ _x57128_)))
                     _l57126_)
                    (let () (declare (not safe)) (_n57116_))))
                 (_x57118_
                  (lambda (_expr57130_ _thunk57131_)
                    (let () (declare (not safe)) (_f57113_))
                    (let () (declare (not safe)) (_d57114_ '"  "))
                    (let () (declare (not safe)) (_w57115_ _expr57130_))
                    (let () (declare (not safe)) (_d57114_ '" =>"))
                    (call-with-values
                     _thunk57131_
                     (lambda _x57133_
                       (let () (declare (not safe)) (_v57117_ _x57133_))
                       (let () (declare (not safe)) (_f57113_))
                       (apply values _x57133_))))))
          (if _tag57104_
              (begin
                (if (let () (declare (not safe)) (eq? _tag57104_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f57113_))
                      (let () (declare (not safe)) (_d57114_ _tag57104_))
                      (let () (declare (not safe)) (_n57116_))))
                (for-each _x57118_ _dbg-exprs57105_ _dbg-thunks57106_)
                (if _thunk57108_
                    (let ()
                      (declare (not safe))
                      (_x57118_ _expr57107_ _thunk57108_))
                    '#!void))
              (if _thunk57108_ (_thunk57108_) '#!void)))))))
