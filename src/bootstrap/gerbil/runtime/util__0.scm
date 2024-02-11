(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707647930)
  (begin
    (define displayln
      (lambda _args59001_
        (let _lp59003_ ((_rest59005_ _args59001_))
          (let* ((_rest5900659014_ _rest59005_)
                 (_else5900859022_ (lambda () (newline)))
                 (_K5901059028_
                  (lambda (_rest59025_ _hd59026_)
                    (display _hd59026_)
                    (let () (declare (not safe)) (_lp59003_ _rest59025_)))))
            (if (let () (declare (not safe)) (##pair? _rest5900659014_))
                (let ((_hd5901159031_
                       (let () (declare (not safe)) (##car _rest5900659014_)))
                      (_tl5901259033_
                       (let () (declare (not safe)) (##cdr _rest5900659014_))))
                  (let* ((_hd59036_ _hd5901159031_)
                         (_rest59038_ _tl5901259033_))
                    (declare (not safe))
                    (_K5901059028_ _rest59038_ _hd59036_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args58999_ (for-each display _args58999_)))
    (define file-newer?
      (lambda (_file158992_ _file258993_)
        (letrec ((_modification-time58995_
                  (lambda (_file58997_)
                    (let ((__tmp63901
                           (file-info-last-modification-time
                            (file-info _file58997_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp63901)))))
          (let ((__tmp63903
                 (let ()
                   (declare (not safe))
                   (_modification-time58995_ _file158992_)))
                (__tmp63902
                 (let ()
                   (declare (not safe))
                   (_modification-time58995_ _file258993_))))
            (declare (not safe))
            (##fl> __tmp63903 __tmp63902)))))
    (define create-directory*__%
      (lambda (_dir58966_ _perms58967_)
        (letrec ((_create158969_
                  (lambda (_path58980_)
                    (if (file-exists? _path58980_)
                        (if (let ((__tmp63904 (file-type _path58980_)))
                              (declare (not safe))
                              (eq? __tmp63904 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path58980_))
                        (if _perms58967_
                            (create-directory
                             (list 'path:
                                   _path58980_
                                   'permissions:
                                   _perms58967_))
                            (create-directory _path58980_))))))
          (if (file-exists? _dir58966_)
              '#!void
              (let _lp58971_ ((_start58973_ '0))
                (let ((_$e58975_
                       (let ()
                         (declare (not safe))
                         (string-index _dir58966_ '#\/ _start58973_))))
                  (if _$e58975_
                      ((lambda (_x58978_)
                         (if (let () (declare (not safe)) (##fx> _x58978_ '0))
                             (let ((__tmp63905
                                    (substring _dir58966_ '0 _x58978_)))
                               (declare (not safe))
                               (_create158969_ __tmp63905))
                             '#!void)
                         (let ((__tmp63906
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x58978_ '1))))
                           (declare (not safe))
                           (_lp58971_ __tmp63906)))
                       _$e58975_)
                      (let ()
                        (declare (not safe))
                        (_create158969_ _dir58966_)))))))))
    (define create-directory*__0
      (lambda (_dir58985_)
        (let ((_perms58987_ '493))
          (declare (not safe))
          (create-directory*__% _dir58985_ _perms58987_))))
    (define create-directory*
      (lambda _g63908_
        (let ((_g63907_ (let () (declare (not safe)) (##length _g63908_))))
          (cond ((let () (declare (not safe)) (##fx= _g63907_ 1))
                 (apply (lambda (_dir58985_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir58985_)))
                        _g63908_))
                ((let () (declare (not safe)) (##fx= _g63907_ 2))
                 (apply (lambda (_dir58989_ _perms58990_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir58989_ _perms58990_)))
                        _g63908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g63908_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g63909_ '#t))
    (define true?
      (lambda (_obj58962_) (let () (declare (not safe)) (eq? _obj58962_ '#t))))
    (define false (lambda _g63910_ '#f))
    (define void (lambda _g63911_ '#!void))
    (define void?
      (lambda (_obj58958_)
        (let () (declare (not safe)) (eq? _obj58958_ '#!void))))
    (define eof-object (lambda _g63912_ '#!eof))
    (define identity (lambda (_obj58955_) _obj58955_))
    (define dssl-object?
      (lambda (_obj58953_)
        (if (memq _obj58953_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj58951_)
        (let () (declare (not safe)) (eq? _obj58951_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj58949_)
        (let () (declare (not safe)) (eq? _obj58949_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj58947_)
        (let () (declare (not safe)) (eq? _obj58947_ '#!optional))))
    (define immediate?
      (lambda (_obj58943_)
        (let* ((_t58945_ (let () (declare (not safe)) (##type _obj58943_)))
               (__tmp63913
                (let () (declare (not safe)) (##fxand _t58945_ '1))))
          (declare (not safe))
          (##fxzero? __tmp63913))))
    (define nonnegative-fixnum?
      (lambda (_obj58941_)
        (if (fixnum? _obj58941_)
            (let ((__tmp63914 (fxnegative? _obj58941_)))
              (declare (not safe))
              (not __tmp63914))
            '#f)))
    (define values-count
      (lambda (_obj58939_)
        (if (let () (declare (not safe)) (##values? _obj58939_))
            (let () (declare (not safe)) (##vector-length _obj58939_))
            '1)))
    (define values-ref
      (lambda (_obj58936_ _k58937_)
        (if (let () (declare (not safe)) (##values? _obj58936_))
            (let () (declare (not safe)) (##vector-ref _obj58936_ _k58937_))
            _obj58936_)))
    (define values->list
      (lambda (_obj58934_)
        (if (let () (declare (not safe)) (##values? _obj58934_))
            (let () (declare (not safe)) (##vector->list _obj58934_))
            (list _obj58934_))))
    (define subvector->list__%
      (lambda (_obj58919_ _start58920_)
        (let ((_lst58922_
               (let () (declare (not safe)) (##vector->list _obj58919_))))
          (list-tail _lst58922_ _start58920_))))
    (define subvector->list__0
      (lambda (_obj58927_)
        (let ((_start58929_ '0))
          (declare (not safe))
          (subvector->list__% _obj58927_ _start58929_))))
    (define subvector->list
      (lambda _g63916_
        (let ((_g63915_ (let () (declare (not safe)) (##length _g63916_))))
          (cond ((let () (declare (not safe)) (##fx= _g63915_ 1))
                 (apply (lambda (_obj58927_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj58927_)))
                        _g63916_))
                ((let () (declare (not safe)) (##fx= _g63915_ 2))
                 (apply (lambda (_obj58931_ _start58932_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj58931_ _start58932_)))
                        _g63916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g63916_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args58916_ (apply make-table 'test: eq? _args58916_)))
    (define make-hash-table-eqv
      (lambda _args58914_ (apply make-table 'test: eqv? _args58914_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst58911_ . _args58912_)
        (apply list->table _lst58911_ 'test: eq? _args58912_)))
    (define list->hash-table-eqv
      (lambda (_lst58908_ . _args58909_)
        (apply list->table _lst58908_ 'test: eqv? _args58909_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht58905_ _k58906_) (table-ref _ht58905_ _k58906_ '#f)))
    (define hash-put!
      (lambda (_ht58901_ _k58902_ _v58903_)
        (table-set! _ht58901_ _k58902_ _v58903_)))
    (define hash-update!__%
      (lambda (_ht58880_ _k58881_ _update58882_ _default58883_)
        (let* ((_value58885_
                (let ()
                  (declare (not safe))
                  (table-ref _ht58880_ _k58881_ _default58883_)))
               (__tmp63917 (_update58882_ _value58885_)))
          (declare (not safe))
          (table-set! _ht58880_ _k58881_ __tmp63917))))
    (define hash-update!__0
      (lambda (_ht58890_ _k58891_ _update58892_)
        (let ((_default58894_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht58890_ _k58891_ _update58892_ _default58894_))))
    (define hash-update!
      (lambda _g63919_
        (let ((_g63918_ (let () (declare (not safe)) (##length _g63919_))))
          (cond ((let () (declare (not safe)) (##fx= _g63918_ 3))
                 (apply (lambda (_ht58890_ _k58891_ _update58892_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht58890_
                             _k58891_
                             _update58892_)))
                        _g63919_))
                ((let () (declare (not safe)) (##fx= _g63918_ 4))
                 (apply (lambda (_ht58896_
                                 _k58897_
                                 _update58898_
                                 _default58899_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht58896_
                             _k58897_
                             _update58898_
                             _default58899_)))
                        _g63919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g63919_))))))
    (define hash-remove!
      (lambda (_ht58876_ _k58877_) (table-set! _ht58876_ _k58877_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht58874_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht58874_))))
    (define plist->hash-table__%
      (lambda (_plst58809_ _ht58810_)
        (let _lp58812_ ((_rest58814_ _plst58809_))
          (let* ((_rest5881558826_ _rest58814_)
                 (_E5881858830_
                  (lambda () (error '"No clause matching" _rest5881558826_))))
            (let ((_K5882058845_
                   (lambda (_rest58841_ _v58842_ _k58843_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht58810_ _k58843_ _v58842_))
                     (let () (declare (not safe)) (_lp58812_ _rest58841_))))
                  (_K5881958835_ (lambda () _ht58810_)))
              (let ((_try-match5881758838_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5881558826_ '()))
                           (let () (declare (not safe)) (_K5881958835_))
                           (let () (declare (not safe)) (_E5881858830_))))))
                (if (let () (declare (not safe)) (##pair? _rest5881558826_))
                    (let ((_tl5882258850_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5881558826_)))
                          (_hd5882158848_
                           (let ()
                             (declare (not safe))
                             (##car _rest5881558826_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5882258850_))
                          (let ((_tl5882458857_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5882258850_)))
                                (_hd5882358855_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5882258850_))))
                            (let ((_k58853_ _hd5882158848_)
                                  (_v58860_ _hd5882358855_)
                                  (_rest58862_ _tl5882458857_))
                              (let ()
                                (declare (not safe))
                                (_K5882058845_
                                 _rest58862_
                                 _v58860_
                                 _k58853_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5881758838_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5881758838_)))))))))
    (define plist->hash-table__0
      (lambda (_plst58867_)
        (let ((_ht58869_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst58867_ _ht58869_))))
    (define plist->hash-table
      (lambda _g63921_
        (let ((_g63920_ (let () (declare (not safe)) (##length _g63921_))))
          (cond ((let () (declare (not safe)) (##fx= _g63920_ 1))
                 (apply (lambda (_plst58867_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst58867_)))
                        _g63921_))
                ((let () (declare (not safe)) (##fx= _g63920_ 2))
                 (apply (lambda (_plst58871_ _ht58872_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst58871_ _ht58872_)))
                        _g63921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g63921_))))))
    (define plist->hash-table-eq
      (lambda (_plst58806_)
        (let ((__tmp63922
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst58806_ __tmp63922))))
    (define plist->hash-table-eqv
      (lambda (_plst58804_)
        (let ((__tmp63923
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst58804_ __tmp63923))))
    (define hash-key?
      (lambda (_ht58801_ _k58802_)
        (let ((__tmp63924
               (let ((__tmp63925
                      (let ()
                        (declare (not safe))
                        (table-ref _ht58801_ _k58802_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp63925 absent-value))))
          (declare (not safe))
          (not __tmp63924))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun58794_ _ht58795_)
        (let ((__tmp63926
               (lambda (_k58797_ _v58798_ _r58799_)
                 (let ((__tmp63927 (_fun58794_ _k58797_ _v58798_)))
                   (declare (not safe))
                   (cons __tmp63927 _r58799_)))))
          (declare (not safe))
          (hash-fold __tmp63926 '() _ht58795_))))
    (define hash-fold
      (lambda (_fun58785_ _iv58786_ _ht58787_)
        (let ((_ret58789_ _iv58786_))
          (let ((__tmp63928
                 (lambda (_k58791_ _v58792_)
                   (set! _ret58789_
                         (_fun58785_ _k58791_ _v58792_ _ret58789_)))))
            (declare (not safe))
            (table-for-each __tmp63928 _ht58787_))
          _ret58789_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht58780_)
        (let ((__tmp63929 (lambda (_k58782_ _v58783_) _k58782_)))
          (declare (not safe))
          (hash-map __tmp63929 _ht58780_))))
    (define hash-values
      (lambda (_ht58775_)
        (let ((__tmp63930 (lambda (_k58777_ _v58778_) _v58778_)))
          (declare (not safe))
          (hash-map __tmp63930 _ht58775_))))
    (define hash-copy
      (lambda (_hd58770_ . _rest58771_)
        (let ((_hd58773_ (table-copy _hd58770_)))
          (if (let () (declare (not safe)) (null? _rest58771_))
              _hd58773_
              (apply hash-copy! _hd58773_ _rest58771_)))))
    (define hash-copy!
      (lambda (_hd58765_ . _rest58766_)
        (for-each
         (lambda (_r58768_) (table-merge! _hd58765_ _r58768_))
         _rest58766_)
        _hd58765_))
    (define hash-merge
      (lambda (_hd58759_ . _rest58760_)
        (let ((__tmp63931
               (lambda (_tab58762_ _r58763_)
                 (table-merge _r58763_ _tab58762_))))
          (declare (not safe))
          (foldl1 __tmp63931 _hd58759_ _rest58760_))))
    (define hash-merge!
      (lambda (_hd58753_ . _rest58754_)
        (let ((__tmp63932
               (lambda (_tab58756_ _r58757_)
                 (table-merge! _r58757_ _tab58756_))))
          (declare (not safe))
          (foldl1 __tmp63932 _hd58753_ _rest58754_))))
    (define hash-clear!__%
      (lambda (_ht58738_ _size58739_)
        (let ((_gcht58741_
               (let () (declare (not safe)) (##vector-ref _ht58738_ '5))))
          (if (let ((__tmp63933 (fixnum? _gcht58741_)))
                (declare (not safe))
                (not __tmp63933))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58738_ '5 _size58739_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58746_)
        (let ((_size58748_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58746_ _size58748_))))
    (define hash-clear!
      (lambda _g63935_
        (let ((_g63934_ (let () (declare (not safe)) (##length _g63935_))))
          (cond ((let () (declare (not safe)) (##fx= _g63934_ 1))
                 (apply (lambda (_ht58746_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58746_)))
                        _g63935_))
                ((let () (declare (not safe)) (##fx= _g63934_ 2))
                 (apply (lambda (_ht58750_ _size58751_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58750_ _size58751_)))
                        _g63935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g63935_))))))
    (define make-list__%
      (lambda (_k58719_ _val58720_)
        (if (fixnum? _k58719_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58719_))
        (let _lp58722_ ((_n58724_ '0) (_r58725_ '()))
          (if (let () (declare (not safe)) (##fx< _n58724_ _k58719_))
              (let ((__tmp63937
                     (let () (declare (not safe)) (##fx+ _n58724_ '1)))
                    (__tmp63936
                     (let () (declare (not safe)) (cons _val58720_ _r58725_))))
                (declare (not safe))
                (_lp58722_ __tmp63937 __tmp63936))
              _r58725_))))
    (define make-list__0
      (lambda (_k58730_)
        (let ((_val58732_ '#f))
          (declare (not safe))
          (make-list__% _k58730_ _val58732_))))
    (define make-list
      (lambda _g63939_
        (let ((_g63938_ (let () (declare (not safe)) (##length _g63939_))))
          (cond ((let () (declare (not safe)) (##fx= _g63938_ 1))
                 (apply (lambda (_k58730_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58730_)))
                        _g63939_))
                ((let () (declare (not safe)) (##fx= _g63938_ 2))
                 (apply (lambda (_k58734_ _val58735_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58734_ _val58735_)))
                        _g63939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g63939_))))))
    (define cons*
      (lambda (_x58709_ _y58710_ . _rest58711_)
        (letrec ((_recur58713_
                  (lambda (_x58715_ _rest58716_)
                    (if (let () (declare (not safe)) (pair? _rest58716_))
                        (let ((__tmp63940
                               (let ((__tmp63942
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58716_)))
                                     (__tmp63941
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58716_))))
                                 (declare (not safe))
                                 (_recur58713_ __tmp63942 __tmp63941))))
                          (declare (not safe))
                          (cons _x58715_ __tmp63940))
                        _x58715_))))
          (let ((__tmp63943
                 (let ()
                   (declare (not safe))
                   (_recur58713_ _y58710_ _rest58711_))))
            (declare (not safe))
            (cons _x58709_ __tmp63943)))))
    (define foldl1
      (lambda (_f58667_ _iv58668_ _lst58669_)
        (let _lp58671_ ((_rest58673_ _lst58669_) (_r58674_ _iv58668_))
          (let* ((_rest5867558683_ _rest58673_)
                 (_else5867758691_ (lambda () _r58674_))
                 (_K5867958697_
                  (lambda (_rest58694_ _x58695_)
                    (let ((__tmp63944 (_f58667_ _x58695_ _r58674_)))
                      (declare (not safe))
                      (_lp58671_ _rest58694_ __tmp63944)))))
            (if (let () (declare (not safe)) (##pair? _rest5867558683_))
                (let ((_hd5868058700_
                       (let () (declare (not safe)) (##car _rest5867558683_)))
                      (_tl5868158702_
                       (let () (declare (not safe)) (##cdr _rest5867558683_))))
                  (let* ((_x58705_ _hd5868058700_)
                         (_rest58707_ _tl5868158702_))
                    (declare (not safe))
                    (_K5867958697_ _rest58707_ _x58705_)))
                (let () (declare (not safe)) (_else5867758691_)))))))
    (define foldl2
      (lambda (_f58590_ _iv58591_ _lst158592_ _lst258593_)
        (let _lp58595_ ((_rest158597_ _lst158592_)
                        (_rest258598_ _lst258593_)
                        (_r58599_ _iv58591_))
          (let* ((_rest15860058608_ _rest158597_)
                 (_else5860258616_ (lambda () _r58599_))
                 (_K5860458655_
                  (lambda (_rest158619_ _x158620_)
                    (let* ((_rest25862158629_ _rest258598_)
                           (_else5862358637_ (lambda () _r58599_))
                           (_K5862558643_
                            (lambda (_rest258640_ _x258641_)
                              (let ((__tmp63945
                                     (_f58590_ _x158620_ _x258641_ _r58599_)))
                                (declare (not safe))
                                (_lp58595_
                                 _rest158619_
                                 _rest258640_
                                 __tmp63945)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25862158629_))
                          (let ((_hd5862658646_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25862158629_)))
                                (_tl5862758648_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25862158629_))))
                            (let* ((_x258651_ _hd5862658646_)
                                   (_rest258653_ _tl5862758648_))
                              (declare (not safe))
                              (_K5862558643_ _rest258653_ _x258651_)))
                          (let () (declare (not safe)) (_else5862358637_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15860058608_))
                (let ((_hd5860558658_
                       (let () (declare (not safe)) (##car _rest15860058608_)))
                      (_tl5860658660_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15860058608_))))
                  (let* ((_x158663_ _hd5860558658_)
                         (_rest158665_ _tl5860658660_))
                    (declare (not safe))
                    (_K5860458655_ _rest158665_ _x158663_)))
                (let () (declare (not safe)) (_else5860258616_)))))))
    (define foldl
      (lambda _g63947_
        (let ((_g63946_ (let () (declare (not safe)) (##length _g63947_))))
          (cond ((let () (declare (not safe)) (##fx= _g63946_ 3))
                 (apply (lambda (_f58575_ _iv58576_ _lst58577_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58575_ _iv58576_ _lst58577_)))
                        _g63947_))
                ((let () (declare (not safe)) (##fx= _g63946_ 4))
                 (apply (lambda (_f58579_ _iv58580_ _lst158581_ _lst258582_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58579_
                                    _iv58580_
                                    _lst158581_
                                    _lst258582_)))
                        _g63947_))
                ((let () (declare (not safe)) (##fx>= _g63946_ 4))
                 (apply foldl* _g63947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g63947_))))))
    (define foldl*
      (lambda (_f58563_ _iv58564_ . _rest58565_)
        (let _recur58567_ ((_iv58569_ _iv58564_) (_rest58570_ _rest58565_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58570_))
              (let ((__tmp63949
                     (apply _f58563_
                            (let ((__tmp63951
                                   (lambda (_xs58572_ _r58573_)
                                     (let ((__tmp63952 (car _xs58572_)))
                                       (declare (not safe))
                                       (cons __tmp63952 _r58573_))))
                                  (__tmp63950 (list _iv58569_)))
                              (declare (not safe))
                              (foldr1 __tmp63951 __tmp63950 _rest58570_))))
                    (__tmp63948 (map cdr _rest58570_)))
                (declare (not safe))
                (_recur58567_ __tmp63949 __tmp63948))
              _iv58569_))))
    (define foldr1
      (lambda (_f58522_ _iv58523_ _lst58524_)
        (let _recur58526_ ((_rest58528_ _lst58524_))
          (let* ((_rest5852958537_ _rest58528_)
                 (_else5853158545_ (lambda () _iv58523_))
                 (_K5853358551_
                  (lambda (_rest58548_ _x58549_)
                    (_f58522_
                     _x58549_
                     (let ()
                       (declare (not safe))
                       (_recur58526_ _rest58548_))))))
            (if (let () (declare (not safe)) (##pair? _rest5852958537_))
                (let ((_hd5853458554_
                       (let () (declare (not safe)) (##car _rest5852958537_)))
                      (_tl5853558556_
                       (let () (declare (not safe)) (##cdr _rest5852958537_))))
                  (let* ((_x58559_ _hd5853458554_)
                         (_rest58561_ _tl5853558556_))
                    (declare (not safe))
                    (_K5853358551_ _rest58561_ _x58559_)))
                (let () (declare (not safe)) (_else5853158545_)))))))
    (define foldr2
      (lambda (_f58446_ _iv58447_ _lst158448_ _lst258449_)
        (let _recur58451_ ((_rest158453_ _lst158448_)
                           (_rest258454_ _lst258449_))
          (let* ((_rest15845558463_ _rest158453_)
                 (_else5845758471_ (lambda () _iv58447_))
                 (_K5845958510_
                  (lambda (_rest158474_ _x158475_)
                    (let* ((_rest25847658484_ _rest258454_)
                           (_else5847858492_ (lambda () _iv58447_))
                           (_K5848058498_
                            (lambda (_rest258495_ _x258496_)
                              (_f58446_
                               _x158475_
                               _x258496_
                               (let ()
                                 (declare (not safe))
                                 (_recur58451_ _rest158474_ _rest258495_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25847658484_))
                          (let ((_hd5848158501_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25847658484_)))
                                (_tl5848258503_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25847658484_))))
                            (let* ((_x258506_ _hd5848158501_)
                                   (_rest258508_ _tl5848258503_))
                              (declare (not safe))
                              (_K5848058498_ _rest258508_ _x258506_)))
                          (let () (declare (not safe)) (_else5847858492_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15845558463_))
                (let ((_hd5846058513_
                       (let () (declare (not safe)) (##car _rest15845558463_)))
                      (_tl5846158515_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15845558463_))))
                  (let* ((_x158518_ _hd5846058513_)
                         (_rest158520_ _tl5846158515_))
                    (declare (not safe))
                    (_K5845958510_ _rest158520_ _x158518_)))
                (let () (declare (not safe)) (_else5845758471_)))))))
    (define foldr
      (lambda _g63954_
        (let ((_g63953_ (let () (declare (not safe)) (##length _g63954_))))
          (cond ((let () (declare (not safe)) (##fx= _g63953_ 3))
                 (apply (lambda (_f58431_ _iv58432_ _lst58433_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58431_ _iv58432_ _lst58433_)))
                        _g63954_))
                ((let () (declare (not safe)) (##fx= _g63953_ 4))
                 (apply (lambda (_f58435_ _iv58436_ _lst158437_ _lst258438_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58435_
                                    _iv58436_
                                    _lst158437_
                                    _lst258438_)))
                        _g63954_))
                ((let () (declare (not safe)) (##fx>= _g63953_ 4))
                 (apply foldr* _g63954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g63954_))))))
    (define foldr*
      (lambda (_f58420_ _iv58421_ . _rest58422_)
        (let _recur58424_ ((_rest58426_ _rest58422_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58426_))
              (apply _f58420_
                     (let ((__tmp63957
                            (lambda (_xs58428_ _r58429_)
                              (let ((__tmp63958 (car _xs58428_)))
                                (declare (not safe))
                                (cons __tmp63958 _r58429_))))
                           (__tmp63955
                            (list (let ((__tmp63956 (map cdr _rest58426_)))
                                    (declare (not safe))
                                    (_recur58424_ __tmp63956)))))
                       (declare (not safe))
                       (foldr1 __tmp63957 __tmp63955 _rest58426_)))
              _iv58421_))))
    (define remove-nulls!
      (lambda (_l58307_)
        (let* ((_l5830858321_ _l58307_)
               (_E5831258325_
                (lambda () (error '"No clause matching" _l5830858321_))))
          (let ((_K5831758410_
                 (lambda (_r58408_)
                   (let () (declare (not safe)) (remove-nulls! _r58408_))))
                (_K5831458397_
                 (lambda (_r58337_)
                   (let _loop58339_ ((_l58341_ _l58307_) (_r58342_ _r58337_))
                     (let* ((_r5834358356_ _r58342_)
                            (_E5834758360_
                             (lambda ()
                               (error '"No clause matching" _r5834358356_))))
                       (let ((_K5835258387_
                              (lambda (_rr58385_)
                                (set-cdr!
                                 _l58341_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58385_)))))
                             (_K5834958374_
                              (lambda (_rr58372_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58339_ _r58342_ _rr58372_))))
                             (_K5834858365_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5834358356_))
                             (let ((_tl5835458392_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5834358356_)))
                                   (_hd5835358390_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5834358356_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5835358390_))
                                   (let ((_rr58395_ _tl5835458392_))
                                     (declare (not safe))
                                     (_K5835258387_ _rr58395_))
                                   (let ((_rr58380_ _tl5835458392_))
                                     (declare (not safe))
                                     (_K5834958374_ _rr58380_))))
                             '#!void))))
                   _l58307_))
                (_K5831358330_ (lambda () _l58307_)))
            (if (let () (declare (not safe)) (##pair? _l5830858321_))
                (let ((_tl5831958415_
                       (let () (declare (not safe)) (##cdr _l5830858321_)))
                      (_hd5831858413_
                       (let () (declare (not safe)) (##car _l5830858321_))))
                  (if (let () (declare (not safe)) (##null? _hd5831858413_))
                      (let ((_r58418_ _tl5831958415_))
                        (declare (not safe))
                        (remove-nulls! _r58418_))
                      (let ((_r58403_ _tl5831958415_))
                        (declare (not safe))
                        (_K5831458397_ _r58403_))))
                (let () (declare (not safe)) (_K5831358330_)))))))
    (define append1!
      (lambda (_l58302_ _x58303_)
        (let ((_l258305_ (let () (declare (not safe)) (cons _x58303_ '()))))
          (if (let () (declare (not safe)) (pair? _l58302_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58302_))
               _l258305_)
              _l258305_))))
    (define append-reverse
      (lambda (_rev-head58299_ _tail58300_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58300_ _rev-head58299_))))
    (define append-reverse-until
      (lambda (_pred58252_ _rhead58253_ _tail58254_)
        (let _loop58256_ ((_rhead58258_ _rhead58253_)
                          (_tail58259_ _tail58254_))
          (let* ((_rhead5826058269_ _rhead58258_)
                 (_E5826358273_
                  (lambda () (error '"No clause matching" _rhead5826058269_))))
            (let ((_K5826758296_ (lambda () (values '() _tail58259_)))
                  (_K5826458280_
                   (lambda (_r58277_ _a58278_)
                     (if (_pred58252_ _a58278_)
                         (values _rhead58258_ _tail58259_)
                         (let ((__tmp63959
                                (let ()
                                  (declare (not safe))
                                  (cons _a58278_ _tail58259_))))
                           (declare (not safe))
                           (_loop58256_ _r58277_ __tmp63959))))))
              (let ((_try-match5826258292_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5826058269_))
                           (let ((_tl5826658285_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5826058269_)))
                                 (_hd5826558283_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5826058269_))))
                             (let ((_a58288_ _hd5826558283_)
                                   (_r58290_ _tl5826658285_))
                               (let ()
                                 (declare (not safe))
                                 (_K5826458280_ _r58290_ _a58288_))))
                           (let () (declare (not safe)) (_E5826358273_))))))
                (if (let () (declare (not safe)) (##null? _rhead5826058269_))
                    (let () (declare (not safe)) (_K5826758296_))
                    (let ()
                      (declare (not safe))
                      (_try-match5826258292_)))))))))
    (define andmap1
      (lambda (_f58212_ _lst58213_)
        (let _lp58215_ ((_rest58217_ _lst58213_))
          (let* ((_rest5821858226_ _rest58217_)
                 (_else5822058234_ (lambda () '#t))
                 (_K5822258240_
                  (lambda (_rest58237_ _x58238_)
                    (if (_f58212_ _x58238_)
                        (let () (declare (not safe)) (_lp58215_ _rest58237_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5821858226_))
                (let ((_hd5822358243_
                       (let () (declare (not safe)) (##car _rest5821858226_)))
                      (_tl5822458245_
                       (let () (declare (not safe)) (##cdr _rest5821858226_))))
                  (let* ((_x58248_ _hd5822358243_)
                         (_rest58250_ _tl5822458245_))
                    (declare (not safe))
                    (_K5822258240_ _rest58250_ _x58248_)))
                (let () (declare (not safe)) (_else5822058234_)))))))
    (define andmap2
      (lambda (_f58137_ _lst158138_ _lst258139_)
        (let _lp58141_ ((_rest158143_ _lst158138_) (_rest258144_ _lst258139_))
          (let* ((_rest15814558153_ _rest158143_)
                 (_else5814758161_ (lambda () '#t))
                 (_K5814958200_
                  (lambda (_rest158164_ _x158165_)
                    (let* ((_rest25816658174_ _rest258144_)
                           (_else5816858182_ (lambda () '#t))
                           (_K5817058188_
                            (lambda (_rest258185_ _x258186_)
                              (if (_f58137_ _x158165_ _x258186_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58141_ _rest158164_ _rest258185_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25816658174_))
                          (let ((_hd5817158191_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25816658174_)))
                                (_tl5817258193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25816658174_))))
                            (let* ((_x258196_ _hd5817158191_)
                                   (_rest258198_ _tl5817258193_))
                              (declare (not safe))
                              (_K5817058188_ _rest258198_ _x258196_)))
                          (let () (declare (not safe)) (_else5816858182_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15814558153_))
                (let ((_hd5815058203_
                       (let () (declare (not safe)) (##car _rest15814558153_)))
                      (_tl5815158205_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15814558153_))))
                  (let* ((_x158208_ _hd5815058203_)
                         (_rest158210_ _tl5815158205_))
                    (declare (not safe))
                    (_K5814958200_ _rest158210_ _x158208_)))
                (let () (declare (not safe)) (_else5814758161_)))))))
    (define andmap
      (lambda _g63961_
        (let ((_g63960_ (let () (declare (not safe)) (##length _g63961_))))
          (cond ((let () (declare (not safe)) (##fx= _g63960_ 2))
                 (apply (lambda (_f58125_ _lst58126_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58125_ _lst58126_)))
                        _g63961_))
                ((let () (declare (not safe)) (##fx= _g63960_ 3))
                 (apply (lambda (_f58128_ _lst158129_ _lst258130_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58128_ _lst158129_ _lst258130_)))
                        _g63961_))
                ((let () (declare (not safe)) (##fx>= _g63960_ 3))
                 (apply andmap* _g63961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g63961_))))))
    (define andmap*
      (lambda (_f58118_ . _rest58119_)
        (let _recur58121_ ((_rest58123_ _rest58119_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58123_))
              (if (apply _f58118_ (map car _rest58123_))
                  (let ((__tmp63962 (map cdr _rest58123_)))
                    (declare (not safe))
                    (_recur58121_ __tmp63962))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f58075_ _lst58076_)
        (let _lp58078_ ((_rest58080_ _lst58076_))
          (let* ((_rest5808158089_ _rest58080_)
                 (_else5808358097_ (lambda () '#f))
                 (_K5808558106_
                  (lambda (_rest58100_ _x58101_)
                    (let ((_$e58103_ (_f58075_ _x58101_)))
                      (if _$e58103_
                          _$e58103_
                          (let ()
                            (declare (not safe))
                            (_lp58078_ _rest58100_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5808158089_))
                (let ((_hd5808658109_
                       (let () (declare (not safe)) (##car _rest5808158089_)))
                      (_tl5808758111_
                       (let () (declare (not safe)) (##cdr _rest5808158089_))))
                  (let* ((_x58114_ _hd5808658109_)
                         (_rest58116_ _tl5808758111_))
                    (declare (not safe))
                    (_K5808558106_ _rest58116_ _x58114_)))
                (let () (declare (not safe)) (_else5808358097_)))))))
    (define ormap2
      (lambda (_f57997_ _lst157998_ _lst257999_)
        (let _lp58001_ ((_rest158003_ _lst157998_) (_rest258004_ _lst257999_))
          (let* ((_rest15800558013_ _rest158003_)
                 (_else5800758021_ (lambda () '#f))
                 (_K5800958063_
                  (lambda (_rest158024_ _x158025_)
                    (let* ((_rest25802658034_ _rest258004_)
                           (_else5802858042_ (lambda () '#f))
                           (_K5803058051_
                            (lambda (_rest258045_ _x258046_)
                              (let ((_$e58048_ (_f57997_ _x158025_ _x258046_)))
                                (if _$e58048_
                                    _$e58048_
                                    (let ()
                                      (declare (not safe))
                                      (_lp58001_
                                       _rest158024_
                                       _rest258045_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25802658034_))
                          (let ((_hd5803158054_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25802658034_)))
                                (_tl5803258056_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25802658034_))))
                            (let* ((_x258059_ _hd5803158054_)
                                   (_rest258061_ _tl5803258056_))
                              (declare (not safe))
                              (_K5803058051_ _rest258061_ _x258059_)))
                          (let () (declare (not safe)) (_else5802858042_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15800558013_))
                (let ((_hd5801058066_
                       (let () (declare (not safe)) (##car _rest15800558013_)))
                      (_tl5801158068_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15800558013_))))
                  (let* ((_x158071_ _hd5801058066_)
                         (_rest158073_ _tl5801158068_))
                    (declare (not safe))
                    (_K5800958063_ _rest158073_ _x158071_)))
                (let () (declare (not safe)) (_else5800758021_)))))))
    (define ormap
      (lambda _g63964_
        (let ((_g63963_ (let () (declare (not safe)) (##length _g63964_))))
          (cond ((let () (declare (not safe)) (##fx= _g63963_ 2))
                 (apply (lambda (_f57985_ _lst57986_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f57985_ _lst57986_)))
                        _g63964_))
                ((let () (declare (not safe)) (##fx= _g63963_ 3))
                 (apply (lambda (_f57988_ _lst157989_ _lst257990_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f57988_ _lst157989_ _lst257990_)))
                        _g63964_))
                ((let () (declare (not safe)) (##fx>= _g63963_ 3))
                 (apply ormap* _g63964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g63964_))))))
    (define ormap*
      (lambda (_f57975_ . _rest57976_)
        (let _recur57978_ ((_rest57980_ _rest57976_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57980_))
              (let ((_$e57982_ (apply _f57975_ (map car _rest57980_))))
                (if _$e57982_
                    _$e57982_
                    (let ((__tmp63965 (map cdr _rest57980_)))
                      (declare (not safe))
                      (_recur57978_ __tmp63965))))
              '#f))))
    (define filter
      (lambda (_f57933_ _lst57934_)
        (let _recur57936_ ((_lst57938_ _lst57934_))
          (let* ((_lst5793957947_ _lst57938_)
                 (_else5794157955_ (lambda () '()))
                 (_K5794357963_
                  (lambda (_rest57958_ _hd57959_)
                    (if (_f57933_ _hd57959_)
                        (let ((_tail57961_
                               (let ()
                                 (declare (not safe))
                                 (_recur57936_ _rest57958_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail57961_ _rest57958_))
                              _lst57938_
                              (let ()
                                (declare (not safe))
                                (cons _hd57959_ _tail57961_))))
                        (let ()
                          (declare (not safe))
                          (_recur57936_ _rest57958_))))))
            (if (let () (declare (not safe)) (##pair? _lst5793957947_))
                (let ((_hd5794457966_
                       (let () (declare (not safe)) (##car _lst5793957947_)))
                      (_tl5794557968_
                       (let () (declare (not safe)) (##cdr _lst5793957947_))))
                  (let* ((_hd57971_ _hd5794457966_)
                         (_rest57973_ _tl5794557968_))
                    (declare (not safe))
                    (_K5794357963_ _rest57973_ _hd57971_)))
                (let () (declare (not safe)) (_else5794157955_)))))))
    (define filter-map1
      (lambda (_f57888_ _lst57889_)
        (let _recur57891_ ((_rest57893_ _lst57889_))
          (let* ((_rest5789457902_ _rest57893_)
                 (_else5789657910_ (lambda () '()))
                 (_K5789857921_
                  (lambda (_rest57913_ _x57914_)
                    (let ((_$e57916_ (_f57888_ _x57914_)))
                      (if _$e57916_
                          ((lambda (_r57919_)
                             (let ((__tmp63966
                                    (let ()
                                      (declare (not safe))
                                      (_recur57891_ _rest57913_))))
                               (declare (not safe))
                               (cons _r57919_ __tmp63966)))
                           _$e57916_)
                          (let ()
                            (declare (not safe))
                            (_recur57891_ _rest57913_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5789457902_))
                (let ((_hd5789957924_
                       (let () (declare (not safe)) (##car _rest5789457902_)))
                      (_tl5790057926_
                       (let () (declare (not safe)) (##cdr _rest5789457902_))))
                  (let* ((_x57929_ _hd5789957924_)
                         (_rest57931_ _tl5790057926_))
                    (declare (not safe))
                    (_K5789857921_ _rest57931_ _x57929_)))
                (let () (declare (not safe)) (_else5789657910_)))))))
    (define filter-map2
      (lambda (_f57808_ _lst157809_ _lst257810_)
        (let _recur57812_ ((_rest157814_ _lst157809_)
                           (_rest257815_ _lst257810_))
          (let* ((_rest15781657824_ _rest157814_)
                 (_else5781857832_ (lambda () '()))
                 (_K5782057876_
                  (lambda (_rest157835_ _x157836_)
                    (let* ((_rest25783757845_ _rest257815_)
                           (_else5783957853_ (lambda () '()))
                           (_K5784157864_
                            (lambda (_rest257856_ _x257857_)
                              (let ((_$e57859_ (_f57808_ _x157836_ _x257857_)))
                                (if _$e57859_
                                    ((lambda (_r57862_)
                                       (let ((__tmp63967
                                              (let ()
                                                (declare (not safe))
                                                (_recur57812_
                                                 _rest157835_
                                                 _rest257856_))))
                                         (declare (not safe))
                                         (cons _r57862_ __tmp63967)))
                                     _$e57859_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur57812_
                                       _rest157835_
                                       _rest257856_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25783757845_))
                          (let ((_hd5784257867_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25783757845_)))
                                (_tl5784357869_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25783757845_))))
                            (let* ((_x257872_ _hd5784257867_)
                                   (_rest257874_ _tl5784357869_))
                              (declare (not safe))
                              (_K5784157864_ _rest257874_ _x257872_)))
                          (let () (declare (not safe)) (_else5783957853_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15781657824_))
                (let ((_hd5782157879_
                       (let () (declare (not safe)) (##car _rest15781657824_)))
                      (_tl5782257881_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15781657824_))))
                  (let* ((_x157884_ _hd5782157879_)
                         (_rest157886_ _tl5782257881_))
                    (declare (not safe))
                    (_K5782057876_ _rest157886_ _x157884_)))
                (let () (declare (not safe)) (_else5781857832_)))))))
    (define filter-map
      (lambda _g63969_
        (let ((_g63968_ (let () (declare (not safe)) (##length _g63969_))))
          (cond ((let () (declare (not safe)) (##fx= _g63968_ 2))
                 (apply (lambda (_f57796_ _lst57797_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f57796_ _lst57797_)))
                        _g63969_))
                ((let () (declare (not safe)) (##fx= _g63968_ 3))
                 (apply (lambda (_f57799_ _lst157800_ _lst257801_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f57799_ _lst157800_ _lst257801_)))
                        _g63969_))
                ((let () (declare (not safe)) (##fx>= _g63968_ 3))
                 (apply filter-map* _g63969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g63969_))))))
    (define filter-map*
      (lambda (_f57784_ . _rest57785_)
        (let _recur57787_ ((_rest57789_ _rest57785_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57789_))
              (let ((_$e57791_ (apply _f57784_ (map car _rest57789_))))
                (if _$e57791_
                    ((lambda (_r57794_)
                       (let ((__tmp63971
                              (let ((__tmp63972 (map cdr _rest57789_)))
                                (declare (not safe))
                                (_recur57787_ __tmp63972))))
                         (declare (not safe))
                         (cons _r57794_ __tmp63971)))
                     _$e57791_)
                    (let ((__tmp63970 (map cdr _rest57789_)))
                      (declare (not safe))
                      (_recur57787_ __tmp63970))))
              '()))))
    (define iota__%
      (lambda (_count57752_ _start57753_ _step57754_)
        (if (fixnum? _count57752_)
            '#!void
            (error '"expected fixnum" _count57752_))
        (if (let () (declare (not safe)) (number? _start57753_))
            '#!void
            (error '"expected number" _start57753_))
        (if (let () (declare (not safe)) (number? _step57754_))
            '#!void
            (error '"expected number" _step57754_))
        (let ((_root57756_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57758_ ((_i57760_ '0)
                          (_x57761_ _start57753_)
                          (_tl57762_ _root57756_))
            (if (let () (declare (not safe)) (##fx< _i57760_ _count57752_))
                (let ((_tl*57764_
                       (let () (declare (not safe)) (cons _x57761_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl57762_ _tl*57764_))
                  (let ((__tmp63974
                         (let () (declare (not safe)) (##fx+ _i57760_ '1)))
                        (__tmp63973 (+ _x57761_ _step57754_)))
                    (declare (not safe))
                    (_lp57758_ __tmp63974 __tmp63973 _tl*57764_)))
                (let () (declare (not safe)) (##cdr _root57756_)))))))
    (define iota__0
      (lambda (_count57769_)
        (let* ((_start57771_ '0) (_step57773_ '1))
          (declare (not safe))
          (iota__% _count57769_ _start57771_ _step57773_))))
    (define iota__1
      (lambda (_count57775_ _start57776_)
        (let ((_step57778_ '1))
          (declare (not safe))
          (iota__% _count57775_ _start57776_ _step57778_))))
    (define iota
      (lambda _g63976_
        (let ((_g63975_ (let () (declare (not safe)) (##length _g63976_))))
          (cond ((let () (declare (not safe)) (##fx= _g63975_ 1))
                 (apply (lambda (_count57769_)
                          (let () (declare (not safe)) (iota__0 _count57769_)))
                        _g63976_))
                ((let () (declare (not safe)) (##fx= _g63975_ 2))
                 (apply (lambda (_count57775_ _start57776_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count57775_ _start57776_)))
                        _g63976_))
                ((let () (declare (not safe)) (##fx= _g63975_ 3))
                 (apply (lambda (_count57780_ _start57781_ _step57782_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count57780_ _start57781_ _step57782_)))
                        _g63976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g63976_))))))
    (define last-pair
      (lambda (_lst57726_)
        (let* ((_lst5772757734_ _lst57726_)
               (_E5772957738_
                (lambda () (error '"No clause matching" _lst5772757734_)))
               (_K5773057743_
                (lambda (_rest57741_)
                  (if (let () (declare (not safe)) (pair? _rest57741_))
                      (let () (declare (not safe)) (last-pair _rest57741_))
                      _lst57726_))))
          (if (let () (declare (not safe)) (##pair? _lst5772757734_))
              (let* ((_tl5773257746_
                      (let () (declare (not safe)) (##cdr _lst5772757734_)))
                     (_rest57749_ _tl5773257746_))
                (declare (not safe))
                (_K5773057743_ _rest57749_))
              (let () (declare (not safe)) (_E5772957738_))))))
    (define last
      (lambda (_lst57724_)
        (car (let () (declare (not safe)) (last-pair _lst57724_)))))
    (define assgetq__%
      (lambda (_key57702_ _lst57704_ _default57706_)
        (let ((_$e57709_
               (if (let () (declare (not safe)) (pair? _lst57704_))
                   (assq _key57702_ _lst57704_)
                   '#f)))
          (if _$e57709_
              (cdr _$e57709_)
              (if (let () (declare (not safe)) (procedure? _default57706_))
                  (_default57706_ _key57702_)
                  _default57706_)))))
    (define assgetq__0
      (lambda (_key57715_ _lst57716_)
        (let ((_default57718_ '#f))
          (declare (not safe))
          (assgetq__% _key57715_ _lst57716_ _default57718_))))
    (define assgetq
      (lambda _g63978_
        (let ((_g63977_ (let () (declare (not safe)) (##length _g63978_))))
          (cond ((let () (declare (not safe)) (##fx= _g63977_ 2))
                 (apply (lambda (_key57715_ _lst57716_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57715_ _lst57716_)))
                        _g63978_))
                ((let () (declare (not safe)) (##fx= _g63977_ 3))
                 (apply (lambda (_key57720_ _lst57721_ _default57722_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57720_ _lst57721_ _default57722_)))
                        _g63978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g63978_))))))
    (define assgetv__%
      (lambda (_key57679_ _lst57681_ _default57683_)
        (let ((_$e57686_
               (if (let () (declare (not safe)) (pair? _lst57681_))
                   (assv _key57679_ _lst57681_)
                   '#f)))
          (if _$e57686_
              (cdr _$e57686_)
              (if (let () (declare (not safe)) (procedure? _default57683_))
                  (_default57683_ _key57679_)
                  _default57683_)))))
    (define assgetv__0
      (lambda (_key57692_ _lst57693_)
        (let ((_default57695_ '#f))
          (declare (not safe))
          (assgetv__% _key57692_ _lst57693_ _default57695_))))
    (define assgetv
      (lambda _g63980_
        (let ((_g63979_ (let () (declare (not safe)) (##length _g63980_))))
          (cond ((let () (declare (not safe)) (##fx= _g63979_ 2))
                 (apply (lambda (_key57692_ _lst57693_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57692_ _lst57693_)))
                        _g63980_))
                ((let () (declare (not safe)) (##fx= _g63979_ 3))
                 (apply (lambda (_key57697_ _lst57698_ _default57699_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57697_ _lst57698_ _default57699_)))
                        _g63980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g63980_))))))
    (define assget__%
      (lambda (_key57656_ _lst57658_ _default57660_)
        (let ((_$e57663_
               (if (let () (declare (not safe)) (pair? _lst57658_))
                   (assoc _key57656_ _lst57658_)
                   '#f)))
          (if _$e57663_
              (cdr _$e57663_)
              (if (let () (declare (not safe)) (procedure? _default57660_))
                  (_default57660_ _key57656_)
                  _default57660_)))))
    (define assget__0
      (lambda (_key57669_ _lst57670_)
        (let ((_default57672_ '#f))
          (declare (not safe))
          (assget__% _key57669_ _lst57670_ _default57672_))))
    (define assget
      (lambda _g63982_
        (let ((_g63981_ (let () (declare (not safe)) (##length _g63982_))))
          (cond ((let () (declare (not safe)) (##fx= _g63981_ 2))
                 (apply (lambda (_key57669_ _lst57670_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57669_ _lst57670_)))
                        _g63982_))
                ((let () (declare (not safe)) (##fx= _g63981_ 3))
                 (apply (lambda (_key57674_ _lst57675_ _default57676_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57674_ _lst57675_ _default57676_)))
                        _g63982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g63982_))))))
    (define pgetq__%
      (lambda (_key57585_ _lst57587_ _default57589_)
        (let _lp57592_ ((_rest57595_ _lst57587_))
          (let* ((_rest5759757607_ _rest57595_)
                 (_else5759957615_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57589_))
                        (_default57589_ _key57585_)
                        _default57589_)))
                 (_K5760157624_
                  (lambda (_rest57618_ _v57619_ _k57621_)
                    (if (let () (declare (not safe)) (eq? _k57621_ _key57585_))
                        _v57619_
                        (let ()
                          (declare (not safe))
                          (_lp57592_ _rest57618_))))))
            (if (let () (declare (not safe)) (##pair? _rest5759757607_))
                (let ((_hd5760257627_
                       (let () (declare (not safe)) (##car _rest5759757607_)))
                      (_tl5760357629_
                       (let () (declare (not safe)) (##cdr _rest5759757607_))))
                  (let ((_k57632_ _hd5760257627_))
                    (if (let () (declare (not safe)) (##pair? _tl5760357629_))
                        (let ((_hd5760457634_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5760357629_)))
                              (_tl5760557636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5760357629_))))
                          (let* ((_v57639_ _hd5760457634_)
                                 (_rest57641_ _tl5760557636_))
                            (declare (not safe))
                            (_K5760157624_ _rest57641_ _v57639_ _k57632_)))
                        (let () (declare (not safe)) (_else5759957615_)))))
                (let () (declare (not safe)) (_else5759957615_)))))))
    (define pgetq__0
      (lambda (_key57646_ _lst57647_)
        (let ((_default57649_ '#f))
          (declare (not safe))
          (pgetq__% _key57646_ _lst57647_ _default57649_))))
    (define pgetq
      (lambda _g63984_
        (let ((_g63983_ (let () (declare (not safe)) (##length _g63984_))))
          (cond ((let () (declare (not safe)) (##fx= _g63983_ 2))
                 (apply (lambda (_key57646_ _lst57647_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57646_ _lst57647_)))
                        _g63984_))
                ((let () (declare (not safe)) (##fx= _g63983_ 3))
                 (apply (lambda (_key57651_ _lst57652_ _default57653_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57651_ _lst57652_ _default57653_)))
                        _g63984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g63984_))))))
    (define pgetv__%
      (lambda (_key57514_ _lst57516_ _default57518_)
        (let _lp57521_ ((_rest57524_ _lst57516_))
          (let* ((_rest5752657536_ _rest57524_)
                 (_else5752857544_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57518_))
                        (_default57518_ _key57514_)
                        _default57518_)))
                 (_K5753057553_
                  (lambda (_rest57547_ _v57548_ _k57550_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57550_ _key57514_))
                        _v57548_
                        (let ()
                          (declare (not safe))
                          (_lp57521_ _rest57547_))))))
            (if (let () (declare (not safe)) (##pair? _rest5752657536_))
                (let ((_hd5753157556_
                       (let () (declare (not safe)) (##car _rest5752657536_)))
                      (_tl5753257558_
                       (let () (declare (not safe)) (##cdr _rest5752657536_))))
                  (let ((_k57561_ _hd5753157556_))
                    (if (let () (declare (not safe)) (##pair? _tl5753257558_))
                        (let ((_hd5753357563_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5753257558_)))
                              (_tl5753457565_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5753257558_))))
                          (let* ((_v57568_ _hd5753357563_)
                                 (_rest57570_ _tl5753457565_))
                            (declare (not safe))
                            (_K5753057553_ _rest57570_ _v57568_ _k57561_)))
                        (let () (declare (not safe)) (_else5752857544_)))))
                (let () (declare (not safe)) (_else5752857544_)))))))
    (define pgetv__0
      (lambda (_key57575_ _lst57576_)
        (let ((_default57578_ '#f))
          (declare (not safe))
          (pgetv__% _key57575_ _lst57576_ _default57578_))))
    (define pgetv
      (lambda _g63986_
        (let ((_g63985_ (let () (declare (not safe)) (##length _g63986_))))
          (cond ((let () (declare (not safe)) (##fx= _g63985_ 2))
                 (apply (lambda (_key57575_ _lst57576_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57575_ _lst57576_)))
                        _g63986_))
                ((let () (declare (not safe)) (##fx= _g63985_ 3))
                 (apply (lambda (_key57580_ _lst57581_ _default57582_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57580_ _lst57581_ _default57582_)))
                        _g63986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g63986_))))))
    (define pget__%
      (lambda (_key57443_ _lst57445_ _default57447_)
        (let _lp57450_ ((_rest57453_ _lst57445_))
          (let* ((_rest5745557465_ _rest57453_)
                 (_else5745757473_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57447_))
                        (_default57447_ _key57443_)
                        _default57447_)))
                 (_K5745957482_
                  (lambda (_rest57476_ _v57477_ _k57479_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57479_ _key57443_))
                        _v57477_
                        (let ()
                          (declare (not safe))
                          (_lp57450_ _rest57476_))))))
            (if (let () (declare (not safe)) (##pair? _rest5745557465_))
                (let ((_hd5746057485_
                       (let () (declare (not safe)) (##car _rest5745557465_)))
                      (_tl5746157487_
                       (let () (declare (not safe)) (##cdr _rest5745557465_))))
                  (let ((_k57490_ _hd5746057485_))
                    (if (let () (declare (not safe)) (##pair? _tl5746157487_))
                        (let ((_hd5746257492_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5746157487_)))
                              (_tl5746357494_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5746157487_))))
                          (let* ((_v57497_ _hd5746257492_)
                                 (_rest57499_ _tl5746357494_))
                            (declare (not safe))
                            (_K5745957482_ _rest57499_ _v57497_ _k57490_)))
                        (let () (declare (not safe)) (_else5745757473_)))))
                (let () (declare (not safe)) (_else5745757473_)))))))
    (define pget__0
      (lambda (_key57504_ _lst57505_)
        (let ((_default57507_ '#f))
          (declare (not safe))
          (pget__% _key57504_ _lst57505_ _default57507_))))
    (define pget
      (lambda _g63988_
        (let ((_g63987_ (let () (declare (not safe)) (##length _g63988_))))
          (cond ((let () (declare (not safe)) (##fx= _g63987_ 2))
                 (apply (lambda (_key57504_ _lst57505_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57504_ _lst57505_)))
                        _g63988_))
                ((let () (declare (not safe)) (##fx= _g63987_ 3))
                 (apply (lambda (_key57509_ _lst57510_ _default57511_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57509_ _lst57510_ _default57511_)))
                        _g63988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g63988_))))))
    (define find
      (lambda (_pred57436_ _lst57437_)
        (let ((_$e57439_
               (let () (declare (not safe)) (memf _pred57436_ _lst57437_))))
          (if _$e57439_ (car _$e57439_) '#f))))
    (define memf
      (lambda (_proc57396_ _lst57397_)
        (let _lp57399_ ((_rest57401_ _lst57397_))
          (let* ((_rest5740257410_ _rest57401_)
                 (_else5740457418_ (lambda () '#f))
                 (_K5740657424_
                  (lambda (_tl57421_ _hd57422_)
                    (if (_proc57396_ _hd57422_)
                        _rest57401_
                        (let () (declare (not safe)) (_lp57399_ _tl57421_))))))
            (if (let () (declare (not safe)) (##pair? _rest5740257410_))
                (let ((_hd5740757427_
                       (let () (declare (not safe)) (##car _rest5740257410_)))
                      (_tl5740857429_
                       (let () (declare (not safe)) (##cdr _rest5740257410_))))
                  (let* ((_hd57432_ _hd5740757427_) (_tl57434_ _tl5740857429_))
                    (declare (not safe))
                    (_K5740657424_ _tl57434_ _hd57432_)))
                (let () (declare (not safe)) (_else5740457418_)))))))
    (define remove1
      (lambda (_el57349_ _lst57351_)
        (let _lp57354_ ((_rest57357_ _lst57351_) (_r57359_ '()))
          (let* ((_rest5736157369_ _rest57357_)
                 (_else5736357377_ (lambda () _lst57351_))
                 (_K5736557384_
                  (lambda (_rest57380_ _hd57381_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57349_ _hd57381_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57380_ _r57359_))
                        (let ((__tmp63989
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57381_ _r57359_))))
                          (declare (not safe))
                          (_lp57354_ _rest57380_ __tmp63989))))))
            (if (let () (declare (not safe)) (##pair? _rest5736157369_))
                (let ((_hd5736657387_
                       (let () (declare (not safe)) (##car _rest5736157369_)))
                      (_tl5736757389_
                       (let () (declare (not safe)) (##cdr _rest5736157369_))))
                  (let* ((_hd57392_ _hd5736657387_)
                         (_rest57394_ _tl5736757389_))
                    (declare (not safe))
                    (_K5736557384_ _rest57394_ _hd57392_)))
                (let () (declare (not safe)) (_else5736357377_)))))))
    (define remv
      (lambda (_el57302_ _lst57304_)
        (let _lp57307_ ((_rest57310_ _lst57304_) (_r57312_ '()))
          (let* ((_rest5731457322_ _rest57310_)
                 (_else5731657330_ (lambda () _lst57304_))
                 (_K5731857337_
                  (lambda (_rest57333_ _hd57334_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57302_ _hd57334_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57333_ _r57312_))
                        (let ((__tmp63990
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57334_ _r57312_))))
                          (declare (not safe))
                          (_lp57307_ _rest57333_ __tmp63990))))))
            (if (let () (declare (not safe)) (##pair? _rest5731457322_))
                (let ((_hd5731957340_
                       (let () (declare (not safe)) (##car _rest5731457322_)))
                      (_tl5732057342_
                       (let () (declare (not safe)) (##cdr _rest5731457322_))))
                  (let* ((_hd57345_ _hd5731957340_)
                         (_rest57347_ _tl5732057342_))
                    (declare (not safe))
                    (_K5731857337_ _rest57347_ _hd57345_)))
                (let () (declare (not safe)) (_else5731657330_)))))))
    (define remq
      (lambda (_el57255_ _lst57257_)
        (let _lp57260_ ((_rest57263_ _lst57257_) (_r57265_ '()))
          (let* ((_rest5726757275_ _rest57263_)
                 (_else5726957283_ (lambda () _lst57257_))
                 (_K5727157290_
                  (lambda (_rest57286_ _hd57287_)
                    (if (let () (declare (not safe)) (eq? _el57255_ _hd57287_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57286_ _r57265_))
                        (let ((__tmp63991
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57287_ _r57265_))))
                          (declare (not safe))
                          (_lp57260_ _rest57286_ __tmp63991))))))
            (if (let () (declare (not safe)) (##pair? _rest5726757275_))
                (let ((_hd5727257293_
                       (let () (declare (not safe)) (##car _rest5726757275_)))
                      (_tl5727357295_
                       (let () (declare (not safe)) (##cdr _rest5726757275_))))
                  (let* ((_hd57298_ _hd5727257293_)
                         (_rest57300_ _tl5727357295_))
                    (declare (not safe))
                    (_K5727157290_ _rest57300_ _hd57298_)))
                (let () (declare (not safe)) (_else5726957283_)))))))
    (define remf
      (lambda (_proc57214_ _lst57215_)
        (let _lp57217_ ((_rest57219_ _lst57215_) (_r57220_ '()))
          (let* ((_rest5722157229_ _rest57219_)
                 (_else5722357237_ (lambda () _lst57215_))
                 (_K5722557243_
                  (lambda (_rest57240_ _hd57241_)
                    (if (_proc57214_ _hd57241_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57240_ _r57220_))
                        (let ((__tmp63992
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57241_ _r57220_))))
                          (declare (not safe))
                          (_lp57217_ _rest57240_ __tmp63992))))))
            (if (let () (declare (not safe)) (##pair? _rest5722157229_))
                (let ((_hd5722657246_
                       (let () (declare (not safe)) (##car _rest5722157229_)))
                      (_tl5722757248_
                       (let () (declare (not safe)) (##cdr _rest5722157229_))))
                  (let* ((_hd57251_ _hd5722657246_)
                         (_rest57253_ _tl5722757248_))
                    (declare (not safe))
                    (_K5722557243_ _rest57253_ _hd57251_)))
                (let () (declare (not safe)) (_else5722357237_)))))))
    (define 1+ (lambda (_x57212_) (+ _x57212_ '1)))
    (define 1- (lambda (_x57210_) (- _x57210_ '1)))
    (define fx1+ (lambda (_x57208_) (fx+ _x57208_ '1)))
    (define fx1- (lambda (_x57206_) (fx- _x57206_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57204_)
        (if (fixnum? _x57204_)
            (let () (declare (not safe)) (##fx>= _x57204_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57202_)
        (if (fixnum? _x57202_)
            (let () (declare (not safe)) (##fx> _x57202_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57200_) (let () (declare (not safe)) (eq? _x57200_ '0))))
    (define fx<0?
      (lambda (_x57198_)
        (if (fixnum? _x57198_)
            (let () (declare (not safe)) (##fx< _x57198_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57196_)
        (if (fixnum? _x57196_)
            (let () (declare (not safe)) (##fx<= _x57196_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57194_)
        (if (let () (declare (not safe)) (symbol? _x57194_))
            (let ((__tmp63993 (uninterned-symbol? _x57194_)))
              (declare (not safe))
              (not __tmp63993))
            '#f)))
    (define display-as-string
      (lambda (_x57166_ _port57167_)
        (if (or (let () (declare (not safe)) (string? _x57166_))
                (let () (declare (not safe)) (symbol? _x57166_))
                (keyword? _x57166_)
                (let () (declare (not safe)) (number? _x57166_))
                (let () (declare (not safe)) (char? _x57166_)))
            (display _x57166_ _port57167_)
            (if (let () (declare (not safe)) (pair? _x57166_))
                (begin
                  (let ((__tmp63994 (car _x57166_)))
                    (declare (not safe))
                    (display-as-string __tmp63994 _port57167_))
                  (let ((__tmp63995 (cdr _x57166_)))
                    (declare (not safe))
                    (display-as-string __tmp63995 _port57167_)))
                (if (let () (declare (not safe)) (vector? _x57166_))
                    (vector-for-each
                     (lambda (_g5718057182_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5718057182_ _port57167_)))
                     _x57166_)
                    (if (or (let () (declare (not safe)) (null? _x57166_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57166_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57166_))
                            (let () (declare (not safe)) (boolean? _x57166_)))
                        '#!void
                        (error '"cannot convert as string" _x57166_)))))))
    (define as-string__0
      (lambda (_x57154_)
        (if (let () (declare (not safe)) (string? _x57154_))
            _x57154_
            (if (let () (declare (not safe)) (symbol? _x57154_))
                (symbol->string _x57154_)
                (if (keyword? _x57154_)
                    (keyword->string _x57154_)
                    (call-with-output-string
                     '()
                     (lambda (_g5715557157_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57154_ _g5715557157_)))))))))
    (define as-string__1
      (lambda _args57160_
        (call-with-output-string
         '()
         (lambda (_g5716157163_)
           (let ()
             (declare (not safe))
             (display-as-string _args57160_ _g5716157163_))))))
    (define as-string
      (lambda _g63997_
        (let ((_g63996_ (let () (declare (not safe)) (##length _g63997_))))
          (cond ((let () (declare (not safe)) (##fx= _g63996_ 1))
                 (apply (lambda (_x57154_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57154_)))
                        _g63997_))
                (#t (apply as-string__1 _g63997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g63997_))))))
    (define make-symbol__0
      (lambda (_x57150_)
        (if (interned-symbol? _x57150_)
            _x57150_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57150_))))))
    (define make-symbol__1
      (lambda _args57152_ (string->symbol (apply as-string _args57152_))))
    (define make-symbol
      (lambda _g63999_
        (let ((_g63998_ (let () (declare (not safe)) (##length _g63999_))))
          (cond ((let () (declare (not safe)) (##fx= _g63998_ 1))
                 (apply (lambda (_x57150_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57150_)))
                        _g63999_))
                (#t (apply make-symbol__1 _g63999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g63999_))))))
    (define make-keyword__0
      (lambda (_x57146_)
        (if (interned-keyword? _x57146_)
            _x57146_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57146_))))))
    (define make-keyword__1
      (lambda _args57148_ (string->keyword (apply as-string _args57148_))))
    (define make-keyword
      (lambda _g64001_
        (let ((_g64000_ (let () (declare (not safe)) (##length _g64001_))))
          (cond ((let () (declare (not safe)) (##fx= _g64000_ 1))
                 (apply (lambda (_x57146_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57146_)))
                        _g64001_))
                (#t (apply make-keyword__1 _g64001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g64001_))))))
    (define interned-keyword?
      (lambda (_x57144_)
        (if (keyword? _x57144_)
            (let ((__tmp64002 (uninterned-keyword? _x57144_)))
              (declare (not safe))
              (not __tmp64002))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57142_)
        ((if (uninterned-symbol? _sym57142_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57142_))))
    (define keyword->symbol
      (lambda (_kw57140_)
        ((if (uninterned-keyword? _kw57140_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57140_))))
    (define bytes->string__%
      (lambda (_bstr57118_ _enc57119_)
        (if (let () (declare (not safe)) (eq? _enc57119_ 'UTF-8))
            (utf8->string _bstr57118_)
            (let* ((_in57121_
                    (open-input-u8vector
                     (let ((__tmp64003
                            (let ((__tmp64004
                                   (let ((__tmp64005
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57118_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp64005))))
                              (declare (not safe))
                              (cons _enc57119_ __tmp64004))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp64003))))
                   (_len57123_ (u8vector-length _bstr57118_))
                   (_out57125_ (make-string _len57123_))
                   (_n57127_
                    (read-substring _out57125_ '0 _len57123_ _in57121_)))
              (string-shrink! _out57125_ _n57127_)
              _out57125_))))
    (define bytes->string__0
      (lambda (_bstr57133_)
        (let ((_enc57135_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57133_ _enc57135_))))
    (define bytes->string
      (lambda _g64007_
        (let ((_g64006_ (let () (declare (not safe)) (##length _g64007_))))
          (cond ((let () (declare (not safe)) (##fx= _g64006_ 1))
                 (apply (lambda (_bstr57133_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57133_)))
                        _g64007_))
                ((let () (declare (not safe)) (##fx= _g64006_ 2))
                 (apply (lambda (_bstr57137_ _enc57138_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57137_ _enc57138_)))
                        _g64007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g64007_))))))
    (define string->bytes__%
      (lambda (_str57104_ _enc57105_)
        (if (let () (declare (not safe)) (eq? _enc57105_ 'UTF-8))
            (string->utf8 _str57104_)
            (substring->bytes
             _str57104_
             '0
             (string-length _str57104_)
             _enc57105_))))
    (define string->bytes__0
      (lambda (_str57110_)
        (let ((_enc57112_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57110_ _enc57112_))))
    (define string->bytes
      (lambda _g64009_
        (let ((_g64008_ (let () (declare (not safe)) (##length _g64009_))))
          (cond ((let () (declare (not safe)) (##fx= _g64008_ 1))
                 (apply (lambda (_str57110_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57110_)))
                        _g64009_))
                ((let () (declare (not safe)) (##fx= _g64008_ 2))
                 (apply (lambda (_str57114_ _enc57115_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57114_ _enc57115_)))
                        _g64009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g64009_))))))
    (define substring->bytes__%
      (lambda (_str57082_ _start57083_ _end57084_ _enc57085_)
        (if (let () (declare (not safe)) (eq? _enc57085_ 'UTF-8))
            (string->utf8 _str57082_ _start57083_ _end57084_)
            (let ((_out57087_
                   (open-output-u8vector
                    (let ((__tmp64010
                           (let ()
                             (declare (not safe))
                             (cons _enc57085_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp64010)))))
              (write-substring _str57082_ _start57083_ _end57084_ _out57087_)
              (get-output-u8vector _out57087_)))))
    (define substring->bytes__0
      (lambda (_str57092_ _start57093_ _end57094_)
        (let ((_enc57096_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str57092_
           _start57093_
           _end57094_
           _enc57096_))))
    (define substring->bytes
      (lambda _g64012_
        (let ((_g64011_ (let () (declare (not safe)) (##length _g64012_))))
          (cond ((let () (declare (not safe)) (##fx= _g64011_ 3))
                 (apply (lambda (_str57092_ _start57093_ _end57094_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str57092_
                             _start57093_
                             _end57094_)))
                        _g64012_))
                ((let () (declare (not safe)) (##fx= _g64011_ 4))
                 (apply (lambda (_str57098_ _start57099_ _end57100_ _enc57101_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57098_
                             _start57099_
                             _end57100_
                             _enc57101_)))
                        _g64012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g64012_))))))
    (define string-empty?
      (lambda (_str57079_)
        (let ((__tmp64013 (string-length _str57079_)))
          (declare (not safe))
          (##fxzero? __tmp64013))))
    (define string-prefix?
      (lambda (_prefix57069_ _str57070_)
        (let ((_str-len57072_ (string-length _str57070_))
              (_prefix-len57073_ (string-length _prefix57069_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len57073_ _str-len57072_))
              (let _lp57075_ ((_i57077_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i57077_ _prefix-len57073_))
                    (if (let ((__tmp64016
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str57070_ _i57077_)))
                              (__tmp64015
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix57069_ _i57077_))))
                          (declare (not safe))
                          (eq? __tmp64016 __tmp64015))
                        (let ((__tmp64014
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i57077_ '1))))
                          (declare (not safe))
                          (_lp57075_ __tmp64014))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str57047_ _char57048_ _start57049_)
        (let ((_len57051_ (string-length _str57047_)))
          (let _lp57053_ ((_k57055_ _start57049_))
            (if (let () (declare (not safe)) (##fx< _k57055_ _len57051_))
                (if (let ((__tmp64018
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57047_ _k57055_))))
                      (declare (not safe))
                      (eq? _char57048_ __tmp64018))
                    _k57055_
                    (let ((__tmp64017
                           (let () (declare (not safe)) (##fx+ _k57055_ '1))))
                      (declare (not safe))
                      (_lp57053_ __tmp64017)))
                '#f)))))
    (define string-index__0
      (lambda (_str57060_ _char57061_)
        (let ((_start57063_ '0))
          (declare (not safe))
          (string-index__% _str57060_ _char57061_ _start57063_))))
    (define string-index
      (lambda _g64020_
        (let ((_g64019_ (let () (declare (not safe)) (##length _g64020_))))
          (cond ((let () (declare (not safe)) (##fx= _g64019_ 2))
                 (apply (lambda (_str57060_ _char57061_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str57060_ _char57061_)))
                        _g64020_))
                ((let () (declare (not safe)) (##fx= _g64019_ 3))
                 (apply (lambda (_str57065_ _char57066_ _start57067_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str57065_
                             _char57066_
                             _start57067_)))
                        _g64020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g64020_))))))
    (define string-rindex__%
      (lambda (_str57018_ _char57019_ _start57020_)
        (let* ((_len57022_ (string-length _str57018_))
               (_start57027_
                (let ((_$e57024_ _start57020_))
                  (if _$e57024_
                      _$e57024_
                      (let () (declare (not safe)) (##fx- _len57022_ '1))))))
          (let _lp57030_ ((_k57032_ _start57027_))
            (if (let () (declare (not safe)) (##fx>= _k57032_ '0))
                (if (let ((__tmp64022
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57018_ _k57032_))))
                      (declare (not safe))
                      (eq? _char57019_ __tmp64022))
                    _k57032_
                    (let ((__tmp64021
                           (let () (declare (not safe)) (##fx- _k57032_ '1))))
                      (declare (not safe))
                      (_lp57030_ __tmp64021)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str57037_ _char57038_)
        (let ((_start57040_ '#f))
          (declare (not safe))
          (string-rindex__% _str57037_ _char57038_ _start57040_))))
    (define string-rindex
      (lambda _g64024_
        (let ((_g64023_ (let () (declare (not safe)) (##length _g64024_))))
          (cond ((let () (declare (not safe)) (##fx= _g64023_ 2))
                 (apply (lambda (_str57037_ _char57038_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str57037_ _char57038_)))
                        _g64024_))
                ((let () (declare (not safe)) (##fx= _g64023_ 3))
                 (apply (lambda (_str57042_ _char57043_ _start57044_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str57042_
                             _char57043_
                             _start57044_)))
                        _g64024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g64024_))))))
    (define string-split
      (lambda (_str57002_ _char57003_)
        (let ((_len57005_ (string-length _str57002_)))
          (let _lp57007_ ((_start57009_ '0) (_r57010_ '()))
            (let ((_$e57012_
                   (let ()
                     (declare (not safe))
                     (string-index _str57002_ _char57003_ _start57009_))))
              (if _$e57012_
                  ((lambda (_end57015_)
                     (let ((__tmp64028
                            (let ()
                              (declare (not safe))
                              (##fx+ _end57015_ '1)))
                           (__tmp64026
                            (let ((__tmp64027
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57002_
                                      _start57009_
                                      _end57015_))))
                              (declare (not safe))
                              (cons __tmp64027 _r57010_))))
                       (declare (not safe))
                       (_lp57007_ __tmp64028 __tmp64026)))
                   _$e57012_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start57009_ _len57005_))
                      (let ((__tmp64025
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57002_
                                      _start57009_
                                      _len57005_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp64025 _r57010_))
                      (reverse _r57010_))))))))
    (define string-join
      (lambda (_strs56907_ _join56908_)
        (letrec ((_join-length56910_
                  (lambda (_strs56961_ _jlen56962_)
                    (let _lp56964_ ((_rest56966_ _strs56961_) (_len56967_ '0))
                      (let* ((_rest5696856976_ _rest56966_)
                             (_else5697056984_ (lambda () '0))
                             (_K5697256990_
                              (lambda (_rest56987_ _hd56988_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd56988_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest56987_))
                                        (let ((__tmp64030
                                               (let ((__tmp64031
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd56988_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp64031
                                                        _jlen56962_
                                                        _len56967_))))
                                          (declare (not safe))
                                          (_lp56964_ _rest56987_ __tmp64030))
                                        (let ((__tmp64029
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd56988_))))
                                          (declare (not safe))
                                          (##fx+ __tmp64029 _len56967_)))
                                    (error '"expected string" _hd56988_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5696856976_))
                            (let ((_hd5697356993_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5696856976_)))
                                  (_tl5697456995_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5696856976_))))
                              (let* ((_hd56998_ _hd5697356993_)
                                     (_rest57000_ _tl5697456995_))
                                (declare (not safe))
                                (_K5697256990_ _rest57000_ _hd56998_)))
                            (let ()
                              (declare (not safe))
                              (_else5697056984_))))))))
          (let* ((_join56912_
                  (if (let () (declare (not safe)) (char? _join56908_))
                      (string _join56908_)
                      (if (let () (declare (not safe)) (string? _join56908_))
                          _join56908_
                          (error '"expected string or char" _join56908_))))
                 (_jlen56914_
                  (let () (declare (not safe)) (##string-length _join56912_)))
                 (_olen56916_
                  (let ()
                    (declare (not safe))
                    (_join-length56910_ _strs56907_ _jlen56914_)))
                 (_ostr56918_ (make-string _olen56916_)))
            (let _lp56921_ ((_rest56923_ _strs56907_) (_k56924_ '0))
              (let* ((_rest5692556933_ _rest56923_)
                     (_else5692756941_ (lambda () '""))
                     (_K5692956949_
                      (lambda (_rest56944_ _hd56945_)
                        (let ((_hdlen56947_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd56945_))))
                          (if (let () (declare (not safe)) (pair? _rest56944_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56945_
                                   '0
                                   _hdlen56947_
                                   _ostr56918_
                                   _k56924_))
                                (let ((__tmp64032
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56924_ _hdlen56947_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join56912_
                                   '0
                                   _jlen56914_
                                   _ostr56918_
                                   __tmp64032))
                                (let ((__tmp64033
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56924_
                                                _hdlen56947_
                                                _jlen56914_))))
                                  (declare (not safe))
                                  (_lp56921_ _rest56944_ __tmp64033)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56945_
                                   '0
                                   _hdlen56947_
                                   _ostr56918_
                                   _k56924_))
                                _ostr56918_))))))
                (if (let () (declare (not safe)) (##pair? _rest5692556933_))
                    (let ((_hd5693056952_
                           (let ()
                             (declare (not safe))
                             (##car _rest5692556933_)))
                          (_tl5693156954_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5692556933_))))
                      (let* ((_hd56957_ _hd5693056952_)
                             (_rest56959_ _tl5693156954_))
                        (declare (not safe))
                        (_K5692956949_ _rest56959_ _hd56957_)))
                    (let () (declare (not safe)) (_else5692756941_)))))))))
    (define read-u8vector
      (lambda (_bytes56904_ _port56905_)
        (read-subu8vector
         _bytes56904_
         '0
         (u8vector-length _bytes56904_)
         _port56905_)))
    (define write-u8vector
      (lambda (_bytes56901_ _port56902_)
        (write-subu8vector
         _bytes56901_
         '0
         (u8vector-length _bytes56901_)
         _port56902_)))
    (define read-string
      (lambda (_str56898_ _port56899_)
        (read-substring _str56898_ '0 (string-length _str56898_) _port56899_)))
    (define write-string
      (lambda (_str56895_ _port56896_)
        (write-substring
         _str56895_
         '0
         (string-length _str56895_)
         _port56896_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag56864_
               _dbg-exprs56865_
               _dbg-thunks56866_
               _expr56867_
               _thunk56868_)
        (letrec ((_o56870_ (current-output-port))
                 (_e56871_ (current-error-port))
                 (_p56872_ (DBG-printer))
                 (_f56873_
                  (lambda () (force-output _o56870_) (force-output _e56871_)))
                 (_d56874_ (lambda (_x56881_) (display _x56881_ _e56871_)))
                 (_w56875_ (lambda (_x56883_) (_p56872_ _x56883_ _e56871_)))
                 (_n56876_ (lambda () (newline _e56871_)))
                 (_v56877_
                  (lambda (_l56886_)
                    (for-each
                     (lambda (_x56888_)
                       (let () (declare (not safe)) (_d56874_ '" "))
                       (let () (declare (not safe)) (_w56875_ _x56888_)))
                     _l56886_)
                    (let () (declare (not safe)) (_n56876_))))
                 (_x56878_
                  (lambda (_expr56890_ _thunk56891_)
                    (let () (declare (not safe)) (_f56873_))
                    (let () (declare (not safe)) (_d56874_ '"  "))
                    (let () (declare (not safe)) (_w56875_ _expr56890_))
                    (let () (declare (not safe)) (_d56874_ '" =>"))
                    (call-with-values
                     _thunk56891_
                     (lambda _x56893_
                       (let () (declare (not safe)) (_v56877_ _x56893_))
                       (let () (declare (not safe)) (_f56873_))
                       (apply values _x56893_))))))
          (if _tag56864_
              (begin
                (if (let () (declare (not safe)) (eq? _tag56864_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f56873_))
                      (let () (declare (not safe)) (_d56874_ _tag56864_))
                      (let () (declare (not safe)) (_n56876_))))
                (for-each _x56878_ _dbg-exprs56865_ _dbg-thunks56866_)
                (if _thunk56868_
                    (let ()
                      (declare (not safe))
                      (_x56878_ _expr56867_ _thunk56868_))
                    '#!void))
              (if _thunk56868_ (_thunk56868_) '#!void)))))))
