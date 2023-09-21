(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1695292370)
  (begin
    (define displayln
      (lambda _args5767_
        (let _lp5769_ ((_rest5771_ _args5767_))
          (let* ((_rest57725780_ _rest5771_)
                 (_else57745788_
                  (lambda () (let () (declare (not safe)) (newline))))
                 (_K57765794_
                  (lambda (_rest5791_ _hd5792_)
                    (let () (declare (not safe)) (display _hd5792_))
                    (let () (declare (not safe)) (_lp5769_ _rest5791_)))))
            (if (let () (declare (not safe)) (##pair? _rest57725780_))
                (let ((_hd57775797_
                       (let () (declare (not safe)) (##car _rest57725780_)))
                      (_tl57785799_
                       (let () (declare (not safe)) (##cdr _rest57725780_))))
                  (let* ((_hd5802_ _hd57775797_) (_rest5804_ _tl57785799_))
                    (declare (not safe))
                    (_K57765794_ _rest5804_ _hd5802_)))
                (let () (declare (not safe)) (newline)))))))
    (define display*
      (lambda _args5765_
        (let () (declare (not safe)) (for-each display _args5765_))))
    (define file-newer?
      (lambda (_file15758_ _file25759_)
        (letrec ((_modification-time5761_
                  (lambda (_file5763_)
                    (let ((__tmp7913
                           (let ((__tmp7914
                                  (let ()
                                    (declare (not safe))
                                    (file-info _file5763_ '#t))))
                             (declare (not safe))
                             (file-info-last-modification-time __tmp7914))))
                      (declare (not safe))
                      (##time->seconds __tmp7913)))))
          (let ((__tmp7916
                 (let ()
                   (declare (not safe))
                   (_modification-time5761_ _file15758_)))
                (__tmp7915
                 (let ()
                   (declare (not safe))
                   (_modification-time5761_ _file25759_))))
            (declare (not safe))
            (##fl> __tmp7916 __tmp7915)))))
    (define create-directory*__%
      (lambda (_dir5732_ _perms5733_)
        (letrec ((_create15735_
                  (lambda (_path5746_)
                    (if (let () (declare (not safe)) (file-exists? _path5746_))
                        (if (let ((__tmp7918
                                   (let ()
                                     (declare (not safe))
                                     (file-type _path5746_))))
                              (declare (not safe))
                              (eq? __tmp7918 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path5746_))
                        (if _perms5733_
                            (let ((__tmp7917
                                   (list 'path:
                                         _path5746_
                                         'permissions:
                                         _perms5733_)))
                              (declare (not safe))
                              (create-directory __tmp7917))
                            (let ()
                              (declare (not safe))
                              (create-directory _path5746_)))))))
          (if (let () (declare (not safe)) (file-exists? _dir5732_))
              '#!void
              (let _lp5737_ ((_start5739_ '0))
                (let ((_$e5741_
                       (let ()
                         (declare (not safe))
                         (string-index _dir5732_ '#\/ _start5739_))))
                  (if _$e5741_
                      ((lambda (_x5744_)
                         (if (let () (declare (not safe)) (##fx> _x5744_ '0))
                             (let ((__tmp7919
                                    (let ()
                                      (declare (not safe))
                                      (substring _dir5732_ '0 _x5744_))))
                               (declare (not safe))
                               (_create15735_ __tmp7919))
                             '#!void)
                         (let ((__tmp7920
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x5744_ '1))))
                           (declare (not safe))
                           (_lp5737_ __tmp7920)))
                       _$e5741_)
                      (let ()
                        (declare (not safe))
                        (_create15735_ _dir5732_)))))))))
    (define create-directory*__0
      (lambda (_dir5751_)
        (let ((_perms5753_ '493))
          (declare (not safe))
          (create-directory*__% _dir5751_ _perms5753_))))
    (define create-directory*
      (lambda _g7922_
        (let ((_g7921_ (let () (declare (not safe)) (##length _g7922_))))
          (cond ((let () (declare (not safe)) (##fx= _g7921_ 1))
                 (apply (lambda (_dir5751_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir5751_)))
                        _g7922_))
                ((let () (declare (not safe)) (##fx= _g7921_ 2))
                 (apply (lambda (_dir5755_ _perms5756_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir5755_ _perms5756_)))
                        _g7922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g7922_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g7923_ '#t))
    (define true?
      (lambda (_obj5728_) (let () (declare (not safe)) (eq? _obj5728_ '#t))))
    (define false (lambda _g7924_ '#f))
    (define void (lambda _g7925_ '#!void))
    (define void?
      (lambda (_obj5724_)
        (let () (declare (not safe)) (eq? _obj5724_ '#!void))))
    (define eof-object (lambda _g7926_ '#!eof))
    (define identity (lambda (_obj5721_) _obj5721_))
    (define dssl-object?
      (lambda (_obj5719_)
        (if (let ()
              (declare (not safe))
              (memq _obj5719_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_obj5717_)
        (let () (declare (not safe)) (eq? _obj5717_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj5715_)
        (let () (declare (not safe)) (eq? _obj5715_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj5713_)
        (let () (declare (not safe)) (eq? _obj5713_ '#!optional))))
    (define immediate?
      (lambda (_obj5709_)
        (let* ((_t5711_ (let () (declare (not safe)) (##type _obj5709_)))
               (__tmp7927 (let () (declare (not safe)) (##fxand _t5711_ '1))))
          (declare (not safe))
          (##fxzero? __tmp7927))))
    (define nonnegative-fixnum?
      (lambda (_obj5707_)
        (if (let () (declare (not safe)) (fixnum? _obj5707_))
            (let ((__tmp7928
                   (let () (declare (not safe)) (fxnegative? _obj5707_))))
              (declare (not safe))
              (not __tmp7928))
            '#f)))
    (define values-count
      (lambda (_obj5705_)
        (if (let () (declare (not safe)) (##values? _obj5705_))
            (let () (declare (not safe)) (##vector-length _obj5705_))
            '1)))
    (define values-ref
      (lambda (_obj5702_ _k5703_)
        (if (let () (declare (not safe)) (##values? _obj5702_))
            (let () (declare (not safe)) (##vector-ref _obj5702_ _k5703_))
            _obj5702_)))
    (define values->list
      (lambda (_obj5700_)
        (if (let () (declare (not safe)) (##values? _obj5700_))
            (let () (declare (not safe)) (##vector->list _obj5700_))
            (list _obj5700_))))
    (define subvector->list__%
      (lambda (_obj5685_ _start5686_)
        (let ((_lst5688_
               (let () (declare (not safe)) (##vector->list _obj5685_))))
          (declare (not safe))
          (list-tail _lst5688_ _start5686_))))
    (define subvector->list__0
      (lambda (_obj5693_)
        (let ((_start5695_ '0))
          (declare (not safe))
          (subvector->list__% _obj5693_ _start5695_))))
    (define subvector->list
      (lambda _g7930_
        (let ((_g7929_ (let () (declare (not safe)) (##length _g7930_))))
          (cond ((let () (declare (not safe)) (##fx= _g7929_ 1))
                 (apply (lambda (_obj5693_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj5693_)))
                        _g7930_))
                ((let () (declare (not safe)) (##fx= _g7929_ 2))
                 (apply (lambda (_obj5697_ _start5698_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj5697_ _start5698_)))
                        _g7930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g7930_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args5682_ (apply make-table 'test: eq? _args5682_)))
    (define make-hash-table-eqv
      (lambda _args5680_ (apply make-table 'test: eqv? _args5680_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst5677_ . _args5678_)
        (apply list->table _lst5677_ 'test: eq? _args5678_)))
    (define list->hash-table-eqv
      (lambda (_lst5674_ . _args5675_)
        (apply list->table _lst5674_ 'test: eqv? _args5675_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht5671_ _k5672_)
        (let () (declare (not safe)) (table-ref _ht5671_ _k5672_ '#f))))
    (define hash-put!
      (lambda (_ht5667_ _k5668_ _v5669_)
        (let () (declare (not safe)) (table-set! _ht5667_ _k5668_ _v5669_))))
    (define hash-update!__%
      (lambda (_ht5646_ _k5647_ _update5648_ _default5649_)
        (let* ((_value5651_
                (let ()
                  (declare (not safe))
                  (table-ref _ht5646_ _k5647_ _default5649_)))
               (__tmp7931 (_update5648_ _value5651_)))
          (declare (not safe))
          (table-set! _ht5646_ _k5647_ __tmp7931))))
    (define hash-update!__0
      (lambda (_ht5656_ _k5657_ _update5658_)
        (let ((_default5660_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht5656_ _k5657_ _update5658_ _default5660_))))
    (define hash-update!
      (lambda _g7933_
        (let ((_g7932_ (let () (declare (not safe)) (##length _g7933_))))
          (cond ((let () (declare (not safe)) (##fx= _g7932_ 3))
                 (apply (lambda (_ht5656_ _k5657_ _update5658_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0 _ht5656_ _k5657_ _update5658_)))
                        _g7933_))
                ((let () (declare (not safe)) (##fx= _g7932_ 4))
                 (apply (lambda (_ht5662_ _k5663_ _update5664_ _default5665_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht5662_
                             _k5663_
                             _update5664_
                             _default5665_)))
                        _g7933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g7933_))))))
    (define hash-remove!
      (lambda (_ht5642_ _k5643_)
        (let () (declare (not safe)) (table-set! _ht5642_ _k5643_))))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht5640_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht5640_))))
    (define plist->hash-table__%
      (lambda (_plst5575_ _ht5576_)
        (let _lp5578_ ((_rest5580_ _plst5575_))
          (let* ((_rest55815592_ _rest5580_)
                 (_E55845596_
                  (lambda () (error '"No clause matching" _rest55815592_))))
            (let ((_K55865611_
                   (lambda (_rest5607_ _v5608_ _k5609_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht5576_ _k5609_ _v5608_))
                     (let () (declare (not safe)) (_lp5578_ _rest5607_))))
                  (_K55855601_ (lambda () _ht5576_)))
              (let ((_try-match55835604_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest55815592_ '()))
                           (let () (declare (not safe)) (_K55855601_))
                           (let () (declare (not safe)) (_E55845596_))))))
                (if (let () (declare (not safe)) (##pair? _rest55815592_))
                    (let ((_tl55885616_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest55815592_)))
                          (_hd55875614_
                           (let ()
                             (declare (not safe))
                             (##car _rest55815592_))))
                      (if (let () (declare (not safe)) (##pair? _tl55885616_))
                          (let ((_tl55905623_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl55885616_)))
                                (_hd55895621_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl55885616_))))
                            (let ((_k5619_ _hd55875614_)
                                  (_v5626_ _hd55895621_)
                                  (_rest5628_ _tl55905623_))
                              (let ()
                                (declare (not safe))
                                (_K55865611_ _rest5628_ _v5626_ _k5619_))))
                          (let () (declare (not safe)) (_try-match55835604_))))
                    (let () (declare (not safe)) (_try-match55835604_)))))))))
    (define plist->hash-table__0
      (lambda (_plst5633_)
        (let ((_ht5635_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst5633_ _ht5635_))))
    (define plist->hash-table
      (lambda _g7935_
        (let ((_g7934_ (let () (declare (not safe)) (##length _g7935_))))
          (cond ((let () (declare (not safe)) (##fx= _g7934_ 1))
                 (apply (lambda (_plst5633_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst5633_)))
                        _g7935_))
                ((let () (declare (not safe)) (##fx= _g7934_ 2))
                 (apply (lambda (_plst5637_ _ht5638_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst5637_ _ht5638_)))
                        _g7935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g7935_))))))
    (define plist->hash-table-eq
      (lambda (_plst5572_)
        (let ((__tmp7936
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst5572_ __tmp7936))))
    (define plist->hash-table-eqv
      (lambda (_plst5570_)
        (let ((__tmp7937
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst5570_ __tmp7937))))
    (define hash-key?
      (lambda (_ht5567_ _k5568_)
        (let ((__tmp7938
               (let ((__tmp7939
                      (let ()
                        (declare (not safe))
                        (table-ref _ht5567_ _k5568_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp7939 absent-value))))
          (declare (not safe))
          (not __tmp7938))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun5560_ _ht5561_)
        (let ((__tmp7940
               (lambda (_k5563_ _v5564_ _r5565_)
                 (let ((__tmp7941 (_fun5560_ _k5563_ _v5564_)))
                   (declare (not safe))
                   (cons __tmp7941 _r5565_)))))
          (declare (not safe))
          (hash-fold __tmp7940 '() _ht5561_))))
    (define hash-fold
      (lambda (_fun5551_ _iv5552_ _ht5553_)
        (let ((_ret5555_ _iv5552_))
          (let ((__tmp7942
                 (lambda (_k5557_ _v5558_)
                   (set! _ret5555_ (_fun5551_ _k5557_ _v5558_ _ret5555_)))))
            (declare (not safe))
            (table-for-each __tmp7942 _ht5553_))
          _ret5555_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht5546_)
        (let ((__tmp7943 (lambda (_k5548_ _v5549_) _k5548_)))
          (declare (not safe))
          (hash-map __tmp7943 _ht5546_))))
    (define hash-values
      (lambda (_ht5541_)
        (let ((__tmp7944 (lambda (_k5543_ _v5544_) _v5544_)))
          (declare (not safe))
          (hash-map __tmp7944 _ht5541_))))
    (define hash-copy
      (lambda (_hd5536_ . _rest5537_)
        (let ((_hd5539_ (let () (declare (not safe)) (table-copy _hd5536_))))
          (if (let () (declare (not safe)) (null? _rest5537_))
              _hd5539_
              (apply hash-copy! _hd5539_ _rest5537_)))))
    (define hash-copy!
      (lambda (_hd5531_ . _rest5532_)
        (let ((__tmp7945
               (lambda (_r5534_)
                 (let ()
                   (declare (not safe))
                   (table-merge! _hd5531_ _r5534_)))))
          (declare (not safe))
          (for-each __tmp7945 _rest5532_))
        _hd5531_))
    (define hash-merge
      (lambda (_hd5525_ . _rest5526_)
        (let ((__tmp7946
               (lambda (_tab5528_ _r5529_)
                 (let ()
                   (declare (not safe))
                   (table-merge _r5529_ _tab5528_)))))
          (declare (not safe))
          (foldl1 __tmp7946 _hd5525_ _rest5526_))))
    (define hash-merge!
      (lambda (_hd5519_ . _rest5520_)
        (let ((__tmp7947
               (lambda (_tab5522_ _r5523_)
                 (let ()
                   (declare (not safe))
                   (table-merge! _r5523_ _tab5522_)))))
          (declare (not safe))
          (foldl1 __tmp7947 _hd5519_ _rest5520_))))
    (define hash-clear!__%
      (lambda (_ht5504_ _size5505_)
        (let ((_gcht5507_
               (let () (declare (not safe)) (##vector-ref _ht5504_ '5))))
          (if (let ((__tmp7948
                     (let () (declare (not safe)) (fixnum? _gcht5507_))))
                (declare (not safe))
                (not __tmp7948))
              (let ()
                (declare (not safe))
                (##vector-set! _ht5504_ '5 _size5505_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht5512_)
        (let ((_size5514_ '0))
          (declare (not safe))
          (hash-clear!__% _ht5512_ _size5514_))))
    (define hash-clear!
      (lambda _g7950_
        (let ((_g7949_ (let () (declare (not safe)) (##length _g7950_))))
          (cond ((let () (declare (not safe)) (##fx= _g7949_ 1))
                 (apply (lambda (_ht5512_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht5512_)))
                        _g7950_))
                ((let () (declare (not safe)) (##fx= _g7949_ 2))
                 (apply (lambda (_ht5516_ _size5517_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht5516_ _size5517_)))
                        _g7950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g7950_))))))
    (define make-list__%
      (lambda (_k5485_ _val5486_)
        (if (let () (declare (not safe)) (fixnum? _k5485_))
            '#!void
            (error '"expected argument 1 to be fixnum" _k5485_))
        (let _lp5488_ ((_n5490_ '0) (_r5491_ '()))
          (if (let () (declare (not safe)) (##fx< _n5490_ _k5485_))
              (let ((__tmp7952
                     (let () (declare (not safe)) (##fx+ _n5490_ '1)))
                    (__tmp7951
                     (let () (declare (not safe)) (cons _val5486_ _r5491_))))
                (declare (not safe))
                (_lp5488_ __tmp7952 __tmp7951))
              _r5491_))))
    (define make-list__0
      (lambda (_k5496_)
        (let ((_val5498_ '#f))
          (declare (not safe))
          (make-list__% _k5496_ _val5498_))))
    (define make-list
      (lambda _g7954_
        (let ((_g7953_ (let () (declare (not safe)) (##length _g7954_))))
          (cond ((let () (declare (not safe)) (##fx= _g7953_ 1))
                 (apply (lambda (_k5496_)
                          (let () (declare (not safe)) (make-list__0 _k5496_)))
                        _g7954_))
                ((let () (declare (not safe)) (##fx= _g7953_ 2))
                 (apply (lambda (_k5500_ _val5501_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k5500_ _val5501_)))
                        _g7954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g7954_))))))
    (define cons*
      (lambda (_x5475_ _y5476_ . _rest5477_)
        (letrec ((_recur5479_
                  (lambda (_x5481_ _rest5482_)
                    (if (let () (declare (not safe)) (pair? _rest5482_))
                        (let ((__tmp7955
                               (let ((__tmp7957
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest5482_)))
                                     (__tmp7956
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest5482_))))
                                 (declare (not safe))
                                 (_recur5479_ __tmp7957 __tmp7956))))
                          (declare (not safe))
                          (cons _x5481_ __tmp7955))
                        _x5481_))))
          (let ((__tmp7958
                 (let ()
                   (declare (not safe))
                   (_recur5479_ _y5476_ _rest5477_))))
            (declare (not safe))
            (cons _x5475_ __tmp7958)))))
    (define foldl1
      (lambda (_f5433_ _iv5434_ _lst5435_)
        (let _lp5437_ ((_rest5439_ _lst5435_) (_r5440_ _iv5434_))
          (let* ((_rest54415449_ _rest5439_)
                 (_else54435457_ (lambda () _r5440_))
                 (_K54455463_
                  (lambda (_rest5460_ _x5461_)
                    (let ((__tmp7959 (_f5433_ _x5461_ _r5440_)))
                      (declare (not safe))
                      (_lp5437_ _rest5460_ __tmp7959)))))
            (if (let () (declare (not safe)) (##pair? _rest54415449_))
                (let ((_hd54465466_
                       (let () (declare (not safe)) (##car _rest54415449_)))
                      (_tl54475468_
                       (let () (declare (not safe)) (##cdr _rest54415449_))))
                  (let* ((_x5471_ _hd54465466_) (_rest5473_ _tl54475468_))
                    (declare (not safe))
                    (_K54455463_ _rest5473_ _x5471_)))
                (let () (declare (not safe)) (_else54435457_)))))))
    (define foldl2
      (lambda (_f5356_ _iv5357_ _lst15358_ _lst25359_)
        (let _lp5361_ ((_rest15363_ _lst15358_)
                       (_rest25364_ _lst25359_)
                       (_r5365_ _iv5357_))
          (let* ((_rest153665374_ _rest15363_)
                 (_else53685382_ (lambda () _r5365_))
                 (_K53705421_
                  (lambda (_rest15385_ _x15386_)
                    (let* ((_rest253875395_ _rest25364_)
                           (_else53895403_ (lambda () _r5365_))
                           (_K53915409_
                            (lambda (_rest25406_ _x25407_)
                              (let ((__tmp7960
                                     (_f5356_ _x15386_ _x25407_ _r5365_)))
                                (declare (not safe))
                                (_lp5361_
                                 _rest15385_
                                 _rest25406_
                                 __tmp7960)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest253875395_))
                          (let ((_hd53925412_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest253875395_)))
                                (_tl53935414_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest253875395_))))
                            (let* ((_x25417_ _hd53925412_)
                                   (_rest25419_ _tl53935414_))
                              (declare (not safe))
                              (_K53915409_ _rest25419_ _x25417_)))
                          (let () (declare (not safe)) (_else53895403_)))))))
            (if (let () (declare (not safe)) (##pair? _rest153665374_))
                (let ((_hd53715424_
                       (let () (declare (not safe)) (##car _rest153665374_)))
                      (_tl53725426_
                       (let () (declare (not safe)) (##cdr _rest153665374_))))
                  (let* ((_x15429_ _hd53715424_) (_rest15431_ _tl53725426_))
                    (declare (not safe))
                    (_K53705421_ _rest15431_ _x15429_)))
                (let () (declare (not safe)) (_else53685382_)))))))
    (define foldl
      (lambda _g7962_
        (let ((_g7961_ (let () (declare (not safe)) (##length _g7962_))))
          (cond ((let () (declare (not safe)) (##fx= _g7961_ 3))
                 (apply (lambda (_f5341_ _iv5342_ _lst5343_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f5341_ _iv5342_ _lst5343_)))
                        _g7962_))
                ((let () (declare (not safe)) (##fx= _g7961_ 4))
                 (apply (lambda (_f5345_ _iv5346_ _lst15347_ _lst25348_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f5345_ _iv5346_ _lst15347_ _lst25348_)))
                        _g7962_))
                ((let () (declare (not safe)) (##fx>= _g7961_ 4))
                 (apply foldl* _g7962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g7962_))))))
    (define foldl*
      (lambda (_f5329_ _iv5330_ . _rest5331_)
        (let _recur5333_ ((_iv5335_ _iv5330_) (_rest5336_ _rest5331_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5336_))
              (let ((__tmp7964
                     (apply _f5329_
                            (let ((__tmp7966
                                   (lambda (_xs5338_ _r5339_)
                                     (let ((__tmp7967
                                            (let ()
                                              (declare (not safe))
                                              (car _xs5338_))))
                                       (declare (not safe))
                                       (cons __tmp7967 _r5339_))))
                                  (__tmp7965 (list _iv5335_)))
                              (declare (not safe))
                              (foldr1 __tmp7966 __tmp7965 _rest5336_))))
                    (__tmp7963
                     (let () (declare (not safe)) (map cdr _rest5336_))))
                (declare (not safe))
                (_recur5333_ __tmp7964 __tmp7963))
              _iv5335_))))
    (define foldr1
      (lambda (_f5288_ _iv5289_ _lst5290_)
        (let _recur5292_ ((_rest5294_ _lst5290_))
          (let* ((_rest52955303_ _rest5294_)
                 (_else52975311_ (lambda () _iv5289_))
                 (_K52995317_
                  (lambda (_rest5314_ _x5315_)
                    (_f5288_ _x5315_
                             (let ()
                               (declare (not safe))
                               (_recur5292_ _rest5314_))))))
            (if (let () (declare (not safe)) (##pair? _rest52955303_))
                (let ((_hd53005320_
                       (let () (declare (not safe)) (##car _rest52955303_)))
                      (_tl53015322_
                       (let () (declare (not safe)) (##cdr _rest52955303_))))
                  (let* ((_x5325_ _hd53005320_) (_rest5327_ _tl53015322_))
                    (declare (not safe))
                    (_K52995317_ _rest5327_ _x5325_)))
                (let () (declare (not safe)) (_else52975311_)))))))
    (define foldr2
      (lambda (_f5212_ _iv5213_ _lst15214_ _lst25215_)
        (let _recur5217_ ((_rest15219_ _lst15214_) (_rest25220_ _lst25215_))
          (let* ((_rest152215229_ _rest15219_)
                 (_else52235237_ (lambda () _iv5213_))
                 (_K52255276_
                  (lambda (_rest15240_ _x15241_)
                    (let* ((_rest252425250_ _rest25220_)
                           (_else52445258_ (lambda () _iv5213_))
                           (_K52465264_
                            (lambda (_rest25261_ _x25262_)
                              (_f5212_ _x15241_
                                       _x25262_
                                       (let ()
                                         (declare (not safe))
                                         (_recur5217_
                                          _rest15240_
                                          _rest25261_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest252425250_))
                          (let ((_hd52475267_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest252425250_)))
                                (_tl52485269_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest252425250_))))
                            (let* ((_x25272_ _hd52475267_)
                                   (_rest25274_ _tl52485269_))
                              (declare (not safe))
                              (_K52465264_ _rest25274_ _x25272_)))
                          (let () (declare (not safe)) (_else52445258_)))))))
            (if (let () (declare (not safe)) (##pair? _rest152215229_))
                (let ((_hd52265279_
                       (let () (declare (not safe)) (##car _rest152215229_)))
                      (_tl52275281_
                       (let () (declare (not safe)) (##cdr _rest152215229_))))
                  (let* ((_x15284_ _hd52265279_) (_rest15286_ _tl52275281_))
                    (declare (not safe))
                    (_K52255276_ _rest15286_ _x15284_)))
                (let () (declare (not safe)) (_else52235237_)))))))
    (define foldr
      (lambda _g7969_
        (let ((_g7968_ (let () (declare (not safe)) (##length _g7969_))))
          (cond ((let () (declare (not safe)) (##fx= _g7968_ 3))
                 (apply (lambda (_f5197_ _iv5198_ _lst5199_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f5197_ _iv5198_ _lst5199_)))
                        _g7969_))
                ((let () (declare (not safe)) (##fx= _g7968_ 4))
                 (apply (lambda (_f5201_ _iv5202_ _lst15203_ _lst25204_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f5201_ _iv5202_ _lst15203_ _lst25204_)))
                        _g7969_))
                ((let () (declare (not safe)) (##fx>= _g7968_ 4))
                 (apply foldr* _g7969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g7969_))))))
    (define foldr*
      (lambda (_f5186_ _iv5187_ . _rest5188_)
        (let _recur5190_ ((_rest5192_ _rest5188_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5192_))
              (apply _f5186_
                     (let ((__tmp7972
                            (lambda (_xs5194_ _r5195_)
                              (let ((__tmp7973
                                     (let ()
                                       (declare (not safe))
                                       (car _xs5194_))))
                                (declare (not safe))
                                (cons __tmp7973 _r5195_))))
                           (__tmp7970
                            (list (let ((__tmp7971
                                         (let ()
                                           (declare (not safe))
                                           (map cdr _rest5192_))))
                                    (declare (not safe))
                                    (_recur5190_ __tmp7971)))))
                       (declare (not safe))
                       (foldr1 __tmp7972 __tmp7970 _rest5192_)))
              _iv5187_))))
    (define andmap1
      (lambda (_f5146_ _lst5147_)
        (let _lp5149_ ((_rest5151_ _lst5147_))
          (let* ((_rest51525160_ _rest5151_)
                 (_else51545168_ (lambda () '#t))
                 (_K51565174_
                  (lambda (_rest5171_ _x5172_)
                    (if (_f5146_ _x5172_)
                        (let () (declare (not safe)) (_lp5149_ _rest5171_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest51525160_))
                (let ((_hd51575177_
                       (let () (declare (not safe)) (##car _rest51525160_)))
                      (_tl51585179_
                       (let () (declare (not safe)) (##cdr _rest51525160_))))
                  (let* ((_x5182_ _hd51575177_) (_rest5184_ _tl51585179_))
                    (declare (not safe))
                    (_K51565174_ _rest5184_ _x5182_)))
                (let () (declare (not safe)) (_else51545168_)))))))
    (define andmap2
      (lambda (_f5071_ _lst15072_ _lst25073_)
        (let _lp5075_ ((_rest15077_ _lst15072_) (_rest25078_ _lst25073_))
          (let* ((_rest150795087_ _rest15077_)
                 (_else50815095_ (lambda () '#t))
                 (_K50835134_
                  (lambda (_rest15098_ _x15099_)
                    (let* ((_rest251005108_ _rest25078_)
                           (_else51025116_ (lambda () '#t))
                           (_K51045122_
                            (lambda (_rest25119_ _x25120_)
                              (if (_f5071_ _x15099_ _x25120_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp5075_ _rest15098_ _rest25119_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest251005108_))
                          (let ((_hd51055125_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest251005108_)))
                                (_tl51065127_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest251005108_))))
                            (let* ((_x25130_ _hd51055125_)
                                   (_rest25132_ _tl51065127_))
                              (declare (not safe))
                              (_K51045122_ _rest25132_ _x25130_)))
                          (let () (declare (not safe)) (_else51025116_)))))))
            (if (let () (declare (not safe)) (##pair? _rest150795087_))
                (let ((_hd50845137_
                       (let () (declare (not safe)) (##car _rest150795087_)))
                      (_tl50855139_
                       (let () (declare (not safe)) (##cdr _rest150795087_))))
                  (let* ((_x15142_ _hd50845137_) (_rest15144_ _tl50855139_))
                    (declare (not safe))
                    (_K50835134_ _rest15144_ _x15142_)))
                (let () (declare (not safe)) (_else50815095_)))))))
    (define andmap
      (lambda _g7975_
        (let ((_g7974_ (let () (declare (not safe)) (##length _g7975_))))
          (cond ((let () (declare (not safe)) (##fx= _g7974_ 2))
                 (apply (lambda (_f5059_ _lst5060_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f5059_ _lst5060_)))
                        _g7975_))
                ((let () (declare (not safe)) (##fx= _g7974_ 3))
                 (apply (lambda (_f5062_ _lst15063_ _lst25064_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f5062_ _lst15063_ _lst25064_)))
                        _g7975_))
                ((let () (declare (not safe)) (##fx>= _g7974_ 3))
                 (apply andmap* _g7975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g7975_))))))
    (define andmap*
      (lambda (_f5052_ . _rest5053_)
        (let _recur5055_ ((_rest5057_ _rest5053_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest5057_))
              (if (apply _f5052_
                         (let () (declare (not safe)) (map car _rest5057_)))
                  (let ((__tmp7976
                         (let () (declare (not safe)) (map cdr _rest5057_))))
                    (declare (not safe))
                    (_recur5055_ __tmp7976))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f5009_ _lst5010_)
        (let _lp5012_ ((_rest5014_ _lst5010_))
          (let* ((_rest50155023_ _rest5014_)
                 (_else50175031_ (lambda () '#f))
                 (_K50195040_
                  (lambda (_rest5034_ _x5035_)
                    (let ((_$e5037_ (_f5009_ _x5035_)))
                      (if _$e5037_
                          _$e5037_
                          (let ()
                            (declare (not safe))
                            (_lp5012_ _rest5034_)))))))
            (if (let () (declare (not safe)) (##pair? _rest50155023_))
                (let ((_hd50205043_
                       (let () (declare (not safe)) (##car _rest50155023_)))
                      (_tl50215045_
                       (let () (declare (not safe)) (##cdr _rest50155023_))))
                  (let* ((_x5048_ _hd50205043_) (_rest5050_ _tl50215045_))
                    (declare (not safe))
                    (_K50195040_ _rest5050_ _x5048_)))
                (let () (declare (not safe)) (_else50175031_)))))))
    (define ormap2
      (lambda (_f4931_ _lst14932_ _lst24933_)
        (let _lp4935_ ((_rest14937_ _lst14932_) (_rest24938_ _lst24933_))
          (let* ((_rest149394947_ _rest14937_)
                 (_else49414955_ (lambda () '#f))
                 (_K49434997_
                  (lambda (_rest14958_ _x14959_)
                    (let* ((_rest249604968_ _rest24938_)
                           (_else49624976_ (lambda () '#f))
                           (_K49644985_
                            (lambda (_rest24979_ _x24980_)
                              (let ((_$e4982_ (_f4931_ _x14959_ _x24980_)))
                                (if _$e4982_
                                    _$e4982_
                                    (let ()
                                      (declare (not safe))
                                      (_lp4935_ _rest14958_ _rest24979_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest249604968_))
                          (let ((_hd49654988_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest249604968_)))
                                (_tl49664990_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest249604968_))))
                            (let* ((_x24993_ _hd49654988_)
                                   (_rest24995_ _tl49664990_))
                              (declare (not safe))
                              (_K49644985_ _rest24995_ _x24993_)))
                          (let () (declare (not safe)) (_else49624976_)))))))
            (if (let () (declare (not safe)) (##pair? _rest149394947_))
                (let ((_hd49445000_
                       (let () (declare (not safe)) (##car _rest149394947_)))
                      (_tl49455002_
                       (let () (declare (not safe)) (##cdr _rest149394947_))))
                  (let* ((_x15005_ _hd49445000_) (_rest15007_ _tl49455002_))
                    (declare (not safe))
                    (_K49434997_ _rest15007_ _x15005_)))
                (let () (declare (not safe)) (_else49414955_)))))))
    (define ormap
      (lambda _g7978_
        (let ((_g7977_ (let () (declare (not safe)) (##length _g7978_))))
          (cond ((let () (declare (not safe)) (##fx= _g7977_ 2))
                 (apply (lambda (_f4919_ _lst4920_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f4919_ _lst4920_)))
                        _g7978_))
                ((let () (declare (not safe)) (##fx= _g7977_ 3))
                 (apply (lambda (_f4922_ _lst14923_ _lst24924_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f4922_ _lst14923_ _lst24924_)))
                        _g7978_))
                ((let () (declare (not safe)) (##fx>= _g7977_ 3))
                 (apply ormap* _g7978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g7978_))))))
    (define ormap*
      (lambda (_f4909_ . _rest4910_)
        (let _recur4912_ ((_rest4914_ _rest4910_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest4914_))
              (let ((_$e4916_
                     (apply _f4909_
                            (let ()
                              (declare (not safe))
                              (map car _rest4914_)))))
                (if _$e4916_
                    _$e4916_
                    (let ((__tmp7979
                           (let () (declare (not safe)) (map cdr _rest4914_))))
                      (declare (not safe))
                      (_recur4912_ __tmp7979))))
              '#f))))
    (define filter
      (lambda (_f4867_ _lst4868_)
        (let _recur4870_ ((_lst4872_ _lst4868_))
          (let* ((_lst48734881_ _lst4872_)
                 (_else48754889_ (lambda () '()))
                 (_K48774897_
                  (lambda (_rest4892_ _hd4893_)
                    (if (_f4867_ _hd4893_)
                        (let ((_tail4895_
                               (let ()
                                 (declare (not safe))
                                 (_recur4870_ _rest4892_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail4895_ _rest4892_))
                              _lst4872_
                              (let ()
                                (declare (not safe))
                                (cons _hd4893_ _tail4895_))))
                        (let ()
                          (declare (not safe))
                          (_recur4870_ _rest4892_))))))
            (if (let () (declare (not safe)) (##pair? _lst48734881_))
                (let ((_hd48784900_
                       (let () (declare (not safe)) (##car _lst48734881_)))
                      (_tl48794902_
                       (let () (declare (not safe)) (##cdr _lst48734881_))))
                  (let* ((_hd4905_ _hd48784900_) (_rest4907_ _tl48794902_))
                    (declare (not safe))
                    (_K48774897_ _rest4907_ _hd4905_)))
                (let () (declare (not safe)) (_else48754889_)))))))
    (define filter-map1
      (lambda (_f4822_ _lst4823_)
        (let _recur4825_ ((_rest4827_ _lst4823_))
          (let* ((_rest48284836_ _rest4827_)
                 (_else48304844_ (lambda () '()))
                 (_K48324855_
                  (lambda (_rest4847_ _x4848_)
                    (let ((_$e4850_ (_f4822_ _x4848_)))
                      (if _$e4850_
                          ((lambda (_r4853_)
                             (let ((__tmp7980
                                    (let ()
                                      (declare (not safe))
                                      (_recur4825_ _rest4847_))))
                               (declare (not safe))
                               (cons _r4853_ __tmp7980)))
                           _$e4850_)
                          (let ()
                            (declare (not safe))
                            (_recur4825_ _rest4847_)))))))
            (if (let () (declare (not safe)) (##pair? _rest48284836_))
                (let ((_hd48334858_
                       (let () (declare (not safe)) (##car _rest48284836_)))
                      (_tl48344860_
                       (let () (declare (not safe)) (##cdr _rest48284836_))))
                  (let* ((_x4863_ _hd48334858_) (_rest4865_ _tl48344860_))
                    (declare (not safe))
                    (_K48324855_ _rest4865_ _x4863_)))
                (let () (declare (not safe)) (_else48304844_)))))))
    (define filter-map2
      (lambda (_f4742_ _lst14743_ _lst24744_)
        (let _recur4746_ ((_rest14748_ _lst14743_) (_rest24749_ _lst24744_))
          (let* ((_rest147504758_ _rest14748_)
                 (_else47524766_ (lambda () '()))
                 (_K47544810_
                  (lambda (_rest14769_ _x14770_)
                    (let* ((_rest247714779_ _rest24749_)
                           (_else47734787_ (lambda () '()))
                           (_K47754798_
                            (lambda (_rest24790_ _x24791_)
                              (let ((_$e4793_ (_f4742_ _x14770_ _x24791_)))
                                (if _$e4793_
                                    ((lambda (_r4796_)
                                       (let ((__tmp7981
                                              (let ()
                                                (declare (not safe))
                                                (_recur4746_
                                                 _rest14769_
                                                 _rest24790_))))
                                         (declare (not safe))
                                         (cons _r4796_ __tmp7981)))
                                     _$e4793_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur4746_
                                       _rest14769_
                                       _rest24790_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest247714779_))
                          (let ((_hd47764801_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest247714779_)))
                                (_tl47774803_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest247714779_))))
                            (let* ((_x24806_ _hd47764801_)
                                   (_rest24808_ _tl47774803_))
                              (declare (not safe))
                              (_K47754798_ _rest24808_ _x24806_)))
                          (let () (declare (not safe)) (_else47734787_)))))))
            (if (let () (declare (not safe)) (##pair? _rest147504758_))
                (let ((_hd47554813_
                       (let () (declare (not safe)) (##car _rest147504758_)))
                      (_tl47564815_
                       (let () (declare (not safe)) (##cdr _rest147504758_))))
                  (let* ((_x14818_ _hd47554813_) (_rest14820_ _tl47564815_))
                    (declare (not safe))
                    (_K47544810_ _rest14820_ _x14818_)))
                (let () (declare (not safe)) (_else47524766_)))))))
    (define filter-map
      (lambda _g7983_
        (let ((_g7982_ (let () (declare (not safe)) (##length _g7983_))))
          (cond ((let () (declare (not safe)) (##fx= _g7982_ 2))
                 (apply (lambda (_f4730_ _lst4731_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f4730_ _lst4731_)))
                        _g7983_))
                ((let () (declare (not safe)) (##fx= _g7982_ 3))
                 (apply (lambda (_f4733_ _lst14734_ _lst24735_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f4733_ _lst14734_ _lst24735_)))
                        _g7983_))
                ((let () (declare (not safe)) (##fx>= _g7982_ 3))
                 (apply filter-map* _g7983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g7983_))))))
    (define filter-map*
      (lambda (_f4718_ . _rest4719_)
        (let _recur4721_ ((_rest4723_ _rest4719_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest4723_))
              (let ((_$e4725_
                     (apply _f4718_
                            (let ()
                              (declare (not safe))
                              (map car _rest4723_)))))
                (if _$e4725_
                    ((lambda (_r4728_)
                       (let ((__tmp7985
                              (let ((__tmp7986
                                     (let ()
                                       (declare (not safe))
                                       (map cdr _rest4723_))))
                                (declare (not safe))
                                (_recur4721_ __tmp7986))))
                         (declare (not safe))
                         (cons _r4728_ __tmp7985)))
                     _$e4725_)
                    (let ((__tmp7984
                           (let () (declare (not safe)) (map cdr _rest4723_))))
                      (declare (not safe))
                      (_recur4721_ __tmp7984))))
              '()))))
    (define iota__%
      (lambda (_count4686_ _start4687_ _step4688_)
        (if (let () (declare (not safe)) (fixnum? _count4686_))
            '#!void
            (error '"expected fixnum" _count4686_))
        (if (let () (declare (not safe)) (number? _start4687_))
            '#!void
            (error '"expected number" _start4687_))
        (if (let () (declare (not safe)) (number? _step4688_))
            '#!void
            (error '"expected number" _step4688_))
        (let ((_root4690_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp4692_ ((_i4694_ '0)
                         (_x4695_ _start4687_)
                         (_tl4696_ _root4690_))
            (if (let () (declare (not safe)) (##fx< _i4694_ _count4686_))
                (let ((_tl*4698_
                       (let () (declare (not safe)) (cons _x4695_ '()))))
                  (let () (declare (not safe)) (##set-cdr! _tl4696_ _tl*4698_))
                  (let ((__tmp7988
                         (let () (declare (not safe)) (##fx+ _i4694_ '1)))
                        (__tmp7987 (+ _x4695_ _step4688_)))
                    (declare (not safe))
                    (_lp4692_ __tmp7988 __tmp7987 _tl*4698_)))
                (let () (declare (not safe)) (##cdr _root4690_)))))))
    (define iota__0
      (lambda (_count4703_)
        (let* ((_start4705_ '0) (_step4707_ '1))
          (declare (not safe))
          (iota__% _count4703_ _start4705_ _step4707_))))
    (define iota__1
      (lambda (_count4709_ _start4710_)
        (let ((_step4712_ '1))
          (declare (not safe))
          (iota__% _count4709_ _start4710_ _step4712_))))
    (define iota
      (lambda _g7990_
        (let ((_g7989_ (let () (declare (not safe)) (##length _g7990_))))
          (cond ((let () (declare (not safe)) (##fx= _g7989_ 1))
                 (apply (lambda (_count4703_)
                          (let () (declare (not safe)) (iota__0 _count4703_)))
                        _g7990_))
                ((let () (declare (not safe)) (##fx= _g7989_ 2))
                 (apply (lambda (_count4709_ _start4710_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count4709_ _start4710_)))
                        _g7990_))
                ((let () (declare (not safe)) (##fx= _g7989_ 3))
                 (apply (lambda (_count4714_ _start4715_ _step4716_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count4714_ _start4715_ _step4716_)))
                        _g7990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g7990_))))))
    (define last-pair
      (lambda (_lst4660_)
        (let* ((_lst46614668_ _lst4660_)
               (_E46634672_
                (lambda () (error '"No clause matching" _lst46614668_)))
               (_K46644677_
                (lambda (_rest4675_)
                  (if (let () (declare (not safe)) (pair? _rest4675_))
                      (let () (declare (not safe)) (last-pair _rest4675_))
                      _lst4660_))))
          (if (let () (declare (not safe)) (##pair? _lst46614668_))
              (let* ((_tl46664680_
                      (let () (declare (not safe)) (##cdr _lst46614668_)))
                     (_rest4683_ _tl46664680_))
                (declare (not safe))
                (_K46644677_ _rest4683_))
              (let () (declare (not safe)) (_E46634672_))))))
    (define last
      (lambda (_lst4658_)
        (let ((__tmp7991 (let () (declare (not safe)) (last-pair _lst4658_))))
          (declare (not safe))
          (car __tmp7991))))
    (define assgetq__%
      (lambda (_key4636_ _lst4638_ _default4640_)
        (let ((_$e4643_
               (if (let () (declare (not safe)) (pair? _lst4638_))
                   (let () (declare (not safe)) (assq _key4636_ _lst4638_))
                   '#f)))
          (if _$e4643_
              (let () (declare (not safe)) (cdr _$e4643_))
              (if (let () (declare (not safe)) (procedure? _default4640_))
                  (_default4640_ _key4636_)
                  _default4640_)))))
    (define assgetq__0
      (lambda (_key4649_ _lst4650_)
        (let ((_default4652_ '#f))
          (declare (not safe))
          (assgetq__% _key4649_ _lst4650_ _default4652_))))
    (define assgetq
      (lambda _g7993_
        (let ((_g7992_ (let () (declare (not safe)) (##length _g7993_))))
          (cond ((let () (declare (not safe)) (##fx= _g7992_ 2))
                 (apply (lambda (_key4649_ _lst4650_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key4649_ _lst4650_)))
                        _g7993_))
                ((let () (declare (not safe)) (##fx= _g7992_ 3))
                 (apply (lambda (_key4654_ _lst4655_ _default4656_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key4654_ _lst4655_ _default4656_)))
                        _g7993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g7993_))))))
    (define assgetv__%
      (lambda (_key4613_ _lst4615_ _default4617_)
        (let ((_$e4620_
               (if (let () (declare (not safe)) (pair? _lst4615_))
                   (let () (declare (not safe)) (assv _key4613_ _lst4615_))
                   '#f)))
          (if _$e4620_
              (let () (declare (not safe)) (cdr _$e4620_))
              (if (let () (declare (not safe)) (procedure? _default4617_))
                  (_default4617_ _key4613_)
                  _default4617_)))))
    (define assgetv__0
      (lambda (_key4626_ _lst4627_)
        (let ((_default4629_ '#f))
          (declare (not safe))
          (assgetv__% _key4626_ _lst4627_ _default4629_))))
    (define assgetv
      (lambda _g7995_
        (let ((_g7994_ (let () (declare (not safe)) (##length _g7995_))))
          (cond ((let () (declare (not safe)) (##fx= _g7994_ 2))
                 (apply (lambda (_key4626_ _lst4627_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key4626_ _lst4627_)))
                        _g7995_))
                ((let () (declare (not safe)) (##fx= _g7994_ 3))
                 (apply (lambda (_key4631_ _lst4632_ _default4633_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key4631_ _lst4632_ _default4633_)))
                        _g7995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g7995_))))))
    (define assget__%
      (lambda (_key4590_ _lst4592_ _default4594_)
        (let ((_$e4597_
               (if (let () (declare (not safe)) (pair? _lst4592_))
                   (let () (declare (not safe)) (assoc _key4590_ _lst4592_))
                   '#f)))
          (if _$e4597_
              (let () (declare (not safe)) (cdr _$e4597_))
              (if (let () (declare (not safe)) (procedure? _default4594_))
                  (_default4594_ _key4590_)
                  _default4594_)))))
    (define assget__0
      (lambda (_key4603_ _lst4604_)
        (let ((_default4606_ '#f))
          (declare (not safe))
          (assget__% _key4603_ _lst4604_ _default4606_))))
    (define assget
      (lambda _g7997_
        (let ((_g7996_ (let () (declare (not safe)) (##length _g7997_))))
          (cond ((let () (declare (not safe)) (##fx= _g7996_ 2))
                 (apply (lambda (_key4603_ _lst4604_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key4603_ _lst4604_)))
                        _g7997_))
                ((let () (declare (not safe)) (##fx= _g7996_ 3))
                 (apply (lambda (_key4608_ _lst4609_ _default4610_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key4608_ _lst4609_ _default4610_)))
                        _g7997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g7997_))))))
    (define pgetq__%
      (lambda (_key4519_ _lst4521_ _default4523_)
        (let _lp4526_ ((_rest4529_ _lst4521_))
          (let* ((_rest45314541_ _rest4529_)
                 (_else45334549_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default4523_))
                        (_default4523_ _key4519_)
                        _default4523_)))
                 (_K45354558_
                  (lambda (_rest4552_ _v4553_ _k4555_)
                    (if (let () (declare (not safe)) (eq? _k4555_ _key4519_))
                        _v4553_
                        (let () (declare (not safe)) (_lp4526_ _rest4552_))))))
            (if (let () (declare (not safe)) (##pair? _rest45314541_))
                (let ((_hd45364561_
                       (let () (declare (not safe)) (##car _rest45314541_)))
                      (_tl45374563_
                       (let () (declare (not safe)) (##cdr _rest45314541_))))
                  (let ((_k4566_ _hd45364561_))
                    (if (let () (declare (not safe)) (##pair? _tl45374563_))
                        (let ((_hd45384568_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl45374563_)))
                              (_tl45394570_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl45374563_))))
                          (let* ((_v4573_ _hd45384568_)
                                 (_rest4575_ _tl45394570_))
                            (declare (not safe))
                            (_K45354558_ _rest4575_ _v4573_ _k4566_)))
                        (let () (declare (not safe)) (_else45334549_)))))
                (let () (declare (not safe)) (_else45334549_)))))))
    (define pgetq__0
      (lambda (_key4580_ _lst4581_)
        (let ((_default4583_ '#f))
          (declare (not safe))
          (pgetq__% _key4580_ _lst4581_ _default4583_))))
    (define pgetq
      (lambda _g7999_
        (let ((_g7998_ (let () (declare (not safe)) (##length _g7999_))))
          (cond ((let () (declare (not safe)) (##fx= _g7998_ 2))
                 (apply (lambda (_key4580_ _lst4581_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key4580_ _lst4581_)))
                        _g7999_))
                ((let () (declare (not safe)) (##fx= _g7998_ 3))
                 (apply (lambda (_key4585_ _lst4586_ _default4587_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key4585_ _lst4586_ _default4587_)))
                        _g7999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g7999_))))))
    (define pgetv__%
      (lambda (_key4448_ _lst4450_ _default4452_)
        (let _lp4455_ ((_rest4458_ _lst4450_))
          (let* ((_rest44604470_ _rest4458_)
                 (_else44624478_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default4452_))
                        (_default4452_ _key4448_)
                        _default4452_)))
                 (_K44644487_
                  (lambda (_rest4481_ _v4482_ _k4484_)
                    (if (let () (declare (not safe)) (eqv? _k4484_ _key4448_))
                        _v4482_
                        (let () (declare (not safe)) (_lp4455_ _rest4481_))))))
            (if (let () (declare (not safe)) (##pair? _rest44604470_))
                (let ((_hd44654490_
                       (let () (declare (not safe)) (##car _rest44604470_)))
                      (_tl44664492_
                       (let () (declare (not safe)) (##cdr _rest44604470_))))
                  (let ((_k4495_ _hd44654490_))
                    (if (let () (declare (not safe)) (##pair? _tl44664492_))
                        (let ((_hd44674497_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl44664492_)))
                              (_tl44684499_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl44664492_))))
                          (let* ((_v4502_ _hd44674497_)
                                 (_rest4504_ _tl44684499_))
                            (declare (not safe))
                            (_K44644487_ _rest4504_ _v4502_ _k4495_)))
                        (let () (declare (not safe)) (_else44624478_)))))
                (let () (declare (not safe)) (_else44624478_)))))))
    (define pgetv__0
      (lambda (_key4509_ _lst4510_)
        (let ((_default4512_ '#f))
          (declare (not safe))
          (pgetv__% _key4509_ _lst4510_ _default4512_))))
    (define pgetv
      (lambda _g8001_
        (let ((_g8000_ (let () (declare (not safe)) (##length _g8001_))))
          (cond ((let () (declare (not safe)) (##fx= _g8000_ 2))
                 (apply (lambda (_key4509_ _lst4510_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key4509_ _lst4510_)))
                        _g8001_))
                ((let () (declare (not safe)) (##fx= _g8000_ 3))
                 (apply (lambda (_key4514_ _lst4515_ _default4516_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key4514_ _lst4515_ _default4516_)))
                        _g8001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g8001_))))))
    (define pget__%
      (lambda (_key4377_ _lst4379_ _default4381_)
        (let _lp4384_ ((_rest4387_ _lst4379_))
          (let* ((_rest43894399_ _rest4387_)
                 (_else43914407_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default4381_))
                        (_default4381_ _key4377_)
                        _default4381_)))
                 (_K43934416_
                  (lambda (_rest4410_ _v4411_ _k4413_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k4413_ _key4377_))
                        _v4411_
                        (let () (declare (not safe)) (_lp4384_ _rest4410_))))))
            (if (let () (declare (not safe)) (##pair? _rest43894399_))
                (let ((_hd43944419_
                       (let () (declare (not safe)) (##car _rest43894399_)))
                      (_tl43954421_
                       (let () (declare (not safe)) (##cdr _rest43894399_))))
                  (let ((_k4424_ _hd43944419_))
                    (if (let () (declare (not safe)) (##pair? _tl43954421_))
                        (let ((_hd43964426_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl43954421_)))
                              (_tl43974428_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl43954421_))))
                          (let* ((_v4431_ _hd43964426_)
                                 (_rest4433_ _tl43974428_))
                            (declare (not safe))
                            (_K43934416_ _rest4433_ _v4431_ _k4424_)))
                        (let () (declare (not safe)) (_else43914407_)))))
                (let () (declare (not safe)) (_else43914407_)))))))
    (define pget__0
      (lambda (_key4438_ _lst4439_)
        (let ((_default4441_ '#f))
          (declare (not safe))
          (pget__% _key4438_ _lst4439_ _default4441_))))
    (define pget
      (lambda _g8003_
        (let ((_g8002_ (let () (declare (not safe)) (##length _g8003_))))
          (cond ((let () (declare (not safe)) (##fx= _g8002_ 2))
                 (apply (lambda (_key4438_ _lst4439_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key4438_ _lst4439_)))
                        _g8003_))
                ((let () (declare (not safe)) (##fx= _g8002_ 3))
                 (apply (lambda (_key4443_ _lst4444_ _default4445_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key4443_ _lst4444_ _default4445_)))
                        _g8003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g8003_))))))
    (define find
      (lambda (_pred4370_ _lst4371_)
        (let ((_$e4373_
               (let () (declare (not safe)) (memf _pred4370_ _lst4371_))))
          (if _$e4373_ (let () (declare (not safe)) (car _$e4373_)) '#f))))
    (define memf
      (lambda (_proc4330_ _lst4331_)
        (let _lp4333_ ((_rest4335_ _lst4331_))
          (let* ((_rest43364344_ _rest4335_)
                 (_else43384352_ (lambda () '#f))
                 (_K43404358_
                  (lambda (_tl4355_ _hd4356_)
                    (if (_proc4330_ _hd4356_)
                        _rest4335_
                        (let () (declare (not safe)) (_lp4333_ _tl4355_))))))
            (if (let () (declare (not safe)) (##pair? _rest43364344_))
                (let ((_hd43414361_
                       (let () (declare (not safe)) (##car _rest43364344_)))
                      (_tl43424363_
                       (let () (declare (not safe)) (##cdr _rest43364344_))))
                  (let* ((_hd4366_ _hd43414361_) (_tl4368_ _tl43424363_))
                    (declare (not safe))
                    (_K43404358_ _tl4368_ _hd4366_)))
                (let () (declare (not safe)) (_else43384352_)))))))
    (define remove1
      (lambda (_el4283_ _lst4285_)
        (let _lp4288_ ((_rest4291_ _lst4285_) (_r4293_ '()))
          (let* ((_rest42954303_ _rest4291_)
                 (_else42974311_ (lambda () _lst4285_))
                 (_K42994318_
                  (lambda (_rest4314_ _hd4315_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el4283_ _hd4315_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4314_ _r4293_))
                        (let ((__tmp8004
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4315_ _r4293_))))
                          (declare (not safe))
                          (_lp4288_ _rest4314_ __tmp8004))))))
            (if (let () (declare (not safe)) (##pair? _rest42954303_))
                (let ((_hd43004321_
                       (let () (declare (not safe)) (##car _rest42954303_)))
                      (_tl43014323_
                       (let () (declare (not safe)) (##cdr _rest42954303_))))
                  (let* ((_hd4326_ _hd43004321_) (_rest4328_ _tl43014323_))
                    (declare (not safe))
                    (_K42994318_ _rest4328_ _hd4326_)))
                (let () (declare (not safe)) (_else42974311_)))))))
    (define remv
      (lambda (_el4236_ _lst4238_)
        (let _lp4241_ ((_rest4244_ _lst4238_) (_r4246_ '()))
          (let* ((_rest42484256_ _rest4244_)
                 (_else42504264_ (lambda () _lst4238_))
                 (_K42524271_
                  (lambda (_rest4267_ _hd4268_)
                    (if (let () (declare (not safe)) (eqv? _el4236_ _hd4268_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4267_ _r4246_))
                        (let ((__tmp8005
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4268_ _r4246_))))
                          (declare (not safe))
                          (_lp4241_ _rest4267_ __tmp8005))))))
            (if (let () (declare (not safe)) (##pair? _rest42484256_))
                (let ((_hd42534274_
                       (let () (declare (not safe)) (##car _rest42484256_)))
                      (_tl42544276_
                       (let () (declare (not safe)) (##cdr _rest42484256_))))
                  (let* ((_hd4279_ _hd42534274_) (_rest4281_ _tl42544276_))
                    (declare (not safe))
                    (_K42524271_ _rest4281_ _hd4279_)))
                (let () (declare (not safe)) (_else42504264_)))))))
    (define remq
      (lambda (_el4189_ _lst4191_)
        (let _lp4194_ ((_rest4197_ _lst4191_) (_r4199_ '()))
          (let* ((_rest42014209_ _rest4197_)
                 (_else42034217_ (lambda () _lst4191_))
                 (_K42054224_
                  (lambda (_rest4220_ _hd4221_)
                    (if (let () (declare (not safe)) (eq? _el4189_ _hd4221_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4220_ _r4199_))
                        (let ((__tmp8006
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4221_ _r4199_))))
                          (declare (not safe))
                          (_lp4194_ _rest4220_ __tmp8006))))))
            (if (let () (declare (not safe)) (##pair? _rest42014209_))
                (let ((_hd42064227_
                       (let () (declare (not safe)) (##car _rest42014209_)))
                      (_tl42074229_
                       (let () (declare (not safe)) (##cdr _rest42014209_))))
                  (let* ((_hd4232_ _hd42064227_) (_rest4234_ _tl42074229_))
                    (declare (not safe))
                    (_K42054224_ _rest4234_ _hd4232_)))
                (let () (declare (not safe)) (_else42034217_)))))))
    (define remf
      (lambda (_proc4148_ _lst4149_)
        (let _lp4151_ ((_rest4153_ _lst4149_) (_r4154_ '()))
          (let* ((_rest41554163_ _rest4153_)
                 (_else41574171_ (lambda () _lst4149_))
                 (_K41594177_
                  (lambda (_rest4174_ _hd4175_)
                    (if (_proc4148_ _hd4175_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest4174_ _r4154_))
                        (let ((__tmp8007
                               (let ()
                                 (declare (not safe))
                                 (cons _hd4175_ _r4154_))))
                          (declare (not safe))
                          (_lp4151_ _rest4174_ __tmp8007))))))
            (if (let () (declare (not safe)) (##pair? _rest41554163_))
                (let ((_hd41604180_
                       (let () (declare (not safe)) (##car _rest41554163_)))
                      (_tl41614182_
                       (let () (declare (not safe)) (##cdr _rest41554163_))))
                  (let* ((_hd4185_ _hd41604180_) (_rest4187_ _tl41614182_))
                    (declare (not safe))
                    (_K41594177_ _rest4187_ _hd4185_)))
                (let () (declare (not safe)) (_else41574171_)))))))
    (define 1+ (lambda (_x4146_) (+ _x4146_ '1)))
    (define 1- (lambda (_x4144_) (- _x4144_ '1)))
    (define fx1+ (lambda (_x4142_) (fx+ _x4142_ '1)))
    (define fx1- (lambda (_x4140_) (fx- _x4140_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define interned-symbol?
      (lambda (_x4138_)
        (if (let () (declare (not safe)) (symbol? _x4138_))
            (let ((__tmp8008
                   (let () (declare (not safe)) (uninterned-symbol? _x4138_))))
              (declare (not safe))
              (not __tmp8008))
            '#f)))
    (define make-symbol
      (lambda _args4134_
        (let ((__tmp8009
               (apply string-append
                      (let ((__tmp8010
                             (lambda (_x4136_)
                               (if (let ()
                                     (declare (not safe))
                                     (string? _x4136_))
                                   _x4136_
                                   (if (let ()
                                         (declare (not safe))
                                         (symbol? _x4136_))
                                       (let ()
                                         (declare (not safe))
                                         (symbol->string _x4136_))
                                       (if (let ()
                                             (declare (not safe))
                                             (keyword? _x4136_))
                                           (let ()
                                             (declare (not safe))
                                             (keyword->string _x4136_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (number? _x4136_))
                                               (let ()
                                                 (declare (not safe))
                                                 (number->string _x4136_))
                                               (error '"cannot convert to symbol"
                                                      _x4136_))))))))
                        (declare (not safe))
                        (map __tmp8010 _args4134_)))))
          (declare (not safe))
          (string->symbol __tmp8009))))
    (define interned-keyword?
      (lambda (_x4132_)
        (if (let () (declare (not safe)) (keyword? _x4132_))
            (let ((__tmp8011
                   (let ()
                     (declare (not safe))
                     (uninterned-keyword? _x4132_))))
              (declare (not safe))
              (not __tmp8011))
            '#f)))
    (define symbol->keyword
      (lambda (_sym4130_)
        ((if (let () (declare (not safe)) (uninterned-symbol? _sym4130_))
             string->uninterned-keyword
             string->keyword)
         (let () (declare (not safe)) (symbol->string _sym4130_)))))
    (define keyword->symbol
      (lambda (_kw4128_)
        ((if (let () (declare (not safe)) (uninterned-keyword? _kw4128_))
             string->uninterned-symbol
             string->symbol)
         (let () (declare (not safe)) (keyword->string _kw4128_)))))
    (define bytes->string__%
      (lambda (_bstr4106_ _enc4107_)
        (if (let () (declare (not safe)) (eq? _enc4107_ 'UTF-8))
            (utf8->string _bstr4106_)
            (let* ((_in4109_
                    (let ((__tmp8012
                           (let ((__tmp8013
                                  (let ((__tmp8014
                                         (let ((__tmp8015
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _bstr4106_ '()))))
                                           (declare (not safe))
                                           (cons 'init: __tmp8015))))
                                    (declare (not safe))
                                    (cons _enc4107_ __tmp8014))))
                             (declare (not safe))
                             (cons 'char-encoding: __tmp8013))))
                      (declare (not safe))
                      (open-input-u8vector __tmp8012)))
                   (_len4111_
                    (let () (declare (not safe)) (u8vector-length _bstr4106_)))
                   (_out4113_
                    (let () (declare (not safe)) (make-string _len4111_)))
                   (_n4115_ (let ()
                              (declare (not safe))
                              (read-substring
                               _out4113_
                               '0
                               _len4111_
                               _in4109_))))
              (let () (declare (not safe)) (string-shrink! _out4113_ _n4115_))
              _out4113_))))
    (define bytes->string__0
      (lambda (_bstr4121_)
        (let ((_enc4123_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr4121_ _enc4123_))))
    (define bytes->string
      (lambda _g8017_
        (let ((_g8016_ (let () (declare (not safe)) (##length _g8017_))))
          (cond ((let () (declare (not safe)) (##fx= _g8016_ 1))
                 (apply (lambda (_bstr4121_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr4121_)))
                        _g8017_))
                ((let () (declare (not safe)) (##fx= _g8016_ 2))
                 (apply (lambda (_bstr4125_ _enc4126_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr4125_ _enc4126_)))
                        _g8017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g8017_))))))
    (define string->bytes__%
      (lambda (_str4092_ _enc4093_)
        (if (let () (declare (not safe)) (eq? _enc4093_ 'UTF-8))
            (string->utf8 _str4092_)
            (let ((__tmp8018
                   (let () (declare (not safe)) (string-length _str4092_))))
              (declare (not safe))
              (substring->bytes _str4092_ '0 __tmp8018 _enc4093_)))))
    (define string->bytes__0
      (lambda (_str4098_)
        (let ((_enc4100_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str4098_ _enc4100_))))
    (define string->bytes
      (lambda _g8020_
        (let ((_g8019_ (let () (declare (not safe)) (##length _g8020_))))
          (cond ((let () (declare (not safe)) (##fx= _g8019_ 1))
                 (apply (lambda (_str4098_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str4098_)))
                        _g8020_))
                ((let () (declare (not safe)) (##fx= _g8019_ 2))
                 (apply (lambda (_str4102_ _enc4103_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str4102_ _enc4103_)))
                        _g8020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g8020_))))))
    (define substring->bytes__%
      (lambda (_str4070_ _start4071_ _end4072_ _enc4073_)
        (if (let () (declare (not safe)) (eq? _enc4073_ 'UTF-8))
            (string->utf8 _str4070_ _start4071_ _end4072_)
            (let ((_out4075_
                   (let ((__tmp8021
                          (let ((__tmp8022
                                 (let ()
                                   (declare (not safe))
                                   (cons _enc4073_ '()))))
                            (declare (not safe))
                            (cons 'char-encoding: __tmp8022))))
                     (declare (not safe))
                     (open-output-u8vector __tmp8021))))
              (let ()
                (declare (not safe))
                (write-substring _str4070_ _start4071_ _end4072_ _out4075_))
              (let () (declare (not safe)) (get-output-u8vector _out4075_))))))
    (define substring->bytes__0
      (lambda (_str4080_ _start4081_ _end4082_)
        (let ((_enc4084_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__% _str4080_ _start4081_ _end4082_ _enc4084_))))
    (define substring->bytes
      (lambda _g8024_
        (let ((_g8023_ (let () (declare (not safe)) (##length _g8024_))))
          (cond ((let () (declare (not safe)) (##fx= _g8023_ 3))
                 (apply (lambda (_str4080_ _start4081_ _end4082_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str4080_
                             _start4081_
                             _end4082_)))
                        _g8024_))
                ((let () (declare (not safe)) (##fx= _g8023_ 4))
                 (apply (lambda (_str4086_ _start4087_ _end4088_ _enc4089_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str4086_
                             _start4087_
                             _end4088_
                             _enc4089_)))
                        _g8024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g8024_))))))
    (define string-empty?
      (lambda (_str4067_)
        (let ((__tmp8025
               (let () (declare (not safe)) (string-length _str4067_))))
          (declare (not safe))
          (##fxzero? __tmp8025))))
    (define string-prefix?
      (lambda (_prefix4057_ _str4058_)
        (let ((_str-len4060_
               (let () (declare (not safe)) (string-length _str4058_)))
              (_prefix-len4061_
               (let () (declare (not safe)) (string-length _prefix4057_))))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len4061_ _str-len4060_))
              (let _lp4063_ ((_i4065_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i4065_ _prefix-len4061_))
                    (if (let ((__tmp8028
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str4058_ _i4065_)))
                              (__tmp8027
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix4057_ _i4065_))))
                          (declare (not safe))
                          (eq? __tmp8028 __tmp8027))
                        (let ((__tmp8026
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i4065_ '1))))
                          (declare (not safe))
                          (_lp4063_ __tmp8026))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str4035_ _char4036_ _start4037_)
        (let ((_len4039_
               (let () (declare (not safe)) (string-length _str4035_))))
          (let _lp4041_ ((_k4043_ _start4037_))
            (if (let () (declare (not safe)) (##fx< _k4043_ _len4039_))
                (if (let ((__tmp8030
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4035_ _k4043_))))
                      (declare (not safe))
                      (eq? _char4036_ __tmp8030))
                    _k4043_
                    (let ((__tmp8029
                           (let () (declare (not safe)) (##fx+ _k4043_ '1))))
                      (declare (not safe))
                      (_lp4041_ __tmp8029)))
                '#f)))))
    (define string-index__0
      (lambda (_str4048_ _char4049_)
        (let ((_start4051_ '0))
          (declare (not safe))
          (string-index__% _str4048_ _char4049_ _start4051_))))
    (define string-index
      (lambda _g8032_
        (let ((_g8031_ (let () (declare (not safe)) (##length _g8032_))))
          (cond ((let () (declare (not safe)) (##fx= _g8031_ 2))
                 (apply (lambda (_str4048_ _char4049_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str4048_ _char4049_)))
                        _g8032_))
                ((let () (declare (not safe)) (##fx= _g8031_ 3))
                 (apply (lambda (_str4053_ _char4054_ _start4055_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str4053_
                             _char4054_
                             _start4055_)))
                        _g8032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g8032_))))))
    (define string-rindex__%
      (lambda (_str4006_ _char4007_ _start4008_)
        (let* ((_len4010_
                (let () (declare (not safe)) (string-length _str4006_)))
               (_start4015_
                (let ((_$e4012_ _start4008_))
                  (if _$e4012_
                      _$e4012_
                      (let () (declare (not safe)) (##fx- _len4010_ '1))))))
          (let _lp4018_ ((_k4020_ _start4015_))
            (if (let () (declare (not safe)) (##fx>= _k4020_ '0))
                (if (let ((__tmp8034
                           (let ()
                             (declare (not safe))
                             (##string-ref _str4006_ _k4020_))))
                      (declare (not safe))
                      (eq? _char4007_ __tmp8034))
                    _k4020_
                    (let ((__tmp8033
                           (let () (declare (not safe)) (##fx- _k4020_ '1))))
                      (declare (not safe))
                      (_lp4018_ __tmp8033)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str4025_ _char4026_)
        (let ((_start4028_ '#f))
          (declare (not safe))
          (string-rindex__% _str4025_ _char4026_ _start4028_))))
    (define string-rindex
      (lambda _g8036_
        (let ((_g8035_ (let () (declare (not safe)) (##length _g8036_))))
          (cond ((let () (declare (not safe)) (##fx= _g8035_ 2))
                 (apply (lambda (_str4025_ _char4026_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str4025_ _char4026_)))
                        _g8036_))
                ((let () (declare (not safe)) (##fx= _g8035_ 3))
                 (apply (lambda (_str4030_ _char4031_ _start4032_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str4030_
                             _char4031_
                             _start4032_)))
                        _g8036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g8036_))))))
    (define string-split
      (lambda (_str3990_ _char3991_)
        (let ((_len3993_
               (let () (declare (not safe)) (string-length _str3990_))))
          (let _lp3995_ ((_start3997_ '0) (_r3998_ '()))
            (let ((_$e4000_
                   (let ()
                     (declare (not safe))
                     (string-index _str3990_ _char3991_ _start3997_))))
              (if _$e4000_
                  ((lambda (_end4003_)
                     (let ((__tmp8040
                            (let () (declare (not safe)) (##fx+ _end4003_ '1)))
                           (__tmp8038
                            (let ((__tmp8039
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str3990_
                                      _start3997_
                                      _end4003_))))
                              (declare (not safe))
                              (cons __tmp8039 _r3998_))))
                       (declare (not safe))
                       (_lp3995_ __tmp8040 __tmp8038)))
                   _$e4000_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start3997_ _len3993_))
                      (let ((__tmp8037
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str3990_
                                      _start3997_
                                      _len3993_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp8037 _r3998_))
                      (let () (declare (not safe)) (reverse _r3998_)))))))))
    (define string-join
      (lambda (_strs3895_ _join3896_)
        (letrec ((_join-length3898_
                  (lambda (_strs3949_ _jlen3950_)
                    (let _lp3952_ ((_rest3954_ _strs3949_) (_len3955_ '0))
                      (let* ((_rest39563964_ _rest3954_)
                             (_else39583972_ (lambda () '0))
                             (_K39603978_
                              (lambda (_rest3975_ _hd3976_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd3976_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest3975_))
                                        (let ((__tmp8042
                                               (let ((__tmp8043
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd3976_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp8043
                                                        _jlen3950_
                                                        _len3955_))))
                                          (declare (not safe))
                                          (_lp3952_ _rest3975_ __tmp8042))
                                        (let ((__tmp8041
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd3976_))))
                                          (declare (not safe))
                                          (##fx+ __tmp8041 _len3955_)))
                                    (error '"expected string" _hd3976_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest39563964_))
                            (let ((_hd39613981_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest39563964_)))
                                  (_tl39623983_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest39563964_))))
                              (let* ((_hd3986_ _hd39613981_)
                                     (_rest3988_ _tl39623983_))
                                (declare (not safe))
                                (_K39603978_ _rest3988_ _hd3986_)))
                            (let ()
                              (declare (not safe))
                              (_else39583972_))))))))
          (let* ((_join3900_
                  (if (let () (declare (not safe)) (char? _join3896_))
                      (string _join3896_)
                      (if (let () (declare (not safe)) (string? _join3896_))
                          _join3896_
                          (error '"expected string or char" _join3896_))))
                 (_jlen3902_
                  (let () (declare (not safe)) (##string-length _join3900_)))
                 (_olen3904_
                  (let ()
                    (declare (not safe))
                    (_join-length3898_ _strs3895_ _jlen3902_)))
                 (_ostr3906_
                  (let () (declare (not safe)) (make-string _olen3904_))))
            (let _lp3909_ ((_rest3911_ _strs3895_) (_k3912_ '0))
              (let* ((_rest39133921_ _rest3911_)
                     (_else39153929_ (lambda () '""))
                     (_K39173937_
                      (lambda (_rest3932_ _hd3933_)
                        (let ((_hdlen3935_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd3933_))))
                          (if (let () (declare (not safe)) (pair? _rest3932_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd3933_
                                   '0
                                   _hdlen3935_
                                   _ostr3906_
                                   _k3912_))
                                (let ((__tmp8044
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k3912_ _hdlen3935_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join3900_
                                   '0
                                   _jlen3902_
                                   _ostr3906_
                                   __tmp8044))
                                (let ((__tmp8045
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k3912_
                                                _hdlen3935_
                                                _jlen3902_))))
                                  (declare (not safe))
                                  (_lp3909_ _rest3932_ __tmp8045)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd3933_
                                   '0
                                   _hdlen3935_
                                   _ostr3906_
                                   _k3912_))
                                _ostr3906_))))))
                (if (let () (declare (not safe)) (##pair? _rest39133921_))
                    (let ((_hd39183940_
                           (let ()
                             (declare (not safe))
                             (##car _rest39133921_)))
                          (_tl39193942_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest39133921_))))
                      (let* ((_hd3945_ _hd39183940_) (_rest3947_ _tl39193942_))
                        (declare (not safe))
                        (_K39173937_ _rest3947_ _hd3945_)))
                    (let () (declare (not safe)) (_else39153929_)))))))))))
