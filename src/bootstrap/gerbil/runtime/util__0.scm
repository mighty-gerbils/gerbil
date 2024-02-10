(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707601714)
  (begin
    (define displayln
      (lambda _args59239_
        (let _lp59241_ ((_rest59243_ _args59239_))
          (let* ((_rest5924459252_ _rest59243_)
                 (_else5924659260_ (lambda () (newline)))
                 (_K5924859266_
                  (lambda (_rest59263_ _hd59264_)
                    (display _hd59264_)
                    (let () (declare (not safe)) (_lp59241_ _rest59263_)))))
            (if (let () (declare (not safe)) (##pair? _rest5924459252_))
                (let ((_hd5924959269_
                       (let () (declare (not safe)) (##car _rest5924459252_)))
                      (_tl5925059271_
                       (let () (declare (not safe)) (##cdr _rest5924459252_))))
                  (let* ((_hd59274_ _hd5924959269_)
                         (_rest59276_ _tl5925059271_))
                    (declare (not safe))
                    (_K5924859266_ _rest59276_ _hd59274_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args59237_ (for-each display _args59237_)))
    (define file-newer?
      (lambda (_file159230_ _file259231_)
        (letrec ((_modification-time59233_
                  (lambda (_file59235_)
                    (let ((__tmp64139
                           (file-info-last-modification-time
                            (file-info _file59235_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp64139)))))
          (let ((__tmp64141
                 (let ()
                   (declare (not safe))
                   (_modification-time59233_ _file159230_)))
                (__tmp64140
                 (let ()
                   (declare (not safe))
                   (_modification-time59233_ _file259231_))))
            (declare (not safe))
            (##fl> __tmp64141 __tmp64140)))))
    (define create-directory*__%
      (lambda (_dir59204_ _perms59205_)
        (letrec ((_create159207_
                  (lambda (_path59218_)
                    (if (file-exists? _path59218_)
                        (if (let ((__tmp64142 (file-type _path59218_)))
                              (declare (not safe))
                              (eq? __tmp64142 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path59218_))
                        (if _perms59205_
                            (create-directory
                             (list 'path:
                                   _path59218_
                                   'permissions:
                                   _perms59205_))
                            (create-directory _path59218_))))))
          (if (file-exists? _dir59204_)
              '#!void
              (let _lp59209_ ((_start59211_ '0))
                (let ((_$e59213_
                       (let ()
                         (declare (not safe))
                         (string-index _dir59204_ '#\/ _start59211_))))
                  (if _$e59213_
                      ((lambda (_x59216_)
                         (if (let () (declare (not safe)) (##fx> _x59216_ '0))
                             (let ((__tmp64143
                                    (substring _dir59204_ '0 _x59216_)))
                               (declare (not safe))
                               (_create159207_ __tmp64143))
                             '#!void)
                         (let ((__tmp64144
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x59216_ '1))))
                           (declare (not safe))
                           (_lp59209_ __tmp64144)))
                       _$e59213_)
                      (let ()
                        (declare (not safe))
                        (_create159207_ _dir59204_)))))))))
    (define create-directory*__0
      (lambda (_dir59223_)
        (let ((_perms59225_ '493))
          (declare (not safe))
          (create-directory*__% _dir59223_ _perms59225_))))
    (define create-directory*
      (lambda _g64146_
        (let ((_g64145_ (let () (declare (not safe)) (##length _g64146_))))
          (cond ((let () (declare (not safe)) (##fx= _g64145_ 1))
                 (apply (lambda (_dir59223_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir59223_)))
                        _g64146_))
                ((let () (declare (not safe)) (##fx= _g64145_ 2))
                 (apply (lambda (_dir59227_ _perms59228_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir59227_ _perms59228_)))
                        _g64146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g64146_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g64147_ '#t))
    (define true?
      (lambda (_obj59200_) (let () (declare (not safe)) (eq? _obj59200_ '#t))))
    (define false (lambda _g64148_ '#f))
    (define void (lambda _g64149_ '#!void))
    (define void?
      (lambda (_obj59196_)
        (let () (declare (not safe)) (eq? _obj59196_ '#!void))))
    (define eof-object (lambda _g64150_ '#!eof))
    (define identity (lambda (_obj59193_) _obj59193_))
    (define dssl-object?
      (lambda (_obj59191_)
        (if (memq _obj59191_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj59189_)
        (let () (declare (not safe)) (eq? _obj59189_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj59187_)
        (let () (declare (not safe)) (eq? _obj59187_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj59185_)
        (let () (declare (not safe)) (eq? _obj59185_ '#!optional))))
    (define immediate?
      (lambda (_obj59181_)
        (let* ((_t59183_ (let () (declare (not safe)) (##type _obj59181_)))
               (__tmp64151
                (let () (declare (not safe)) (##fxand _t59183_ '1))))
          (declare (not safe))
          (##fxzero? __tmp64151))))
    (define nonnegative-fixnum?
      (lambda (_obj59179_)
        (if (fixnum? _obj59179_)
            (let ((__tmp64152 (fxnegative? _obj59179_)))
              (declare (not safe))
              (not __tmp64152))
            '#f)))
    (define values-count
      (lambda (_obj59177_)
        (if (let () (declare (not safe)) (##values? _obj59177_))
            (let () (declare (not safe)) (##vector-length _obj59177_))
            '1)))
    (define values-ref
      (lambda (_obj59174_ _k59175_)
        (if (let () (declare (not safe)) (##values? _obj59174_))
            (let () (declare (not safe)) (##vector-ref _obj59174_ _k59175_))
            _obj59174_)))
    (define values->list
      (lambda (_obj59172_)
        (if (let () (declare (not safe)) (##values? _obj59172_))
            (let () (declare (not safe)) (##vector->list _obj59172_))
            (list _obj59172_))))
    (define subvector->list__%
      (lambda (_obj59157_ _start59158_)
        (let ((_lst59160_
               (let () (declare (not safe)) (##vector->list _obj59157_))))
          (list-tail _lst59160_ _start59158_))))
    (define subvector->list__0
      (lambda (_obj59165_)
        (let ((_start59167_ '0))
          (declare (not safe))
          (subvector->list__% _obj59165_ _start59167_))))
    (define subvector->list
      (lambda _g64154_
        (let ((_g64153_ (let () (declare (not safe)) (##length _g64154_))))
          (cond ((let () (declare (not safe)) (##fx= _g64153_ 1))
                 (apply (lambda (_obj59165_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj59165_)))
                        _g64154_))
                ((let () (declare (not safe)) (##fx= _g64153_ 2))
                 (apply (lambda (_obj59169_ _start59170_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj59169_ _start59170_)))
                        _g64154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g64154_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args59154_ (apply make-table 'test: eq? _args59154_)))
    (define make-hash-table-eqv
      (lambda _args59152_ (apply make-table 'test: eqv? _args59152_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst59149_ . _args59150_)
        (apply list->table _lst59149_ 'test: eq? _args59150_)))
    (define list->hash-table-eqv
      (lambda (_lst59146_ . _args59147_)
        (apply list->table _lst59146_ 'test: eqv? _args59147_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht59143_ _k59144_) (table-ref _ht59143_ _k59144_ '#f)))
    (define hash-put!
      (lambda (_ht59139_ _k59140_ _v59141_)
        (table-set! _ht59139_ _k59140_ _v59141_)))
    (define hash-update!__%
      (lambda (_ht59118_ _k59119_ _update59120_ _default59121_)
        (let* ((_value59123_
                (let ()
                  (declare (not safe))
                  (table-ref _ht59118_ _k59119_ _default59121_)))
               (__tmp64155 (_update59120_ _value59123_)))
          (declare (not safe))
          (table-set! _ht59118_ _k59119_ __tmp64155))))
    (define hash-update!__0
      (lambda (_ht59128_ _k59129_ _update59130_)
        (let ((_default59132_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht59128_ _k59129_ _update59130_ _default59132_))))
    (define hash-update!
      (lambda _g64157_
        (let ((_g64156_ (let () (declare (not safe)) (##length _g64157_))))
          (cond ((let () (declare (not safe)) (##fx= _g64156_ 3))
                 (apply (lambda (_ht59128_ _k59129_ _update59130_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht59128_
                             _k59129_
                             _update59130_)))
                        _g64157_))
                ((let () (declare (not safe)) (##fx= _g64156_ 4))
                 (apply (lambda (_ht59134_
                                 _k59135_
                                 _update59136_
                                 _default59137_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht59134_
                             _k59135_
                             _update59136_
                             _default59137_)))
                        _g64157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g64157_))))))
    (define hash-remove!
      (lambda (_ht59114_ _k59115_) (table-set! _ht59114_ _k59115_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht59112_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht59112_))))
    (define plist->hash-table__%
      (lambda (_plst59047_ _ht59048_)
        (let _lp59050_ ((_rest59052_ _plst59047_))
          (let* ((_rest5905359064_ _rest59052_)
                 (_E5905659068_
                  (lambda () (error '"No clause matching" _rest5905359064_))))
            (let ((_K5905859083_
                   (lambda (_rest59079_ _v59080_ _k59081_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht59048_ _k59081_ _v59080_))
                     (let () (declare (not safe)) (_lp59050_ _rest59079_))))
                  (_K5905759073_ (lambda () _ht59048_)))
              (let ((_try-match5905559076_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5905359064_ '()))
                           (let () (declare (not safe)) (_K5905759073_))
                           (let () (declare (not safe)) (_E5905659068_))))))
                (if (let () (declare (not safe)) (##pair? _rest5905359064_))
                    (let ((_tl5906059088_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5905359064_)))
                          (_hd5905959086_
                           (let ()
                             (declare (not safe))
                             (##car _rest5905359064_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5906059088_))
                          (let ((_tl5906259095_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5906059088_)))
                                (_hd5906159093_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5906059088_))))
                            (let ((_k59091_ _hd5905959086_)
                                  (_v59098_ _hd5906159093_)
                                  (_rest59100_ _tl5906259095_))
                              (let ()
                                (declare (not safe))
                                (_K5905859083_
                                 _rest59100_
                                 _v59098_
                                 _k59091_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5905559076_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5905559076_)))))))))
    (define plist->hash-table__0
      (lambda (_plst59105_)
        (let ((_ht59107_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst59105_ _ht59107_))))
    (define plist->hash-table
      (lambda _g64159_
        (let ((_g64158_ (let () (declare (not safe)) (##length _g64159_))))
          (cond ((let () (declare (not safe)) (##fx= _g64158_ 1))
                 (apply (lambda (_plst59105_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst59105_)))
                        _g64159_))
                ((let () (declare (not safe)) (##fx= _g64158_ 2))
                 (apply (lambda (_plst59109_ _ht59110_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst59109_ _ht59110_)))
                        _g64159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g64159_))))))
    (define plist->hash-table-eq
      (lambda (_plst59044_)
        (let ((__tmp64160
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst59044_ __tmp64160))))
    (define plist->hash-table-eqv
      (lambda (_plst59042_)
        (let ((__tmp64161
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst59042_ __tmp64161))))
    (define hash-key?
      (lambda (_ht59039_ _k59040_)
        (let ((__tmp64162
               (let ((__tmp64163
                      (let ()
                        (declare (not safe))
                        (table-ref _ht59039_ _k59040_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp64163 absent-value))))
          (declare (not safe))
          (not __tmp64162))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun59032_ _ht59033_)
        (let ((__tmp64164
               (lambda (_k59035_ _v59036_ _r59037_)
                 (let ((__tmp64165 (_fun59032_ _k59035_ _v59036_)))
                   (declare (not safe))
                   (cons __tmp64165 _r59037_)))))
          (declare (not safe))
          (hash-fold __tmp64164 '() _ht59033_))))
    (define hash-fold
      (lambda (_fun59023_ _iv59024_ _ht59025_)
        (let ((_ret59027_ _iv59024_))
          (let ((__tmp64166
                 (lambda (_k59029_ _v59030_)
                   (set! _ret59027_
                         (_fun59023_ _k59029_ _v59030_ _ret59027_)))))
            (declare (not safe))
            (table-for-each __tmp64166 _ht59025_))
          _ret59027_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht59018_)
        (let ((__tmp64167 (lambda (_k59020_ _v59021_) _k59020_)))
          (declare (not safe))
          (hash-map __tmp64167 _ht59018_))))
    (define hash-values
      (lambda (_ht59013_)
        (let ((__tmp64168 (lambda (_k59015_ _v59016_) _v59016_)))
          (declare (not safe))
          (hash-map __tmp64168 _ht59013_))))
    (define hash-copy
      (lambda (_hd59008_ . _rest59009_)
        (let ((_hd59011_ (table-copy _hd59008_)))
          (if (let () (declare (not safe)) (null? _rest59009_))
              _hd59011_
              (apply hash-copy! _hd59011_ _rest59009_)))))
    (define hash-copy!
      (lambda (_hd59003_ . _rest59004_)
        (for-each
         (lambda (_r59006_) (table-merge! _hd59003_ _r59006_))
         _rest59004_)
        _hd59003_))
    (define hash-merge
      (lambda (_hd58997_ . _rest58998_)
        (let ((__tmp64169
               (lambda (_tab59000_ _r59001_)
                 (table-merge _r59001_ _tab59000_))))
          (declare (not safe))
          (foldl1 __tmp64169 _hd58997_ _rest58998_))))
    (define hash-merge!
      (lambda (_hd58991_ . _rest58992_)
        (let ((__tmp64170
               (lambda (_tab58994_ _r58995_)
                 (table-merge! _r58995_ _tab58994_))))
          (declare (not safe))
          (foldl1 __tmp64170 _hd58991_ _rest58992_))))
    (define hash-clear!__%
      (lambda (_ht58976_ _size58977_)
        (let ((_gcht58979_
               (let () (declare (not safe)) (##vector-ref _ht58976_ '5))))
          (if (let ((__tmp64171 (fixnum? _gcht58979_)))
                (declare (not safe))
                (not __tmp64171))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58976_ '5 _size58977_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58984_)
        (let ((_size58986_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58984_ _size58986_))))
    (define hash-clear!
      (lambda _g64173_
        (let ((_g64172_ (let () (declare (not safe)) (##length _g64173_))))
          (cond ((let () (declare (not safe)) (##fx= _g64172_ 1))
                 (apply (lambda (_ht58984_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58984_)))
                        _g64173_))
                ((let () (declare (not safe)) (##fx= _g64172_ 2))
                 (apply (lambda (_ht58988_ _size58989_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58988_ _size58989_)))
                        _g64173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g64173_))))))
    (define make-list__%
      (lambda (_k58957_ _val58958_)
        (if (fixnum? _k58957_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58957_))
        (let _lp58960_ ((_n58962_ '0) (_r58963_ '()))
          (if (let () (declare (not safe)) (##fx< _n58962_ _k58957_))
              (let ((__tmp64175
                     (let () (declare (not safe)) (##fx+ _n58962_ '1)))
                    (__tmp64174
                     (let () (declare (not safe)) (cons _val58958_ _r58963_))))
                (declare (not safe))
                (_lp58960_ __tmp64175 __tmp64174))
              _r58963_))))
    (define make-list__0
      (lambda (_k58968_)
        (let ((_val58970_ '#f))
          (declare (not safe))
          (make-list__% _k58968_ _val58970_))))
    (define make-list
      (lambda _g64177_
        (let ((_g64176_ (let () (declare (not safe)) (##length _g64177_))))
          (cond ((let () (declare (not safe)) (##fx= _g64176_ 1))
                 (apply (lambda (_k58968_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58968_)))
                        _g64177_))
                ((let () (declare (not safe)) (##fx= _g64176_ 2))
                 (apply (lambda (_k58972_ _val58973_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58972_ _val58973_)))
                        _g64177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g64177_))))))
    (define cons*
      (lambda (_x58947_ _y58948_ . _rest58949_)
        (letrec ((_recur58951_
                  (lambda (_x58953_ _rest58954_)
                    (if (let () (declare (not safe)) (pair? _rest58954_))
                        (let ((__tmp64178
                               (let ((__tmp64180
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58954_)))
                                     (__tmp64179
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58954_))))
                                 (declare (not safe))
                                 (_recur58951_ __tmp64180 __tmp64179))))
                          (declare (not safe))
                          (cons _x58953_ __tmp64178))
                        _x58953_))))
          (let ((__tmp64181
                 (let ()
                   (declare (not safe))
                   (_recur58951_ _y58948_ _rest58949_))))
            (declare (not safe))
            (cons _x58947_ __tmp64181)))))
    (define foldl1
      (lambda (_f58905_ _iv58906_ _lst58907_)
        (let _lp58909_ ((_rest58911_ _lst58907_) (_r58912_ _iv58906_))
          (let* ((_rest5891358921_ _rest58911_)
                 (_else5891558929_ (lambda () _r58912_))
                 (_K5891758935_
                  (lambda (_rest58932_ _x58933_)
                    (let ((__tmp64182 (_f58905_ _x58933_ _r58912_)))
                      (declare (not safe))
                      (_lp58909_ _rest58932_ __tmp64182)))))
            (if (let () (declare (not safe)) (##pair? _rest5891358921_))
                (let ((_hd5891858938_
                       (let () (declare (not safe)) (##car _rest5891358921_)))
                      (_tl5891958940_
                       (let () (declare (not safe)) (##cdr _rest5891358921_))))
                  (let* ((_x58943_ _hd5891858938_)
                         (_rest58945_ _tl5891958940_))
                    (declare (not safe))
                    (_K5891758935_ _rest58945_ _x58943_)))
                (let () (declare (not safe)) (_else5891558929_)))))))
    (define foldl2
      (lambda (_f58828_ _iv58829_ _lst158830_ _lst258831_)
        (let _lp58833_ ((_rest158835_ _lst158830_)
                        (_rest258836_ _lst258831_)
                        (_r58837_ _iv58829_))
          (let* ((_rest15883858846_ _rest158835_)
                 (_else5884058854_ (lambda () _r58837_))
                 (_K5884258893_
                  (lambda (_rest158857_ _x158858_)
                    (let* ((_rest25885958867_ _rest258836_)
                           (_else5886158875_ (lambda () _r58837_))
                           (_K5886358881_
                            (lambda (_rest258878_ _x258879_)
                              (let ((__tmp64183
                                     (_f58828_ _x158858_ _x258879_ _r58837_)))
                                (declare (not safe))
                                (_lp58833_
                                 _rest158857_
                                 _rest258878_
                                 __tmp64183)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25885958867_))
                          (let ((_hd5886458884_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25885958867_)))
                                (_tl5886558886_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25885958867_))))
                            (let* ((_x258889_ _hd5886458884_)
                                   (_rest258891_ _tl5886558886_))
                              (declare (not safe))
                              (_K5886358881_ _rest258891_ _x258889_)))
                          (let () (declare (not safe)) (_else5886158875_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15883858846_))
                (let ((_hd5884358896_
                       (let () (declare (not safe)) (##car _rest15883858846_)))
                      (_tl5884458898_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15883858846_))))
                  (let* ((_x158901_ _hd5884358896_)
                         (_rest158903_ _tl5884458898_))
                    (declare (not safe))
                    (_K5884258893_ _rest158903_ _x158901_)))
                (let () (declare (not safe)) (_else5884058854_)))))))
    (define foldl
      (lambda _g64185_
        (let ((_g64184_ (let () (declare (not safe)) (##length _g64185_))))
          (cond ((let () (declare (not safe)) (##fx= _g64184_ 3))
                 (apply (lambda (_f58813_ _iv58814_ _lst58815_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58813_ _iv58814_ _lst58815_)))
                        _g64185_))
                ((let () (declare (not safe)) (##fx= _g64184_ 4))
                 (apply (lambda (_f58817_ _iv58818_ _lst158819_ _lst258820_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58817_
                                    _iv58818_
                                    _lst158819_
                                    _lst258820_)))
                        _g64185_))
                ((let () (declare (not safe)) (##fx>= _g64184_ 4))
                 (apply foldl* _g64185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g64185_))))))
    (define foldl*
      (lambda (_f58801_ _iv58802_ . _rest58803_)
        (let _recur58805_ ((_iv58807_ _iv58802_) (_rest58808_ _rest58803_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58808_))
              (let ((__tmp64187
                     (apply _f58801_
                            (let ((__tmp64189
                                   (lambda (_xs58810_ _r58811_)
                                     (let ((__tmp64190 (car _xs58810_)))
                                       (declare (not safe))
                                       (cons __tmp64190 _r58811_))))
                                  (__tmp64188 (list _iv58807_)))
                              (declare (not safe))
                              (foldr1 __tmp64189 __tmp64188 _rest58808_))))
                    (__tmp64186 (map cdr _rest58808_)))
                (declare (not safe))
                (_recur58805_ __tmp64187 __tmp64186))
              _iv58807_))))
    (define foldr1
      (lambda (_f58760_ _iv58761_ _lst58762_)
        (let _recur58764_ ((_rest58766_ _lst58762_))
          (let* ((_rest5876758775_ _rest58766_)
                 (_else5876958783_ (lambda () _iv58761_))
                 (_K5877158789_
                  (lambda (_rest58786_ _x58787_)
                    (_f58760_
                     _x58787_
                     (let ()
                       (declare (not safe))
                       (_recur58764_ _rest58786_))))))
            (if (let () (declare (not safe)) (##pair? _rest5876758775_))
                (let ((_hd5877258792_
                       (let () (declare (not safe)) (##car _rest5876758775_)))
                      (_tl5877358794_
                       (let () (declare (not safe)) (##cdr _rest5876758775_))))
                  (let* ((_x58797_ _hd5877258792_)
                         (_rest58799_ _tl5877358794_))
                    (declare (not safe))
                    (_K5877158789_ _rest58799_ _x58797_)))
                (let () (declare (not safe)) (_else5876958783_)))))))
    (define foldr2
      (lambda (_f58684_ _iv58685_ _lst158686_ _lst258687_)
        (let _recur58689_ ((_rest158691_ _lst158686_)
                           (_rest258692_ _lst258687_))
          (let* ((_rest15869358701_ _rest158691_)
                 (_else5869558709_ (lambda () _iv58685_))
                 (_K5869758748_
                  (lambda (_rest158712_ _x158713_)
                    (let* ((_rest25871458722_ _rest258692_)
                           (_else5871658730_ (lambda () _iv58685_))
                           (_K5871858736_
                            (lambda (_rest258733_ _x258734_)
                              (_f58684_
                               _x158713_
                               _x258734_
                               (let ()
                                 (declare (not safe))
                                 (_recur58689_ _rest158712_ _rest258733_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25871458722_))
                          (let ((_hd5871958739_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25871458722_)))
                                (_tl5872058741_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25871458722_))))
                            (let* ((_x258744_ _hd5871958739_)
                                   (_rest258746_ _tl5872058741_))
                              (declare (not safe))
                              (_K5871858736_ _rest258746_ _x258744_)))
                          (let () (declare (not safe)) (_else5871658730_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15869358701_))
                (let ((_hd5869858751_
                       (let () (declare (not safe)) (##car _rest15869358701_)))
                      (_tl5869958753_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15869358701_))))
                  (let* ((_x158756_ _hd5869858751_)
                         (_rest158758_ _tl5869958753_))
                    (declare (not safe))
                    (_K5869758748_ _rest158758_ _x158756_)))
                (let () (declare (not safe)) (_else5869558709_)))))))
    (define foldr
      (lambda _g64192_
        (let ((_g64191_ (let () (declare (not safe)) (##length _g64192_))))
          (cond ((let () (declare (not safe)) (##fx= _g64191_ 3))
                 (apply (lambda (_f58669_ _iv58670_ _lst58671_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58669_ _iv58670_ _lst58671_)))
                        _g64192_))
                ((let () (declare (not safe)) (##fx= _g64191_ 4))
                 (apply (lambda (_f58673_ _iv58674_ _lst158675_ _lst258676_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58673_
                                    _iv58674_
                                    _lst158675_
                                    _lst258676_)))
                        _g64192_))
                ((let () (declare (not safe)) (##fx>= _g64191_ 4))
                 (apply foldr* _g64192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g64192_))))))
    (define foldr*
      (lambda (_f58658_ _iv58659_ . _rest58660_)
        (let _recur58662_ ((_rest58664_ _rest58660_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58664_))
              (apply _f58658_
                     (let ((__tmp64195
                            (lambda (_xs58666_ _r58667_)
                              (let ((__tmp64196 (car _xs58666_)))
                                (declare (not safe))
                                (cons __tmp64196 _r58667_))))
                           (__tmp64193
                            (list (let ((__tmp64194 (map cdr _rest58664_)))
                                    (declare (not safe))
                                    (_recur58662_ __tmp64194)))))
                       (declare (not safe))
                       (foldr1 __tmp64195 __tmp64193 _rest58664_)))
              _iv58659_))))
    (define remove-nulls!
      (lambda (_l58545_)
        (let* ((_l5854658559_ _l58545_)
               (_E5855058563_
                (lambda () (error '"No clause matching" _l5854658559_))))
          (let ((_K5855558648_
                 (lambda (_r58646_)
                   (let () (declare (not safe)) (remove-nulls! _r58646_))))
                (_K5855258635_
                 (lambda (_r58575_)
                   (let _loop58577_ ((_l58579_ _l58545_) (_r58580_ _r58575_))
                     (let* ((_r5858158594_ _r58580_)
                            (_E5858558598_
                             (lambda ()
                               (error '"No clause matching" _r5858158594_))))
                       (let ((_K5859058625_
                              (lambda (_rr58623_)
                                (set-cdr!
                                 _l58579_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58623_)))))
                             (_K5858758612_
                              (lambda (_rr58610_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58577_ _r58580_ _rr58610_))))
                             (_K5858658603_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5858158594_))
                             (let ((_tl5859258630_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5858158594_)))
                                   (_hd5859158628_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5858158594_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5859158628_))
                                   (let ((_rr58633_ _tl5859258630_))
                                     (declare (not safe))
                                     (_K5859058625_ _rr58633_))
                                   (let ((_rr58618_ _tl5859258630_))
                                     (declare (not safe))
                                     (_K5858758612_ _rr58618_))))
                             '#!void))))
                   _l58545_))
                (_K5855158568_ (lambda () _l58545_)))
            (if (let () (declare (not safe)) (##pair? _l5854658559_))
                (let ((_tl5855758653_
                       (let () (declare (not safe)) (##cdr _l5854658559_)))
                      (_hd5855658651_
                       (let () (declare (not safe)) (##car _l5854658559_))))
                  (if (let () (declare (not safe)) (##null? _hd5855658651_))
                      (let ((_r58656_ _tl5855758653_))
                        (declare (not safe))
                        (remove-nulls! _r58656_))
                      (let ((_r58641_ _tl5855758653_))
                        (declare (not safe))
                        (_K5855258635_ _r58641_))))
                (let () (declare (not safe)) (_K5855158568_)))))))
    (define append1!
      (lambda (_l58540_ _x58541_)
        (let ((_l258543_ (let () (declare (not safe)) (cons _x58541_ '()))))
          (if (let () (declare (not safe)) (pair? _l58540_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58540_))
               _l258543_)
              _l258543_))))
    (define append-reverse
      (lambda (_rev-head58537_ _tail58538_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58538_ _rev-head58537_))))
    (define append-reverse-until
      (lambda (_pred58490_ _rhead58491_ _tail58492_)
        (let _loop58494_ ((_rhead58496_ _rhead58491_)
                          (_tail58497_ _tail58492_))
          (let* ((_rhead5849858507_ _rhead58496_)
                 (_E5850158511_
                  (lambda () (error '"No clause matching" _rhead5849858507_))))
            (let ((_K5850558534_ (lambda () (values '() _tail58497_)))
                  (_K5850258518_
                   (lambda (_r58515_ _a58516_)
                     (if (_pred58490_ _a58516_)
                         (values _rhead58496_ _tail58497_)
                         (let ((__tmp64197
                                (let ()
                                  (declare (not safe))
                                  (cons _a58516_ _tail58497_))))
                           (declare (not safe))
                           (_loop58494_ _r58515_ __tmp64197))))))
              (let ((_try-match5850058530_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5849858507_))
                           (let ((_tl5850458523_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5849858507_)))
                                 (_hd5850358521_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5849858507_))))
                             (let ((_a58526_ _hd5850358521_)
                                   (_r58528_ _tl5850458523_))
                               (let ()
                                 (declare (not safe))
                                 (_K5850258518_ _r58528_ _a58526_))))
                           (let () (declare (not safe)) (_E5850158511_))))))
                (if (let () (declare (not safe)) (##null? _rhead5849858507_))
                    (let () (declare (not safe)) (_K5850558534_))
                    (let ()
                      (declare (not safe))
                      (_try-match5850058530_)))))))))
    (define andmap1
      (lambda (_f58450_ _lst58451_)
        (let _lp58453_ ((_rest58455_ _lst58451_))
          (let* ((_rest5845658464_ _rest58455_)
                 (_else5845858472_ (lambda () '#t))
                 (_K5846058478_
                  (lambda (_rest58475_ _x58476_)
                    (if (_f58450_ _x58476_)
                        (let () (declare (not safe)) (_lp58453_ _rest58475_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5845658464_))
                (let ((_hd5846158481_
                       (let () (declare (not safe)) (##car _rest5845658464_)))
                      (_tl5846258483_
                       (let () (declare (not safe)) (##cdr _rest5845658464_))))
                  (let* ((_x58486_ _hd5846158481_)
                         (_rest58488_ _tl5846258483_))
                    (declare (not safe))
                    (_K5846058478_ _rest58488_ _x58486_)))
                (let () (declare (not safe)) (_else5845858472_)))))))
    (define andmap2
      (lambda (_f58375_ _lst158376_ _lst258377_)
        (let _lp58379_ ((_rest158381_ _lst158376_) (_rest258382_ _lst258377_))
          (let* ((_rest15838358391_ _rest158381_)
                 (_else5838558399_ (lambda () '#t))
                 (_K5838758438_
                  (lambda (_rest158402_ _x158403_)
                    (let* ((_rest25840458412_ _rest258382_)
                           (_else5840658420_ (lambda () '#t))
                           (_K5840858426_
                            (lambda (_rest258423_ _x258424_)
                              (if (_f58375_ _x158403_ _x258424_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58379_ _rest158402_ _rest258423_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25840458412_))
                          (let ((_hd5840958429_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25840458412_)))
                                (_tl5841058431_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25840458412_))))
                            (let* ((_x258434_ _hd5840958429_)
                                   (_rest258436_ _tl5841058431_))
                              (declare (not safe))
                              (_K5840858426_ _rest258436_ _x258434_)))
                          (let () (declare (not safe)) (_else5840658420_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15838358391_))
                (let ((_hd5838858441_
                       (let () (declare (not safe)) (##car _rest15838358391_)))
                      (_tl5838958443_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15838358391_))))
                  (let* ((_x158446_ _hd5838858441_)
                         (_rest158448_ _tl5838958443_))
                    (declare (not safe))
                    (_K5838758438_ _rest158448_ _x158446_)))
                (let () (declare (not safe)) (_else5838558399_)))))))
    (define andmap
      (lambda _g64199_
        (let ((_g64198_ (let () (declare (not safe)) (##length _g64199_))))
          (cond ((let () (declare (not safe)) (##fx= _g64198_ 2))
                 (apply (lambda (_f58363_ _lst58364_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58363_ _lst58364_)))
                        _g64199_))
                ((let () (declare (not safe)) (##fx= _g64198_ 3))
                 (apply (lambda (_f58366_ _lst158367_ _lst258368_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58366_ _lst158367_ _lst258368_)))
                        _g64199_))
                ((let () (declare (not safe)) (##fx>= _g64198_ 3))
                 (apply andmap* _g64199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g64199_))))))
    (define andmap*
      (lambda (_f58356_ . _rest58357_)
        (let _recur58359_ ((_rest58361_ _rest58357_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58361_))
              (if (apply _f58356_ (map car _rest58361_))
                  (let ((__tmp64200 (map cdr _rest58361_)))
                    (declare (not safe))
                    (_recur58359_ __tmp64200))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f58313_ _lst58314_)
        (let _lp58316_ ((_rest58318_ _lst58314_))
          (let* ((_rest5831958327_ _rest58318_)
                 (_else5832158335_ (lambda () '#f))
                 (_K5832358344_
                  (lambda (_rest58338_ _x58339_)
                    (let ((_$e58341_ (_f58313_ _x58339_)))
                      (if _$e58341_
                          _$e58341_
                          (let ()
                            (declare (not safe))
                            (_lp58316_ _rest58338_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5831958327_))
                (let ((_hd5832458347_
                       (let () (declare (not safe)) (##car _rest5831958327_)))
                      (_tl5832558349_
                       (let () (declare (not safe)) (##cdr _rest5831958327_))))
                  (let* ((_x58352_ _hd5832458347_)
                         (_rest58354_ _tl5832558349_))
                    (declare (not safe))
                    (_K5832358344_ _rest58354_ _x58352_)))
                (let () (declare (not safe)) (_else5832158335_)))))))
    (define ormap2
      (lambda (_f58235_ _lst158236_ _lst258237_)
        (let _lp58239_ ((_rest158241_ _lst158236_) (_rest258242_ _lst258237_))
          (let* ((_rest15824358251_ _rest158241_)
                 (_else5824558259_ (lambda () '#f))
                 (_K5824758301_
                  (lambda (_rest158262_ _x158263_)
                    (let* ((_rest25826458272_ _rest258242_)
                           (_else5826658280_ (lambda () '#f))
                           (_K5826858289_
                            (lambda (_rest258283_ _x258284_)
                              (let ((_$e58286_ (_f58235_ _x158263_ _x258284_)))
                                (if _$e58286_
                                    _$e58286_
                                    (let ()
                                      (declare (not safe))
                                      (_lp58239_
                                       _rest158262_
                                       _rest258283_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25826458272_))
                          (let ((_hd5826958292_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25826458272_)))
                                (_tl5827058294_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25826458272_))))
                            (let* ((_x258297_ _hd5826958292_)
                                   (_rest258299_ _tl5827058294_))
                              (declare (not safe))
                              (_K5826858289_ _rest258299_ _x258297_)))
                          (let () (declare (not safe)) (_else5826658280_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15824358251_))
                (let ((_hd5824858304_
                       (let () (declare (not safe)) (##car _rest15824358251_)))
                      (_tl5824958306_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15824358251_))))
                  (let* ((_x158309_ _hd5824858304_)
                         (_rest158311_ _tl5824958306_))
                    (declare (not safe))
                    (_K5824758301_ _rest158311_ _x158309_)))
                (let () (declare (not safe)) (_else5824558259_)))))))
    (define ormap
      (lambda _g64202_
        (let ((_g64201_ (let () (declare (not safe)) (##length _g64202_))))
          (cond ((let () (declare (not safe)) (##fx= _g64201_ 2))
                 (apply (lambda (_f58223_ _lst58224_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f58223_ _lst58224_)))
                        _g64202_))
                ((let () (declare (not safe)) (##fx= _g64201_ 3))
                 (apply (lambda (_f58226_ _lst158227_ _lst258228_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f58226_ _lst158227_ _lst258228_)))
                        _g64202_))
                ((let () (declare (not safe)) (##fx>= _g64201_ 3))
                 (apply ormap* _g64202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g64202_))))))
    (define ormap*
      (lambda (_f58213_ . _rest58214_)
        (let _recur58216_ ((_rest58218_ _rest58214_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58218_))
              (let ((_$e58220_ (apply _f58213_ (map car _rest58218_))))
                (if _$e58220_
                    _$e58220_
                    (let ((__tmp64203 (map cdr _rest58218_)))
                      (declare (not safe))
                      (_recur58216_ __tmp64203))))
              '#f))))
    (define filter
      (lambda (_f58171_ _lst58172_)
        (let _recur58174_ ((_lst58176_ _lst58172_))
          (let* ((_lst5817758185_ _lst58176_)
                 (_else5817958193_ (lambda () '()))
                 (_K5818158201_
                  (lambda (_rest58196_ _hd58197_)
                    (if (_f58171_ _hd58197_)
                        (let ((_tail58199_
                               (let ()
                                 (declare (not safe))
                                 (_recur58174_ _rest58196_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail58199_ _rest58196_))
                              _lst58176_
                              (let ()
                                (declare (not safe))
                                (cons _hd58197_ _tail58199_))))
                        (let ()
                          (declare (not safe))
                          (_recur58174_ _rest58196_))))))
            (if (let () (declare (not safe)) (##pair? _lst5817758185_))
                (let ((_hd5818258204_
                       (let () (declare (not safe)) (##car _lst5817758185_)))
                      (_tl5818358206_
                       (let () (declare (not safe)) (##cdr _lst5817758185_))))
                  (let* ((_hd58209_ _hd5818258204_)
                         (_rest58211_ _tl5818358206_))
                    (declare (not safe))
                    (_K5818158201_ _rest58211_ _hd58209_)))
                (let () (declare (not safe)) (_else5817958193_)))))))
    (define filter-map1
      (lambda (_f58126_ _lst58127_)
        (let _recur58129_ ((_rest58131_ _lst58127_))
          (let* ((_rest5813258140_ _rest58131_)
                 (_else5813458148_ (lambda () '()))
                 (_K5813658159_
                  (lambda (_rest58151_ _x58152_)
                    (let ((_$e58154_ (_f58126_ _x58152_)))
                      (if _$e58154_
                          ((lambda (_r58157_)
                             (let ((__tmp64204
                                    (let ()
                                      (declare (not safe))
                                      (_recur58129_ _rest58151_))))
                               (declare (not safe))
                               (cons _r58157_ __tmp64204)))
                           _$e58154_)
                          (let ()
                            (declare (not safe))
                            (_recur58129_ _rest58151_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5813258140_))
                (let ((_hd5813758162_
                       (let () (declare (not safe)) (##car _rest5813258140_)))
                      (_tl5813858164_
                       (let () (declare (not safe)) (##cdr _rest5813258140_))))
                  (let* ((_x58167_ _hd5813758162_)
                         (_rest58169_ _tl5813858164_))
                    (declare (not safe))
                    (_K5813658159_ _rest58169_ _x58167_)))
                (let () (declare (not safe)) (_else5813458148_)))))))
    (define filter-map2
      (lambda (_f58046_ _lst158047_ _lst258048_)
        (let _recur58050_ ((_rest158052_ _lst158047_)
                           (_rest258053_ _lst258048_))
          (let* ((_rest15805458062_ _rest158052_)
                 (_else5805658070_ (lambda () '()))
                 (_K5805858114_
                  (lambda (_rest158073_ _x158074_)
                    (let* ((_rest25807558083_ _rest258053_)
                           (_else5807758091_ (lambda () '()))
                           (_K5807958102_
                            (lambda (_rest258094_ _x258095_)
                              (let ((_$e58097_ (_f58046_ _x158074_ _x258095_)))
                                (if _$e58097_
                                    ((lambda (_r58100_)
                                       (let ((__tmp64205
                                              (let ()
                                                (declare (not safe))
                                                (_recur58050_
                                                 _rest158073_
                                                 _rest258094_))))
                                         (declare (not safe))
                                         (cons _r58100_ __tmp64205)))
                                     _$e58097_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur58050_
                                       _rest158073_
                                       _rest258094_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25807558083_))
                          (let ((_hd5808058105_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25807558083_)))
                                (_tl5808158107_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25807558083_))))
                            (let* ((_x258110_ _hd5808058105_)
                                   (_rest258112_ _tl5808158107_))
                              (declare (not safe))
                              (_K5807958102_ _rest258112_ _x258110_)))
                          (let () (declare (not safe)) (_else5807758091_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15805458062_))
                (let ((_hd5805958117_
                       (let () (declare (not safe)) (##car _rest15805458062_)))
                      (_tl5806058119_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15805458062_))))
                  (let* ((_x158122_ _hd5805958117_)
                         (_rest158124_ _tl5806058119_))
                    (declare (not safe))
                    (_K5805858114_ _rest158124_ _x158122_)))
                (let () (declare (not safe)) (_else5805658070_)))))))
    (define filter-map
      (lambda _g64207_
        (let ((_g64206_ (let () (declare (not safe)) (##length _g64207_))))
          (cond ((let () (declare (not safe)) (##fx= _g64206_ 2))
                 (apply (lambda (_f58034_ _lst58035_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f58034_ _lst58035_)))
                        _g64207_))
                ((let () (declare (not safe)) (##fx= _g64206_ 3))
                 (apply (lambda (_f58037_ _lst158038_ _lst258039_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f58037_ _lst158038_ _lst258039_)))
                        _g64207_))
                ((let () (declare (not safe)) (##fx>= _g64206_ 3))
                 (apply filter-map* _g64207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g64207_))))))
    (define filter-map*
      (lambda (_f58022_ . _rest58023_)
        (let _recur58025_ ((_rest58027_ _rest58023_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58027_))
              (let ((_$e58029_ (apply _f58022_ (map car _rest58027_))))
                (if _$e58029_
                    ((lambda (_r58032_)
                       (let ((__tmp64209
                              (let ((__tmp64210 (map cdr _rest58027_)))
                                (declare (not safe))
                                (_recur58025_ __tmp64210))))
                         (declare (not safe))
                         (cons _r58032_ __tmp64209)))
                     _$e58029_)
                    (let ((__tmp64208 (map cdr _rest58027_)))
                      (declare (not safe))
                      (_recur58025_ __tmp64208))))
              '()))))
    (define iota__%
      (lambda (_count57990_ _start57991_ _step57992_)
        (if (fixnum? _count57990_)
            '#!void
            (error '"expected fixnum" _count57990_))
        (if (let () (declare (not safe)) (number? _start57991_))
            '#!void
            (error '"expected number" _start57991_))
        (if (let () (declare (not safe)) (number? _step57992_))
            '#!void
            (error '"expected number" _step57992_))
        (let ((_root57994_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57996_ ((_i57998_ '0)
                          (_x57999_ _start57991_)
                          (_tl58000_ _root57994_))
            (if (let () (declare (not safe)) (##fx< _i57998_ _count57990_))
                (let ((_tl*58002_
                       (let () (declare (not safe)) (cons _x57999_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl58000_ _tl*58002_))
                  (let ((__tmp64212
                         (let () (declare (not safe)) (##fx+ _i57998_ '1)))
                        (__tmp64211 (+ _x57999_ _step57992_)))
                    (declare (not safe))
                    (_lp57996_ __tmp64212 __tmp64211 _tl*58002_)))
                (let () (declare (not safe)) (##cdr _root57994_)))))))
    (define iota__0
      (lambda (_count58007_)
        (let* ((_start58009_ '0) (_step58011_ '1))
          (declare (not safe))
          (iota__% _count58007_ _start58009_ _step58011_))))
    (define iota__1
      (lambda (_count58013_ _start58014_)
        (let ((_step58016_ '1))
          (declare (not safe))
          (iota__% _count58013_ _start58014_ _step58016_))))
    (define iota
      (lambda _g64214_
        (let ((_g64213_ (let () (declare (not safe)) (##length _g64214_))))
          (cond ((let () (declare (not safe)) (##fx= _g64213_ 1))
                 (apply (lambda (_count58007_)
                          (let () (declare (not safe)) (iota__0 _count58007_)))
                        _g64214_))
                ((let () (declare (not safe)) (##fx= _g64213_ 2))
                 (apply (lambda (_count58013_ _start58014_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count58013_ _start58014_)))
                        _g64214_))
                ((let () (declare (not safe)) (##fx= _g64213_ 3))
                 (apply (lambda (_count58018_ _start58019_ _step58020_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count58018_ _start58019_ _step58020_)))
                        _g64214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g64214_))))))
    (define last-pair
      (lambda (_lst57964_)
        (let* ((_lst5796557972_ _lst57964_)
               (_E5796757976_
                (lambda () (error '"No clause matching" _lst5796557972_)))
               (_K5796857981_
                (lambda (_rest57979_)
                  (if (let () (declare (not safe)) (pair? _rest57979_))
                      (let () (declare (not safe)) (last-pair _rest57979_))
                      _lst57964_))))
          (if (let () (declare (not safe)) (##pair? _lst5796557972_))
              (let* ((_tl5797057984_
                      (let () (declare (not safe)) (##cdr _lst5796557972_)))
                     (_rest57987_ _tl5797057984_))
                (declare (not safe))
                (_K5796857981_ _rest57987_))
              (let () (declare (not safe)) (_E5796757976_))))))
    (define last
      (lambda (_lst57962_)
        (car (let () (declare (not safe)) (last-pair _lst57962_)))))
    (define assgetq__%
      (lambda (_key57940_ _lst57942_ _default57944_)
        (let ((_$e57947_
               (if (let () (declare (not safe)) (pair? _lst57942_))
                   (assq _key57940_ _lst57942_)
                   '#f)))
          (if _$e57947_
              (cdr _$e57947_)
              (if (let () (declare (not safe)) (procedure? _default57944_))
                  (_default57944_ _key57940_)
                  _default57944_)))))
    (define assgetq__0
      (lambda (_key57953_ _lst57954_)
        (let ((_default57956_ '#f))
          (declare (not safe))
          (assgetq__% _key57953_ _lst57954_ _default57956_))))
    (define assgetq
      (lambda _g64216_
        (let ((_g64215_ (let () (declare (not safe)) (##length _g64216_))))
          (cond ((let () (declare (not safe)) (##fx= _g64215_ 2))
                 (apply (lambda (_key57953_ _lst57954_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57953_ _lst57954_)))
                        _g64216_))
                ((let () (declare (not safe)) (##fx= _g64215_ 3))
                 (apply (lambda (_key57958_ _lst57959_ _default57960_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57958_ _lst57959_ _default57960_)))
                        _g64216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g64216_))))))
    (define assgetv__%
      (lambda (_key57917_ _lst57919_ _default57921_)
        (let ((_$e57924_
               (if (let () (declare (not safe)) (pair? _lst57919_))
                   (assv _key57917_ _lst57919_)
                   '#f)))
          (if _$e57924_
              (cdr _$e57924_)
              (if (let () (declare (not safe)) (procedure? _default57921_))
                  (_default57921_ _key57917_)
                  _default57921_)))))
    (define assgetv__0
      (lambda (_key57930_ _lst57931_)
        (let ((_default57933_ '#f))
          (declare (not safe))
          (assgetv__% _key57930_ _lst57931_ _default57933_))))
    (define assgetv
      (lambda _g64218_
        (let ((_g64217_ (let () (declare (not safe)) (##length _g64218_))))
          (cond ((let () (declare (not safe)) (##fx= _g64217_ 2))
                 (apply (lambda (_key57930_ _lst57931_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57930_ _lst57931_)))
                        _g64218_))
                ((let () (declare (not safe)) (##fx= _g64217_ 3))
                 (apply (lambda (_key57935_ _lst57936_ _default57937_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57935_ _lst57936_ _default57937_)))
                        _g64218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g64218_))))))
    (define assget__%
      (lambda (_key57894_ _lst57896_ _default57898_)
        (let ((_$e57901_
               (if (let () (declare (not safe)) (pair? _lst57896_))
                   (assoc _key57894_ _lst57896_)
                   '#f)))
          (if _$e57901_
              (cdr _$e57901_)
              (if (let () (declare (not safe)) (procedure? _default57898_))
                  (_default57898_ _key57894_)
                  _default57898_)))))
    (define assget__0
      (lambda (_key57907_ _lst57908_)
        (let ((_default57910_ '#f))
          (declare (not safe))
          (assget__% _key57907_ _lst57908_ _default57910_))))
    (define assget
      (lambda _g64220_
        (let ((_g64219_ (let () (declare (not safe)) (##length _g64220_))))
          (cond ((let () (declare (not safe)) (##fx= _g64219_ 2))
                 (apply (lambda (_key57907_ _lst57908_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57907_ _lst57908_)))
                        _g64220_))
                ((let () (declare (not safe)) (##fx= _g64219_ 3))
                 (apply (lambda (_key57912_ _lst57913_ _default57914_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57912_ _lst57913_ _default57914_)))
                        _g64220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g64220_))))))
    (define pgetq__%
      (lambda (_key57823_ _lst57825_ _default57827_)
        (let _lp57830_ ((_rest57833_ _lst57825_))
          (let* ((_rest5783557845_ _rest57833_)
                 (_else5783757853_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57827_))
                        (_default57827_ _key57823_)
                        _default57827_)))
                 (_K5783957862_
                  (lambda (_rest57856_ _v57857_ _k57859_)
                    (if (let () (declare (not safe)) (eq? _k57859_ _key57823_))
                        _v57857_
                        (let ()
                          (declare (not safe))
                          (_lp57830_ _rest57856_))))))
            (if (let () (declare (not safe)) (##pair? _rest5783557845_))
                (let ((_hd5784057865_
                       (let () (declare (not safe)) (##car _rest5783557845_)))
                      (_tl5784157867_
                       (let () (declare (not safe)) (##cdr _rest5783557845_))))
                  (let ((_k57870_ _hd5784057865_))
                    (if (let () (declare (not safe)) (##pair? _tl5784157867_))
                        (let ((_hd5784257872_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5784157867_)))
                              (_tl5784357874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5784157867_))))
                          (let* ((_v57877_ _hd5784257872_)
                                 (_rest57879_ _tl5784357874_))
                            (declare (not safe))
                            (_K5783957862_ _rest57879_ _v57877_ _k57870_)))
                        (let () (declare (not safe)) (_else5783757853_)))))
                (let () (declare (not safe)) (_else5783757853_)))))))
    (define pgetq__0
      (lambda (_key57884_ _lst57885_)
        (let ((_default57887_ '#f))
          (declare (not safe))
          (pgetq__% _key57884_ _lst57885_ _default57887_))))
    (define pgetq
      (lambda _g64222_
        (let ((_g64221_ (let () (declare (not safe)) (##length _g64222_))))
          (cond ((let () (declare (not safe)) (##fx= _g64221_ 2))
                 (apply (lambda (_key57884_ _lst57885_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57884_ _lst57885_)))
                        _g64222_))
                ((let () (declare (not safe)) (##fx= _g64221_ 3))
                 (apply (lambda (_key57889_ _lst57890_ _default57891_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57889_ _lst57890_ _default57891_)))
                        _g64222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g64222_))))))
    (define pgetv__%
      (lambda (_key57752_ _lst57754_ _default57756_)
        (let _lp57759_ ((_rest57762_ _lst57754_))
          (let* ((_rest5776457774_ _rest57762_)
                 (_else5776657782_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57756_))
                        (_default57756_ _key57752_)
                        _default57756_)))
                 (_K5776857791_
                  (lambda (_rest57785_ _v57786_ _k57788_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57788_ _key57752_))
                        _v57786_
                        (let ()
                          (declare (not safe))
                          (_lp57759_ _rest57785_))))))
            (if (let () (declare (not safe)) (##pair? _rest5776457774_))
                (let ((_hd5776957794_
                       (let () (declare (not safe)) (##car _rest5776457774_)))
                      (_tl5777057796_
                       (let () (declare (not safe)) (##cdr _rest5776457774_))))
                  (let ((_k57799_ _hd5776957794_))
                    (if (let () (declare (not safe)) (##pair? _tl5777057796_))
                        (let ((_hd5777157801_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5777057796_)))
                              (_tl5777257803_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5777057796_))))
                          (let* ((_v57806_ _hd5777157801_)
                                 (_rest57808_ _tl5777257803_))
                            (declare (not safe))
                            (_K5776857791_ _rest57808_ _v57806_ _k57799_)))
                        (let () (declare (not safe)) (_else5776657782_)))))
                (let () (declare (not safe)) (_else5776657782_)))))))
    (define pgetv__0
      (lambda (_key57813_ _lst57814_)
        (let ((_default57816_ '#f))
          (declare (not safe))
          (pgetv__% _key57813_ _lst57814_ _default57816_))))
    (define pgetv
      (lambda _g64224_
        (let ((_g64223_ (let () (declare (not safe)) (##length _g64224_))))
          (cond ((let () (declare (not safe)) (##fx= _g64223_ 2))
                 (apply (lambda (_key57813_ _lst57814_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57813_ _lst57814_)))
                        _g64224_))
                ((let () (declare (not safe)) (##fx= _g64223_ 3))
                 (apply (lambda (_key57818_ _lst57819_ _default57820_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57818_ _lst57819_ _default57820_)))
                        _g64224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g64224_))))))
    (define pget__%
      (lambda (_key57681_ _lst57683_ _default57685_)
        (let _lp57688_ ((_rest57691_ _lst57683_))
          (let* ((_rest5769357703_ _rest57691_)
                 (_else5769557711_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57685_))
                        (_default57685_ _key57681_)
                        _default57685_)))
                 (_K5769757720_
                  (lambda (_rest57714_ _v57715_ _k57717_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57717_ _key57681_))
                        _v57715_
                        (let ()
                          (declare (not safe))
                          (_lp57688_ _rest57714_))))))
            (if (let () (declare (not safe)) (##pair? _rest5769357703_))
                (let ((_hd5769857723_
                       (let () (declare (not safe)) (##car _rest5769357703_)))
                      (_tl5769957725_
                       (let () (declare (not safe)) (##cdr _rest5769357703_))))
                  (let ((_k57728_ _hd5769857723_))
                    (if (let () (declare (not safe)) (##pair? _tl5769957725_))
                        (let ((_hd5770057730_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5769957725_)))
                              (_tl5770157732_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5769957725_))))
                          (let* ((_v57735_ _hd5770057730_)
                                 (_rest57737_ _tl5770157732_))
                            (declare (not safe))
                            (_K5769757720_ _rest57737_ _v57735_ _k57728_)))
                        (let () (declare (not safe)) (_else5769557711_)))))
                (let () (declare (not safe)) (_else5769557711_)))))))
    (define pget__0
      (lambda (_key57742_ _lst57743_)
        (let ((_default57745_ '#f))
          (declare (not safe))
          (pget__% _key57742_ _lst57743_ _default57745_))))
    (define pget
      (lambda _g64226_
        (let ((_g64225_ (let () (declare (not safe)) (##length _g64226_))))
          (cond ((let () (declare (not safe)) (##fx= _g64225_ 2))
                 (apply (lambda (_key57742_ _lst57743_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57742_ _lst57743_)))
                        _g64226_))
                ((let () (declare (not safe)) (##fx= _g64225_ 3))
                 (apply (lambda (_key57747_ _lst57748_ _default57749_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57747_ _lst57748_ _default57749_)))
                        _g64226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g64226_))))))
    (define find
      (lambda (_pred57674_ _lst57675_)
        (let ((_$e57677_
               (let () (declare (not safe)) (memf _pred57674_ _lst57675_))))
          (if _$e57677_ (car _$e57677_) '#f))))
    (define memf
      (lambda (_proc57634_ _lst57635_)
        (let _lp57637_ ((_rest57639_ _lst57635_))
          (let* ((_rest5764057648_ _rest57639_)
                 (_else5764257656_ (lambda () '#f))
                 (_K5764457662_
                  (lambda (_tl57659_ _hd57660_)
                    (if (_proc57634_ _hd57660_)
                        _rest57639_
                        (let () (declare (not safe)) (_lp57637_ _tl57659_))))))
            (if (let () (declare (not safe)) (##pair? _rest5764057648_))
                (let ((_hd5764557665_
                       (let () (declare (not safe)) (##car _rest5764057648_)))
                      (_tl5764657667_
                       (let () (declare (not safe)) (##cdr _rest5764057648_))))
                  (let* ((_hd57670_ _hd5764557665_) (_tl57672_ _tl5764657667_))
                    (declare (not safe))
                    (_K5764457662_ _tl57672_ _hd57670_)))
                (let () (declare (not safe)) (_else5764257656_)))))))
    (define remove1
      (lambda (_el57587_ _lst57589_)
        (let _lp57592_ ((_rest57595_ _lst57589_) (_r57597_ '()))
          (let* ((_rest5759957607_ _rest57595_)
                 (_else5760157615_ (lambda () _lst57589_))
                 (_K5760357622_
                  (lambda (_rest57618_ _hd57619_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57587_ _hd57619_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57618_ _r57597_))
                        (let ((__tmp64227
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57619_ _r57597_))))
                          (declare (not safe))
                          (_lp57592_ _rest57618_ __tmp64227))))))
            (if (let () (declare (not safe)) (##pair? _rest5759957607_))
                (let ((_hd5760457625_
                       (let () (declare (not safe)) (##car _rest5759957607_)))
                      (_tl5760557627_
                       (let () (declare (not safe)) (##cdr _rest5759957607_))))
                  (let* ((_hd57630_ _hd5760457625_)
                         (_rest57632_ _tl5760557627_))
                    (declare (not safe))
                    (_K5760357622_ _rest57632_ _hd57630_)))
                (let () (declare (not safe)) (_else5760157615_)))))))
    (define remv
      (lambda (_el57540_ _lst57542_)
        (let _lp57545_ ((_rest57548_ _lst57542_) (_r57550_ '()))
          (let* ((_rest5755257560_ _rest57548_)
                 (_else5755457568_ (lambda () _lst57542_))
                 (_K5755657575_
                  (lambda (_rest57571_ _hd57572_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57540_ _hd57572_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57571_ _r57550_))
                        (let ((__tmp64228
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57572_ _r57550_))))
                          (declare (not safe))
                          (_lp57545_ _rest57571_ __tmp64228))))))
            (if (let () (declare (not safe)) (##pair? _rest5755257560_))
                (let ((_hd5755757578_
                       (let () (declare (not safe)) (##car _rest5755257560_)))
                      (_tl5755857580_
                       (let () (declare (not safe)) (##cdr _rest5755257560_))))
                  (let* ((_hd57583_ _hd5755757578_)
                         (_rest57585_ _tl5755857580_))
                    (declare (not safe))
                    (_K5755657575_ _rest57585_ _hd57583_)))
                (let () (declare (not safe)) (_else5755457568_)))))))
    (define remq
      (lambda (_el57493_ _lst57495_)
        (let _lp57498_ ((_rest57501_ _lst57495_) (_r57503_ '()))
          (let* ((_rest5750557513_ _rest57501_)
                 (_else5750757521_ (lambda () _lst57495_))
                 (_K5750957528_
                  (lambda (_rest57524_ _hd57525_)
                    (if (let () (declare (not safe)) (eq? _el57493_ _hd57525_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57524_ _r57503_))
                        (let ((__tmp64229
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57525_ _r57503_))))
                          (declare (not safe))
                          (_lp57498_ _rest57524_ __tmp64229))))))
            (if (let () (declare (not safe)) (##pair? _rest5750557513_))
                (let ((_hd5751057531_
                       (let () (declare (not safe)) (##car _rest5750557513_)))
                      (_tl5751157533_
                       (let () (declare (not safe)) (##cdr _rest5750557513_))))
                  (let* ((_hd57536_ _hd5751057531_)
                         (_rest57538_ _tl5751157533_))
                    (declare (not safe))
                    (_K5750957528_ _rest57538_ _hd57536_)))
                (let () (declare (not safe)) (_else5750757521_)))))))
    (define remf
      (lambda (_proc57452_ _lst57453_)
        (let _lp57455_ ((_rest57457_ _lst57453_) (_r57458_ '()))
          (let* ((_rest5745957467_ _rest57457_)
                 (_else5746157475_ (lambda () _lst57453_))
                 (_K5746357481_
                  (lambda (_rest57478_ _hd57479_)
                    (if (_proc57452_ _hd57479_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57478_ _r57458_))
                        (let ((__tmp64230
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57479_ _r57458_))))
                          (declare (not safe))
                          (_lp57455_ _rest57478_ __tmp64230))))))
            (if (let () (declare (not safe)) (##pair? _rest5745957467_))
                (let ((_hd5746457484_
                       (let () (declare (not safe)) (##car _rest5745957467_)))
                      (_tl5746557486_
                       (let () (declare (not safe)) (##cdr _rest5745957467_))))
                  (let* ((_hd57489_ _hd5746457484_)
                         (_rest57491_ _tl5746557486_))
                    (declare (not safe))
                    (_K5746357481_ _rest57491_ _hd57489_)))
                (let () (declare (not safe)) (_else5746157475_)))))))
    (define 1+ (lambda (_x57450_) (+ _x57450_ '1)))
    (define 1- (lambda (_x57448_) (- _x57448_ '1)))
    (define fx1+ (lambda (_x57446_) (fx+ _x57446_ '1)))
    (define fx1- (lambda (_x57444_) (fx- _x57444_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57442_)
        (if (fixnum? _x57442_)
            (let () (declare (not safe)) (##fx>= _x57442_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57440_)
        (if (fixnum? _x57440_)
            (let () (declare (not safe)) (##fx> _x57440_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57438_) (let () (declare (not safe)) (eq? _x57438_ '0))))
    (define fx<0?
      (lambda (_x57436_)
        (if (fixnum? _x57436_)
            (let () (declare (not safe)) (##fx< _x57436_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57434_)
        (if (fixnum? _x57434_)
            (let () (declare (not safe)) (##fx<= _x57434_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57432_)
        (if (let () (declare (not safe)) (symbol? _x57432_))
            (let ((__tmp64231 (uninterned-symbol? _x57432_)))
              (declare (not safe))
              (not __tmp64231))
            '#f)))
    (define display-as-string
      (lambda (_x57404_ _port57405_)
        (if (or (let () (declare (not safe)) (string? _x57404_))
                (let () (declare (not safe)) (symbol? _x57404_))
                (keyword? _x57404_)
                (let () (declare (not safe)) (number? _x57404_))
                (let () (declare (not safe)) (char? _x57404_)))
            (display _x57404_ _port57405_)
            (if (let () (declare (not safe)) (pair? _x57404_))
                (begin
                  (let ((__tmp64232 (car _x57404_)))
                    (declare (not safe))
                    (display-as-string __tmp64232 _port57405_))
                  (let ((__tmp64233 (cdr _x57404_)))
                    (declare (not safe))
                    (display-as-string __tmp64233 _port57405_)))
                (if (let () (declare (not safe)) (vector? _x57404_))
                    (vector-for-each
                     (lambda (_g5741857420_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5741857420_ _port57405_)))
                     _x57404_)
                    (if (or (let () (declare (not safe)) (null? _x57404_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57404_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57404_))
                            (let () (declare (not safe)) (boolean? _x57404_)))
                        '#!void
                        (error '"cannot convert as string" _x57404_)))))))
    (define as-string__0
      (lambda (_x57392_)
        (if (let () (declare (not safe)) (string? _x57392_))
            _x57392_
            (if (let () (declare (not safe)) (symbol? _x57392_))
                (symbol->string _x57392_)
                (if (keyword? _x57392_)
                    (keyword->string _x57392_)
                    (call-with-output-string
                     '()
                     (lambda (_g5739357395_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57392_ _g5739357395_)))))))))
    (define as-string__1
      (lambda _args57398_
        (call-with-output-string
         '()
         (lambda (_g5739957401_)
           (let ()
             (declare (not safe))
             (display-as-string _args57398_ _g5739957401_))))))
    (define as-string
      (lambda _g64235_
        (let ((_g64234_ (let () (declare (not safe)) (##length _g64235_))))
          (cond ((let () (declare (not safe)) (##fx= _g64234_ 1))
                 (apply (lambda (_x57392_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57392_)))
                        _g64235_))
                (#t (apply as-string__1 _g64235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g64235_))))))
    (define make-symbol__0
      (lambda (_x57388_)
        (if (interned-symbol? _x57388_)
            _x57388_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57388_))))))
    (define make-symbol__1
      (lambda _args57390_ (string->symbol (apply as-string _args57390_))))
    (define make-symbol
      (lambda _g64237_
        (let ((_g64236_ (let () (declare (not safe)) (##length _g64237_))))
          (cond ((let () (declare (not safe)) (##fx= _g64236_ 1))
                 (apply (lambda (_x57388_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57388_)))
                        _g64237_))
                (#t (apply make-symbol__1 _g64237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g64237_))))))
    (define make-keyword__0
      (lambda (_x57384_)
        (if (interned-keyword? _x57384_)
            _x57384_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57384_))))))
    (define make-keyword__1
      (lambda _args57386_ (string->keyword (apply as-string _args57386_))))
    (define make-keyword
      (lambda _g64239_
        (let ((_g64238_ (let () (declare (not safe)) (##length _g64239_))))
          (cond ((let () (declare (not safe)) (##fx= _g64238_ 1))
                 (apply (lambda (_x57384_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57384_)))
                        _g64239_))
                (#t (apply make-keyword__1 _g64239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g64239_))))))
    (define interned-keyword?
      (lambda (_x57382_)
        (if (keyword? _x57382_)
            (let ((__tmp64240 (uninterned-keyword? _x57382_)))
              (declare (not safe))
              (not __tmp64240))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57380_)
        ((if (uninterned-symbol? _sym57380_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57380_))))
    (define keyword->symbol
      (lambda (_kw57378_)
        ((if (uninterned-keyword? _kw57378_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57378_))))
    (define bytes->string__%
      (lambda (_bstr57356_ _enc57357_)
        (if (let () (declare (not safe)) (eq? _enc57357_ 'UTF-8))
            (utf8->string _bstr57356_)
            (let* ((_in57359_
                    (open-input-u8vector
                     (let ((__tmp64241
                            (let ((__tmp64242
                                   (let ((__tmp64243
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57356_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp64243))))
                              (declare (not safe))
                              (cons _enc57357_ __tmp64242))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp64241))))
                   (_len57361_ (u8vector-length _bstr57356_))
                   (_out57363_ (make-string _len57361_))
                   (_n57365_
                    (read-substring _out57363_ '0 _len57361_ _in57359_)))
              (string-shrink! _out57363_ _n57365_)
              _out57363_))))
    (define bytes->string__0
      (lambda (_bstr57371_)
        (let ((_enc57373_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57371_ _enc57373_))))
    (define bytes->string
      (lambda _g64245_
        (let ((_g64244_ (let () (declare (not safe)) (##length _g64245_))))
          (cond ((let () (declare (not safe)) (##fx= _g64244_ 1))
                 (apply (lambda (_bstr57371_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57371_)))
                        _g64245_))
                ((let () (declare (not safe)) (##fx= _g64244_ 2))
                 (apply (lambda (_bstr57375_ _enc57376_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57375_ _enc57376_)))
                        _g64245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g64245_))))))
    (define string->bytes__%
      (lambda (_str57342_ _enc57343_)
        (if (let () (declare (not safe)) (eq? _enc57343_ 'UTF-8))
            (string->utf8 _str57342_)
            (substring->bytes
             _str57342_
             '0
             (string-length _str57342_)
             _enc57343_))))
    (define string->bytes__0
      (lambda (_str57348_)
        (let ((_enc57350_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57348_ _enc57350_))))
    (define string->bytes
      (lambda _g64247_
        (let ((_g64246_ (let () (declare (not safe)) (##length _g64247_))))
          (cond ((let () (declare (not safe)) (##fx= _g64246_ 1))
                 (apply (lambda (_str57348_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57348_)))
                        _g64247_))
                ((let () (declare (not safe)) (##fx= _g64246_ 2))
                 (apply (lambda (_str57352_ _enc57353_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57352_ _enc57353_)))
                        _g64247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g64247_))))))
    (define substring->bytes__%
      (lambda (_str57320_ _start57321_ _end57322_ _enc57323_)
        (if (let () (declare (not safe)) (eq? _enc57323_ 'UTF-8))
            (string->utf8 _str57320_ _start57321_ _end57322_)
            (let ((_out57325_
                   (open-output-u8vector
                    (let ((__tmp64248
                           (let ()
                             (declare (not safe))
                             (cons _enc57323_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp64248)))))
              (write-substring _str57320_ _start57321_ _end57322_ _out57325_)
              (get-output-u8vector _out57325_)))))
    (define substring->bytes__0
      (lambda (_str57330_ _start57331_ _end57332_)
        (let ((_enc57334_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str57330_
           _start57331_
           _end57332_
           _enc57334_))))
    (define substring->bytes
      (lambda _g64250_
        (let ((_g64249_ (let () (declare (not safe)) (##length _g64250_))))
          (cond ((let () (declare (not safe)) (##fx= _g64249_ 3))
                 (apply (lambda (_str57330_ _start57331_ _end57332_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str57330_
                             _start57331_
                             _end57332_)))
                        _g64250_))
                ((let () (declare (not safe)) (##fx= _g64249_ 4))
                 (apply (lambda (_str57336_ _start57337_ _end57338_ _enc57339_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57336_
                             _start57337_
                             _end57338_
                             _enc57339_)))
                        _g64250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g64250_))))))
    (define string-empty?
      (lambda (_str57317_)
        (let ((__tmp64251 (string-length _str57317_)))
          (declare (not safe))
          (##fxzero? __tmp64251))))
    (define string-prefix?
      (lambda (_prefix57307_ _str57308_)
        (let ((_str-len57310_ (string-length _str57308_))
              (_prefix-len57311_ (string-length _prefix57307_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len57311_ _str-len57310_))
              (let _lp57313_ ((_i57315_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i57315_ _prefix-len57311_))
                    (if (let ((__tmp64254
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str57308_ _i57315_)))
                              (__tmp64253
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix57307_ _i57315_))))
                          (declare (not safe))
                          (eq? __tmp64254 __tmp64253))
                        (let ((__tmp64252
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i57315_ '1))))
                          (declare (not safe))
                          (_lp57313_ __tmp64252))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str57285_ _char57286_ _start57287_)
        (let ((_len57289_ (string-length _str57285_)))
          (let _lp57291_ ((_k57293_ _start57287_))
            (if (let () (declare (not safe)) (##fx< _k57293_ _len57289_))
                (if (let ((__tmp64256
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57285_ _k57293_))))
                      (declare (not safe))
                      (eq? _char57286_ __tmp64256))
                    _k57293_
                    (let ((__tmp64255
                           (let () (declare (not safe)) (##fx+ _k57293_ '1))))
                      (declare (not safe))
                      (_lp57291_ __tmp64255)))
                '#f)))))
    (define string-index__0
      (lambda (_str57298_ _char57299_)
        (let ((_start57301_ '0))
          (declare (not safe))
          (string-index__% _str57298_ _char57299_ _start57301_))))
    (define string-index
      (lambda _g64258_
        (let ((_g64257_ (let () (declare (not safe)) (##length _g64258_))))
          (cond ((let () (declare (not safe)) (##fx= _g64257_ 2))
                 (apply (lambda (_str57298_ _char57299_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str57298_ _char57299_)))
                        _g64258_))
                ((let () (declare (not safe)) (##fx= _g64257_ 3))
                 (apply (lambda (_str57303_ _char57304_ _start57305_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str57303_
                             _char57304_
                             _start57305_)))
                        _g64258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g64258_))))))
    (define string-rindex__%
      (lambda (_str57256_ _char57257_ _start57258_)
        (let* ((_len57260_ (string-length _str57256_))
               (_start57265_
                (let ((_$e57262_ _start57258_))
                  (if _$e57262_
                      _$e57262_
                      (let () (declare (not safe)) (##fx- _len57260_ '1))))))
          (let _lp57268_ ((_k57270_ _start57265_))
            (if (let () (declare (not safe)) (##fx>= _k57270_ '0))
                (if (let ((__tmp64260
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57256_ _k57270_))))
                      (declare (not safe))
                      (eq? _char57257_ __tmp64260))
                    _k57270_
                    (let ((__tmp64259
                           (let () (declare (not safe)) (##fx- _k57270_ '1))))
                      (declare (not safe))
                      (_lp57268_ __tmp64259)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str57275_ _char57276_)
        (let ((_start57278_ '#f))
          (declare (not safe))
          (string-rindex__% _str57275_ _char57276_ _start57278_))))
    (define string-rindex
      (lambda _g64262_
        (let ((_g64261_ (let () (declare (not safe)) (##length _g64262_))))
          (cond ((let () (declare (not safe)) (##fx= _g64261_ 2))
                 (apply (lambda (_str57275_ _char57276_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str57275_ _char57276_)))
                        _g64262_))
                ((let () (declare (not safe)) (##fx= _g64261_ 3))
                 (apply (lambda (_str57280_ _char57281_ _start57282_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str57280_
                             _char57281_
                             _start57282_)))
                        _g64262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g64262_))))))
    (define string-split
      (lambda (_str57240_ _char57241_)
        (let ((_len57243_ (string-length _str57240_)))
          (let _lp57245_ ((_start57247_ '0) (_r57248_ '()))
            (let ((_$e57250_
                   (let ()
                     (declare (not safe))
                     (string-index _str57240_ _char57241_ _start57247_))))
              (if _$e57250_
                  ((lambda (_end57253_)
                     (let ((__tmp64266
                            (let ()
                              (declare (not safe))
                              (##fx+ _end57253_ '1)))
                           (__tmp64264
                            (let ((__tmp64265
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57240_
                                      _start57247_
                                      _end57253_))))
                              (declare (not safe))
                              (cons __tmp64265 _r57248_))))
                       (declare (not safe))
                       (_lp57245_ __tmp64266 __tmp64264)))
                   _$e57250_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start57247_ _len57243_))
                      (let ((__tmp64263
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57240_
                                      _start57247_
                                      _len57243_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp64263 _r57248_))
                      (reverse _r57248_))))))))
    (define string-join
      (lambda (_strs57145_ _join57146_)
        (letrec ((_join-length57148_
                  (lambda (_strs57199_ _jlen57200_)
                    (let _lp57202_ ((_rest57204_ _strs57199_) (_len57205_ '0))
                      (let* ((_rest5720657214_ _rest57204_)
                             (_else5720857222_ (lambda () '0))
                             (_K5721057228_
                              (lambda (_rest57225_ _hd57226_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd57226_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest57225_))
                                        (let ((__tmp64268
                                               (let ((__tmp64269
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd57226_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp64269
                                                        _jlen57200_
                                                        _len57205_))))
                                          (declare (not safe))
                                          (_lp57202_ _rest57225_ __tmp64268))
                                        (let ((__tmp64267
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd57226_))))
                                          (declare (not safe))
                                          (##fx+ __tmp64267 _len57205_)))
                                    (error '"expected string" _hd57226_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5720657214_))
                            (let ((_hd5721157231_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5720657214_)))
                                  (_tl5721257233_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5720657214_))))
                              (let* ((_hd57236_ _hd5721157231_)
                                     (_rest57238_ _tl5721257233_))
                                (declare (not safe))
                                (_K5721057228_ _rest57238_ _hd57236_)))
                            (let ()
                              (declare (not safe))
                              (_else5720857222_))))))))
          (let* ((_join57150_
                  (if (let () (declare (not safe)) (char? _join57146_))
                      (string _join57146_)
                      (if (let () (declare (not safe)) (string? _join57146_))
                          _join57146_
                          (error '"expected string or char" _join57146_))))
                 (_jlen57152_
                  (let () (declare (not safe)) (##string-length _join57150_)))
                 (_olen57154_
                  (let ()
                    (declare (not safe))
                    (_join-length57148_ _strs57145_ _jlen57152_)))
                 (_ostr57156_ (make-string _olen57154_)))
            (let _lp57159_ ((_rest57161_ _strs57145_) (_k57162_ '0))
              (let* ((_rest5716357171_ _rest57161_)
                     (_else5716557179_ (lambda () '""))
                     (_K5716757187_
                      (lambda (_rest57182_ _hd57183_)
                        (let ((_hdlen57185_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd57183_))))
                          (if (let () (declare (not safe)) (pair? _rest57182_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57183_
                                   '0
                                   _hdlen57185_
                                   _ostr57156_
                                   _k57162_))
                                (let ((__tmp64270
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57162_ _hdlen57185_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join57150_
                                   '0
                                   _jlen57152_
                                   _ostr57156_
                                   __tmp64270))
                                (let ((__tmp64271
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57162_
                                                _hdlen57185_
                                                _jlen57152_))))
                                  (declare (not safe))
                                  (_lp57159_ _rest57182_ __tmp64271)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57183_
                                   '0
                                   _hdlen57185_
                                   _ostr57156_
                                   _k57162_))
                                _ostr57156_))))))
                (if (let () (declare (not safe)) (##pair? _rest5716357171_))
                    (let ((_hd5716857190_
                           (let ()
                             (declare (not safe))
                             (##car _rest5716357171_)))
                          (_tl5716957192_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5716357171_))))
                      (let* ((_hd57195_ _hd5716857190_)
                             (_rest57197_ _tl5716957192_))
                        (declare (not safe))
                        (_K5716757187_ _rest57197_ _hd57195_)))
                    (let () (declare (not safe)) (_else5716557179_)))))))))
    (define read-u8vector
      (lambda (_bytes57142_ _port57143_)
        (read-subu8vector
         _bytes57142_
         '0
         (u8vector-length _bytes57142_)
         _port57143_)))
    (define write-u8vector
      (lambda (_bytes57139_ _port57140_)
        (write-subu8vector
         _bytes57139_
         '0
         (u8vector-length _bytes57139_)
         _port57140_)))
    (define read-string
      (lambda (_str57136_ _port57137_)
        (read-substring _str57136_ '0 (string-length _str57136_) _port57137_)))
    (define write-string
      (lambda (_str57133_ _port57134_)
        (write-substring
         _str57133_
         '0
         (string-length _str57133_)
         _port57134_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag57104_
               _dbg-exprs57105_
               _dbg-thunks57106_
               _expr57107_
               _thunk57108_)
        (letrec ((_fo57110_
                  (lambda ()
                    (force-output (current-error-port))
                    (force-output (current-output-port))))
                 (_d57111_
                  (lambda (_x57119_) (display _x57119_ (current-error-port))))
                 (_p57112_ (DBG-printer))
                 (_w57113_
                  (lambda (_x57121_) (_p57112_ _x57121_ (current-error-port))))
                 (_n57114_ (lambda () (newline (current-error-port))))
                 (_v57115_
                  (lambda (_l57124_)
                    (for-each
                     (lambda (_x57126_)
                       (let () (declare (not safe)) (_d57111_ '" "))
                       (let () (declare (not safe)) (_w57113_ _x57126_)))
                     _l57124_)
                    (let () (declare (not safe)) (_n57114_))))
                 (_x57116_
                  (lambda (_expr57128_ _thunk57129_)
                    (let () (declare (not safe)) (_d57111_ '"  "))
                    (let () (declare (not safe)) (_w57113_ _expr57128_))
                    (let () (declare (not safe)) (_d57111_ '" =>"))
                    (call-with-values
                     _thunk57129_
                     (lambda _x57131_
                       (let () (declare (not safe)) (_v57115_ _x57131_))
                       (apply values _x57131_))))))
          (if _tag57104_
              (begin
                (if (let () (declare (not safe)) (eq? _tag57104_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_d57111_ _tag57104_))
                      (let () (declare (not safe)) (_n57114_))))
                (for-each _x57116_ _dbg-exprs57105_ _dbg-thunks57106_)
                (if _thunk57108_
                    (let ()
                      (declare (not safe))
                      (_x57116_ _expr57107_ _thunk57108_))
                    '#!void))
              (if _thunk57108_ (_thunk57108_) '#!void)))))))
