(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707767841)
  (begin
    (define displayln
      (lambda _args59115_
        (let _lp59117_ ((_rest59119_ _args59115_))
          (let* ((_rest5912059128_ _rest59119_)
                 (_else5912259136_ (lambda () (newline)))
                 (_K5912459142_
                  (lambda (_rest59139_ _hd59140_)
                    (display _hd59140_)
                    (let () (declare (not safe)) (_lp59117_ _rest59139_)))))
            (if (let () (declare (not safe)) (##pair? _rest5912059128_))
                (let ((_hd5912559145_
                       (let () (declare (not safe)) (##car _rest5912059128_)))
                      (_tl5912659147_
                       (let () (declare (not safe)) (##cdr _rest5912059128_))))
                  (let* ((_hd59150_ _hd5912559145_)
                         (_rest59152_ _tl5912659147_))
                    (declare (not safe))
                    (_K5912459142_ _rest59152_ _hd59150_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args59113_ (for-each display _args59113_)))
    (define file-newer?
      (lambda (_file159106_ _file259107_)
        (letrec ((_modification-time59109_
                  (lambda (_file59111_)
                    (let ((__tmp64115
                           (file-info-last-modification-time
                            (file-info _file59111_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp64115)))))
          (let ((__tmp64117
                 (let ()
                   (declare (not safe))
                   (_modification-time59109_ _file159106_)))
                (__tmp64116
                 (let ()
                   (declare (not safe))
                   (_modification-time59109_ _file259107_))))
            (declare (not safe))
            (##fl> __tmp64117 __tmp64116)))))
    (define create-directory*__%
      (lambda (_dir59080_ _perms59081_)
        (letrec ((_create159083_
                  (lambda (_path59094_)
                    (if (file-exists? _path59094_)
                        (if (let ((__tmp64118 (file-type _path59094_)))
                              (declare (not safe))
                              (eq? __tmp64118 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path59094_))
                        (if _perms59081_
                            (create-directory
                             (list 'path:
                                   _path59094_
                                   'permissions:
                                   _perms59081_))
                            (create-directory _path59094_))))))
          (if (file-exists? _dir59080_)
              '#!void
              (let _lp59085_ ((_start59087_ '0))
                (let ((_$e59089_
                       (let ()
                         (declare (not safe))
                         (string-index _dir59080_ '#\/ _start59087_))))
                  (if _$e59089_
                      ((lambda (_x59092_)
                         (if (let () (declare (not safe)) (##fx> _x59092_ '0))
                             (let ((__tmp64119
                                    (substring _dir59080_ '0 _x59092_)))
                               (declare (not safe))
                               (_create159083_ __tmp64119))
                             '#!void)
                         (let ((__tmp64120
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x59092_ '1))))
                           (declare (not safe))
                           (_lp59085_ __tmp64120)))
                       _$e59089_)
                      (let ()
                        (declare (not safe))
                        (_create159083_ _dir59080_)))))))))
    (define create-directory*__0
      (lambda (_dir59099_)
        (let ((_perms59101_ '493))
          (declare (not safe))
          (create-directory*__% _dir59099_ _perms59101_))))
    (define create-directory*
      (lambda _g64122_
        (let ((_g64121_ (let () (declare (not safe)) (##length _g64122_))))
          (cond ((let () (declare (not safe)) (##fx= _g64121_ 1))
                 (apply (lambda (_dir59099_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir59099_)))
                        _g64122_))
                ((let () (declare (not safe)) (##fx= _g64121_ 2))
                 (apply (lambda (_dir59103_ _perms59104_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir59103_ _perms59104_)))
                        _g64122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g64122_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g64123_ '#t))
    (define true?
      (lambda (_obj59076_) (let () (declare (not safe)) (eq? _obj59076_ '#t))))
    (define false (lambda _g64124_ '#f))
    (define void (lambda _g64125_ '#!void))
    (define void?
      (lambda (_obj59072_)
        (let () (declare (not safe)) (eq? _obj59072_ '#!void))))
    (define eof-object (lambda _g64126_ '#!eof))
    (define identity (lambda (_obj59069_) _obj59069_))
    (define dssl-object?
      (lambda (_obj59067_)
        (if (memq _obj59067_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj59065_)
        (let () (declare (not safe)) (eq? _obj59065_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj59063_)
        (let () (declare (not safe)) (eq? _obj59063_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj59061_)
        (let () (declare (not safe)) (eq? _obj59061_ '#!optional))))
    (define immediate?
      (lambda (_obj59057_)
        (let* ((_t59059_ (let () (declare (not safe)) (##type _obj59057_)))
               (__tmp64127
                (let () (declare (not safe)) (##fxand _t59059_ '1))))
          (declare (not safe))
          (##fxzero? __tmp64127))))
    (define nonnegative-fixnum?
      (lambda (_obj59055_)
        (if (fixnum? _obj59055_)
            (let ((__tmp64128 (fxnegative? _obj59055_)))
              (declare (not safe))
              (not __tmp64128))
            '#f)))
    (define values-count
      (lambda (_obj59053_)
        (if (let () (declare (not safe)) (##values? _obj59053_))
            (let () (declare (not safe)) (##vector-length _obj59053_))
            '1)))
    (define values-ref
      (lambda (_obj59050_ _k59051_)
        (if (let () (declare (not safe)) (##values? _obj59050_))
            (let () (declare (not safe)) (##vector-ref _obj59050_ _k59051_))
            _obj59050_)))
    (define values->list
      (lambda (_obj59048_)
        (if (let () (declare (not safe)) (##values? _obj59048_))
            (let () (declare (not safe)) (##vector->list _obj59048_))
            (list _obj59048_))))
    (define subvector->list__%
      (lambda (_obj59033_ _start59034_)
        (let ((_lst59036_
               (let () (declare (not safe)) (##vector->list _obj59033_))))
          (list-tail _lst59036_ _start59034_))))
    (define subvector->list__0
      (lambda (_obj59041_)
        (let ((_start59043_ '0))
          (declare (not safe))
          (subvector->list__% _obj59041_ _start59043_))))
    (define subvector->list
      (lambda _g64130_
        (let ((_g64129_ (let () (declare (not safe)) (##length _g64130_))))
          (cond ((let () (declare (not safe)) (##fx= _g64129_ 1))
                 (apply (lambda (_obj59041_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj59041_)))
                        _g64130_))
                ((let () (declare (not safe)) (##fx= _g64129_ 2))
                 (apply (lambda (_obj59045_ _start59046_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj59045_ _start59046_)))
                        _g64130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g64130_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args59030_ (apply make-table 'test: eq? _args59030_)))
    (define make-hash-table-eqv
      (lambda _args59028_ (apply make-table 'test: eqv? _args59028_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst59025_ . _args59026_)
        (apply list->table _lst59025_ 'test: eq? _args59026_)))
    (define list->hash-table-eqv
      (lambda (_lst59022_ . _args59023_)
        (apply list->table _lst59022_ 'test: eqv? _args59023_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht59019_ _k59020_) (table-ref _ht59019_ _k59020_ '#f)))
    (define hash-put!
      (lambda (_ht59015_ _k59016_ _v59017_)
        (table-set! _ht59015_ _k59016_ _v59017_)))
    (define hash-update!__%
      (lambda (_ht58994_ _k58995_ _update58996_ _default58997_)
        (let* ((_value58999_
                (let ()
                  (declare (not safe))
                  (table-ref _ht58994_ _k58995_ _default58997_)))
               (__tmp64131 (_update58996_ _value58999_)))
          (declare (not safe))
          (table-set! _ht58994_ _k58995_ __tmp64131))))
    (define hash-update!__0
      (lambda (_ht59004_ _k59005_ _update59006_)
        (let ((_default59008_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht59004_ _k59005_ _update59006_ _default59008_))))
    (define hash-update!
      (lambda _g64133_
        (let ((_g64132_ (let () (declare (not safe)) (##length _g64133_))))
          (cond ((let () (declare (not safe)) (##fx= _g64132_ 3))
                 (apply (lambda (_ht59004_ _k59005_ _update59006_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht59004_
                             _k59005_
                             _update59006_)))
                        _g64133_))
                ((let () (declare (not safe)) (##fx= _g64132_ 4))
                 (apply (lambda (_ht59010_
                                 _k59011_
                                 _update59012_
                                 _default59013_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht59010_
                             _k59011_
                             _update59012_
                             _default59013_)))
                        _g64133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g64133_))))))
    (define hash-remove!
      (lambda (_ht58990_ _k58991_) (table-set! _ht58990_ _k58991_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht58988_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht58988_))))
    (define plist->hash-table__%
      (lambda (_plst58923_ _ht58924_)
        (let _lp58926_ ((_rest58928_ _plst58923_))
          (let* ((_rest5892958940_ _rest58928_)
                 (_E5893258944_
                  (lambda () (error '"No clause matching" _rest5892958940_))))
            (let ((_K5893458959_
                   (lambda (_rest58955_ _v58956_ _k58957_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht58924_ _k58957_ _v58956_))
                     (let () (declare (not safe)) (_lp58926_ _rest58955_))))
                  (_K5893358949_ (lambda () _ht58924_)))
              (let ((_try-match5893158952_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5892958940_ '()))
                           (let () (declare (not safe)) (_K5893358949_))
                           (let () (declare (not safe)) (_E5893258944_))))))
                (if (let () (declare (not safe)) (##pair? _rest5892958940_))
                    (let ((_tl5893658964_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5892958940_)))
                          (_hd5893558962_
                           (let ()
                             (declare (not safe))
                             (##car _rest5892958940_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5893658964_))
                          (let ((_tl5893858971_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5893658964_)))
                                (_hd5893758969_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5893658964_))))
                            (let ((_k58967_ _hd5893558962_)
                                  (_v58974_ _hd5893758969_)
                                  (_rest58976_ _tl5893858971_))
                              (let ()
                                (declare (not safe))
                                (_K5893458959_
                                 _rest58976_
                                 _v58974_
                                 _k58967_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5893158952_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5893158952_)))))))))
    (define plist->hash-table__0
      (lambda (_plst58981_)
        (let ((_ht58983_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst58981_ _ht58983_))))
    (define plist->hash-table
      (lambda _g64135_
        (let ((_g64134_ (let () (declare (not safe)) (##length _g64135_))))
          (cond ((let () (declare (not safe)) (##fx= _g64134_ 1))
                 (apply (lambda (_plst58981_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst58981_)))
                        _g64135_))
                ((let () (declare (not safe)) (##fx= _g64134_ 2))
                 (apply (lambda (_plst58985_ _ht58986_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst58985_ _ht58986_)))
                        _g64135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g64135_))))))
    (define plist->hash-table-eq
      (lambda (_plst58920_)
        (let ((__tmp64136
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst58920_ __tmp64136))))
    (define plist->hash-table-eqv
      (lambda (_plst58918_)
        (let ((__tmp64137
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst58918_ __tmp64137))))
    (define hash-key?
      (lambda (_ht58915_ _k58916_)
        (let ((__tmp64138
               (let ((__tmp64139
                      (let ()
                        (declare (not safe))
                        (table-ref _ht58915_ _k58916_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp64139 absent-value))))
          (declare (not safe))
          (not __tmp64138))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun58908_ _ht58909_)
        (let ((__tmp64140
               (lambda (_k58911_ _v58912_ _r58913_)
                 (let ((__tmp64141 (_fun58908_ _k58911_ _v58912_)))
                   (declare (not safe))
                   (cons __tmp64141 _r58913_)))))
          (declare (not safe))
          (hash-fold __tmp64140 '() _ht58909_))))
    (define hash-fold
      (lambda (_fun58899_ _iv58900_ _ht58901_)
        (let ((_ret58903_ _iv58900_))
          (let ((__tmp64142
                 (lambda (_k58905_ _v58906_)
                   (set! _ret58903_
                         (_fun58899_ _k58905_ _v58906_ _ret58903_)))))
            (declare (not safe))
            (table-for-each __tmp64142 _ht58901_))
          _ret58903_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht58894_)
        (let ((__tmp64143 (lambda (_k58896_ _v58897_) _k58896_)))
          (declare (not safe))
          (hash-map __tmp64143 _ht58894_))))
    (define hash-values
      (lambda (_ht58889_)
        (let ((__tmp64144 (lambda (_k58891_ _v58892_) _v58892_)))
          (declare (not safe))
          (hash-map __tmp64144 _ht58889_))))
    (define hash-copy
      (lambda (_hd58884_ . _rest58885_)
        (let ((_hd58887_ (table-copy _hd58884_)))
          (if (let () (declare (not safe)) (null? _rest58885_))
              _hd58887_
              (apply hash-copy! _hd58887_ _rest58885_)))))
    (define hash-copy!
      (lambda (_hd58879_ . _rest58880_)
        (for-each
         (lambda (_r58882_) (table-merge! _hd58879_ _r58882_))
         _rest58880_)
        _hd58879_))
    (define hash-merge
      (lambda (_hd58873_ . _rest58874_)
        (let ((__tmp64145
               (lambda (_tab58876_ _r58877_)
                 (table-merge _r58877_ _tab58876_))))
          (declare (not safe))
          (foldl1 __tmp64145 _hd58873_ _rest58874_))))
    (define hash-merge!
      (lambda (_hd58867_ . _rest58868_)
        (let ((__tmp64146
               (lambda (_tab58870_ _r58871_)
                 (table-merge! _r58871_ _tab58870_))))
          (declare (not safe))
          (foldl1 __tmp64146 _hd58867_ _rest58868_))))
    (define hash-clear!__%
      (lambda (_ht58852_ _size58853_)
        (let ((_gcht58855_
               (let () (declare (not safe)) (##vector-ref _ht58852_ '5))))
          (if (let ((__tmp64147 (fixnum? _gcht58855_)))
                (declare (not safe))
                (not __tmp64147))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58852_ '5 _size58853_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58860_)
        (let ((_size58862_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58860_ _size58862_))))
    (define hash-clear!
      (lambda _g64149_
        (let ((_g64148_ (let () (declare (not safe)) (##length _g64149_))))
          (cond ((let () (declare (not safe)) (##fx= _g64148_ 1))
                 (apply (lambda (_ht58860_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58860_)))
                        _g64149_))
                ((let () (declare (not safe)) (##fx= _g64148_ 2))
                 (apply (lambda (_ht58864_ _size58865_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58864_ _size58865_)))
                        _g64149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g64149_))))))
    (define make-list__%
      (lambda (_k58833_ _val58834_)
        (if (fixnum? _k58833_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58833_))
        (let _lp58836_ ((_n58838_ '0) (_r58839_ '()))
          (if (let () (declare (not safe)) (##fx< _n58838_ _k58833_))
              (let ((__tmp64151
                     (let () (declare (not safe)) (##fx+ _n58838_ '1)))
                    (__tmp64150
                     (let () (declare (not safe)) (cons _val58834_ _r58839_))))
                (declare (not safe))
                (_lp58836_ __tmp64151 __tmp64150))
              _r58839_))))
    (define make-list__0
      (lambda (_k58844_)
        (let ((_val58846_ '#f))
          (declare (not safe))
          (make-list__% _k58844_ _val58846_))))
    (define make-list
      (lambda _g64153_
        (let ((_g64152_ (let () (declare (not safe)) (##length _g64153_))))
          (cond ((let () (declare (not safe)) (##fx= _g64152_ 1))
                 (apply (lambda (_k58844_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58844_)))
                        _g64153_))
                ((let () (declare (not safe)) (##fx= _g64152_ 2))
                 (apply (lambda (_k58848_ _val58849_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58848_ _val58849_)))
                        _g64153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g64153_))))))
    (define cons*
      (lambda (_x58823_ _y58824_ . _rest58825_)
        (letrec ((_recur58827_
                  (lambda (_x58829_ _rest58830_)
                    (if (let () (declare (not safe)) (pair? _rest58830_))
                        (let ((__tmp64154
                               (let ((__tmp64156
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58830_)))
                                     (__tmp64155
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58830_))))
                                 (declare (not safe))
                                 (_recur58827_ __tmp64156 __tmp64155))))
                          (declare (not safe))
                          (cons _x58829_ __tmp64154))
                        _x58829_))))
          (let ((__tmp64157
                 (let ()
                   (declare (not safe))
                   (_recur58827_ _y58824_ _rest58825_))))
            (declare (not safe))
            (cons _x58823_ __tmp64157)))))
    (define foldl1
      (lambda (_f58781_ _iv58782_ _lst58783_)
        (let _lp58785_ ((_rest58787_ _lst58783_) (_r58788_ _iv58782_))
          (let* ((_rest5878958797_ _rest58787_)
                 (_else5879158805_ (lambda () _r58788_))
                 (_K5879358811_
                  (lambda (_rest58808_ _x58809_)
                    (let ((__tmp64158 (_f58781_ _x58809_ _r58788_)))
                      (declare (not safe))
                      (_lp58785_ _rest58808_ __tmp64158)))))
            (if (let () (declare (not safe)) (##pair? _rest5878958797_))
                (let ((_hd5879458814_
                       (let () (declare (not safe)) (##car _rest5878958797_)))
                      (_tl5879558816_
                       (let () (declare (not safe)) (##cdr _rest5878958797_))))
                  (let* ((_x58819_ _hd5879458814_)
                         (_rest58821_ _tl5879558816_))
                    (declare (not safe))
                    (_K5879358811_ _rest58821_ _x58819_)))
                (let () (declare (not safe)) (_else5879158805_)))))))
    (define foldl2
      (lambda (_f58704_ _iv58705_ _lst158706_ _lst258707_)
        (let _lp58709_ ((_rest158711_ _lst158706_)
                        (_rest258712_ _lst258707_)
                        (_r58713_ _iv58705_))
          (let* ((_rest15871458722_ _rest158711_)
                 (_else5871658730_ (lambda () _r58713_))
                 (_K5871858769_
                  (lambda (_rest158733_ _x158734_)
                    (let* ((_rest25873558743_ _rest258712_)
                           (_else5873758751_ (lambda () _r58713_))
                           (_K5873958757_
                            (lambda (_rest258754_ _x258755_)
                              (let ((__tmp64159
                                     (_f58704_ _x158734_ _x258755_ _r58713_)))
                                (declare (not safe))
                                (_lp58709_
                                 _rest158733_
                                 _rest258754_
                                 __tmp64159)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25873558743_))
                          (let ((_hd5874058760_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25873558743_)))
                                (_tl5874158762_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25873558743_))))
                            (let* ((_x258765_ _hd5874058760_)
                                   (_rest258767_ _tl5874158762_))
                              (declare (not safe))
                              (_K5873958757_ _rest258767_ _x258765_)))
                          (let () (declare (not safe)) (_else5873758751_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15871458722_))
                (let ((_hd5871958772_
                       (let () (declare (not safe)) (##car _rest15871458722_)))
                      (_tl5872058774_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15871458722_))))
                  (let* ((_x158777_ _hd5871958772_)
                         (_rest158779_ _tl5872058774_))
                    (declare (not safe))
                    (_K5871858769_ _rest158779_ _x158777_)))
                (let () (declare (not safe)) (_else5871658730_)))))))
    (define foldl
      (lambda _g64161_
        (let ((_g64160_ (let () (declare (not safe)) (##length _g64161_))))
          (cond ((let () (declare (not safe)) (##fx= _g64160_ 3))
                 (apply (lambda (_f58689_ _iv58690_ _lst58691_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58689_ _iv58690_ _lst58691_)))
                        _g64161_))
                ((let () (declare (not safe)) (##fx= _g64160_ 4))
                 (apply (lambda (_f58693_ _iv58694_ _lst158695_ _lst258696_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58693_
                                    _iv58694_
                                    _lst158695_
                                    _lst258696_)))
                        _g64161_))
                ((let () (declare (not safe)) (##fx>= _g64160_ 4))
                 (apply foldl* _g64161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g64161_))))))
    (define foldl*
      (lambda (_f58677_ _iv58678_ . _rest58679_)
        (let _recur58681_ ((_iv58683_ _iv58678_) (_rest58684_ _rest58679_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58684_))
              (let ((__tmp64163
                     (apply _f58677_
                            (let ((__tmp64165
                                   (lambda (_xs58686_ _r58687_)
                                     (let ((__tmp64166 (car _xs58686_)))
                                       (declare (not safe))
                                       (cons __tmp64166 _r58687_))))
                                  (__tmp64164 (list _iv58683_)))
                              (declare (not safe))
                              (foldr1 __tmp64165 __tmp64164 _rest58684_))))
                    (__tmp64162 (map cdr _rest58684_)))
                (declare (not safe))
                (_recur58681_ __tmp64163 __tmp64162))
              _iv58683_))))
    (define foldr1
      (lambda (_f58636_ _iv58637_ _lst58638_)
        (let _recur58640_ ((_rest58642_ _lst58638_))
          (let* ((_rest5864358651_ _rest58642_)
                 (_else5864558659_ (lambda () _iv58637_))
                 (_K5864758665_
                  (lambda (_rest58662_ _x58663_)
                    (_f58636_
                     _x58663_
                     (let ()
                       (declare (not safe))
                       (_recur58640_ _rest58662_))))))
            (if (let () (declare (not safe)) (##pair? _rest5864358651_))
                (let ((_hd5864858668_
                       (let () (declare (not safe)) (##car _rest5864358651_)))
                      (_tl5864958670_
                       (let () (declare (not safe)) (##cdr _rest5864358651_))))
                  (let* ((_x58673_ _hd5864858668_)
                         (_rest58675_ _tl5864958670_))
                    (declare (not safe))
                    (_K5864758665_ _rest58675_ _x58673_)))
                (let () (declare (not safe)) (_else5864558659_)))))))
    (define foldr2
      (lambda (_f58560_ _iv58561_ _lst158562_ _lst258563_)
        (let _recur58565_ ((_rest158567_ _lst158562_)
                           (_rest258568_ _lst258563_))
          (let* ((_rest15856958577_ _rest158567_)
                 (_else5857158585_ (lambda () _iv58561_))
                 (_K5857358624_
                  (lambda (_rest158588_ _x158589_)
                    (let* ((_rest25859058598_ _rest258568_)
                           (_else5859258606_ (lambda () _iv58561_))
                           (_K5859458612_
                            (lambda (_rest258609_ _x258610_)
                              (_f58560_
                               _x158589_
                               _x258610_
                               (let ()
                                 (declare (not safe))
                                 (_recur58565_ _rest158588_ _rest258609_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25859058598_))
                          (let ((_hd5859558615_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25859058598_)))
                                (_tl5859658617_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25859058598_))))
                            (let* ((_x258620_ _hd5859558615_)
                                   (_rest258622_ _tl5859658617_))
                              (declare (not safe))
                              (_K5859458612_ _rest258622_ _x258620_)))
                          (let () (declare (not safe)) (_else5859258606_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15856958577_))
                (let ((_hd5857458627_
                       (let () (declare (not safe)) (##car _rest15856958577_)))
                      (_tl5857558629_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15856958577_))))
                  (let* ((_x158632_ _hd5857458627_)
                         (_rest158634_ _tl5857558629_))
                    (declare (not safe))
                    (_K5857358624_ _rest158634_ _x158632_)))
                (let () (declare (not safe)) (_else5857158585_)))))))
    (define foldr
      (lambda _g64168_
        (let ((_g64167_ (let () (declare (not safe)) (##length _g64168_))))
          (cond ((let () (declare (not safe)) (##fx= _g64167_ 3))
                 (apply (lambda (_f58545_ _iv58546_ _lst58547_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58545_ _iv58546_ _lst58547_)))
                        _g64168_))
                ((let () (declare (not safe)) (##fx= _g64167_ 4))
                 (apply (lambda (_f58549_ _iv58550_ _lst158551_ _lst258552_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58549_
                                    _iv58550_
                                    _lst158551_
                                    _lst258552_)))
                        _g64168_))
                ((let () (declare (not safe)) (##fx>= _g64167_ 4))
                 (apply foldr* _g64168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g64168_))))))
    (define foldr*
      (lambda (_f58534_ _iv58535_ . _rest58536_)
        (let _recur58538_ ((_rest58540_ _rest58536_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58540_))
              (apply _f58534_
                     (let ((__tmp64171
                            (lambda (_xs58542_ _r58543_)
                              (let ((__tmp64172 (car _xs58542_)))
                                (declare (not safe))
                                (cons __tmp64172 _r58543_))))
                           (__tmp64169
                            (list (let ((__tmp64170 (map cdr _rest58540_)))
                                    (declare (not safe))
                                    (_recur58538_ __tmp64170)))))
                       (declare (not safe))
                       (foldr1 __tmp64171 __tmp64169 _rest58540_)))
              _iv58535_))))
    (define drop
      (lambda (_l58531_ _k58532_)
        (if (let () (declare (not safe)) (zero? _k58532_))
            _l58531_
            (let ((__tmp64174 (cdr _l58531_)) (__tmp64173 (- _k58532_ '1)))
              (declare (not safe))
              (drop __tmp64174 __tmp64173)))))
    (define remove-nulls!
      (lambda (_l58418_)
        (let* ((_l5841958432_ _l58418_)
               (_E5842358436_
                (lambda () (error '"No clause matching" _l5841958432_))))
          (let ((_K5842858521_
                 (lambda (_r58519_)
                   (let () (declare (not safe)) (remove-nulls! _r58519_))))
                (_K5842558508_
                 (lambda (_r58448_)
                   (let _loop58450_ ((_l58452_ _l58418_) (_r58453_ _r58448_))
                     (let* ((_r5845458467_ _r58453_)
                            (_E5845858471_
                             (lambda ()
                               (error '"No clause matching" _r5845458467_))))
                       (let ((_K5846358498_
                              (lambda (_rr58496_)
                                (set-cdr!
                                 _l58452_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58496_)))))
                             (_K5846058485_
                              (lambda (_rr58483_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58450_ _r58453_ _rr58483_))))
                             (_K5845958476_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5845458467_))
                             (let ((_tl5846558503_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5845458467_)))
                                   (_hd5846458501_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5845458467_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5846458501_))
                                   (let ((_rr58506_ _tl5846558503_))
                                     (declare (not safe))
                                     (_K5846358498_ _rr58506_))
                                   (let ((_rr58491_ _tl5846558503_))
                                     (declare (not safe))
                                     (_K5846058485_ _rr58491_))))
                             '#!void))))
                   _l58418_))
                (_K5842458441_ (lambda () _l58418_)))
            (if (let () (declare (not safe)) (##pair? _l5841958432_))
                (let ((_tl5843058526_
                       (let () (declare (not safe)) (##cdr _l5841958432_)))
                      (_hd5842958524_
                       (let () (declare (not safe)) (##car _l5841958432_))))
                  (if (let () (declare (not safe)) (##null? _hd5842958524_))
                      (let ((_r58529_ _tl5843058526_))
                        (declare (not safe))
                        (remove-nulls! _r58529_))
                      (let ((_r58514_ _tl5843058526_))
                        (declare (not safe))
                        (_K5842558508_ _r58514_))))
                (let () (declare (not safe)) (_K5842458441_)))))))
    (define append1!
      (lambda (_l58413_ _x58414_)
        (let ((_l258416_ (let () (declare (not safe)) (cons _x58414_ '()))))
          (if (let () (declare (not safe)) (pair? _l58413_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58413_))
               _l258416_)
              _l258416_))))
    (define append-reverse
      (lambda (_rev-head58410_ _tail58411_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58411_ _rev-head58410_))))
    (define append-reverse-until
      (lambda (_pred58363_ _rhead58364_ _tail58365_)
        (let _loop58367_ ((_rhead58369_ _rhead58364_)
                          (_tail58370_ _tail58365_))
          (let* ((_rhead5837158380_ _rhead58369_)
                 (_E5837458384_
                  (lambda () (error '"No clause matching" _rhead5837158380_))))
            (let ((_K5837858407_ (lambda () (values '() _tail58370_)))
                  (_K5837558391_
                   (lambda (_r58388_ _a58389_)
                     (if (_pred58363_ _a58389_)
                         (values _rhead58369_ _tail58370_)
                         (let ((__tmp64175
                                (let ()
                                  (declare (not safe))
                                  (cons _a58389_ _tail58370_))))
                           (declare (not safe))
                           (_loop58367_ _r58388_ __tmp64175))))))
              (let ((_try-match5837358403_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5837158380_))
                           (let ((_tl5837758396_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5837158380_)))
                                 (_hd5837658394_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5837158380_))))
                             (let ((_a58399_ _hd5837658394_)
                                   (_r58401_ _tl5837758396_))
                               (let ()
                                 (declare (not safe))
                                 (_K5837558391_ _r58401_ _a58399_))))
                           (let () (declare (not safe)) (_E5837458384_))))))
                (if (let () (declare (not safe)) (##null? _rhead5837158380_))
                    (let () (declare (not safe)) (_K5837858407_))
                    (let ()
                      (declare (not safe))
                      (_try-match5837358403_)))))))))
    (define andmap1
      (lambda (_f58323_ _lst58324_)
        (let _lp58326_ ((_rest58328_ _lst58324_))
          (let* ((_rest5832958337_ _rest58328_)
                 (_else5833158345_ (lambda () '#t))
                 (_K5833358351_
                  (lambda (_rest58348_ _x58349_)
                    (if (_f58323_ _x58349_)
                        (let () (declare (not safe)) (_lp58326_ _rest58348_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5832958337_))
                (let ((_hd5833458354_
                       (let () (declare (not safe)) (##car _rest5832958337_)))
                      (_tl5833558356_
                       (let () (declare (not safe)) (##cdr _rest5832958337_))))
                  (let* ((_x58359_ _hd5833458354_)
                         (_rest58361_ _tl5833558356_))
                    (declare (not safe))
                    (_K5833358351_ _rest58361_ _x58359_)))
                (let () (declare (not safe)) (_else5833158345_)))))))
    (define andmap2
      (lambda (_f58248_ _lst158249_ _lst258250_)
        (let _lp58252_ ((_rest158254_ _lst158249_) (_rest258255_ _lst258250_))
          (let* ((_rest15825658264_ _rest158254_)
                 (_else5825858272_ (lambda () '#t))
                 (_K5826058311_
                  (lambda (_rest158275_ _x158276_)
                    (let* ((_rest25827758285_ _rest258255_)
                           (_else5827958293_ (lambda () '#t))
                           (_K5828158299_
                            (lambda (_rest258296_ _x258297_)
                              (if (_f58248_ _x158276_ _x258297_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58252_ _rest158275_ _rest258296_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25827758285_))
                          (let ((_hd5828258302_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25827758285_)))
                                (_tl5828358304_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25827758285_))))
                            (let* ((_x258307_ _hd5828258302_)
                                   (_rest258309_ _tl5828358304_))
                              (declare (not safe))
                              (_K5828158299_ _rest258309_ _x258307_)))
                          (let () (declare (not safe)) (_else5827958293_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15825658264_))
                (let ((_hd5826158314_
                       (let () (declare (not safe)) (##car _rest15825658264_)))
                      (_tl5826258316_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15825658264_))))
                  (let* ((_x158319_ _hd5826158314_)
                         (_rest158321_ _tl5826258316_))
                    (declare (not safe))
                    (_K5826058311_ _rest158321_ _x158319_)))
                (let () (declare (not safe)) (_else5825858272_)))))))
    (define andmap
      (lambda _g64177_
        (let ((_g64176_ (let () (declare (not safe)) (##length _g64177_))))
          (cond ((let () (declare (not safe)) (##fx= _g64176_ 2))
                 (apply (lambda (_f58236_ _lst58237_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58236_ _lst58237_)))
                        _g64177_))
                ((let () (declare (not safe)) (##fx= _g64176_ 3))
                 (apply (lambda (_f58239_ _lst158240_ _lst258241_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58239_ _lst158240_ _lst258241_)))
                        _g64177_))
                ((let () (declare (not safe)) (##fx>= _g64176_ 3))
                 (apply andmap* _g64177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g64177_))))))
    (define andmap*
      (lambda (_f58229_ . _rest58230_)
        (let _recur58232_ ((_rest58234_ _rest58230_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58234_))
              (if (apply _f58229_ (map car _rest58234_))
                  (let ((__tmp64178 (map cdr _rest58234_)))
                    (declare (not safe))
                    (_recur58232_ __tmp64178))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f58186_ _lst58187_)
        (let _lp58189_ ((_rest58191_ _lst58187_))
          (let* ((_rest5819258200_ _rest58191_)
                 (_else5819458208_ (lambda () '#f))
                 (_K5819658217_
                  (lambda (_rest58211_ _x58212_)
                    (let ((_$e58214_ (_f58186_ _x58212_)))
                      (if _$e58214_
                          _$e58214_
                          (let ()
                            (declare (not safe))
                            (_lp58189_ _rest58211_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5819258200_))
                (let ((_hd5819758220_
                       (let () (declare (not safe)) (##car _rest5819258200_)))
                      (_tl5819858222_
                       (let () (declare (not safe)) (##cdr _rest5819258200_))))
                  (let* ((_x58225_ _hd5819758220_)
                         (_rest58227_ _tl5819858222_))
                    (declare (not safe))
                    (_K5819658217_ _rest58227_ _x58225_)))
                (let () (declare (not safe)) (_else5819458208_)))))))
    (define ormap2
      (lambda (_f58108_ _lst158109_ _lst258110_)
        (let _lp58112_ ((_rest158114_ _lst158109_) (_rest258115_ _lst258110_))
          (let* ((_rest15811658124_ _rest158114_)
                 (_else5811858132_ (lambda () '#f))
                 (_K5812058174_
                  (lambda (_rest158135_ _x158136_)
                    (let* ((_rest25813758145_ _rest258115_)
                           (_else5813958153_ (lambda () '#f))
                           (_K5814158162_
                            (lambda (_rest258156_ _x258157_)
                              (let ((_$e58159_ (_f58108_ _x158136_ _x258157_)))
                                (if _$e58159_
                                    _$e58159_
                                    (let ()
                                      (declare (not safe))
                                      (_lp58112_
                                       _rest158135_
                                       _rest258156_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25813758145_))
                          (let ((_hd5814258165_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25813758145_)))
                                (_tl5814358167_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25813758145_))))
                            (let* ((_x258170_ _hd5814258165_)
                                   (_rest258172_ _tl5814358167_))
                              (declare (not safe))
                              (_K5814158162_ _rest258172_ _x258170_)))
                          (let () (declare (not safe)) (_else5813958153_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15811658124_))
                (let ((_hd5812158177_
                       (let () (declare (not safe)) (##car _rest15811658124_)))
                      (_tl5812258179_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15811658124_))))
                  (let* ((_x158182_ _hd5812158177_)
                         (_rest158184_ _tl5812258179_))
                    (declare (not safe))
                    (_K5812058174_ _rest158184_ _x158182_)))
                (let () (declare (not safe)) (_else5811858132_)))))))
    (define ormap
      (lambda _g64180_
        (let ((_g64179_ (let () (declare (not safe)) (##length _g64180_))))
          (cond ((let () (declare (not safe)) (##fx= _g64179_ 2))
                 (apply (lambda (_f58096_ _lst58097_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f58096_ _lst58097_)))
                        _g64180_))
                ((let () (declare (not safe)) (##fx= _g64179_ 3))
                 (apply (lambda (_f58099_ _lst158100_ _lst258101_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f58099_ _lst158100_ _lst258101_)))
                        _g64180_))
                ((let () (declare (not safe)) (##fx>= _g64179_ 3))
                 (apply ormap* _g64180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g64180_))))))
    (define ormap*
      (lambda (_f58086_ . _rest58087_)
        (let _recur58089_ ((_rest58091_ _rest58087_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58091_))
              (let ((_$e58093_ (apply _f58086_ (map car _rest58091_))))
                (if _$e58093_
                    _$e58093_
                    (let ((__tmp64181 (map cdr _rest58091_)))
                      (declare (not safe))
                      (_recur58089_ __tmp64181))))
              '#f))))
    (define filter
      (lambda (_f58044_ _lst58045_)
        (let _recur58047_ ((_lst58049_ _lst58045_))
          (let* ((_lst5805058058_ _lst58049_)
                 (_else5805258066_ (lambda () '()))
                 (_K5805458074_
                  (lambda (_rest58069_ _hd58070_)
                    (if (_f58044_ _hd58070_)
                        (let ((_tail58072_
                               (let ()
                                 (declare (not safe))
                                 (_recur58047_ _rest58069_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail58072_ _rest58069_))
                              _lst58049_
                              (let ()
                                (declare (not safe))
                                (cons _hd58070_ _tail58072_))))
                        (let ()
                          (declare (not safe))
                          (_recur58047_ _rest58069_))))))
            (if (let () (declare (not safe)) (##pair? _lst5805058058_))
                (let ((_hd5805558077_
                       (let () (declare (not safe)) (##car _lst5805058058_)))
                      (_tl5805658079_
                       (let () (declare (not safe)) (##cdr _lst5805058058_))))
                  (let* ((_hd58082_ _hd5805558077_)
                         (_rest58084_ _tl5805658079_))
                    (declare (not safe))
                    (_K5805458074_ _rest58084_ _hd58082_)))
                (let () (declare (not safe)) (_else5805258066_)))))))
    (define filter-map1
      (lambda (_f57999_ _lst58000_)
        (let _recur58002_ ((_rest58004_ _lst58000_))
          (let* ((_rest5800558013_ _rest58004_)
                 (_else5800758021_ (lambda () '()))
                 (_K5800958032_
                  (lambda (_rest58024_ _x58025_)
                    (let ((_$e58027_ (_f57999_ _x58025_)))
                      (if _$e58027_
                          ((lambda (_r58030_)
                             (let ((__tmp64182
                                    (let ()
                                      (declare (not safe))
                                      (_recur58002_ _rest58024_))))
                               (declare (not safe))
                               (cons _r58030_ __tmp64182)))
                           _$e58027_)
                          (let ()
                            (declare (not safe))
                            (_recur58002_ _rest58024_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5800558013_))
                (let ((_hd5801058035_
                       (let () (declare (not safe)) (##car _rest5800558013_)))
                      (_tl5801158037_
                       (let () (declare (not safe)) (##cdr _rest5800558013_))))
                  (let* ((_x58040_ _hd5801058035_)
                         (_rest58042_ _tl5801158037_))
                    (declare (not safe))
                    (_K5800958032_ _rest58042_ _x58040_)))
                (let () (declare (not safe)) (_else5800758021_)))))))
    (define filter-map2
      (lambda (_f57919_ _lst157920_ _lst257921_)
        (let _recur57923_ ((_rest157925_ _lst157920_)
                           (_rest257926_ _lst257921_))
          (let* ((_rest15792757935_ _rest157925_)
                 (_else5792957943_ (lambda () '()))
                 (_K5793157987_
                  (lambda (_rest157946_ _x157947_)
                    (let* ((_rest25794857956_ _rest257926_)
                           (_else5795057964_ (lambda () '()))
                           (_K5795257975_
                            (lambda (_rest257967_ _x257968_)
                              (let ((_$e57970_ (_f57919_ _x157947_ _x257968_)))
                                (if _$e57970_
                                    ((lambda (_r57973_)
                                       (let ((__tmp64183
                                              (let ()
                                                (declare (not safe))
                                                (_recur57923_
                                                 _rest157946_
                                                 _rest257967_))))
                                         (declare (not safe))
                                         (cons _r57973_ __tmp64183)))
                                     _$e57970_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur57923_
                                       _rest157946_
                                       _rest257967_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25794857956_))
                          (let ((_hd5795357978_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25794857956_)))
                                (_tl5795457980_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25794857956_))))
                            (let* ((_x257983_ _hd5795357978_)
                                   (_rest257985_ _tl5795457980_))
                              (declare (not safe))
                              (_K5795257975_ _rest257985_ _x257983_)))
                          (let () (declare (not safe)) (_else5795057964_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15792757935_))
                (let ((_hd5793257990_
                       (let () (declare (not safe)) (##car _rest15792757935_)))
                      (_tl5793357992_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15792757935_))))
                  (let* ((_x157995_ _hd5793257990_)
                         (_rest157997_ _tl5793357992_))
                    (declare (not safe))
                    (_K5793157987_ _rest157997_ _x157995_)))
                (let () (declare (not safe)) (_else5792957943_)))))))
    (define filter-map
      (lambda _g64185_
        (let ((_g64184_ (let () (declare (not safe)) (##length _g64185_))))
          (cond ((let () (declare (not safe)) (##fx= _g64184_ 2))
                 (apply (lambda (_f57907_ _lst57908_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f57907_ _lst57908_)))
                        _g64185_))
                ((let () (declare (not safe)) (##fx= _g64184_ 3))
                 (apply (lambda (_f57910_ _lst157911_ _lst257912_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f57910_ _lst157911_ _lst257912_)))
                        _g64185_))
                ((let () (declare (not safe)) (##fx>= _g64184_ 3))
                 (apply filter-map* _g64185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g64185_))))))
    (define filter-map*
      (lambda (_f57895_ . _rest57896_)
        (let _recur57898_ ((_rest57900_ _rest57896_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57900_))
              (let ((_$e57902_ (apply _f57895_ (map car _rest57900_))))
                (if _$e57902_
                    ((lambda (_r57905_)
                       (let ((__tmp64187
                              (let ((__tmp64188 (map cdr _rest57900_)))
                                (declare (not safe))
                                (_recur57898_ __tmp64188))))
                         (declare (not safe))
                         (cons _r57905_ __tmp64187)))
                     _$e57902_)
                    (let ((__tmp64186 (map cdr _rest57900_)))
                      (declare (not safe))
                      (_recur57898_ __tmp64186))))
              '()))))
    (define iota__%
      (lambda (_count57863_ _start57864_ _step57865_)
        (if (fixnum? _count57863_)
            '#!void
            (error '"expected fixnum" _count57863_))
        (if (let () (declare (not safe)) (number? _start57864_))
            '#!void
            (error '"expected number" _start57864_))
        (if (let () (declare (not safe)) (number? _step57865_))
            '#!void
            (error '"expected number" _step57865_))
        (let ((_root57867_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57869_ ((_i57871_ '0)
                          (_x57872_ _start57864_)
                          (_tl57873_ _root57867_))
            (if (let () (declare (not safe)) (##fx< _i57871_ _count57863_))
                (let ((_tl*57875_
                       (let () (declare (not safe)) (cons _x57872_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl57873_ _tl*57875_))
                  (let ((__tmp64190
                         (let () (declare (not safe)) (##fx+ _i57871_ '1)))
                        (__tmp64189 (+ _x57872_ _step57865_)))
                    (declare (not safe))
                    (_lp57869_ __tmp64190 __tmp64189 _tl*57875_)))
                (let () (declare (not safe)) (##cdr _root57867_)))))))
    (define iota__0
      (lambda (_count57880_)
        (let* ((_start57882_ '0) (_step57884_ '1))
          (declare (not safe))
          (iota__% _count57880_ _start57882_ _step57884_))))
    (define iota__1
      (lambda (_count57886_ _start57887_)
        (let ((_step57889_ '1))
          (declare (not safe))
          (iota__% _count57886_ _start57887_ _step57889_))))
    (define iota
      (lambda _g64192_
        (let ((_g64191_ (let () (declare (not safe)) (##length _g64192_))))
          (cond ((let () (declare (not safe)) (##fx= _g64191_ 1))
                 (apply (lambda (_count57880_)
                          (let () (declare (not safe)) (iota__0 _count57880_)))
                        _g64192_))
                ((let () (declare (not safe)) (##fx= _g64191_ 2))
                 (apply (lambda (_count57886_ _start57887_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count57886_ _start57887_)))
                        _g64192_))
                ((let () (declare (not safe)) (##fx= _g64191_ 3))
                 (apply (lambda (_count57891_ _start57892_ _step57893_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count57891_ _start57892_ _step57893_)))
                        _g64192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g64192_))))))
    (define last-pair
      (lambda (_lst57837_)
        (let* ((_lst5783857845_ _lst57837_)
               (_E5784057849_
                (lambda () (error '"No clause matching" _lst5783857845_)))
               (_K5784157854_
                (lambda (_rest57852_)
                  (if (let () (declare (not safe)) (pair? _rest57852_))
                      (let () (declare (not safe)) (last-pair _rest57852_))
                      _lst57837_))))
          (if (let () (declare (not safe)) (##pair? _lst5783857845_))
              (let* ((_tl5784357857_
                      (let () (declare (not safe)) (##cdr _lst5783857845_)))
                     (_rest57860_ _tl5784357857_))
                (declare (not safe))
                (_K5784157854_ _rest57860_))
              (let () (declare (not safe)) (_E5784057849_))))))
    (define last
      (lambda (_lst57835_)
        (car (let () (declare (not safe)) (last-pair _lst57835_)))))
    (define assgetq__%
      (lambda (_key57813_ _lst57815_ _default57817_)
        (let ((_$e57820_
               (if (let () (declare (not safe)) (pair? _lst57815_))
                   (assq _key57813_ _lst57815_)
                   '#f)))
          (if _$e57820_
              (cdr _$e57820_)
              (if (let () (declare (not safe)) (procedure? _default57817_))
                  (_default57817_ _key57813_)
                  _default57817_)))))
    (define assgetq__0
      (lambda (_key57826_ _lst57827_)
        (let ((_default57829_ '#f))
          (declare (not safe))
          (assgetq__% _key57826_ _lst57827_ _default57829_))))
    (define assgetq
      (lambda _g64194_
        (let ((_g64193_ (let () (declare (not safe)) (##length _g64194_))))
          (cond ((let () (declare (not safe)) (##fx= _g64193_ 2))
                 (apply (lambda (_key57826_ _lst57827_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57826_ _lst57827_)))
                        _g64194_))
                ((let () (declare (not safe)) (##fx= _g64193_ 3))
                 (apply (lambda (_key57831_ _lst57832_ _default57833_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57831_ _lst57832_ _default57833_)))
                        _g64194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g64194_))))))
    (define assgetv__%
      (lambda (_key57790_ _lst57792_ _default57794_)
        (let ((_$e57797_
               (if (let () (declare (not safe)) (pair? _lst57792_))
                   (assv _key57790_ _lst57792_)
                   '#f)))
          (if _$e57797_
              (cdr _$e57797_)
              (if (let () (declare (not safe)) (procedure? _default57794_))
                  (_default57794_ _key57790_)
                  _default57794_)))))
    (define assgetv__0
      (lambda (_key57803_ _lst57804_)
        (let ((_default57806_ '#f))
          (declare (not safe))
          (assgetv__% _key57803_ _lst57804_ _default57806_))))
    (define assgetv
      (lambda _g64196_
        (let ((_g64195_ (let () (declare (not safe)) (##length _g64196_))))
          (cond ((let () (declare (not safe)) (##fx= _g64195_ 2))
                 (apply (lambda (_key57803_ _lst57804_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57803_ _lst57804_)))
                        _g64196_))
                ((let () (declare (not safe)) (##fx= _g64195_ 3))
                 (apply (lambda (_key57808_ _lst57809_ _default57810_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57808_ _lst57809_ _default57810_)))
                        _g64196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g64196_))))))
    (define assget__%
      (lambda (_key57767_ _lst57769_ _default57771_)
        (let ((_$e57774_
               (if (let () (declare (not safe)) (pair? _lst57769_))
                   (assoc _key57767_ _lst57769_)
                   '#f)))
          (if _$e57774_
              (cdr _$e57774_)
              (if (let () (declare (not safe)) (procedure? _default57771_))
                  (_default57771_ _key57767_)
                  _default57771_)))))
    (define assget__0
      (lambda (_key57780_ _lst57781_)
        (let ((_default57783_ '#f))
          (declare (not safe))
          (assget__% _key57780_ _lst57781_ _default57783_))))
    (define assget
      (lambda _g64198_
        (let ((_g64197_ (let () (declare (not safe)) (##length _g64198_))))
          (cond ((let () (declare (not safe)) (##fx= _g64197_ 2))
                 (apply (lambda (_key57780_ _lst57781_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57780_ _lst57781_)))
                        _g64198_))
                ((let () (declare (not safe)) (##fx= _g64197_ 3))
                 (apply (lambda (_key57785_ _lst57786_ _default57787_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57785_ _lst57786_ _default57787_)))
                        _g64198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g64198_))))))
    (define pgetq__%
      (lambda (_key57696_ _lst57698_ _default57700_)
        (let _lp57703_ ((_rest57706_ _lst57698_))
          (let* ((_rest5770857718_ _rest57706_)
                 (_else5771057726_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57700_))
                        (_default57700_ _key57696_)
                        _default57700_)))
                 (_K5771257735_
                  (lambda (_rest57729_ _v57730_ _k57732_)
                    (if (let () (declare (not safe)) (eq? _k57732_ _key57696_))
                        _v57730_
                        (let ()
                          (declare (not safe))
                          (_lp57703_ _rest57729_))))))
            (if (let () (declare (not safe)) (##pair? _rest5770857718_))
                (let ((_hd5771357738_
                       (let () (declare (not safe)) (##car _rest5770857718_)))
                      (_tl5771457740_
                       (let () (declare (not safe)) (##cdr _rest5770857718_))))
                  (let ((_k57743_ _hd5771357738_))
                    (if (let () (declare (not safe)) (##pair? _tl5771457740_))
                        (let ((_hd5771557745_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5771457740_)))
                              (_tl5771657747_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5771457740_))))
                          (let* ((_v57750_ _hd5771557745_)
                                 (_rest57752_ _tl5771657747_))
                            (declare (not safe))
                            (_K5771257735_ _rest57752_ _v57750_ _k57743_)))
                        (let () (declare (not safe)) (_else5771057726_)))))
                (let () (declare (not safe)) (_else5771057726_)))))))
    (define pgetq__0
      (lambda (_key57757_ _lst57758_)
        (let ((_default57760_ '#f))
          (declare (not safe))
          (pgetq__% _key57757_ _lst57758_ _default57760_))))
    (define pgetq
      (lambda _g64200_
        (let ((_g64199_ (let () (declare (not safe)) (##length _g64200_))))
          (cond ((let () (declare (not safe)) (##fx= _g64199_ 2))
                 (apply (lambda (_key57757_ _lst57758_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57757_ _lst57758_)))
                        _g64200_))
                ((let () (declare (not safe)) (##fx= _g64199_ 3))
                 (apply (lambda (_key57762_ _lst57763_ _default57764_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57762_ _lst57763_ _default57764_)))
                        _g64200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g64200_))))))
    (define pgetv__%
      (lambda (_key57625_ _lst57627_ _default57629_)
        (let _lp57632_ ((_rest57635_ _lst57627_))
          (let* ((_rest5763757647_ _rest57635_)
                 (_else5763957655_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57629_))
                        (_default57629_ _key57625_)
                        _default57629_)))
                 (_K5764157664_
                  (lambda (_rest57658_ _v57659_ _k57661_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57661_ _key57625_))
                        _v57659_
                        (let ()
                          (declare (not safe))
                          (_lp57632_ _rest57658_))))))
            (if (let () (declare (not safe)) (##pair? _rest5763757647_))
                (let ((_hd5764257667_
                       (let () (declare (not safe)) (##car _rest5763757647_)))
                      (_tl5764357669_
                       (let () (declare (not safe)) (##cdr _rest5763757647_))))
                  (let ((_k57672_ _hd5764257667_))
                    (if (let () (declare (not safe)) (##pair? _tl5764357669_))
                        (let ((_hd5764457674_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5764357669_)))
                              (_tl5764557676_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5764357669_))))
                          (let* ((_v57679_ _hd5764457674_)
                                 (_rest57681_ _tl5764557676_))
                            (declare (not safe))
                            (_K5764157664_ _rest57681_ _v57679_ _k57672_)))
                        (let () (declare (not safe)) (_else5763957655_)))))
                (let () (declare (not safe)) (_else5763957655_)))))))
    (define pgetv__0
      (lambda (_key57686_ _lst57687_)
        (let ((_default57689_ '#f))
          (declare (not safe))
          (pgetv__% _key57686_ _lst57687_ _default57689_))))
    (define pgetv
      (lambda _g64202_
        (let ((_g64201_ (let () (declare (not safe)) (##length _g64202_))))
          (cond ((let () (declare (not safe)) (##fx= _g64201_ 2))
                 (apply (lambda (_key57686_ _lst57687_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57686_ _lst57687_)))
                        _g64202_))
                ((let () (declare (not safe)) (##fx= _g64201_ 3))
                 (apply (lambda (_key57691_ _lst57692_ _default57693_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57691_ _lst57692_ _default57693_)))
                        _g64202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g64202_))))))
    (define pget__%
      (lambda (_key57554_ _lst57556_ _default57558_)
        (let _lp57561_ ((_rest57564_ _lst57556_))
          (let* ((_rest5756657576_ _rest57564_)
                 (_else5756857584_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57558_))
                        (_default57558_ _key57554_)
                        _default57558_)))
                 (_K5757057593_
                  (lambda (_rest57587_ _v57588_ _k57590_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57590_ _key57554_))
                        _v57588_
                        (let ()
                          (declare (not safe))
                          (_lp57561_ _rest57587_))))))
            (if (let () (declare (not safe)) (##pair? _rest5756657576_))
                (let ((_hd5757157596_
                       (let () (declare (not safe)) (##car _rest5756657576_)))
                      (_tl5757257598_
                       (let () (declare (not safe)) (##cdr _rest5756657576_))))
                  (let ((_k57601_ _hd5757157596_))
                    (if (let () (declare (not safe)) (##pair? _tl5757257598_))
                        (let ((_hd5757357603_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5757257598_)))
                              (_tl5757457605_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5757257598_))))
                          (let* ((_v57608_ _hd5757357603_)
                                 (_rest57610_ _tl5757457605_))
                            (declare (not safe))
                            (_K5757057593_ _rest57610_ _v57608_ _k57601_)))
                        (let () (declare (not safe)) (_else5756857584_)))))
                (let () (declare (not safe)) (_else5756857584_)))))))
    (define pget__0
      (lambda (_key57615_ _lst57616_)
        (let ((_default57618_ '#f))
          (declare (not safe))
          (pget__% _key57615_ _lst57616_ _default57618_))))
    (define pget
      (lambda _g64204_
        (let ((_g64203_ (let () (declare (not safe)) (##length _g64204_))))
          (cond ((let () (declare (not safe)) (##fx= _g64203_ 2))
                 (apply (lambda (_key57615_ _lst57616_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57615_ _lst57616_)))
                        _g64204_))
                ((let () (declare (not safe)) (##fx= _g64203_ 3))
                 (apply (lambda (_key57620_ _lst57621_ _default57622_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57620_ _lst57621_ _default57622_)))
                        _g64204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g64204_))))))
    (define find
      (lambda (_pred57547_ _lst57548_)
        (let ((_$e57550_
               (let () (declare (not safe)) (memf _pred57547_ _lst57548_))))
          (if _$e57550_ (car _$e57550_) '#f))))
    (define memf
      (lambda (_proc57507_ _lst57508_)
        (let _lp57510_ ((_rest57512_ _lst57508_))
          (let* ((_rest5751357521_ _rest57512_)
                 (_else5751557529_ (lambda () '#f))
                 (_K5751757535_
                  (lambda (_tl57532_ _hd57533_)
                    (if (_proc57507_ _hd57533_)
                        _rest57512_
                        (let () (declare (not safe)) (_lp57510_ _tl57532_))))))
            (if (let () (declare (not safe)) (##pair? _rest5751357521_))
                (let ((_hd5751857538_
                       (let () (declare (not safe)) (##car _rest5751357521_)))
                      (_tl5751957540_
                       (let () (declare (not safe)) (##cdr _rest5751357521_))))
                  (let* ((_hd57543_ _hd5751857538_) (_tl57545_ _tl5751957540_))
                    (declare (not safe))
                    (_K5751757535_ _tl57545_ _hd57543_)))
                (let () (declare (not safe)) (_else5751557529_)))))))
    (define remove1
      (lambda (_el57460_ _lst57462_)
        (let _lp57465_ ((_rest57468_ _lst57462_) (_r57470_ '()))
          (let* ((_rest5747257480_ _rest57468_)
                 (_else5747457488_ (lambda () _lst57462_))
                 (_K5747657495_
                  (lambda (_rest57491_ _hd57492_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57460_ _hd57492_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57491_ _r57470_))
                        (let ((__tmp64205
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57492_ _r57470_))))
                          (declare (not safe))
                          (_lp57465_ _rest57491_ __tmp64205))))))
            (if (let () (declare (not safe)) (##pair? _rest5747257480_))
                (let ((_hd5747757498_
                       (let () (declare (not safe)) (##car _rest5747257480_)))
                      (_tl5747857500_
                       (let () (declare (not safe)) (##cdr _rest5747257480_))))
                  (let* ((_hd57503_ _hd5747757498_)
                         (_rest57505_ _tl5747857500_))
                    (declare (not safe))
                    (_K5747657495_ _rest57505_ _hd57503_)))
                (let () (declare (not safe)) (_else5747457488_)))))))
    (define remv
      (lambda (_el57413_ _lst57415_)
        (let _lp57418_ ((_rest57421_ _lst57415_) (_r57423_ '()))
          (let* ((_rest5742557433_ _rest57421_)
                 (_else5742757441_ (lambda () _lst57415_))
                 (_K5742957448_
                  (lambda (_rest57444_ _hd57445_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57413_ _hd57445_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57444_ _r57423_))
                        (let ((__tmp64206
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57445_ _r57423_))))
                          (declare (not safe))
                          (_lp57418_ _rest57444_ __tmp64206))))))
            (if (let () (declare (not safe)) (##pair? _rest5742557433_))
                (let ((_hd5743057451_
                       (let () (declare (not safe)) (##car _rest5742557433_)))
                      (_tl5743157453_
                       (let () (declare (not safe)) (##cdr _rest5742557433_))))
                  (let* ((_hd57456_ _hd5743057451_)
                         (_rest57458_ _tl5743157453_))
                    (declare (not safe))
                    (_K5742957448_ _rest57458_ _hd57456_)))
                (let () (declare (not safe)) (_else5742757441_)))))))
    (define remq
      (lambda (_el57366_ _lst57368_)
        (let _lp57371_ ((_rest57374_ _lst57368_) (_r57376_ '()))
          (let* ((_rest5737857386_ _rest57374_)
                 (_else5738057394_ (lambda () _lst57368_))
                 (_K5738257401_
                  (lambda (_rest57397_ _hd57398_)
                    (if (let () (declare (not safe)) (eq? _el57366_ _hd57398_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57397_ _r57376_))
                        (let ((__tmp64207
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57398_ _r57376_))))
                          (declare (not safe))
                          (_lp57371_ _rest57397_ __tmp64207))))))
            (if (let () (declare (not safe)) (##pair? _rest5737857386_))
                (let ((_hd5738357404_
                       (let () (declare (not safe)) (##car _rest5737857386_)))
                      (_tl5738457406_
                       (let () (declare (not safe)) (##cdr _rest5737857386_))))
                  (let* ((_hd57409_ _hd5738357404_)
                         (_rest57411_ _tl5738457406_))
                    (declare (not safe))
                    (_K5738257401_ _rest57411_ _hd57409_)))
                (let () (declare (not safe)) (_else5738057394_)))))))
    (define remf
      (lambda (_proc57325_ _lst57326_)
        (let _lp57328_ ((_rest57330_ _lst57326_) (_r57331_ '()))
          (let* ((_rest5733257340_ _rest57330_)
                 (_else5733457348_ (lambda () _lst57326_))
                 (_K5733657354_
                  (lambda (_rest57351_ _hd57352_)
                    (if (_proc57325_ _hd57352_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57351_ _r57331_))
                        (let ((__tmp64208
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57352_ _r57331_))))
                          (declare (not safe))
                          (_lp57328_ _rest57351_ __tmp64208))))))
            (if (let () (declare (not safe)) (##pair? _rest5733257340_))
                (let ((_hd5733757357_
                       (let () (declare (not safe)) (##car _rest5733257340_)))
                      (_tl5733857359_
                       (let () (declare (not safe)) (##cdr _rest5733257340_))))
                  (let* ((_hd57362_ _hd5733757357_)
                         (_rest57364_ _tl5733857359_))
                    (declare (not safe))
                    (_K5733657354_ _rest57364_ _hd57362_)))
                (let () (declare (not safe)) (_else5733457348_)))))))
    (define 1+ (lambda (_x57323_) (+ _x57323_ '1)))
    (define 1- (lambda (_x57321_) (- _x57321_ '1)))
    (define fx1+ (lambda (_x57319_) (fx+ _x57319_ '1)))
    (define fx1- (lambda (_x57317_) (fx- _x57317_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57315_)
        (if (fixnum? _x57315_)
            (let () (declare (not safe)) (##fx>= _x57315_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57313_)
        (if (fixnum? _x57313_)
            (let () (declare (not safe)) (##fx> _x57313_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57311_) (let () (declare (not safe)) (eq? _x57311_ '0))))
    (define fx<0?
      (lambda (_x57309_)
        (if (fixnum? _x57309_)
            (let () (declare (not safe)) (##fx< _x57309_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57307_)
        (if (fixnum? _x57307_)
            (let () (declare (not safe)) (##fx<= _x57307_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57305_)
        (if (let () (declare (not safe)) (symbol? _x57305_))
            (let ((__tmp64209 (uninterned-symbol? _x57305_)))
              (declare (not safe))
              (not __tmp64209))
            '#f)))
    (define display-as-string
      (lambda (_x57277_ _port57278_)
        (if (or (let () (declare (not safe)) (string? _x57277_))
                (let () (declare (not safe)) (symbol? _x57277_))
                (keyword? _x57277_)
                (let () (declare (not safe)) (number? _x57277_))
                (let () (declare (not safe)) (char? _x57277_)))
            (display _x57277_ _port57278_)
            (if (let () (declare (not safe)) (pair? _x57277_))
                (begin
                  (let ((__tmp64210 (car _x57277_)))
                    (declare (not safe))
                    (display-as-string __tmp64210 _port57278_))
                  (let ((__tmp64211 (cdr _x57277_)))
                    (declare (not safe))
                    (display-as-string __tmp64211 _port57278_)))
                (if (let () (declare (not safe)) (vector? _x57277_))
                    (vector-for-each
                     (lambda (_g5729157293_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5729157293_ _port57278_)))
                     _x57277_)
                    (if (or (let () (declare (not safe)) (null? _x57277_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57277_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57277_))
                            (let () (declare (not safe)) (boolean? _x57277_)))
                        '#!void
                        (error '"cannot convert as string" _x57277_)))))))
    (define as-string__0
      (lambda (_x57265_)
        (if (let () (declare (not safe)) (string? _x57265_))
            _x57265_
            (if (let () (declare (not safe)) (symbol? _x57265_))
                (symbol->string _x57265_)
                (if (keyword? _x57265_)
                    (keyword->string _x57265_)
                    (call-with-output-string
                     '()
                     (lambda (_g5726657268_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57265_ _g5726657268_)))))))))
    (define as-string__1
      (lambda _args57271_
        (call-with-output-string
         '()
         (lambda (_g5727257274_)
           (let ()
             (declare (not safe))
             (display-as-string _args57271_ _g5727257274_))))))
    (define as-string
      (lambda _g64213_
        (let ((_g64212_ (let () (declare (not safe)) (##length _g64213_))))
          (cond ((let () (declare (not safe)) (##fx= _g64212_ 1))
                 (apply (lambda (_x57265_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57265_)))
                        _g64213_))
                (#t (apply as-string__1 _g64213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g64213_))))))
    (define make-symbol__0
      (lambda (_x57261_)
        (if (interned-symbol? _x57261_)
            _x57261_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57261_))))))
    (define make-symbol__1
      (lambda _args57263_ (string->symbol (apply as-string _args57263_))))
    (define make-symbol
      (lambda _g64215_
        (let ((_g64214_ (let () (declare (not safe)) (##length _g64215_))))
          (cond ((let () (declare (not safe)) (##fx= _g64214_ 1))
                 (apply (lambda (_x57261_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57261_)))
                        _g64215_))
                (#t (apply make-symbol__1 _g64215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g64215_))))))
    (define make-keyword__0
      (lambda (_x57257_)
        (if (interned-keyword? _x57257_)
            _x57257_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57257_))))))
    (define make-keyword__1
      (lambda _args57259_ (string->keyword (apply as-string _args57259_))))
    (define make-keyword
      (lambda _g64217_
        (let ((_g64216_ (let () (declare (not safe)) (##length _g64217_))))
          (cond ((let () (declare (not safe)) (##fx= _g64216_ 1))
                 (apply (lambda (_x57257_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57257_)))
                        _g64217_))
                (#t (apply make-keyword__1 _g64217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g64217_))))))
    (define interned-keyword?
      (lambda (_x57255_)
        (if (keyword? _x57255_)
            (let ((__tmp64218 (uninterned-keyword? _x57255_)))
              (declare (not safe))
              (not __tmp64218))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57253_)
        ((if (uninterned-symbol? _sym57253_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57253_))))
    (define keyword->symbol
      (lambda (_kw57251_)
        ((if (uninterned-keyword? _kw57251_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57251_))))
    (define bytes->string__%
      (lambda (_bstr57229_ _enc57230_)
        (if (let () (declare (not safe)) (eq? _enc57230_ 'UTF-8))
            (utf8->string _bstr57229_)
            (let* ((_in57232_
                    (open-input-u8vector
                     (let ((__tmp64219
                            (let ((__tmp64220
                                   (let ((__tmp64221
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57229_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp64221))))
                              (declare (not safe))
                              (cons _enc57230_ __tmp64220))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp64219))))
                   (_len57234_ (u8vector-length _bstr57229_))
                   (_out57236_ (make-string _len57234_))
                   (_n57238_
                    (read-substring _out57236_ '0 _len57234_ _in57232_)))
              (string-shrink! _out57236_ _n57238_)
              _out57236_))))
    (define bytes->string__0
      (lambda (_bstr57244_)
        (let ((_enc57246_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57244_ _enc57246_))))
    (define bytes->string
      (lambda _g64223_
        (let ((_g64222_ (let () (declare (not safe)) (##length _g64223_))))
          (cond ((let () (declare (not safe)) (##fx= _g64222_ 1))
                 (apply (lambda (_bstr57244_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57244_)))
                        _g64223_))
                ((let () (declare (not safe)) (##fx= _g64222_ 2))
                 (apply (lambda (_bstr57248_ _enc57249_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57248_ _enc57249_)))
                        _g64223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g64223_))))))
    (define string->bytes__%
      (lambda (_str57215_ _enc57216_)
        (if (let () (declare (not safe)) (eq? _enc57216_ 'UTF-8))
            (string->utf8 _str57215_)
            (substring->bytes
             _str57215_
             '0
             (string-length _str57215_)
             _enc57216_))))
    (define string->bytes__0
      (lambda (_str57221_)
        (let ((_enc57223_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57221_ _enc57223_))))
    (define string->bytes
      (lambda _g64225_
        (let ((_g64224_ (let () (declare (not safe)) (##length _g64225_))))
          (cond ((let () (declare (not safe)) (##fx= _g64224_ 1))
                 (apply (lambda (_str57221_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57221_)))
                        _g64225_))
                ((let () (declare (not safe)) (##fx= _g64224_ 2))
                 (apply (lambda (_str57225_ _enc57226_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57225_ _enc57226_)))
                        _g64225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g64225_))))))
    (define substring->bytes__%
      (lambda (_str57193_ _start57194_ _end57195_ _enc57196_)
        (if (let () (declare (not safe)) (eq? _enc57196_ 'UTF-8))
            (string->utf8 _str57193_ _start57194_ _end57195_)
            (let ((_out57198_
                   (open-output-u8vector
                    (let ((__tmp64226
                           (let ()
                             (declare (not safe))
                             (cons _enc57196_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp64226)))))
              (write-substring _str57193_ _start57194_ _end57195_ _out57198_)
              (get-output-u8vector _out57198_)))))
    (define substring->bytes__0
      (lambda (_str57203_ _start57204_ _end57205_)
        (let ((_enc57207_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str57203_
           _start57204_
           _end57205_
           _enc57207_))))
    (define substring->bytes
      (lambda _g64228_
        (let ((_g64227_ (let () (declare (not safe)) (##length _g64228_))))
          (cond ((let () (declare (not safe)) (##fx= _g64227_ 3))
                 (apply (lambda (_str57203_ _start57204_ _end57205_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str57203_
                             _start57204_
                             _end57205_)))
                        _g64228_))
                ((let () (declare (not safe)) (##fx= _g64227_ 4))
                 (apply (lambda (_str57209_ _start57210_ _end57211_ _enc57212_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57209_
                             _start57210_
                             _end57211_
                             _enc57212_)))
                        _g64228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g64228_))))))
    (define string-empty?
      (lambda (_str57190_)
        (let ((__tmp64229 (string-length _str57190_)))
          (declare (not safe))
          (##fxzero? __tmp64229))))
    (define string-prefix?
      (lambda (_prefix57180_ _str57181_)
        (let ((_str-len57183_ (string-length _str57181_))
              (_prefix-len57184_ (string-length _prefix57180_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len57184_ _str-len57183_))
              (let _lp57186_ ((_i57188_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i57188_ _prefix-len57184_))
                    (if (let ((__tmp64232
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str57181_ _i57188_)))
                              (__tmp64231
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix57180_ _i57188_))))
                          (declare (not safe))
                          (eq? __tmp64232 __tmp64231))
                        (let ((__tmp64230
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i57188_ '1))))
                          (declare (not safe))
                          (_lp57186_ __tmp64230))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str57158_ _char57159_ _start57160_)
        (let ((_len57162_ (string-length _str57158_)))
          (let _lp57164_ ((_k57166_ _start57160_))
            (if (let () (declare (not safe)) (##fx< _k57166_ _len57162_))
                (if (let ((__tmp64234
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57158_ _k57166_))))
                      (declare (not safe))
                      (eq? _char57159_ __tmp64234))
                    _k57166_
                    (let ((__tmp64233
                           (let () (declare (not safe)) (##fx+ _k57166_ '1))))
                      (declare (not safe))
                      (_lp57164_ __tmp64233)))
                '#f)))))
    (define string-index__0
      (lambda (_str57171_ _char57172_)
        (let ((_start57174_ '0))
          (declare (not safe))
          (string-index__% _str57171_ _char57172_ _start57174_))))
    (define string-index
      (lambda _g64236_
        (let ((_g64235_ (let () (declare (not safe)) (##length _g64236_))))
          (cond ((let () (declare (not safe)) (##fx= _g64235_ 2))
                 (apply (lambda (_str57171_ _char57172_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str57171_ _char57172_)))
                        _g64236_))
                ((let () (declare (not safe)) (##fx= _g64235_ 3))
                 (apply (lambda (_str57176_ _char57177_ _start57178_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str57176_
                             _char57177_
                             _start57178_)))
                        _g64236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g64236_))))))
    (define string-rindex__%
      (lambda (_str57129_ _char57130_ _start57131_)
        (let* ((_len57133_ (string-length _str57129_))
               (_start57138_
                (let ((_$e57135_ _start57131_))
                  (if _$e57135_
                      _$e57135_
                      (let () (declare (not safe)) (##fx- _len57133_ '1))))))
          (let _lp57141_ ((_k57143_ _start57138_))
            (if (let () (declare (not safe)) (##fx>= _k57143_ '0))
                (if (let ((__tmp64238
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57129_ _k57143_))))
                      (declare (not safe))
                      (eq? _char57130_ __tmp64238))
                    _k57143_
                    (let ((__tmp64237
                           (let () (declare (not safe)) (##fx- _k57143_ '1))))
                      (declare (not safe))
                      (_lp57141_ __tmp64237)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str57148_ _char57149_)
        (let ((_start57151_ '#f))
          (declare (not safe))
          (string-rindex__% _str57148_ _char57149_ _start57151_))))
    (define string-rindex
      (lambda _g64240_
        (let ((_g64239_ (let () (declare (not safe)) (##length _g64240_))))
          (cond ((let () (declare (not safe)) (##fx= _g64239_ 2))
                 (apply (lambda (_str57148_ _char57149_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str57148_ _char57149_)))
                        _g64240_))
                ((let () (declare (not safe)) (##fx= _g64239_ 3))
                 (apply (lambda (_str57153_ _char57154_ _start57155_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str57153_
                             _char57154_
                             _start57155_)))
                        _g64240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g64240_))))))
    (define string-split
      (lambda (_str57113_ _char57114_)
        (let ((_len57116_ (string-length _str57113_)))
          (let _lp57118_ ((_start57120_ '0) (_r57121_ '()))
            (let ((_$e57123_
                   (let ()
                     (declare (not safe))
                     (string-index _str57113_ _char57114_ _start57120_))))
              (if _$e57123_
                  ((lambda (_end57126_)
                     (let ((__tmp64244
                            (let ()
                              (declare (not safe))
                              (##fx+ _end57126_ '1)))
                           (__tmp64242
                            (let ((__tmp64243
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57113_
                                      _start57120_
                                      _end57126_))))
                              (declare (not safe))
                              (cons __tmp64243 _r57121_))))
                       (declare (not safe))
                       (_lp57118_ __tmp64244 __tmp64242)))
                   _$e57123_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start57120_ _len57116_))
                      (let ((__tmp64241
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57113_
                                      _start57120_
                                      _len57116_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp64241 _r57121_))
                      (reverse _r57121_))))))))
    (define string-join
      (lambda (_strs57018_ _join57019_)
        (letrec ((_join-length57021_
                  (lambda (_strs57072_ _jlen57073_)
                    (let _lp57075_ ((_rest57077_ _strs57072_) (_len57078_ '0))
                      (let* ((_rest5707957087_ _rest57077_)
                             (_else5708157095_ (lambda () '0))
                             (_K5708357101_
                              (lambda (_rest57098_ _hd57099_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd57099_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest57098_))
                                        (let ((__tmp64246
                                               (let ((__tmp64247
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd57099_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp64247
                                                        _jlen57073_
                                                        _len57078_))))
                                          (declare (not safe))
                                          (_lp57075_ _rest57098_ __tmp64246))
                                        (let ((__tmp64245
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd57099_))))
                                          (declare (not safe))
                                          (##fx+ __tmp64245 _len57078_)))
                                    (error '"expected string" _hd57099_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5707957087_))
                            (let ((_hd5708457104_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5707957087_)))
                                  (_tl5708557106_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5707957087_))))
                              (let* ((_hd57109_ _hd5708457104_)
                                     (_rest57111_ _tl5708557106_))
                                (declare (not safe))
                                (_K5708357101_ _rest57111_ _hd57109_)))
                            (let ()
                              (declare (not safe))
                              (_else5708157095_))))))))
          (let* ((_join57023_
                  (if (let () (declare (not safe)) (char? _join57019_))
                      (string _join57019_)
                      (if (let () (declare (not safe)) (string? _join57019_))
                          _join57019_
                          (error '"expected string or char" _join57019_))))
                 (_jlen57025_
                  (let () (declare (not safe)) (##string-length _join57023_)))
                 (_olen57027_
                  (let ()
                    (declare (not safe))
                    (_join-length57021_ _strs57018_ _jlen57025_)))
                 (_ostr57029_ (make-string _olen57027_)))
            (let _lp57032_ ((_rest57034_ _strs57018_) (_k57035_ '0))
              (let* ((_rest5703657044_ _rest57034_)
                     (_else5703857052_ (lambda () '""))
                     (_K5704057060_
                      (lambda (_rest57055_ _hd57056_)
                        (let ((_hdlen57058_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd57056_))))
                          (if (let () (declare (not safe)) (pair? _rest57055_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57056_
                                   '0
                                   _hdlen57058_
                                   _ostr57029_
                                   _k57035_))
                                (let ((__tmp64248
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57035_ _hdlen57058_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join57023_
                                   '0
                                   _jlen57025_
                                   _ostr57029_
                                   __tmp64248))
                                (let ((__tmp64249
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57035_
                                                _hdlen57058_
                                                _jlen57025_))))
                                  (declare (not safe))
                                  (_lp57032_ _rest57055_ __tmp64249)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57056_
                                   '0
                                   _hdlen57058_
                                   _ostr57029_
                                   _k57035_))
                                _ostr57029_))))))
                (if (let () (declare (not safe)) (##pair? _rest5703657044_))
                    (let ((_hd5704157063_
                           (let ()
                             (declare (not safe))
                             (##car _rest5703657044_)))
                          (_tl5704257065_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5703657044_))))
                      (let* ((_hd57068_ _hd5704157063_)
                             (_rest57070_ _tl5704257065_))
                        (declare (not safe))
                        (_K5704057060_ _rest57070_ _hd57068_)))
                    (let () (declare (not safe)) (_else5703857052_)))))))))
    (define read-u8vector
      (lambda (_bytes57015_ _port57016_)
        (read-subu8vector
         _bytes57015_
         '0
         (u8vector-length _bytes57015_)
         _port57016_)))
    (define write-u8vector
      (lambda (_bytes57012_ _port57013_)
        (write-subu8vector
         _bytes57012_
         '0
         (u8vector-length _bytes57012_)
         _port57013_)))
    (define read-string
      (lambda (_str57009_ _port57010_)
        (read-substring _str57009_ '0 (string-length _str57009_) _port57010_)))
    (define write-string
      (lambda (_str57006_ _port57007_)
        (write-substring
         _str57006_
         '0
         (string-length _str57006_)
         _port57007_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag56975_
               _dbg-exprs56976_
               _dbg-thunks56977_
               _expr56978_
               _thunk56979_)
        (letrec ((_o56981_ (current-output-port))
                 (_e56982_ (current-error-port))
                 (_p56983_ (DBG-printer))
                 (_f56984_
                  (lambda () (force-output _o56981_) (force-output _e56982_)))
                 (_d56985_ (lambda (_x56992_) (display _x56992_ _e56982_)))
                 (_w56986_ (lambda (_x56994_) (_p56983_ _x56994_ _e56982_)))
                 (_n56987_ (lambda () (newline _e56982_)))
                 (_v56988_
                  (lambda (_l56997_)
                    (for-each
                     (lambda (_x56999_)
                       (let () (declare (not safe)) (_d56985_ '" "))
                       (let () (declare (not safe)) (_w56986_ _x56999_)))
                     _l56997_)
                    (let () (declare (not safe)) (_n56987_))))
                 (_x56989_
                  (lambda (_expr57001_ _thunk57002_)
                    (let () (declare (not safe)) (_f56984_))
                    (let () (declare (not safe)) (_d56985_ '"  "))
                    (let () (declare (not safe)) (_w56986_ _expr57001_))
                    (let () (declare (not safe)) (_d56985_ '" =>"))
                    (call-with-values
                     _thunk57002_
                     (lambda _x57004_
                       (let () (declare (not safe)) (_v56988_ _x57004_))
                       (let () (declare (not safe)) (_f56984_))
                       (apply values _x57004_))))))
          (if _tag56975_
              (begin
                (if (let () (declare (not safe)) (eq? _tag56975_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f56984_))
                      (let () (declare (not safe)) (_d56985_ _tag56975_))
                      (let () (declare (not safe)) (_n56987_))))
                (for-each _x56989_ _dbg-exprs56976_ _dbg-thunks56977_)
                (if _thunk56979_
                    (let ()
                      (declare (not safe))
                      (_x56989_ _expr56978_ _thunk56979_))
                    '#!void))
              (if _thunk56979_ (_thunk56979_) '#!void)))))))
