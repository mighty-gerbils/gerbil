(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1708247271)
  (begin
    (define displayln
      (lambda _args58314_
        (let _lp58316_ ((_rest58318_ _args58314_))
          (let* ((_rest5831958327_ _rest58318_)
                 (_else5832158335_ (lambda () (newline)))
                 (_K5832358341_
                  (lambda (_rest58338_ _hd58339_)
                    (display _hd58339_)
                    (let () (declare (not safe)) (_lp58316_ _rest58338_)))))
            (if (let () (declare (not safe)) (##pair? _rest5831958327_))
                (let ((_hd5832458344_
                       (let () (declare (not safe)) (##car _rest5831958327_)))
                      (_tl5832558346_
                       (let () (declare (not safe)) (##cdr _rest5831958327_))))
                  (let* ((_hd58349_ _hd5832458344_)
                         (_rest58351_ _tl5832558346_))
                    (declare (not safe))
                    (_K5832358341_ _rest58351_ _hd58349_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args58312_ (for-each display _args58312_)))
    (define file-newer?
      (lambda (_file158305_ _file258306_)
        (letrec ((_modification-time58308_
                  (lambda (_file58310_)
                    (let ((__tmp62813
                           (file-info-last-modification-time
                            (file-info _file58310_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp62813)))))
          (let ((__tmp62815
                 (let ()
                   (declare (not safe))
                   (_modification-time58308_ _file158305_)))
                (__tmp62814
                 (let ()
                   (declare (not safe))
                   (_modification-time58308_ _file258306_))))
            (declare (not safe))
            (##fl> __tmp62815 __tmp62814)))))
    (define create-directory*__%
      (lambda (_dir58279_ _perms58280_)
        (letrec ((_create158282_
                  (lambda (_path58293_)
                    (if (file-exists? _path58293_)
                        (if (let ((__tmp62816 (file-type _path58293_)))
                              (declare (not safe))
                              (eq? __tmp62816 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path58293_))
                        (if _perms58280_
                            (create-directory
                             (list 'path:
                                   _path58293_
                                   'permissions:
                                   _perms58280_))
                            (create-directory _path58293_))))))
          (if (file-exists? _dir58279_)
              '#!void
              (let _lp58284_ ((_start58286_ '0))
                (let ((_$e58288_
                       (let ()
                         (declare (not safe))
                         (string-index _dir58279_ '#\/ _start58286_))))
                  (if _$e58288_
                      ((lambda (_x58291_)
                         (if (let () (declare (not safe)) (##fx> _x58291_ '0))
                             (let ((__tmp62817
                                    (substring _dir58279_ '0 _x58291_)))
                               (declare (not safe))
                               (_create158282_ __tmp62817))
                             '#!void)
                         (let ((__tmp62818
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x58291_ '1))))
                           (declare (not safe))
                           (_lp58284_ __tmp62818)))
                       _$e58288_)
                      (let ()
                        (declare (not safe))
                        (_create158282_ _dir58279_)))))))))
    (define create-directory*__0
      (lambda (_dir58298_)
        (let ((_perms58300_ '493))
          (declare (not safe))
          (create-directory*__% _dir58298_ _perms58300_))))
    (define create-directory*
      (lambda _g62820_
        (let ((_g62819_ (let () (declare (not safe)) (##length _g62820_))))
          (cond ((let () (declare (not safe)) (##fx= _g62819_ 1))
                 (apply (lambda (_dir58298_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir58298_)))
                        _g62820_))
                ((let () (declare (not safe)) (##fx= _g62819_ 2))
                 (apply (lambda (_dir58302_ _perms58303_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir58302_ _perms58303_)))
                        _g62820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g62820_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g62821_ '#t))
    (define true?
      (lambda (_obj58275_) (let () (declare (not safe)) (eq? _obj58275_ '#t))))
    (define false (lambda _g62822_ '#f))
    (define void (lambda _g62823_ '#!void))
    (define void?
      (lambda (_obj58271_)
        (let () (declare (not safe)) (eq? _obj58271_ '#!void))))
    (define eof-object (lambda _g62824_ '#!eof))
    (define identity (lambda (_obj58268_) _obj58268_))
    (define dssl-object?
      (lambda (_obj58266_)
        (if (memq _obj58266_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj58264_)
        (let () (declare (not safe)) (eq? _obj58264_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj58262_)
        (let () (declare (not safe)) (eq? _obj58262_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj58260_)
        (let () (declare (not safe)) (eq? _obj58260_ '#!optional))))
    (define immediate?
      (lambda (_obj58256_)
        (let* ((_t58258_ (let () (declare (not safe)) (##type _obj58256_)))
               (__tmp62825
                (let () (declare (not safe)) (##fxand _t58258_ '1))))
          (declare (not safe))
          (##fxzero? __tmp62825))))
    (define nonnegative-fixnum?
      (lambda (_obj58254_)
        (if (fixnum? _obj58254_)
            (let ((__tmp62826 (fxnegative? _obj58254_)))
              (declare (not safe))
              (not __tmp62826))
            '#f)))
    (define values-count
      (lambda (_obj58252_)
        (if (let () (declare (not safe)) (##values? _obj58252_))
            (let () (declare (not safe)) (##vector-length _obj58252_))
            '1)))
    (define values-ref
      (lambda (_obj58249_ _k58250_)
        (if (let () (declare (not safe)) (##values? _obj58249_))
            (let () (declare (not safe)) (##vector-ref _obj58249_ _k58250_))
            _obj58249_)))
    (define values->list
      (lambda (_obj58247_)
        (if (let () (declare (not safe)) (##values? _obj58247_))
            (let () (declare (not safe)) (##vector->list _obj58247_))
            (list _obj58247_))))
    (define subvector->list__%
      (lambda (_obj58232_ _start58233_)
        (let ((_lst58235_
               (let () (declare (not safe)) (##vector->list _obj58232_))))
          (list-tail _lst58235_ _start58233_))))
    (define subvector->list__0
      (lambda (_obj58240_)
        (let ((_start58242_ '0))
          (declare (not safe))
          (subvector->list__% _obj58240_ _start58242_))))
    (define subvector->list
      (lambda _g62828_
        (let ((_g62827_ (let () (declare (not safe)) (##length _g62828_))))
          (cond ((let () (declare (not safe)) (##fx= _g62827_ 1))
                 (apply (lambda (_obj58240_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj58240_)))
                        _g62828_))
                ((let () (declare (not safe)) (##fx= _g62827_ 2))
                 (apply (lambda (_obj58244_ _start58245_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj58244_ _start58245_)))
                        _g62828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g62828_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args58229_ (apply make-table 'test: eq? _args58229_)))
    (define make-hash-table-eqv
      (lambda _args58227_ (apply make-table 'test: eqv? _args58227_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst58224_ . _args58225_)
        (apply list->table _lst58224_ 'test: eq? _args58225_)))
    (define list->hash-table-eqv
      (lambda (_lst58221_ . _args58222_)
        (apply list->table _lst58221_ 'test: eqv? _args58222_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht58218_ _k58219_) (table-ref _ht58218_ _k58219_ '#f)))
    (define hash-put!
      (lambda (_ht58214_ _k58215_ _v58216_)
        (table-set! _ht58214_ _k58215_ _v58216_)))
    (define hash-update!__%
      (lambda (_ht58193_ _k58194_ _update58195_ _default58196_)
        (let* ((_value58198_ (hash-ref _ht58193_ _k58194_ _default58196_))
               (__tmp62829 (_update58195_ _value58198_)))
          (declare (not safe))
          (table-set! _ht58193_ _k58194_ __tmp62829))))
    (define hash-update!__0
      (lambda (_ht58203_ _k58204_ _update58205_)
        (let ((_default58207_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht58203_ _k58204_ _update58205_ _default58207_))))
    (define hash-update!
      (lambda _g62831_
        (let ((_g62830_ (let () (declare (not safe)) (##length _g62831_))))
          (cond ((let () (declare (not safe)) (##fx= _g62830_ 3))
                 (apply (lambda (_ht58203_ _k58204_ _update58205_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht58203_
                             _k58204_
                             _update58205_)))
                        _g62831_))
                ((let () (declare (not safe)) (##fx= _g62830_ 4))
                 (apply (lambda (_ht58209_
                                 _k58210_
                                 _update58211_
                                 _default58212_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht58209_
                             _k58210_
                             _update58211_
                             _default58212_)))
                        _g62831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g62831_))))))
    (define hash-remove!
      (lambda (_ht58189_ _k58190_) (table-set! _ht58189_ _k58190_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht58187_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht58187_))))
    (define plist->hash-table__%
      (lambda (_plst58122_ _ht58123_)
        (let _lp58125_ ((_rest58127_ _plst58122_))
          (let* ((_rest5812858139_ _rest58127_)
                 (_E5813158143_
                  (lambda () (error '"No clause matching" _rest5812858139_))))
            (let ((_K5813358158_
                   (lambda (_rest58154_ _v58155_ _k58156_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht58123_ _k58156_ _v58155_))
                     (let () (declare (not safe)) (_lp58125_ _rest58154_))))
                  (_K5813258148_ (lambda () _ht58123_)))
              (let ((_try-match5813058151_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5812858139_ '()))
                           (let () (declare (not safe)) (_K5813258148_))
                           (let () (declare (not safe)) (_E5813158143_))))))
                (if (let () (declare (not safe)) (##pair? _rest5812858139_))
                    (let ((_tl5813558163_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5812858139_)))
                          (_hd5813458161_
                           (let ()
                             (declare (not safe))
                             (##car _rest5812858139_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5813558163_))
                          (let ((_tl5813758170_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5813558163_)))
                                (_hd5813658168_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5813558163_))))
                            (let ((_k58166_ _hd5813458161_)
                                  (_v58173_ _hd5813658168_)
                                  (_rest58175_ _tl5813758170_))
                              (let ()
                                (declare (not safe))
                                (_K5813358158_
                                 _rest58175_
                                 _v58173_
                                 _k58166_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5813058151_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5813058151_)))))))))
    (define plist->hash-table__0
      (lambda (_plst58180_)
        (let ((_ht58182_ (make-hash-table)))
          (declare (not safe))
          (plist->hash-table__% _plst58180_ _ht58182_))))
    (define plist->hash-table
      (lambda _g62833_
        (let ((_g62832_ (let () (declare (not safe)) (##length _g62833_))))
          (cond ((let () (declare (not safe)) (##fx= _g62832_ 1))
                 (apply (lambda (_plst58180_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst58180_)))
                        _g62833_))
                ((let () (declare (not safe)) (##fx= _g62832_ 2))
                 (apply (lambda (_plst58184_ _ht58185_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst58184_ _ht58185_)))
                        _g62833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g62833_))))))
    (define plist->hash-table-eq
      (lambda (_plst58119_)
        (let ((__tmp62834 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (plist->hash-table _plst58119_ __tmp62834))))
    (define plist->hash-table-eqv
      (lambda (_plst58117_)
        (let ((__tmp62835 (let () (declare (not safe)) (make-hash-table-eqv))))
          (declare (not safe))
          (plist->hash-table _plst58117_ __tmp62835))))
    (define hash-key?
      (lambda (_ht58114_ _k58115_)
        (let ((__tmp62836
               (let ((__tmp62837 (hash-ref _ht58114_ _k58115_ absent-value)))
                 (declare (not safe))
                 (eq? __tmp62837 absent-value))))
          (declare (not safe))
          (not __tmp62836))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun58107_ _ht58108_)
        (let ((__tmp62838
               (lambda (_k58110_ _v58111_ _r58112_)
                 (let ((__tmp62839 (_fun58107_ _k58110_ _v58111_)))
                   (declare (not safe))
                   (cons __tmp62839 _r58112_)))))
          (declare (not safe))
          (hash-fold __tmp62838 '() _ht58108_))))
    (define hash-fold
      (lambda (_fun58098_ _iv58099_ _ht58100_)
        (let ((_ret58102_ _iv58099_))
          (hash-for-each
           (lambda (_k58104_ _v58105_)
             (set! _ret58102_ (_fun58098_ _k58104_ _v58105_ _ret58102_)))
           _ht58100_)
          _ret58102_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht58093_)
        (let ((__tmp62840 (lambda (_k58095_ _v58096_) _k58095_)))
          (declare (not safe))
          (hash-map __tmp62840 _ht58093_))))
    (define hash-values
      (lambda (_ht58088_)
        (let ((__tmp62841 (lambda (_k58090_ _v58091_) _v58091_)))
          (declare (not safe))
          (hash-map __tmp62841 _ht58088_))))
    (define hash-copy
      (lambda (_hd58083_ . _rest58084_)
        (let ((_hd58086_ (table-copy _hd58083_)))
          (if (let () (declare (not safe)) (null? _rest58084_))
              _hd58086_
              (apply hash-copy! _hd58086_ _rest58084_)))))
    (define hash-copy!
      (lambda (_hd58078_ . _rest58079_)
        (for-each
         (lambda (_r58081_) (table-merge! _hd58078_ _r58081_))
         _rest58079_)
        _hd58078_))
    (define hash-merge
      (lambda (_hd58072_ . _rest58073_)
        (let ((__tmp62842
               (lambda (_tab58075_ _r58076_)
                 (table-merge _r58076_ _tab58075_))))
          (declare (not safe))
          (foldl1 __tmp62842 _hd58072_ _rest58073_))))
    (define hash-merge!
      (lambda (_hd58066_ . _rest58067_)
        (let ((__tmp62843
               (lambda (_tab58069_ _r58070_)
                 (table-merge! _r58070_ _tab58069_))))
          (declare (not safe))
          (foldl1 __tmp62843 _hd58066_ _rest58067_))))
    (define hash-clear!__%
      (lambda (_ht58051_ _size58052_)
        (let ((_gcht58054_
               (let () (declare (not safe)) (##vector-ref _ht58051_ '5))))
          (if (let ((__tmp62844 (fixnum? _gcht58054_)))
                (declare (not safe))
                (not __tmp62844))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58051_ '5 _size58052_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58059_)
        (let ((_size58061_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58059_ _size58061_))))
    (define hash-clear!
      (lambda _g62846_
        (let ((_g62845_ (let () (declare (not safe)) (##length _g62846_))))
          (cond ((let () (declare (not safe)) (##fx= _g62845_ 1))
                 (apply (lambda (_ht58059_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58059_)))
                        _g62846_))
                ((let () (declare (not safe)) (##fx= _g62845_ 2))
                 (apply (lambda (_ht58063_ _size58064_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58063_ _size58064_)))
                        _g62846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g62846_))))))
    (define make-list__%
      (lambda (_k58032_ _val58033_)
        (if (fixnum? _k58032_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58032_))
        (let _lp58035_ ((_n58037_ '0) (_r58038_ '()))
          (if (let () (declare (not safe)) (##fx< _n58037_ _k58032_))
              (let ((__tmp62848
                     (let () (declare (not safe)) (##fx+ _n58037_ '1)))
                    (__tmp62847
                     (let () (declare (not safe)) (cons _val58033_ _r58038_))))
                (declare (not safe))
                (_lp58035_ __tmp62848 __tmp62847))
              _r58038_))))
    (define make-list__0
      (lambda (_k58043_)
        (let ((_val58045_ '#f))
          (declare (not safe))
          (make-list__% _k58043_ _val58045_))))
    (define make-list
      (lambda _g62850_
        (let ((_g62849_ (let () (declare (not safe)) (##length _g62850_))))
          (cond ((let () (declare (not safe)) (##fx= _g62849_ 1))
                 (apply (lambda (_k58043_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58043_)))
                        _g62850_))
                ((let () (declare (not safe)) (##fx= _g62849_ 2))
                 (apply (lambda (_k58047_ _val58048_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58047_ _val58048_)))
                        _g62850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g62850_))))))
    (define cons*
      (lambda (_x58022_ _y58023_ . _rest58024_)
        (letrec ((_recur58026_
                  (lambda (_x58028_ _rest58029_)
                    (if (let () (declare (not safe)) (pair? _rest58029_))
                        (let ((__tmp62851
                               (let ((__tmp62853
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58029_)))
                                     (__tmp62852
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58029_))))
                                 (declare (not safe))
                                 (_recur58026_ __tmp62853 __tmp62852))))
                          (declare (not safe))
                          (cons _x58028_ __tmp62851))
                        _x58028_))))
          (let ((__tmp62854
                 (let ()
                   (declare (not safe))
                   (_recur58026_ _y58023_ _rest58024_))))
            (declare (not safe))
            (cons _x58022_ __tmp62854)))))
    (define foldl1
      (lambda (_f57980_ _iv57981_ _lst57982_)
        (let _lp57984_ ((_rest57986_ _lst57982_) (_r57987_ _iv57981_))
          (let* ((_rest5798857996_ _rest57986_)
                 (_else5799058004_ (lambda () _r57987_))
                 (_K5799258010_
                  (lambda (_rest58007_ _x58008_)
                    (let ((__tmp62855 (_f57980_ _x58008_ _r57987_)))
                      (declare (not safe))
                      (_lp57984_ _rest58007_ __tmp62855)))))
            (if (let () (declare (not safe)) (##pair? _rest5798857996_))
                (let ((_hd5799358013_
                       (let () (declare (not safe)) (##car _rest5798857996_)))
                      (_tl5799458015_
                       (let () (declare (not safe)) (##cdr _rest5798857996_))))
                  (let* ((_x58018_ _hd5799358013_)
                         (_rest58020_ _tl5799458015_))
                    (declare (not safe))
                    (_K5799258010_ _rest58020_ _x58018_)))
                (let () (declare (not safe)) (_else5799058004_)))))))
    (define foldl2
      (lambda (_f57903_ _iv57904_ _lst157905_ _lst257906_)
        (let _lp57908_ ((_rest157910_ _lst157905_)
                        (_rest257911_ _lst257906_)
                        (_r57912_ _iv57904_))
          (let* ((_rest15791357921_ _rest157910_)
                 (_else5791557929_ (lambda () _r57912_))
                 (_K5791757968_
                  (lambda (_rest157932_ _x157933_)
                    (let* ((_rest25793457942_ _rest257911_)
                           (_else5793657950_ (lambda () _r57912_))
                           (_K5793857956_
                            (lambda (_rest257953_ _x257954_)
                              (let ((__tmp62856
                                     (_f57903_ _x157933_ _x257954_ _r57912_)))
                                (declare (not safe))
                                (_lp57908_
                                 _rest157932_
                                 _rest257953_
                                 __tmp62856)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25793457942_))
                          (let ((_hd5793957959_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25793457942_)))
                                (_tl5794057961_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25793457942_))))
                            (let* ((_x257964_ _hd5793957959_)
                                   (_rest257966_ _tl5794057961_))
                              (declare (not safe))
                              (_K5793857956_ _rest257966_ _x257964_)))
                          (let () (declare (not safe)) (_else5793657950_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15791357921_))
                (let ((_hd5791857971_
                       (let () (declare (not safe)) (##car _rest15791357921_)))
                      (_tl5791957973_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15791357921_))))
                  (let* ((_x157976_ _hd5791857971_)
                         (_rest157978_ _tl5791957973_))
                    (declare (not safe))
                    (_K5791757968_ _rest157978_ _x157976_)))
                (let () (declare (not safe)) (_else5791557929_)))))))
    (define foldl
      (lambda _g62858_
        (let ((_g62857_ (let () (declare (not safe)) (##length _g62858_))))
          (cond ((let () (declare (not safe)) (##fx= _g62857_ 3))
                 (apply (lambda (_f57888_ _iv57889_ _lst57890_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f57888_ _iv57889_ _lst57890_)))
                        _g62858_))
                ((let () (declare (not safe)) (##fx= _g62857_ 4))
                 (apply (lambda (_f57892_ _iv57893_ _lst157894_ _lst257895_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f57892_
                                    _iv57893_
                                    _lst157894_
                                    _lst257895_)))
                        _g62858_))
                ((let () (declare (not safe)) (##fx>= _g62857_ 4))
                 (apply foldl* _g62858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g62858_))))))
    (define foldl*
      (lambda (_f57876_ _iv57877_ . _rest57878_)
        (let _recur57880_ ((_iv57882_ _iv57877_) (_rest57883_ _rest57878_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57883_))
              (let ((__tmp62860
                     (apply _f57876_
                            (let ((__tmp62862
                                   (lambda (_xs57885_ _r57886_)
                                     (let ((__tmp62863 (car _xs57885_)))
                                       (declare (not safe))
                                       (cons __tmp62863 _r57886_))))
                                  (__tmp62861 (list _iv57882_)))
                              (declare (not safe))
                              (foldr1 __tmp62862 __tmp62861 _rest57883_))))
                    (__tmp62859 (map cdr _rest57883_)))
                (declare (not safe))
                (_recur57880_ __tmp62860 __tmp62859))
              _iv57882_))))
    (define foldr1
      (lambda (_f57835_ _iv57836_ _lst57837_)
        (let _recur57839_ ((_rest57841_ _lst57837_))
          (let* ((_rest5784257850_ _rest57841_)
                 (_else5784457858_ (lambda () _iv57836_))
                 (_K5784657864_
                  (lambda (_rest57861_ _x57862_)
                    (_f57835_
                     _x57862_
                     (let ()
                       (declare (not safe))
                       (_recur57839_ _rest57861_))))))
            (if (let () (declare (not safe)) (##pair? _rest5784257850_))
                (let ((_hd5784757867_
                       (let () (declare (not safe)) (##car _rest5784257850_)))
                      (_tl5784857869_
                       (let () (declare (not safe)) (##cdr _rest5784257850_))))
                  (let* ((_x57872_ _hd5784757867_)
                         (_rest57874_ _tl5784857869_))
                    (declare (not safe))
                    (_K5784657864_ _rest57874_ _x57872_)))
                (let () (declare (not safe)) (_else5784457858_)))))))
    (define foldr2
      (lambda (_f57759_ _iv57760_ _lst157761_ _lst257762_)
        (let _recur57764_ ((_rest157766_ _lst157761_)
                           (_rest257767_ _lst257762_))
          (let* ((_rest15776857776_ _rest157766_)
                 (_else5777057784_ (lambda () _iv57760_))
                 (_K5777257823_
                  (lambda (_rest157787_ _x157788_)
                    (let* ((_rest25778957797_ _rest257767_)
                           (_else5779157805_ (lambda () _iv57760_))
                           (_K5779357811_
                            (lambda (_rest257808_ _x257809_)
                              (_f57759_
                               _x157788_
                               _x257809_
                               (let ()
                                 (declare (not safe))
                                 (_recur57764_ _rest157787_ _rest257808_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25778957797_))
                          (let ((_hd5779457814_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25778957797_)))
                                (_tl5779557816_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25778957797_))))
                            (let* ((_x257819_ _hd5779457814_)
                                   (_rest257821_ _tl5779557816_))
                              (declare (not safe))
                              (_K5779357811_ _rest257821_ _x257819_)))
                          (let () (declare (not safe)) (_else5779157805_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15776857776_))
                (let ((_hd5777357826_
                       (let () (declare (not safe)) (##car _rest15776857776_)))
                      (_tl5777457828_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15776857776_))))
                  (let* ((_x157831_ _hd5777357826_)
                         (_rest157833_ _tl5777457828_))
                    (declare (not safe))
                    (_K5777257823_ _rest157833_ _x157831_)))
                (let () (declare (not safe)) (_else5777057784_)))))))
    (define foldr
      (lambda _g62865_
        (let ((_g62864_ (let () (declare (not safe)) (##length _g62865_))))
          (cond ((let () (declare (not safe)) (##fx= _g62864_ 3))
                 (apply (lambda (_f57744_ _iv57745_ _lst57746_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f57744_ _iv57745_ _lst57746_)))
                        _g62865_))
                ((let () (declare (not safe)) (##fx= _g62864_ 4))
                 (apply (lambda (_f57748_ _iv57749_ _lst157750_ _lst257751_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f57748_
                                    _iv57749_
                                    _lst157750_
                                    _lst257751_)))
                        _g62865_))
                ((let () (declare (not safe)) (##fx>= _g62864_ 4))
                 (apply foldr* _g62865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g62865_))))))
    (define foldr*
      (lambda (_f57733_ _iv57734_ . _rest57735_)
        (let _recur57737_ ((_rest57739_ _rest57735_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57739_))
              (apply _f57733_
                     (let ((__tmp62868
                            (lambda (_xs57741_ _r57742_)
                              (let ((__tmp62869 (car _xs57741_)))
                                (declare (not safe))
                                (cons __tmp62869 _r57742_))))
                           (__tmp62866
                            (list (let ((__tmp62867 (map cdr _rest57739_)))
                                    (declare (not safe))
                                    (_recur57737_ __tmp62867)))))
                       (declare (not safe))
                       (foldr1 __tmp62868 __tmp62866 _rest57739_)))
              _iv57734_))))
    (define drop
      (lambda (_l57730_ _k57731_)
        (if (let () (declare (not safe)) (##fxpositive? _k57731_))
            (let ((__tmp62871 (let () (declare (not safe)) (##cdr _l57730_)))
                  (__tmp62870
                   (let () (declare (not safe)) (##fx- _k57731_ '1))))
              (declare (not safe))
              (drop __tmp62871 __tmp62870))
            _l57730_)))
    (define remove-nulls!
      (lambda (_l57617_)
        (let* ((_l5761857631_ _l57617_)
               (_E5762257635_
                (lambda () (error '"No clause matching" _l5761857631_))))
          (let ((_K5762757720_
                 (lambda (_r57718_)
                   (let () (declare (not safe)) (remove-nulls! _r57718_))))
                (_K5762457707_
                 (lambda (_r57647_)
                   (let _loop57649_ ((_l57651_ _l57617_) (_r57652_ _r57647_))
                     (let* ((_r5765357666_ _r57652_)
                            (_E5765757670_
                             (lambda ()
                               (error '"No clause matching" _r5765357666_))))
                       (let ((_K5766257697_
                              (lambda (_rr57695_)
                                (set-cdr!
                                 _l57651_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr57695_)))))
                             (_K5765957684_
                              (lambda (_rr57682_)
                                (let ()
                                  (declare (not safe))
                                  (_loop57649_ _r57652_ _rr57682_))))
                             (_K5765857675_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5765357666_))
                             (let ((_tl5766457702_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5765357666_)))
                                   (_hd5766357700_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5765357666_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5766357700_))
                                   (let ((_rr57705_ _tl5766457702_))
                                     (declare (not safe))
                                     (_K5766257697_ _rr57705_))
                                   (let ((_rr57690_ _tl5766457702_))
                                     (declare (not safe))
                                     (_K5765957684_ _rr57690_))))
                             '#!void))))
                   _l57617_))
                (_K5762357640_ (lambda () _l57617_)))
            (if (let () (declare (not safe)) (##pair? _l5761857631_))
                (let ((_tl5762957725_
                       (let () (declare (not safe)) (##cdr _l5761857631_)))
                      (_hd5762857723_
                       (let () (declare (not safe)) (##car _l5761857631_))))
                  (if (let () (declare (not safe)) (##null? _hd5762857723_))
                      (let ((_r57728_ _tl5762957725_))
                        (declare (not safe))
                        (remove-nulls! _r57728_))
                      (let ((_r57713_ _tl5762957725_))
                        (declare (not safe))
                        (_K5762457707_ _r57713_))))
                (let () (declare (not safe)) (_K5762357640_)))))))
    (define append1!
      (lambda (_l57612_ _x57613_)
        (let ((_l257615_ (let () (declare (not safe)) (cons _x57613_ '()))))
          (if (let () (declare (not safe)) (pair? _l57612_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l57612_))
               _l257615_)
              _l257615_))))
    (define append-reverse
      (lambda (_rev-head57609_ _tail57610_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail57610_ _rev-head57609_))))
    (define append-reverse-until
      (lambda (_pred57562_ _rhead57563_ _tail57564_)
        (let _loop57566_ ((_rhead57568_ _rhead57563_)
                          (_tail57569_ _tail57564_))
          (let* ((_rhead5757057579_ _rhead57568_)
                 (_E5757357583_
                  (lambda () (error '"No clause matching" _rhead5757057579_))))
            (let ((_K5757757606_ (lambda () (values '() _tail57569_)))
                  (_K5757457590_
                   (lambda (_r57587_ _a57588_)
                     (if (_pred57562_ _a57588_)
                         (values _rhead57568_ _tail57569_)
                         (let ((__tmp62872
                                (let ()
                                  (declare (not safe))
                                  (cons _a57588_ _tail57569_))))
                           (declare (not safe))
                           (_loop57566_ _r57587_ __tmp62872))))))
              (let ((_try-match5757257602_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5757057579_))
                           (let ((_tl5757657595_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5757057579_)))
                                 (_hd5757557593_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5757057579_))))
                             (let ((_a57598_ _hd5757557593_)
                                   (_r57600_ _tl5757657595_))
                               (let ()
                                 (declare (not safe))
                                 (_K5757457590_ _r57600_ _a57598_))))
                           (let () (declare (not safe)) (_E5757357583_))))))
                (if (let () (declare (not safe)) (##null? _rhead5757057579_))
                    (let () (declare (not safe)) (_K5757757606_))
                    (let ()
                      (declare (not safe))
                      (_try-match5757257602_)))))))))
    (define andmap1
      (lambda (_f57522_ _lst57523_)
        (let _lp57525_ ((_rest57527_ _lst57523_))
          (let* ((_rest5752857536_ _rest57527_)
                 (_else5753057544_ (lambda () '#t))
                 (_K5753257550_
                  (lambda (_rest57547_ _x57548_)
                    (if (_f57522_ _x57548_)
                        (let () (declare (not safe)) (_lp57525_ _rest57547_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5752857536_))
                (let ((_hd5753357553_
                       (let () (declare (not safe)) (##car _rest5752857536_)))
                      (_tl5753457555_
                       (let () (declare (not safe)) (##cdr _rest5752857536_))))
                  (let* ((_x57558_ _hd5753357553_)
                         (_rest57560_ _tl5753457555_))
                    (declare (not safe))
                    (_K5753257550_ _rest57560_ _x57558_)))
                (let () (declare (not safe)) (_else5753057544_)))))))
    (define andmap2
      (lambda (_f57447_ _lst157448_ _lst257449_)
        (let _lp57451_ ((_rest157453_ _lst157448_) (_rest257454_ _lst257449_))
          (let* ((_rest15745557463_ _rest157453_)
                 (_else5745757471_ (lambda () '#t))
                 (_K5745957510_
                  (lambda (_rest157474_ _x157475_)
                    (let* ((_rest25747657484_ _rest257454_)
                           (_else5747857492_ (lambda () '#t))
                           (_K5748057498_
                            (lambda (_rest257495_ _x257496_)
                              (if (_f57447_ _x157475_ _x257496_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp57451_ _rest157474_ _rest257495_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25747657484_))
                          (let ((_hd5748157501_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25747657484_)))
                                (_tl5748257503_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25747657484_))))
                            (let* ((_x257506_ _hd5748157501_)
                                   (_rest257508_ _tl5748257503_))
                              (declare (not safe))
                              (_K5748057498_ _rest257508_ _x257506_)))
                          (let () (declare (not safe)) (_else5747857492_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15745557463_))
                (let ((_hd5746057513_
                       (let () (declare (not safe)) (##car _rest15745557463_)))
                      (_tl5746157515_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15745557463_))))
                  (let* ((_x157518_ _hd5746057513_)
                         (_rest157520_ _tl5746157515_))
                    (declare (not safe))
                    (_K5745957510_ _rest157520_ _x157518_)))
                (let () (declare (not safe)) (_else5745757471_)))))))
    (define andmap
      (lambda _g62874_
        (let ((_g62873_ (let () (declare (not safe)) (##length _g62874_))))
          (cond ((let () (declare (not safe)) (##fx= _g62873_ 2))
                 (apply (lambda (_f57435_ _lst57436_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f57435_ _lst57436_)))
                        _g62874_))
                ((let () (declare (not safe)) (##fx= _g62873_ 3))
                 (apply (lambda (_f57438_ _lst157439_ _lst257440_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f57438_ _lst157439_ _lst257440_)))
                        _g62874_))
                ((let () (declare (not safe)) (##fx>= _g62873_ 3))
                 (apply andmap* _g62874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g62874_))))))
    (define andmap*
      (lambda (_f57428_ . _rest57429_)
        (let _recur57431_ ((_rest57433_ _rest57429_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57433_))
              (if (apply _f57428_ (map car _rest57433_))
                  (let ((__tmp62875 (map cdr _rest57433_)))
                    (declare (not safe))
                    (_recur57431_ __tmp62875))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f57385_ _lst57386_)
        (let _lp57388_ ((_rest57390_ _lst57386_))
          (let* ((_rest5739157399_ _rest57390_)
                 (_else5739357407_ (lambda () '#f))
                 (_K5739557416_
                  (lambda (_rest57410_ _x57411_)
                    (let ((_$e57413_ (_f57385_ _x57411_)))
                      (if _$e57413_
                          _$e57413_
                          (let ()
                            (declare (not safe))
                            (_lp57388_ _rest57410_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5739157399_))
                (let ((_hd5739657419_
                       (let () (declare (not safe)) (##car _rest5739157399_)))
                      (_tl5739757421_
                       (let () (declare (not safe)) (##cdr _rest5739157399_))))
                  (let* ((_x57424_ _hd5739657419_)
                         (_rest57426_ _tl5739757421_))
                    (declare (not safe))
                    (_K5739557416_ _rest57426_ _x57424_)))
                (let () (declare (not safe)) (_else5739357407_)))))))
    (define ormap2
      (lambda (_f57307_ _lst157308_ _lst257309_)
        (let _lp57311_ ((_rest157313_ _lst157308_) (_rest257314_ _lst257309_))
          (let* ((_rest15731557323_ _rest157313_)
                 (_else5731757331_ (lambda () '#f))
                 (_K5731957373_
                  (lambda (_rest157334_ _x157335_)
                    (let* ((_rest25733657344_ _rest257314_)
                           (_else5733857352_ (lambda () '#f))
                           (_K5734057361_
                            (lambda (_rest257355_ _x257356_)
                              (let ((_$e57358_ (_f57307_ _x157335_ _x257356_)))
                                (if _$e57358_
                                    _$e57358_
                                    (let ()
                                      (declare (not safe))
                                      (_lp57311_
                                       _rest157334_
                                       _rest257355_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25733657344_))
                          (let ((_hd5734157364_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25733657344_)))
                                (_tl5734257366_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25733657344_))))
                            (let* ((_x257369_ _hd5734157364_)
                                   (_rest257371_ _tl5734257366_))
                              (declare (not safe))
                              (_K5734057361_ _rest257371_ _x257369_)))
                          (let () (declare (not safe)) (_else5733857352_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15731557323_))
                (let ((_hd5732057376_
                       (let () (declare (not safe)) (##car _rest15731557323_)))
                      (_tl5732157378_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15731557323_))))
                  (let* ((_x157381_ _hd5732057376_)
                         (_rest157383_ _tl5732157378_))
                    (declare (not safe))
                    (_K5731957373_ _rest157383_ _x157381_)))
                (let () (declare (not safe)) (_else5731757331_)))))))
    (define ormap
      (lambda _g62877_
        (let ((_g62876_ (let () (declare (not safe)) (##length _g62877_))))
          (cond ((let () (declare (not safe)) (##fx= _g62876_ 2))
                 (apply (lambda (_f57295_ _lst57296_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f57295_ _lst57296_)))
                        _g62877_))
                ((let () (declare (not safe)) (##fx= _g62876_ 3))
                 (apply (lambda (_f57298_ _lst157299_ _lst257300_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f57298_ _lst157299_ _lst257300_)))
                        _g62877_))
                ((let () (declare (not safe)) (##fx>= _g62876_ 3))
                 (apply ormap* _g62877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g62877_))))))
    (define ormap*
      (lambda (_f57285_ . _rest57286_)
        (let _recur57288_ ((_rest57290_ _rest57286_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57290_))
              (let ((_$e57292_ (apply _f57285_ (map car _rest57290_))))
                (if _$e57292_
                    _$e57292_
                    (let ((__tmp62878 (map cdr _rest57290_)))
                      (declare (not safe))
                      (_recur57288_ __tmp62878))))
              '#f))))
    (define filter
      (lambda (_f57243_ _lst57244_)
        (let _recur57246_ ((_lst57248_ _lst57244_))
          (let* ((_lst5724957257_ _lst57248_)
                 (_else5725157265_ (lambda () '()))
                 (_K5725357273_
                  (lambda (_rest57268_ _hd57269_)
                    (if (_f57243_ _hd57269_)
                        (let ((_tail57271_
                               (let ()
                                 (declare (not safe))
                                 (_recur57246_ _rest57268_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail57271_ _rest57268_))
                              _lst57248_
                              (let ()
                                (declare (not safe))
                                (cons _hd57269_ _tail57271_))))
                        (let ()
                          (declare (not safe))
                          (_recur57246_ _rest57268_))))))
            (if (let () (declare (not safe)) (##pair? _lst5724957257_))
                (let ((_hd5725457276_
                       (let () (declare (not safe)) (##car _lst5724957257_)))
                      (_tl5725557278_
                       (let () (declare (not safe)) (##cdr _lst5724957257_))))
                  (let* ((_hd57281_ _hd5725457276_)
                         (_rest57283_ _tl5725557278_))
                    (declare (not safe))
                    (_K5725357273_ _rest57283_ _hd57281_)))
                (let () (declare (not safe)) (_else5725157265_)))))))
    (define filter-map1
      (lambda (_f57198_ _lst57199_)
        (let _recur57201_ ((_rest57203_ _lst57199_))
          (let* ((_rest5720457212_ _rest57203_)
                 (_else5720657220_ (lambda () '()))
                 (_K5720857231_
                  (lambda (_rest57223_ _x57224_)
                    (let ((_$e57226_ (_f57198_ _x57224_)))
                      (if _$e57226_
                          ((lambda (_r57229_)
                             (let ((__tmp62879
                                    (let ()
                                      (declare (not safe))
                                      (_recur57201_ _rest57223_))))
                               (declare (not safe))
                               (cons _r57229_ __tmp62879)))
                           _$e57226_)
                          (let ()
                            (declare (not safe))
                            (_recur57201_ _rest57223_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5720457212_))
                (let ((_hd5720957234_
                       (let () (declare (not safe)) (##car _rest5720457212_)))
                      (_tl5721057236_
                       (let () (declare (not safe)) (##cdr _rest5720457212_))))
                  (let* ((_x57239_ _hd5720957234_)
                         (_rest57241_ _tl5721057236_))
                    (declare (not safe))
                    (_K5720857231_ _rest57241_ _x57239_)))
                (let () (declare (not safe)) (_else5720657220_)))))))
    (define filter-map2
      (lambda (_f57118_ _lst157119_ _lst257120_)
        (let _recur57122_ ((_rest157124_ _lst157119_)
                           (_rest257125_ _lst257120_))
          (let* ((_rest15712657134_ _rest157124_)
                 (_else5712857142_ (lambda () '()))
                 (_K5713057186_
                  (lambda (_rest157145_ _x157146_)
                    (let* ((_rest25714757155_ _rest257125_)
                           (_else5714957163_ (lambda () '()))
                           (_K5715157174_
                            (lambda (_rest257166_ _x257167_)
                              (let ((_$e57169_ (_f57118_ _x157146_ _x257167_)))
                                (if _$e57169_
                                    ((lambda (_r57172_)
                                       (let ((__tmp62880
                                              (let ()
                                                (declare (not safe))
                                                (_recur57122_
                                                 _rest157145_
                                                 _rest257166_))))
                                         (declare (not safe))
                                         (cons _r57172_ __tmp62880)))
                                     _$e57169_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur57122_
                                       _rest157145_
                                       _rest257166_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25714757155_))
                          (let ((_hd5715257177_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25714757155_)))
                                (_tl5715357179_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25714757155_))))
                            (let* ((_x257182_ _hd5715257177_)
                                   (_rest257184_ _tl5715357179_))
                              (declare (not safe))
                              (_K5715157174_ _rest257184_ _x257182_)))
                          (let () (declare (not safe)) (_else5714957163_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15712657134_))
                (let ((_hd5713157189_
                       (let () (declare (not safe)) (##car _rest15712657134_)))
                      (_tl5713257191_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15712657134_))))
                  (let* ((_x157194_ _hd5713157189_)
                         (_rest157196_ _tl5713257191_))
                    (declare (not safe))
                    (_K5713057186_ _rest157196_ _x157194_)))
                (let () (declare (not safe)) (_else5712857142_)))))))
    (define filter-map
      (lambda _g62882_
        (let ((_g62881_ (let () (declare (not safe)) (##length _g62882_))))
          (cond ((let () (declare (not safe)) (##fx= _g62881_ 2))
                 (apply (lambda (_f57106_ _lst57107_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f57106_ _lst57107_)))
                        _g62882_))
                ((let () (declare (not safe)) (##fx= _g62881_ 3))
                 (apply (lambda (_f57109_ _lst157110_ _lst257111_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f57109_ _lst157110_ _lst257111_)))
                        _g62882_))
                ((let () (declare (not safe)) (##fx>= _g62881_ 3))
                 (apply filter-map* _g62882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g62882_))))))
    (define filter-map*
      (lambda (_f57094_ . _rest57095_)
        (let _recur57097_ ((_rest57099_ _rest57095_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57099_))
              (let ((_$e57101_ (apply _f57094_ (map car _rest57099_))))
                (if _$e57101_
                    ((lambda (_r57104_)
                       (let ((__tmp62884
                              (let ((__tmp62885 (map cdr _rest57099_)))
                                (declare (not safe))
                                (_recur57097_ __tmp62885))))
                         (declare (not safe))
                         (cons _r57104_ __tmp62884)))
                     _$e57101_)
                    (let ((__tmp62883 (map cdr _rest57099_)))
                      (declare (not safe))
                      (_recur57097_ __tmp62883))))
              '()))))
    (define iota__%
      (lambda (_count57062_ _start57063_ _step57064_)
        (if (fixnum? _count57062_)
            '#!void
            (error '"expected fixnum" _count57062_))
        (if (let () (declare (not safe)) (number? _start57063_))
            '#!void
            (error '"expected number" _start57063_))
        (if (let () (declare (not safe)) (number? _step57064_))
            '#!void
            (error '"expected number" _step57064_))
        (let ((_root57066_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57068_ ((_i57070_ '0)
                          (_x57071_ _start57063_)
                          (_tl57072_ _root57066_))
            (if (let () (declare (not safe)) (##fx< _i57070_ _count57062_))
                (let ((_tl*57074_
                       (let () (declare (not safe)) (cons _x57071_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl57072_ _tl*57074_))
                  (let ((__tmp62887
                         (let () (declare (not safe)) (##fx+ _i57070_ '1)))
                        (__tmp62886 (+ _x57071_ _step57064_)))
                    (declare (not safe))
                    (_lp57068_ __tmp62887 __tmp62886 _tl*57074_)))
                (let () (declare (not safe)) (##cdr _root57066_)))))))
    (define iota__0
      (lambda (_count57079_)
        (let* ((_start57081_ '0) (_step57083_ '1))
          (declare (not safe))
          (iota__% _count57079_ _start57081_ _step57083_))))
    (define iota__1
      (lambda (_count57085_ _start57086_)
        (let ((_step57088_ '1))
          (declare (not safe))
          (iota__% _count57085_ _start57086_ _step57088_))))
    (define iota
      (lambda _g62889_
        (let ((_g62888_ (let () (declare (not safe)) (##length _g62889_))))
          (cond ((let () (declare (not safe)) (##fx= _g62888_ 1))
                 (apply (lambda (_count57079_)
                          (let () (declare (not safe)) (iota__0 _count57079_)))
                        _g62889_))
                ((let () (declare (not safe)) (##fx= _g62888_ 2))
                 (apply (lambda (_count57085_ _start57086_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count57085_ _start57086_)))
                        _g62889_))
                ((let () (declare (not safe)) (##fx= _g62888_ 3))
                 (apply (lambda (_count57090_ _start57091_ _step57092_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count57090_ _start57091_ _step57092_)))
                        _g62889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g62889_))))))
    (define last-pair
      (lambda (_lst57036_)
        (let* ((_lst5703757044_ _lst57036_)
               (_E5703957048_
                (lambda () (error '"No clause matching" _lst5703757044_)))
               (_K5704057053_
                (lambda (_rest57051_)
                  (if (let () (declare (not safe)) (pair? _rest57051_))
                      (let () (declare (not safe)) (last-pair _rest57051_))
                      _lst57036_))))
          (if (let () (declare (not safe)) (##pair? _lst5703757044_))
              (let* ((_tl5704257056_
                      (let () (declare (not safe)) (##cdr _lst5703757044_)))
                     (_rest57059_ _tl5704257056_))
                (declare (not safe))
                (_K5704057053_ _rest57059_))
              (let () (declare (not safe)) (_E5703957048_))))))
    (define last
      (lambda (_lst57034_)
        (car (let () (declare (not safe)) (last-pair _lst57034_)))))
    (define assgetq__%
      (lambda (_key57012_ _lst57014_ _default57016_)
        (let ((_$e57019_
               (if (let () (declare (not safe)) (pair? _lst57014_))
                   (assq _key57012_ _lst57014_)
                   '#f)))
          (if _$e57019_
              (cdr _$e57019_)
              (if (let () (declare (not safe)) (procedure? _default57016_))
                  (_default57016_ _key57012_)
                  _default57016_)))))
    (define assgetq__0
      (lambda (_key57025_ _lst57026_)
        (let ((_default57028_ '#f))
          (declare (not safe))
          (assgetq__% _key57025_ _lst57026_ _default57028_))))
    (define assgetq
      (lambda _g62891_
        (let ((_g62890_ (let () (declare (not safe)) (##length _g62891_))))
          (cond ((let () (declare (not safe)) (##fx= _g62890_ 2))
                 (apply (lambda (_key57025_ _lst57026_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57025_ _lst57026_)))
                        _g62891_))
                ((let () (declare (not safe)) (##fx= _g62890_ 3))
                 (apply (lambda (_key57030_ _lst57031_ _default57032_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57030_ _lst57031_ _default57032_)))
                        _g62891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g62891_))))))
    (define assgetv__%
      (lambda (_key56989_ _lst56991_ _default56993_)
        (let ((_$e56996_
               (if (let () (declare (not safe)) (pair? _lst56991_))
                   (assv _key56989_ _lst56991_)
                   '#f)))
          (if _$e56996_
              (cdr _$e56996_)
              (if (let () (declare (not safe)) (procedure? _default56993_))
                  (_default56993_ _key56989_)
                  _default56993_)))))
    (define assgetv__0
      (lambda (_key57002_ _lst57003_)
        (let ((_default57005_ '#f))
          (declare (not safe))
          (assgetv__% _key57002_ _lst57003_ _default57005_))))
    (define assgetv
      (lambda _g62893_
        (let ((_g62892_ (let () (declare (not safe)) (##length _g62893_))))
          (cond ((let () (declare (not safe)) (##fx= _g62892_ 2))
                 (apply (lambda (_key57002_ _lst57003_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57002_ _lst57003_)))
                        _g62893_))
                ((let () (declare (not safe)) (##fx= _g62892_ 3))
                 (apply (lambda (_key57007_ _lst57008_ _default57009_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57007_ _lst57008_ _default57009_)))
                        _g62893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g62893_))))))
    (define assget__%
      (lambda (_key56966_ _lst56968_ _default56970_)
        (let ((_$e56973_
               (if (let () (declare (not safe)) (pair? _lst56968_))
                   (assoc _key56966_ _lst56968_)
                   '#f)))
          (if _$e56973_
              (cdr _$e56973_)
              (if (let () (declare (not safe)) (procedure? _default56970_))
                  (_default56970_ _key56966_)
                  _default56970_)))))
    (define assget__0
      (lambda (_key56979_ _lst56980_)
        (let ((_default56982_ '#f))
          (declare (not safe))
          (assget__% _key56979_ _lst56980_ _default56982_))))
    (define assget
      (lambda _g62895_
        (let ((_g62894_ (let () (declare (not safe)) (##length _g62895_))))
          (cond ((let () (declare (not safe)) (##fx= _g62894_ 2))
                 (apply (lambda (_key56979_ _lst56980_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key56979_ _lst56980_)))
                        _g62895_))
                ((let () (declare (not safe)) (##fx= _g62894_ 3))
                 (apply (lambda (_key56984_ _lst56985_ _default56986_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key56984_ _lst56985_ _default56986_)))
                        _g62895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g62895_))))))
    (define pgetq__%
      (lambda (_key56895_ _lst56897_ _default56899_)
        (let _lp56902_ ((_rest56905_ _lst56897_))
          (let* ((_rest5690756917_ _rest56905_)
                 (_else5690956925_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56899_))
                        (_default56899_ _key56895_)
                        _default56899_)))
                 (_K5691156934_
                  (lambda (_rest56928_ _v56929_ _k56931_)
                    (if (let () (declare (not safe)) (eq? _k56931_ _key56895_))
                        _v56929_
                        (let ()
                          (declare (not safe))
                          (_lp56902_ _rest56928_))))))
            (if (let () (declare (not safe)) (##pair? _rest5690756917_))
                (let ((_hd5691256937_
                       (let () (declare (not safe)) (##car _rest5690756917_)))
                      (_tl5691356939_
                       (let () (declare (not safe)) (##cdr _rest5690756917_))))
                  (let ((_k56942_ _hd5691256937_))
                    (if (let () (declare (not safe)) (##pair? _tl5691356939_))
                        (let ((_hd5691456944_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5691356939_)))
                              (_tl5691556946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5691356939_))))
                          (let* ((_v56949_ _hd5691456944_)
                                 (_rest56951_ _tl5691556946_))
                            (declare (not safe))
                            (_K5691156934_ _rest56951_ _v56949_ _k56942_)))
                        (let () (declare (not safe)) (_else5690956925_)))))
                (let () (declare (not safe)) (_else5690956925_)))))))
    (define pgetq__0
      (lambda (_key56956_ _lst56957_)
        (let ((_default56959_ '#f))
          (declare (not safe))
          (pgetq__% _key56956_ _lst56957_ _default56959_))))
    (define pgetq
      (lambda _g62897_
        (let ((_g62896_ (let () (declare (not safe)) (##length _g62897_))))
          (cond ((let () (declare (not safe)) (##fx= _g62896_ 2))
                 (apply (lambda (_key56956_ _lst56957_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key56956_ _lst56957_)))
                        _g62897_))
                ((let () (declare (not safe)) (##fx= _g62896_ 3))
                 (apply (lambda (_key56961_ _lst56962_ _default56963_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key56961_ _lst56962_ _default56963_)))
                        _g62897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g62897_))))))
    (define pgetv__%
      (lambda (_key56824_ _lst56826_ _default56828_)
        (let _lp56831_ ((_rest56834_ _lst56826_))
          (let* ((_rest5683656846_ _rest56834_)
                 (_else5683856854_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56828_))
                        (_default56828_ _key56824_)
                        _default56828_)))
                 (_K5684056863_
                  (lambda (_rest56857_ _v56858_ _k56860_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k56860_ _key56824_))
                        _v56858_
                        (let ()
                          (declare (not safe))
                          (_lp56831_ _rest56857_))))))
            (if (let () (declare (not safe)) (##pair? _rest5683656846_))
                (let ((_hd5684156866_
                       (let () (declare (not safe)) (##car _rest5683656846_)))
                      (_tl5684256868_
                       (let () (declare (not safe)) (##cdr _rest5683656846_))))
                  (let ((_k56871_ _hd5684156866_))
                    (if (let () (declare (not safe)) (##pair? _tl5684256868_))
                        (let ((_hd5684356873_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5684256868_)))
                              (_tl5684456875_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5684256868_))))
                          (let* ((_v56878_ _hd5684356873_)
                                 (_rest56880_ _tl5684456875_))
                            (declare (not safe))
                            (_K5684056863_ _rest56880_ _v56878_ _k56871_)))
                        (let () (declare (not safe)) (_else5683856854_)))))
                (let () (declare (not safe)) (_else5683856854_)))))))
    (define pgetv__0
      (lambda (_key56885_ _lst56886_)
        (let ((_default56888_ '#f))
          (declare (not safe))
          (pgetv__% _key56885_ _lst56886_ _default56888_))))
    (define pgetv
      (lambda _g62899_
        (let ((_g62898_ (let () (declare (not safe)) (##length _g62899_))))
          (cond ((let () (declare (not safe)) (##fx= _g62898_ 2))
                 (apply (lambda (_key56885_ _lst56886_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key56885_ _lst56886_)))
                        _g62899_))
                ((let () (declare (not safe)) (##fx= _g62898_ 3))
                 (apply (lambda (_key56890_ _lst56891_ _default56892_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key56890_ _lst56891_ _default56892_)))
                        _g62899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g62899_))))))
    (define pget__%
      (lambda (_key56753_ _lst56755_ _default56757_)
        (let _lp56760_ ((_rest56763_ _lst56755_))
          (let* ((_rest5676556775_ _rest56763_)
                 (_else5676756783_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56757_))
                        (_default56757_ _key56753_)
                        _default56757_)))
                 (_K5676956792_
                  (lambda (_rest56786_ _v56787_ _k56789_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k56789_ _key56753_))
                        _v56787_
                        (let ()
                          (declare (not safe))
                          (_lp56760_ _rest56786_))))))
            (if (let () (declare (not safe)) (##pair? _rest5676556775_))
                (let ((_hd5677056795_
                       (let () (declare (not safe)) (##car _rest5676556775_)))
                      (_tl5677156797_
                       (let () (declare (not safe)) (##cdr _rest5676556775_))))
                  (let ((_k56800_ _hd5677056795_))
                    (if (let () (declare (not safe)) (##pair? _tl5677156797_))
                        (let ((_hd5677256802_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5677156797_)))
                              (_tl5677356804_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5677156797_))))
                          (let* ((_v56807_ _hd5677256802_)
                                 (_rest56809_ _tl5677356804_))
                            (declare (not safe))
                            (_K5676956792_ _rest56809_ _v56807_ _k56800_)))
                        (let () (declare (not safe)) (_else5676756783_)))))
                (let () (declare (not safe)) (_else5676756783_)))))))
    (define pget__0
      (lambda (_key56814_ _lst56815_)
        (let ((_default56817_ '#f))
          (declare (not safe))
          (pget__% _key56814_ _lst56815_ _default56817_))))
    (define pget
      (lambda _g62901_
        (let ((_g62900_ (let () (declare (not safe)) (##length _g62901_))))
          (cond ((let () (declare (not safe)) (##fx= _g62900_ 2))
                 (apply (lambda (_key56814_ _lst56815_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key56814_ _lst56815_)))
                        _g62901_))
                ((let () (declare (not safe)) (##fx= _g62900_ 3))
                 (apply (lambda (_key56819_ _lst56820_ _default56821_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key56819_ _lst56820_ _default56821_)))
                        _g62901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g62901_))))))
    (define find
      (lambda (_pred56746_ _lst56747_)
        (let ((_$e56749_
               (let () (declare (not safe)) (memf _pred56746_ _lst56747_))))
          (if _$e56749_ (car _$e56749_) '#f))))
    (define memf
      (lambda (_proc56706_ _lst56707_)
        (let _lp56709_ ((_rest56711_ _lst56707_))
          (let* ((_rest5671256720_ _rest56711_)
                 (_else5671456728_ (lambda () '#f))
                 (_K5671656734_
                  (lambda (_tl56731_ _hd56732_)
                    (if (_proc56706_ _hd56732_)
                        _rest56711_
                        (let () (declare (not safe)) (_lp56709_ _tl56731_))))))
            (if (let () (declare (not safe)) (##pair? _rest5671256720_))
                (let ((_hd5671756737_
                       (let () (declare (not safe)) (##car _rest5671256720_)))
                      (_tl5671856739_
                       (let () (declare (not safe)) (##cdr _rest5671256720_))))
                  (let* ((_hd56742_ _hd5671756737_) (_tl56744_ _tl5671856739_))
                    (declare (not safe))
                    (_K5671656734_ _tl56744_ _hd56742_)))
                (let () (declare (not safe)) (_else5671456728_)))))))
    (define remove1
      (lambda (_el56659_ _lst56661_)
        (let _lp56664_ ((_rest56667_ _lst56661_) (_r56669_ '()))
          (let* ((_rest5667156679_ _rest56667_)
                 (_else5667356687_ (lambda () _lst56661_))
                 (_K5667556694_
                  (lambda (_rest56690_ _hd56691_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el56659_ _hd56691_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56690_ _r56669_))
                        (let ((__tmp62902
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56691_ _r56669_))))
                          (declare (not safe))
                          (_lp56664_ _rest56690_ __tmp62902))))))
            (if (let () (declare (not safe)) (##pair? _rest5667156679_))
                (let ((_hd5667656697_
                       (let () (declare (not safe)) (##car _rest5667156679_)))
                      (_tl5667756699_
                       (let () (declare (not safe)) (##cdr _rest5667156679_))))
                  (let* ((_hd56702_ _hd5667656697_)
                         (_rest56704_ _tl5667756699_))
                    (declare (not safe))
                    (_K5667556694_ _rest56704_ _hd56702_)))
                (let () (declare (not safe)) (_else5667356687_)))))))
    (define remv
      (lambda (_el56612_ _lst56614_)
        (let _lp56617_ ((_rest56620_ _lst56614_) (_r56622_ '()))
          (let* ((_rest5662456632_ _rest56620_)
                 (_else5662656640_ (lambda () _lst56614_))
                 (_K5662856647_
                  (lambda (_rest56643_ _hd56644_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el56612_ _hd56644_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56643_ _r56622_))
                        (let ((__tmp62903
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56644_ _r56622_))))
                          (declare (not safe))
                          (_lp56617_ _rest56643_ __tmp62903))))))
            (if (let () (declare (not safe)) (##pair? _rest5662456632_))
                (let ((_hd5662956650_
                       (let () (declare (not safe)) (##car _rest5662456632_)))
                      (_tl5663056652_
                       (let () (declare (not safe)) (##cdr _rest5662456632_))))
                  (let* ((_hd56655_ _hd5662956650_)
                         (_rest56657_ _tl5663056652_))
                    (declare (not safe))
                    (_K5662856647_ _rest56657_ _hd56655_)))
                (let () (declare (not safe)) (_else5662656640_)))))))
    (define remq
      (lambda (_el56565_ _lst56567_)
        (let _lp56570_ ((_rest56573_ _lst56567_) (_r56575_ '()))
          (let* ((_rest5657756585_ _rest56573_)
                 (_else5657956593_ (lambda () _lst56567_))
                 (_K5658156600_
                  (lambda (_rest56596_ _hd56597_)
                    (if (let () (declare (not safe)) (eq? _el56565_ _hd56597_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56596_ _r56575_))
                        (let ((__tmp62904
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56597_ _r56575_))))
                          (declare (not safe))
                          (_lp56570_ _rest56596_ __tmp62904))))))
            (if (let () (declare (not safe)) (##pair? _rest5657756585_))
                (let ((_hd5658256603_
                       (let () (declare (not safe)) (##car _rest5657756585_)))
                      (_tl5658356605_
                       (let () (declare (not safe)) (##cdr _rest5657756585_))))
                  (let* ((_hd56608_ _hd5658256603_)
                         (_rest56610_ _tl5658356605_))
                    (declare (not safe))
                    (_K5658156600_ _rest56610_ _hd56608_)))
                (let () (declare (not safe)) (_else5657956593_)))))))
    (define remf
      (lambda (_proc56524_ _lst56525_)
        (let _lp56527_ ((_rest56529_ _lst56525_) (_r56530_ '()))
          (let* ((_rest5653156539_ _rest56529_)
                 (_else5653356547_ (lambda () _lst56525_))
                 (_K5653556553_
                  (lambda (_rest56550_ _hd56551_)
                    (if (_proc56524_ _hd56551_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56550_ _r56530_))
                        (let ((__tmp62905
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56551_ _r56530_))))
                          (declare (not safe))
                          (_lp56527_ _rest56550_ __tmp62905))))))
            (if (let () (declare (not safe)) (##pair? _rest5653156539_))
                (let ((_hd5653656556_
                       (let () (declare (not safe)) (##car _rest5653156539_)))
                      (_tl5653756558_
                       (let () (declare (not safe)) (##cdr _rest5653156539_))))
                  (let* ((_hd56561_ _hd5653656556_)
                         (_rest56563_ _tl5653756558_))
                    (declare (not safe))
                    (_K5653556553_ _rest56563_ _hd56561_)))
                (let () (declare (not safe)) (_else5653356547_)))))))
    (define 1+ (lambda (_x56522_) (+ _x56522_ '1)))
    (define 1- (lambda (_x56520_) (- _x56520_ '1)))
    (define fx1+ (lambda (_x56518_) (fx+ _x56518_ '1)))
    (define fx1- (lambda (_x56516_) (fx- _x56516_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x56514_)
        (if (fixnum? _x56514_)
            (let () (declare (not safe)) (##fx>= _x56514_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x56512_)
        (if (fixnum? _x56512_)
            (let () (declare (not safe)) (##fx> _x56512_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x56510_) (let () (declare (not safe)) (eq? _x56510_ '0))))
    (define fx<0?
      (lambda (_x56508_)
        (if (fixnum? _x56508_)
            (let () (declare (not safe)) (##fx< _x56508_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x56506_)
        (if (fixnum? _x56506_)
            (let () (declare (not safe)) (##fx<= _x56506_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x56504_)
        (if (let () (declare (not safe)) (symbol? _x56504_))
            (let ((__tmp62906 (uninterned-symbol? _x56504_)))
              (declare (not safe))
              (not __tmp62906))
            '#f)))
    (define display-as-string
      (lambda (_x56476_ _port56477_)
        (if (or (let () (declare (not safe)) (string? _x56476_))
                (let () (declare (not safe)) (symbol? _x56476_))
                (keyword? _x56476_)
                (let () (declare (not safe)) (number? _x56476_))
                (let () (declare (not safe)) (char? _x56476_)))
            (display _x56476_ _port56477_)
            (if (let () (declare (not safe)) (pair? _x56476_))
                (begin
                  (let ((__tmp62907 (car _x56476_)))
                    (declare (not safe))
                    (display-as-string __tmp62907 _port56477_))
                  (let ((__tmp62908 (cdr _x56476_)))
                    (declare (not safe))
                    (display-as-string __tmp62908 _port56477_)))
                (if (let () (declare (not safe)) (vector? _x56476_))
                    (vector-for-each
                     (lambda (_g5649056492_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5649056492_ _port56477_)))
                     _x56476_)
                    (if (or (let () (declare (not safe)) (null? _x56476_))
                            (let ()
                              (declare (not safe))
                              (eq? _x56476_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x56476_))
                            (let () (declare (not safe)) (boolean? _x56476_)))
                        '#!void
                        (error '"cannot convert as string" _x56476_)))))))
    (define as-string__0
      (lambda (_x56464_)
        (if (let () (declare (not safe)) (string? _x56464_))
            _x56464_
            (if (let () (declare (not safe)) (symbol? _x56464_))
                (symbol->string _x56464_)
                (if (keyword? _x56464_)
                    (keyword->string _x56464_)
                    (call-with-output-string
                     '()
                     (lambda (_g5646556467_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x56464_ _g5646556467_)))))))))
    (define as-string__1
      (lambda _args56470_
        (call-with-output-string
         '()
         (lambda (_g5647156473_)
           (let ()
             (declare (not safe))
             (display-as-string _args56470_ _g5647156473_))))))
    (define as-string
      (lambda _g62910_
        (let ((_g62909_ (let () (declare (not safe)) (##length _g62910_))))
          (cond ((let () (declare (not safe)) (##fx= _g62909_ 1))
                 (apply (lambda (_x56464_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x56464_)))
                        _g62910_))
                (#t (apply as-string__1 _g62910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g62910_))))))
    (define make-symbol__0
      (lambda (_x56460_)
        (if (interned-symbol? _x56460_)
            _x56460_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x56460_))))))
    (define make-symbol__1
      (lambda _args56462_ (string->symbol (apply as-string _args56462_))))
    (define make-symbol
      (lambda _g62912_
        (let ((_g62911_ (let () (declare (not safe)) (##length _g62912_))))
          (cond ((let () (declare (not safe)) (##fx= _g62911_ 1))
                 (apply (lambda (_x56460_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x56460_)))
                        _g62912_))
                (#t (apply make-symbol__1 _g62912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g62912_))))))
    (define make-keyword__0
      (lambda (_x56456_)
        (if (interned-keyword? _x56456_)
            _x56456_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x56456_))))))
    (define make-keyword__1
      (lambda _args56458_ (string->keyword (apply as-string _args56458_))))
    (define make-keyword
      (lambda _g62914_
        (let ((_g62913_ (let () (declare (not safe)) (##length _g62914_))))
          (cond ((let () (declare (not safe)) (##fx= _g62913_ 1))
                 (apply (lambda (_x56456_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x56456_)))
                        _g62914_))
                (#t (apply make-keyword__1 _g62914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g62914_))))))
    (define interned-keyword?
      (lambda (_x56454_)
        (if (keyword? _x56454_)
            (let ((__tmp62915 (uninterned-keyword? _x56454_)))
              (declare (not safe))
              (not __tmp62915))
            '#f)))
    (define symbol->keyword
      (lambda (_sym56452_)
        ((if (uninterned-symbol? _sym56452_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym56452_))))
    (define keyword->symbol
      (lambda (_kw56450_)
        ((if (uninterned-keyword? _kw56450_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw56450_))))
    (define bytes->string__%
      (lambda (_bstr56428_ _enc56429_)
        (if (let () (declare (not safe)) (eq? _enc56429_ 'UTF-8))
            (utf8->string _bstr56428_)
            (let* ((_in56431_
                    (open-input-u8vector
                     (let ((__tmp62916
                            (let ((__tmp62917
                                   (let ((__tmp62918
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr56428_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp62918))))
                              (declare (not safe))
                              (cons _enc56429_ __tmp62917))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp62916))))
                   (_len56433_ (u8vector-length _bstr56428_))
                   (_out56435_ (make-string _len56433_))
                   (_n56437_
                    (read-substring _out56435_ '0 _len56433_ _in56431_)))
              (string-shrink! _out56435_ _n56437_)
              _out56435_))))
    (define bytes->string__0
      (lambda (_bstr56443_)
        (let ((_enc56445_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr56443_ _enc56445_))))
    (define bytes->string
      (lambda _g62920_
        (let ((_g62919_ (let () (declare (not safe)) (##length _g62920_))))
          (cond ((let () (declare (not safe)) (##fx= _g62919_ 1))
                 (apply (lambda (_bstr56443_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr56443_)))
                        _g62920_))
                ((let () (declare (not safe)) (##fx= _g62919_ 2))
                 (apply (lambda (_bstr56447_ _enc56448_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr56447_ _enc56448_)))
                        _g62920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g62920_))))))
    (define string->bytes__%
      (lambda (_str56414_ _enc56415_)
        (if (let () (declare (not safe)) (eq? _enc56415_ 'UTF-8))
            (string->utf8 _str56414_)
            (substring->bytes
             _str56414_
             '0
             (string-length _str56414_)
             _enc56415_))))
    (define string->bytes__0
      (lambda (_str56420_)
        (let ((_enc56422_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str56420_ _enc56422_))))
    (define string->bytes
      (lambda _g62922_
        (let ((_g62921_ (let () (declare (not safe)) (##length _g62922_))))
          (cond ((let () (declare (not safe)) (##fx= _g62921_ 1))
                 (apply (lambda (_str56420_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str56420_)))
                        _g62922_))
                ((let () (declare (not safe)) (##fx= _g62921_ 2))
                 (apply (lambda (_str56424_ _enc56425_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str56424_ _enc56425_)))
                        _g62922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g62922_))))))
    (define substring->bytes__%
      (lambda (_str56392_ _start56393_ _end56394_ _enc56395_)
        (if (let () (declare (not safe)) (eq? _enc56395_ 'UTF-8))
            (string->utf8 _str56392_ _start56393_ _end56394_)
            (let ((_out56397_
                   (open-output-u8vector
                    (let ((__tmp62923
                           (let ()
                             (declare (not safe))
                             (cons _enc56395_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp62923)))))
              (write-substring _str56392_ _start56393_ _end56394_ _out56397_)
              (get-output-u8vector _out56397_)))))
    (define substring->bytes__0
      (lambda (_str56402_ _start56403_ _end56404_)
        (let ((_enc56406_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str56402_
           _start56403_
           _end56404_
           _enc56406_))))
    (define substring->bytes
      (lambda _g62925_
        (let ((_g62924_ (let () (declare (not safe)) (##length _g62925_))))
          (cond ((let () (declare (not safe)) (##fx= _g62924_ 3))
                 (apply (lambda (_str56402_ _start56403_ _end56404_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str56402_
                             _start56403_
                             _end56404_)))
                        _g62925_))
                ((let () (declare (not safe)) (##fx= _g62924_ 4))
                 (apply (lambda (_str56408_ _start56409_ _end56410_ _enc56411_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str56408_
                             _start56409_
                             _end56410_
                             _enc56411_)))
                        _g62925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g62925_))))))
    (define string-empty?
      (lambda (_str56389_)
        (let ((__tmp62926 (string-length _str56389_)))
          (declare (not safe))
          (##fxzero? __tmp62926))))
    (define string-prefix?
      (lambda (_prefix56379_ _str56380_)
        (let ((_str-len56382_ (string-length _str56380_))
              (_prefix-len56383_ (string-length _prefix56379_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len56383_ _str-len56382_))
              (let _lp56385_ ((_i56387_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i56387_ _prefix-len56383_))
                    (if (let ((__tmp62929
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str56380_ _i56387_)))
                              (__tmp62928
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix56379_ _i56387_))))
                          (declare (not safe))
                          (eq? __tmp62929 __tmp62928))
                        (let ((__tmp62927
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i56387_ '1))))
                          (declare (not safe))
                          (_lp56385_ __tmp62927))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str56357_ _char56358_ _start56359_)
        (let ((_len56361_ (string-length _str56357_)))
          (let _lp56363_ ((_k56365_ _start56359_))
            (if (let () (declare (not safe)) (##fx< _k56365_ _len56361_))
                (if (let ((__tmp62931
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56357_ _k56365_))))
                      (declare (not safe))
                      (eq? _char56358_ __tmp62931))
                    _k56365_
                    (let ((__tmp62930
                           (let () (declare (not safe)) (##fx+ _k56365_ '1))))
                      (declare (not safe))
                      (_lp56363_ __tmp62930)))
                '#f)))))
    (define string-index__0
      (lambda (_str56370_ _char56371_)
        (let ((_start56373_ '0))
          (declare (not safe))
          (string-index__% _str56370_ _char56371_ _start56373_))))
    (define string-index
      (lambda _g62933_
        (let ((_g62932_ (let () (declare (not safe)) (##length _g62933_))))
          (cond ((let () (declare (not safe)) (##fx= _g62932_ 2))
                 (apply (lambda (_str56370_ _char56371_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str56370_ _char56371_)))
                        _g62933_))
                ((let () (declare (not safe)) (##fx= _g62932_ 3))
                 (apply (lambda (_str56375_ _char56376_ _start56377_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str56375_
                             _char56376_
                             _start56377_)))
                        _g62933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g62933_))))))
    (define string-rindex__%
      (lambda (_str56328_ _char56329_ _start56330_)
        (let* ((_len56332_ (string-length _str56328_))
               (_start56337_
                (let ((_$e56334_ _start56330_))
                  (if _$e56334_
                      _$e56334_
                      (let () (declare (not safe)) (##fx- _len56332_ '1))))))
          (let _lp56340_ ((_k56342_ _start56337_))
            (if (let () (declare (not safe)) (##fx>= _k56342_ '0))
                (if (let ((__tmp62935
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56328_ _k56342_))))
                      (declare (not safe))
                      (eq? _char56329_ __tmp62935))
                    _k56342_
                    (let ((__tmp62934
                           (let () (declare (not safe)) (##fx- _k56342_ '1))))
                      (declare (not safe))
                      (_lp56340_ __tmp62934)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str56347_ _char56348_)
        (let ((_start56350_ '#f))
          (declare (not safe))
          (string-rindex__% _str56347_ _char56348_ _start56350_))))
    (define string-rindex
      (lambda _g62937_
        (let ((_g62936_ (let () (declare (not safe)) (##length _g62937_))))
          (cond ((let () (declare (not safe)) (##fx= _g62936_ 2))
                 (apply (lambda (_str56347_ _char56348_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str56347_ _char56348_)))
                        _g62937_))
                ((let () (declare (not safe)) (##fx= _g62936_ 3))
                 (apply (lambda (_str56352_ _char56353_ _start56354_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str56352_
                             _char56353_
                             _start56354_)))
                        _g62937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g62937_))))))
    (define string-split
      (lambda (_str56312_ _char56313_)
        (let ((_len56315_ (string-length _str56312_)))
          (let _lp56317_ ((_start56319_ '0) (_r56320_ '()))
            (let ((_$e56322_
                   (let ()
                     (declare (not safe))
                     (string-index _str56312_ _char56313_ _start56319_))))
              (if _$e56322_
                  ((lambda (_end56325_)
                     (let ((__tmp62941
                            (let ()
                              (declare (not safe))
                              (##fx+ _end56325_ '1)))
                           (__tmp62939
                            (let ((__tmp62940
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56312_
                                      _start56319_
                                      _end56325_))))
                              (declare (not safe))
                              (cons __tmp62940 _r56320_))))
                       (declare (not safe))
                       (_lp56317_ __tmp62941 __tmp62939)))
                   _$e56322_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start56319_ _len56315_))
                      (let ((__tmp62938
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56312_
                                      _start56319_
                                      _len56315_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp62938 _r56320_))
                      (reverse _r56320_))))))))
    (define string-join
      (lambda (_strs56217_ _join56218_)
        (letrec ((_join-length56220_
                  (lambda (_strs56271_ _jlen56272_)
                    (let _lp56274_ ((_rest56276_ _strs56271_) (_len56277_ '0))
                      (let* ((_rest5627856286_ _rest56276_)
                             (_else5628056294_ (lambda () '0))
                             (_K5628256300_
                              (lambda (_rest56297_ _hd56298_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd56298_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest56297_))
                                        (let ((__tmp62943
                                               (let ((__tmp62944
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd56298_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp62944
                                                        _jlen56272_
                                                        _len56277_))))
                                          (declare (not safe))
                                          (_lp56274_ _rest56297_ __tmp62943))
                                        (let ((__tmp62942
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd56298_))))
                                          (declare (not safe))
                                          (##fx+ __tmp62942 _len56277_)))
                                    (error '"expected string" _hd56298_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5627856286_))
                            (let ((_hd5628356303_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5627856286_)))
                                  (_tl5628456305_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5627856286_))))
                              (let* ((_hd56308_ _hd5628356303_)
                                     (_rest56310_ _tl5628456305_))
                                (declare (not safe))
                                (_K5628256300_ _rest56310_ _hd56308_)))
                            (let ()
                              (declare (not safe))
                              (_else5628056294_))))))))
          (let* ((_join56222_
                  (if (let () (declare (not safe)) (char? _join56218_))
                      (string _join56218_)
                      (if (let () (declare (not safe)) (string? _join56218_))
                          _join56218_
                          (error '"expected string or char" _join56218_))))
                 (_jlen56224_
                  (let () (declare (not safe)) (##string-length _join56222_)))
                 (_olen56226_
                  (let ()
                    (declare (not safe))
                    (_join-length56220_ _strs56217_ _jlen56224_)))
                 (_ostr56228_ (make-string _olen56226_)))
            (let _lp56231_ ((_rest56233_ _strs56217_) (_k56234_ '0))
              (let* ((_rest5623556243_ _rest56233_)
                     (_else5623756251_ (lambda () '""))
                     (_K5623956259_
                      (lambda (_rest56254_ _hd56255_)
                        (let ((_hdlen56257_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd56255_))))
                          (if (let () (declare (not safe)) (pair? _rest56254_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56255_
                                   '0
                                   _hdlen56257_
                                   _ostr56228_
                                   _k56234_))
                                (let ((__tmp62945
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56234_ _hdlen56257_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join56222_
                                   '0
                                   _jlen56224_
                                   _ostr56228_
                                   __tmp62945))
                                (let ((__tmp62946
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56234_
                                                _hdlen56257_
                                                _jlen56224_))))
                                  (declare (not safe))
                                  (_lp56231_ _rest56254_ __tmp62946)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56255_
                                   '0
                                   _hdlen56257_
                                   _ostr56228_
                                   _k56234_))
                                _ostr56228_))))))
                (if (let () (declare (not safe)) (##pair? _rest5623556243_))
                    (let ((_hd5624056262_
                           (let ()
                             (declare (not safe))
                             (##car _rest5623556243_)))
                          (_tl5624156264_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5623556243_))))
                      (let* ((_hd56267_ _hd5624056262_)
                             (_rest56269_ _tl5624156264_))
                        (declare (not safe))
                        (_K5623956259_ _rest56269_ _hd56267_)))
                    (let () (declare (not safe)) (_else5623756251_)))))))))
    (define read-u8vector
      (lambda (_bytes56214_ _port56215_)
        (read-subu8vector
         _bytes56214_
         '0
         (u8vector-length _bytes56214_)
         _port56215_)))
    (define write-u8vector
      (lambda (_bytes56211_ _port56212_)
        (write-subu8vector
         _bytes56211_
         '0
         (u8vector-length _bytes56211_)
         _port56212_)))
    (define read-string
      (lambda (_str56208_ _port56209_)
        (read-substring _str56208_ '0 (string-length _str56208_) _port56209_)))
    (define write-string
      (lambda (_str56205_ _port56206_)
        (write-substring
         _str56205_
         '0
         (string-length _str56205_)
         _port56206_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag56174_
               _dbg-exprs56175_
               _dbg-thunks56176_
               _expr56177_
               _thunk56178_)
        (letrec ((_o56180_ (current-output-port))
                 (_e56181_ (current-error-port))
                 (_p56182_ (DBG-printer))
                 (_f56183_
                  (lambda () (force-output _o56180_) (force-output _e56181_)))
                 (_d56184_ (lambda (_x56191_) (display _x56191_ _e56181_)))
                 (_w56185_ (lambda (_x56193_) (_p56182_ _x56193_ _e56181_)))
                 (_n56186_ (lambda () (newline _e56181_)))
                 (_v56187_
                  (lambda (_l56196_)
                    (for-each
                     (lambda (_x56198_)
                       (let () (declare (not safe)) (_d56184_ '" "))
                       (let () (declare (not safe)) (_w56185_ _x56198_)))
                     _l56196_)
                    (let () (declare (not safe)) (_n56186_))))
                 (_x56188_
                  (lambda (_expr56200_ _thunk56201_)
                    (let () (declare (not safe)) (_f56183_))
                    (let () (declare (not safe)) (_d56184_ '"  "))
                    (let () (declare (not safe)) (_w56185_ _expr56200_))
                    (let () (declare (not safe)) (_d56184_ '" =>"))
                    (call-with-values
                     _thunk56201_
                     (lambda _x56203_
                       (let () (declare (not safe)) (_v56187_ _x56203_))
                       (let () (declare (not safe)) (_f56183_))
                       (apply values _x56203_))))))
          (if _tag56174_
              (begin
                (if (let () (declare (not safe)) (eq? _tag56174_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f56183_))
                      (let () (declare (not safe)) (_d56184_ _tag56174_))
                      (let () (declare (not safe)) (_n56186_))))
                (for-each _x56188_ _dbg-exprs56175_ _dbg-thunks56176_)
                (if _thunk56178_
                    (let ()
                      (declare (not safe))
                      (_x56188_ _expr56177_ _thunk56178_))
                    '#!void))
              (if _thunk56178_ (_thunk56178_) '#!void)))))))
