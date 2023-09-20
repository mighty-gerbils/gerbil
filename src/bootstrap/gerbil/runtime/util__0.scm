(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1695206877)
  (begin
    (define displayln
      (lambda _args5767_
        (let _lp5769_ ((_rest5771_ _args5767_))
          (let* ((_rest57725780_ _rest5771_)
                 (_else57745788_ (lambda () (newline)))
                 (_K57765794_
                  (lambda (_rest5791_ _hd5792_)
                    (display _hd5792_)
                    (_lp5769_ _rest5791_))))
            (if (let () (declare (not safe)) (##pair? _rest57725780_))
                (let ((_hd57775797_
                       (let () (declare (not safe)) (##car _rest57725780_)))
                      (_tl57785799_
                       (let () (declare (not safe)) (##cdr _rest57725780_))))
                  (let* ((_hd5802_ _hd57775797_) (_rest5804_ _tl57785799_))
                    (_K57765794_ _rest5804_ _hd5802_)))
                (newline))))))
    (define display* (lambda _args5765_ (for-each display _args5765_)))
    (define file-newer?
      (lambda (_file15758_ _file25759_)
        (letrec ((_modification-time5761_
                  (lambda (_file5763_)
                    (let ((__tmp7910
                           (file-info-last-modification-time
                            (file-info _file5763_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp7910)))))
          (let ((__tmp7912 (_modification-time5761_ _file15758_))
                (__tmp7911 (_modification-time5761_ _file25759_)))
            (declare (not safe))
            (##fl> __tmp7912 __tmp7911)))))
    (define create-directory*__%
      (lambda (_dir5732_ _perms5733_)
        (letrec ((_create15735_
                  (lambda (_path5746_)
                    (if (file-exists? _path5746_)
                        (if (eq? (file-type _path5746_) 'directory)
                            '#!void
                            (error '"Path component is not a directory"
                                   _path5746_))
                        (if _perms5733_
                            (create-directory
                             (list 'path:
                                   _path5746_
                                   'permissions:
                                   _perms5733_))
                            (create-directory _path5746_))))))
          (if (file-exists? _dir5732_)
              '#!void
              (let _lp5737_ ((_start5739_ '0))
                (let ((_$e5741_ (string-index _dir5732_ '#\/ _start5739_)))
                  (if _$e5741_
                      ((lambda (_x5744_)
                         (if (let () (declare (not safe)) (##fx> _x5744_ '0))
                             (_create15735_ (substring _dir5732_ '0 _x5744_))
                             '#!void)
                         (_lp5737_
                          (let () (declare (not safe)) (##fx+ _x5744_ '1))))
                       _$e5741_)
                      (_create15735_ _dir5732_))))))))
    (define create-directory*__0
      (lambda (_dir5751_)
        (let ((_perms5753_ '493))
          (create-directory*__% _dir5751_ _perms5753_))))
    (define create-directory*
      (lambda _g7914_
        (let ((_g7913_ (let () (declare (not safe)) (##length _g7914_))))
          (cond ((let () (declare (not safe)) (##fx= _g7913_ 1))
                 (apply create-directory*__0 _g7914_))
                ((let () (declare (not safe)) (##fx= _g7913_ 2))
                 (apply create-directory*__% _g7914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g7914_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g7915_ '#t))
    (define true? (lambda (_obj5728_) (eq? _obj5728_ '#t)))
    (define false (lambda _g7916_ '#f))
    (define void (lambda _g7917_ '#!void))
    (define void? (lambda (_obj5724_) (eq? _obj5724_ '#!void)))
    (define eof-object (lambda _g7918_ '#!eof))
    (define identity (lambda (_obj5721_) _obj5721_))
    (define dssl-object?
      (lambda (_obj5719_)
        (if (memq _obj5719_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object? (lambda (_obj5717_) (eq? _obj5717_ '#!key)))
    (define dssl-rest-object? (lambda (_obj5715_) (eq? _obj5715_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_obj5713_) (eq? _obj5713_ '#!optional)))
    (define immediate?
      (lambda (_obj5709_)
        (let* ((_t5711_ (let () (declare (not safe)) (##type _obj5709_)))
               (__tmp7919 (let () (declare (not safe)) (##fxand _t5711_ '1))))
          (declare (not safe))
          (##fxzero? __tmp7919))))
    (define nonnegative-fixnum?
      (lambda (_obj5707_)
        (if (fixnum? _obj5707_) (not (fxnegative? _obj5707_)) '#f)))
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
          (list-tail _lst5688_ _start5686_))))
    (define subvector->list__0
      (lambda (_obj5693_)
        (let ((_start5695_ '0)) (subvector->list__% _obj5693_ _start5695_))))
    (define subvector->list
      (lambda _g7921_
        (let ((_g7920_ (let () (declare (not safe)) (##length _g7921_))))
          (cond ((let () (declare (not safe)) (##fx= _g7920_ 1))
                 (apply subvector->list__0 _g7921_))
                ((let () (declare (not safe)) (##fx= _g7920_ 2))
                 (apply subvector->list__% _g7921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g7921_))))))
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
      (lambda (_ht5671_ _k5672_) (table-ref _ht5671_ _k5672_ '#f)))
    (define hash-put!
      (lambda (_ht5667_ _k5668_ _v5669_)
        (table-set! _ht5667_ _k5668_ _v5669_)))
    (define hash-update!__%
      (lambda (_ht5646_ _k5647_ _update5648_ _default5649_)
        (let ((_value5651_ (table-ref _ht5646_ _k5647_ _default5649_)))
          (table-set! _ht5646_ _k5647_ (_update5648_ _value5651_)))))
    (define hash-update!__0
      (lambda (_ht5656_ _k5657_ _update5658_)
        (let ((_default5660_ '#!void))
          (hash-update!__% _ht5656_ _k5657_ _update5658_ _default5660_))))
    (define hash-update!
      (lambda _g7923_
        (let ((_g7922_ (let () (declare (not safe)) (##length _g7923_))))
          (cond ((let () (declare (not safe)) (##fx= _g7922_ 3))
                 (apply hash-update!__0 _g7923_))
                ((let () (declare (not safe)) (##fx= _g7922_ 4))
                 (apply hash-update!__% _g7923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g7923_))))))
    (define hash-remove!
      (lambda (_ht5642_ _k5643_) (table-set! _ht5642_ _k5643_)))
    (define hash->list table->list)
    (define hash->plist (lambda (_ht5640_) (hash-fold cons* '() _ht5640_)))
    (define plist->hash-table__%
      (lambda (_plst5575_ _ht5576_)
        (let _lp5578_ ((_rest5580_ _plst5575_))
          (let* ((_rest55815592_ _rest5580_)
                 (_E55845596_
                  (lambda () (error '"No clause matching" _rest55815592_))))
            (let ((_K55865611_
                   (lambda (_rest5607_ _v5608_ _k5609_)
                     (table-set! _ht5576_ _k5609_ _v5608_)
                     (_lp5578_ _rest5607_)))
                  (_K55855601_ (lambda () _ht5576_)))
              (let ((_try-match55835604_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest55815592_ '()))
                           (_K55855601_)
                           (_E55845596_)))))
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
                              (_K55865611_ _rest5628_ _v5626_ _k5619_)))
                          (_try-match55835604_)))
                    (_try-match55835604_))))))))
    (define plist->hash-table__0
      (lambda (_plst5633_)
        (let ((_ht5635_ (make-table)))
          (plist->hash-table__% _plst5633_ _ht5635_))))
    (define plist->hash-table
      (lambda _g7925_
        (let ((_g7924_ (let () (declare (not safe)) (##length _g7925_))))
          (cond ((let () (declare (not safe)) (##fx= _g7924_ 1))
                 (apply plist->hash-table__0 _g7925_))
                ((let () (declare (not safe)) (##fx= _g7924_ 2))
                 (apply plist->hash-table__% _g7925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g7925_))))))
    (define plist->hash-table-eq
      (lambda (_plst5572_)
        (plist->hash-table _plst5572_ (make-table 'test: eq?))))
    (define plist->hash-table-eqv
      (lambda (_plst5570_)
        (plist->hash-table _plst5570_ (make-table 'test: eqv?))))
    (define hash-key?
      (lambda (_ht5567_ _k5568_)
        (not (eq? (table-ref _ht5567_ _k5568_ absent-value) absent-value))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun5560_ _ht5561_)
        (hash-fold
         (lambda (_k5563_ _v5564_ _r5565_)
           (cons (_fun5560_ _k5563_ _v5564_) _r5565_))
         '()
         _ht5561_)))
    (define hash-fold
      (lambda (_fun5551_ _iv5552_ _ht5553_)
        (let ((_ret5555_ _iv5552_))
          (table-for-each
           (lambda (_k5557_ _v5558_)
             (set! _ret5555_ (_fun5551_ _k5557_ _v5558_ _ret5555_)))
           _ht5553_)
          _ret5555_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht5546_)
        (hash-map (lambda (_k5548_ _v5549_) _k5548_) _ht5546_)))
    (define hash-values
      (lambda (_ht5541_)
        (hash-map (lambda (_k5543_ _v5544_) _v5544_) _ht5541_)))
    (define hash-copy
      (lambda (_hd5536_ . _rest5537_)
        (let ((_hd5539_ (table-copy _hd5536_)))
          (if (null? _rest5537_)
              _hd5539_
              (apply hash-copy! _hd5539_ _rest5537_)))))
    (define hash-copy!
      (lambda (_hd5531_ . _rest5532_)
        (for-each
         (lambda (_r5534_) (table-merge! _hd5531_ _r5534_))
         _rest5532_)
        _hd5531_))
    (define hash-merge
      (lambda (_hd5525_ . _rest5526_)
        (foldl1 (lambda (_tab5528_ _r5529_) (table-merge _r5529_ _tab5528_))
                _hd5525_
                _rest5526_)))
    (define hash-merge!
      (lambda (_hd5519_ . _rest5520_)
        (foldl1 (lambda (_tab5522_ _r5523_) (table-merge! _r5523_ _tab5522_))
                _hd5519_
                _rest5520_)))
    (define hash-clear!__%
      (lambda (_ht5504_ _size5505_)
        (let ((_gcht5507_
               (let () (declare (not safe)) (##vector-ref _ht5504_ '5))))
          (if (not (fixnum? _gcht5507_))
              (let ()
                (declare (not safe))
                (##vector-set! _ht5504_ '5 _size5505_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht5512_)
        (let ((_size5514_ '0)) (hash-clear!__% _ht5512_ _size5514_))))
    (define hash-clear!
      (lambda _g7927_
        (let ((_g7926_ (let () (declare (not safe)) (##length _g7927_))))
          (cond ((let () (declare (not safe)) (##fx= _g7926_ 1))
                 (apply hash-clear!__0 _g7927_))
                ((let () (declare (not safe)) (##fx= _g7926_ 2))
                 (apply hash-clear!__% _g7927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g7927_))))))
    (define make-list__%
      (lambda (_k5485_ _val5486_)
        (if (fixnum? _k5485_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k5485_))
        (let _lp5488_ ((_n5490_ '0) (_r5491_ '()))
          (if (let () (declare (not safe)) (##fx< _n5490_ _k5485_))
              (_lp5488_
               (let () (declare (not safe)) (##fx+ _n5490_ '1))
               (cons _val5486_ _r5491_))
              _r5491_))))
    (define make-list__0
      (lambda (_k5496_)
        (let ((_val5498_ '#f)) (make-list__% _k5496_ _val5498_))))
    (define make-list
      (lambda _g7929_
        (let ((_g7928_ (let () (declare (not safe)) (##length _g7929_))))
          (cond ((let () (declare (not safe)) (##fx= _g7928_ 1))
                 (apply make-list__0 _g7929_))
                ((let () (declare (not safe)) (##fx= _g7928_ 2))
                 (apply make-list__% _g7929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g7929_))))))
    (define cons*
      (lambda (_x5475_ _y5476_ . _rest5477_)
        (letrec ((_recur5479_
                  (lambda (_x5481_ _rest5482_)
                    (if (pair? _rest5482_)
                        (cons _x5481_
                              (_recur5479_
                               (let () (declare (not safe)) (##car _rest5482_))
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest5482_))))
                        _x5481_))))
          (cons _x5475_ (_recur5479_ _y5476_ _rest5477_)))))
    (define foldl1
      (lambda (_f5433_ _iv5434_ _lst5435_)
        (let _lp5437_ ((_rest5439_ _lst5435_) (_r5440_ _iv5434_))
          (let* ((_rest54415449_ _rest5439_)
                 (_else54435457_ (lambda () _r5440_))
                 (_K54455463_
                  (lambda (_rest5460_ _x5461_)
                    (_lp5437_ _rest5460_ (_f5433_ _x5461_ _r5440_)))))
            (if (let () (declare (not safe)) (##pair? _rest54415449_))
                (let ((_hd54465466_
                       (let () (declare (not safe)) (##car _rest54415449_)))
                      (_tl54475468_
                       (let () (declare (not safe)) (##cdr _rest54415449_))))
                  (let* ((_x5471_ _hd54465466_) (_rest5473_ _tl54475468_))
                    (_K54455463_ _rest5473_ _x5471_)))
                (_else54435457_))))))
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
                              (_lp5361_
                               _rest15385_
                               _rest25406_
                               (_f5356_ _x15386_ _x25407_ _r5365_)))))
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
                              (_K53915409_ _rest25419_ _x25417_)))
                          (_else53895403_))))))
            (if (let () (declare (not safe)) (##pair? _rest153665374_))
                (let ((_hd53715424_
                       (let () (declare (not safe)) (##car _rest153665374_)))
                      (_tl53725426_
                       (let () (declare (not safe)) (##cdr _rest153665374_))))
                  (let* ((_x15429_ _hd53715424_) (_rest15431_ _tl53725426_))
                    (_K53705421_ _rest15431_ _x15429_)))
                (_else53685382_))))))
    (define foldl
      (lambda _g7931_
        (let ((_g7930_ (let () (declare (not safe)) (##length _g7931_))))
          (cond ((let () (declare (not safe)) (##fx= _g7930_ 3))
                 (apply foldl1 _g7931_))
                ((let () (declare (not safe)) (##fx= _g7930_ 4))
                 (apply foldl2 _g7931_))
                ((let () (declare (not safe)) (##fx>= _g7930_ 4))
                 (apply foldl* _g7931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g7931_))))))
    (define foldl*
      (lambda (_f5329_ _iv5330_ . _rest5331_)
        (let _recur5333_ ((_iv5335_ _iv5330_) (_rest5336_ _rest5331_))
          (if (andmap1 pair? _rest5336_)
              (_recur5333_
               (apply _f5329_
                      (foldr1 (lambda (_xs5338_ _r5339_)
                                (cons (car _xs5338_) _r5339_))
                              (list _iv5335_)
                              _rest5336_))
               (map cdr _rest5336_))
              _iv5335_))))
    (define foldr1
      (lambda (_f5288_ _iv5289_ _lst5290_)
        (let _recur5292_ ((_rest5294_ _lst5290_))
          (let* ((_rest52955303_ _rest5294_)
                 (_else52975311_ (lambda () _iv5289_))
                 (_K52995317_
                  (lambda (_rest5314_ _x5315_)
                    (_f5288_ _x5315_ (_recur5292_ _rest5314_)))))
            (if (let () (declare (not safe)) (##pair? _rest52955303_))
                (let ((_hd53005320_
                       (let () (declare (not safe)) (##car _rest52955303_)))
                      (_tl53015322_
                       (let () (declare (not safe)) (##cdr _rest52955303_))))
                  (let* ((_x5325_ _hd53005320_) (_rest5327_ _tl53015322_))
                    (_K52995317_ _rest5327_ _x5325_)))
                (_else52975311_))))))
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
                                       (_recur5217_
                                        _rest15240_
                                        _rest25261_)))))
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
                              (_K52465264_ _rest25274_ _x25272_)))
                          (_else52445258_))))))
            (if (let () (declare (not safe)) (##pair? _rest152215229_))
                (let ((_hd52265279_
                       (let () (declare (not safe)) (##car _rest152215229_)))
                      (_tl52275281_
                       (let () (declare (not safe)) (##cdr _rest152215229_))))
                  (let* ((_x15284_ _hd52265279_) (_rest15286_ _tl52275281_))
                    (_K52255276_ _rest15286_ _x15284_)))
                (_else52235237_))))))
    (define foldr
      (lambda _g7933_
        (let ((_g7932_ (let () (declare (not safe)) (##length _g7933_))))
          (cond ((let () (declare (not safe)) (##fx= _g7932_ 3))
                 (apply foldr1 _g7933_))
                ((let () (declare (not safe)) (##fx= _g7932_ 4))
                 (apply foldr2 _g7933_))
                ((let () (declare (not safe)) (##fx>= _g7932_ 4))
                 (apply foldr* _g7933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g7933_))))))
    (define foldr*
      (lambda (_f5186_ _iv5187_ . _rest5188_)
        (let _recur5190_ ((_rest5192_ _rest5188_))
          (if (andmap1 pair? _rest5192_)
              (apply _f5186_
                     (foldr1 (lambda (_xs5194_ _r5195_)
                               (cons (car _xs5194_) _r5195_))
                             (list (_recur5190_ (map cdr _rest5192_)))
                             _rest5192_))
              _iv5187_))))
    (define andmap1
      (lambda (_f5146_ _lst5147_)
        (let _lp5149_ ((_rest5151_ _lst5147_))
          (let* ((_rest51525160_ _rest5151_)
                 (_else51545168_ (lambda () '#t))
                 (_K51565174_
                  (lambda (_rest5171_ _x5172_)
                    (if (_f5146_ _x5172_) (_lp5149_ _rest5171_) '#f))))
            (if (let () (declare (not safe)) (##pair? _rest51525160_))
                (let ((_hd51575177_
                       (let () (declare (not safe)) (##car _rest51525160_)))
                      (_tl51585179_
                       (let () (declare (not safe)) (##cdr _rest51525160_))))
                  (let* ((_x5182_ _hd51575177_) (_rest5184_ _tl51585179_))
                    (_K51565174_ _rest5184_ _x5182_)))
                (_else51545168_))))))
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
                                  (_lp5075_ _rest15098_ _rest25119_)
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
                              (_K51045122_ _rest25132_ _x25130_)))
                          (_else51025116_))))))
            (if (let () (declare (not safe)) (##pair? _rest150795087_))
                (let ((_hd50845137_
                       (let () (declare (not safe)) (##car _rest150795087_)))
                      (_tl50855139_
                       (let () (declare (not safe)) (##cdr _rest150795087_))))
                  (let* ((_x15142_ _hd50845137_) (_rest15144_ _tl50855139_))
                    (_K50835134_ _rest15144_ _x15142_)))
                (_else50815095_))))))
    (define andmap
      (lambda _g7935_
        (let ((_g7934_ (let () (declare (not safe)) (##length _g7935_))))
          (cond ((let () (declare (not safe)) (##fx= _g7934_ 2))
                 (apply andmap1 _g7935_))
                ((let () (declare (not safe)) (##fx= _g7934_ 3))
                 (apply andmap2 _g7935_))
                ((let () (declare (not safe)) (##fx>= _g7934_ 3))
                 (apply andmap* _g7935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g7935_))))))
    (define andmap*
      (lambda (_f5052_ . _rest5053_)
        (let _recur5055_ ((_rest5057_ _rest5053_))
          (if (andmap1 pair? _rest5057_)
              (if (apply _f5052_ (map car _rest5057_))
                  (_recur5055_ (map cdr _rest5057_))
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
                      (if _$e5037_ _$e5037_ (_lp5012_ _rest5034_))))))
            (if (let () (declare (not safe)) (##pair? _rest50155023_))
                (let ((_hd50205043_
                       (let () (declare (not safe)) (##car _rest50155023_)))
                      (_tl50215045_
                       (let () (declare (not safe)) (##cdr _rest50155023_))))
                  (let* ((_x5048_ _hd50205043_) (_rest5050_ _tl50215045_))
                    (_K50195040_ _rest5050_ _x5048_)))
                (_else50175031_))))))
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
                                    (_lp4935_ _rest14958_ _rest24979_))))))
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
                              (_K49644985_ _rest24995_ _x24993_)))
                          (_else49624976_))))))
            (if (let () (declare (not safe)) (##pair? _rest149394947_))
                (let ((_hd49445000_
                       (let () (declare (not safe)) (##car _rest149394947_)))
                      (_tl49455002_
                       (let () (declare (not safe)) (##cdr _rest149394947_))))
                  (let* ((_x15005_ _hd49445000_) (_rest15007_ _tl49455002_))
                    (_K49434997_ _rest15007_ _x15005_)))
                (_else49414955_))))))
    (define ormap
      (lambda _g7937_
        (let ((_g7936_ (let () (declare (not safe)) (##length _g7937_))))
          (cond ((let () (declare (not safe)) (##fx= _g7936_ 2))
                 (apply ormap1 _g7937_))
                ((let () (declare (not safe)) (##fx= _g7936_ 3))
                 (apply ormap2 _g7937_))
                ((let () (declare (not safe)) (##fx>= _g7936_ 3))
                 (apply ormap* _g7937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g7937_))))))
    (define ormap*
      (lambda (_f4909_ . _rest4910_)
        (let _recur4912_ ((_rest4914_ _rest4910_))
          (if (andmap1 pair? _rest4914_)
              (let ((_$e4916_ (apply _f4909_ (map car _rest4914_))))
                (if _$e4916_ _$e4916_ (_recur4912_ (map cdr _rest4914_))))
              '#f))))
    (define filter
      (lambda (_f4867_ _lst4868_)
        (let _recur4870_ ((_lst4872_ _lst4868_))
          (let* ((_lst48734881_ _lst4872_)
                 (_else48754889_ (lambda () '()))
                 (_K48774897_
                  (lambda (_rest4892_ _hd4893_)
                    (if (_f4867_ _hd4893_)
                        (let ((_tail4895_ (_recur4870_ _rest4892_)))
                          (if (eq? _tail4895_ _rest4892_)
                              _lst4872_
                              (cons _hd4893_ _tail4895_)))
                        (_recur4870_ _rest4892_)))))
            (if (let () (declare (not safe)) (##pair? _lst48734881_))
                (let ((_hd48784900_
                       (let () (declare (not safe)) (##car _lst48734881_)))
                      (_tl48794902_
                       (let () (declare (not safe)) (##cdr _lst48734881_))))
                  (let* ((_hd4905_ _hd48784900_) (_rest4907_ _tl48794902_))
                    (_K48774897_ _rest4907_ _hd4905_)))
                (_else48754889_))))))
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
                             (cons _r4853_ (_recur4825_ _rest4847_)))
                           _$e4850_)
                          (_recur4825_ _rest4847_))))))
            (if (let () (declare (not safe)) (##pair? _rest48284836_))
                (let ((_hd48334858_
                       (let () (declare (not safe)) (##car _rest48284836_)))
                      (_tl48344860_
                       (let () (declare (not safe)) (##cdr _rest48284836_))))
                  (let* ((_x4863_ _hd48334858_) (_rest4865_ _tl48344860_))
                    (_K48324855_ _rest4865_ _x4863_)))
                (_else48304844_))))))
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
                                       (cons _r4796_
                                             (_recur4746_
                                              _rest14769_
                                              _rest24790_)))
                                     _$e4793_)
                                    (_recur4746_ _rest14769_ _rest24790_))))))
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
                              (_K47754798_ _rest24808_ _x24806_)))
                          (_else47734787_))))))
            (if (let () (declare (not safe)) (##pair? _rest147504758_))
                (let ((_hd47554813_
                       (let () (declare (not safe)) (##car _rest147504758_)))
                      (_tl47564815_
                       (let () (declare (not safe)) (##cdr _rest147504758_))))
                  (let* ((_x14818_ _hd47554813_) (_rest14820_ _tl47564815_))
                    (_K47544810_ _rest14820_ _x14818_)))
                (_else47524766_))))))
    (define filter-map
      (lambda _g7939_
        (let ((_g7938_ (let () (declare (not safe)) (##length _g7939_))))
          (cond ((let () (declare (not safe)) (##fx= _g7938_ 2))
                 (apply filter-map1 _g7939_))
                ((let () (declare (not safe)) (##fx= _g7938_ 3))
                 (apply filter-map2 _g7939_))
                ((let () (declare (not safe)) (##fx>= _g7938_ 3))
                 (apply filter-map* _g7939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g7939_))))))
    (define filter-map*
      (lambda (_f4718_ . _rest4719_)
        (let _recur4721_ ((_rest4723_ _rest4719_))
          (if (andmap1 pair? _rest4723_)
              (let ((_$e4725_ (apply _f4718_ (map car _rest4723_))))
                (if _$e4725_
                    ((lambda (_r4728_)
                       (cons _r4728_ (_recur4721_ (map cdr _rest4723_))))
                     _$e4725_)
                    (_recur4721_ (map cdr _rest4723_))))
              '()))))
    (define iota__%
      (lambda (_count4686_ _start4687_ _step4688_)
        (if (fixnum? _count4686_)
            '#!void
            (error '"expected fixnum" _count4686_))
        (if (number? _start4687_)
            '#!void
            (error '"expected number" _start4687_))
        (if (number? _step4688_) '#!void (error '"expected number" _step4688_))
        (let ((_root4690_ (cons '#f '())))
          (let _lp4692_ ((_i4694_ '0)
                         (_x4695_ _start4687_)
                         (_tl4696_ _root4690_))
            (if (let () (declare (not safe)) (##fx< _i4694_ _count4686_))
                (let ((_tl*4698_ (cons _x4695_ '())))
                  (let () (declare (not safe)) (##set-cdr! _tl4696_ _tl*4698_))
                  (_lp4692_
                   (let () (declare (not safe)) (##fx+ _i4694_ '1))
                   (+ _x4695_ _step4688_)
                   _tl*4698_))
                (let () (declare (not safe)) (##cdr _root4690_)))))))
    (define iota__0
      (lambda (_count4703_)
        (let* ((_start4705_ '0) (_step4707_ '1))
          (iota__% _count4703_ _start4705_ _step4707_))))
    (define iota__1
      (lambda (_count4709_ _start4710_)
        (let ((_step4712_ '1)) (iota__% _count4709_ _start4710_ _step4712_))))
    (define iota
      (lambda _g7941_
        (let ((_g7940_ (let () (declare (not safe)) (##length _g7941_))))
          (cond ((let () (declare (not safe)) (##fx= _g7940_ 1))
                 (apply iota__0 _g7941_))
                ((let () (declare (not safe)) (##fx= _g7940_ 2))
                 (apply iota__1 _g7941_))
                ((let () (declare (not safe)) (##fx= _g7940_ 3))
                 (apply iota__% _g7941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g7941_))))))
    (define last-pair
      (lambda (_lst4660_)
        (let* ((_lst46614668_ _lst4660_)
               (_E46634672_
                (lambda () (error '"No clause matching" _lst46614668_)))
               (_K46644677_
                (lambda (_rest4675_)
                  (if (pair? _rest4675_) (last-pair _rest4675_) _lst4660_))))
          (if (let () (declare (not safe)) (##pair? _lst46614668_))
              (let* ((_tl46664680_
                      (let () (declare (not safe)) (##cdr _lst46614668_)))
                     (_rest4683_ _tl46664680_))
                (_K46644677_ _rest4683_))
              (_E46634672_)))))
    (define last (lambda (_lst4658_) (car (last-pair _lst4658_))))
    (define assgetq__%
      (lambda (_key4636_ _lst4638_ _default4640_)
        (let ((_$e4643_ (if (pair? _lst4638_) (assq _key4636_ _lst4638_) '#f)))
          (if _$e4643_
              (cdr _$e4643_)
              (if (procedure? _default4640_)
                  (_default4640_ _key4636_)
                  _default4640_)))))
    (define assgetq__0
      (lambda (_key4649_ _lst4650_)
        (let ((_default4652_ '#f))
          (assgetq__% _key4649_ _lst4650_ _default4652_))))
    (define assgetq
      (lambda _g7943_
        (let ((_g7942_ (let () (declare (not safe)) (##length _g7943_))))
          (cond ((let () (declare (not safe)) (##fx= _g7942_ 2))
                 (apply assgetq__0 _g7943_))
                ((let () (declare (not safe)) (##fx= _g7942_ 3))
                 (apply assgetq__% _g7943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g7943_))))))
    (define assgetv__%
      (lambda (_key4613_ _lst4615_ _default4617_)
        (let ((_$e4620_ (if (pair? _lst4615_) (assv _key4613_ _lst4615_) '#f)))
          (if _$e4620_
              (cdr _$e4620_)
              (if (procedure? _default4617_)
                  (_default4617_ _key4613_)
                  _default4617_)))))
    (define assgetv__0
      (lambda (_key4626_ _lst4627_)
        (let ((_default4629_ '#f))
          (assgetv__% _key4626_ _lst4627_ _default4629_))))
    (define assgetv
      (lambda _g7945_
        (let ((_g7944_ (let () (declare (not safe)) (##length _g7945_))))
          (cond ((let () (declare (not safe)) (##fx= _g7944_ 2))
                 (apply assgetv__0 _g7945_))
                ((let () (declare (not safe)) (##fx= _g7944_ 3))
                 (apply assgetv__% _g7945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g7945_))))))
    (define assget__%
      (lambda (_key4590_ _lst4592_ _default4594_)
        (let ((_$e4597_
               (if (pair? _lst4592_) (assoc _key4590_ _lst4592_) '#f)))
          (if _$e4597_
              (cdr _$e4597_)
              (if (procedure? _default4594_)
                  (_default4594_ _key4590_)
                  _default4594_)))))
    (define assget__0
      (lambda (_key4603_ _lst4604_)
        (let ((_default4606_ '#f))
          (assget__% _key4603_ _lst4604_ _default4606_))))
    (define assget
      (lambda _g7947_
        (let ((_g7946_ (let () (declare (not safe)) (##length _g7947_))))
          (cond ((let () (declare (not safe)) (##fx= _g7946_ 2))
                 (apply assget__0 _g7947_))
                ((let () (declare (not safe)) (##fx= _g7946_ 3))
                 (apply assget__% _g7947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g7947_))))))
    (define pgetq__%
      (lambda (_key4519_ _lst4521_ _default4523_)
        (let _lp4526_ ((_rest4529_ _lst4521_))
          (let* ((_rest45314541_ _rest4529_)
                 (_else45334549_
                  (lambda ()
                    (if (procedure? _default4523_)
                        (_default4523_ _key4519_)
                        _default4523_)))
                 (_K45354558_
                  (lambda (_rest4552_ _v4553_ _k4555_)
                    (if (eq? _k4555_ _key4519_)
                        _v4553_
                        (_lp4526_ _rest4552_)))))
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
                            (_K45354558_ _rest4575_ _v4573_ _k4566_)))
                        (_else45334549_))))
                (_else45334549_))))))
    (define pgetq__0
      (lambda (_key4580_ _lst4581_)
        (let ((_default4583_ '#f))
          (pgetq__% _key4580_ _lst4581_ _default4583_))))
    (define pgetq
      (lambda _g7949_
        (let ((_g7948_ (let () (declare (not safe)) (##length _g7949_))))
          (cond ((let () (declare (not safe)) (##fx= _g7948_ 2))
                 (apply pgetq__0 _g7949_))
                ((let () (declare (not safe)) (##fx= _g7948_ 3))
                 (apply pgetq__% _g7949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g7949_))))))
    (define pgetv__%
      (lambda (_key4448_ _lst4450_ _default4452_)
        (let _lp4455_ ((_rest4458_ _lst4450_))
          (let* ((_rest44604470_ _rest4458_)
                 (_else44624478_
                  (lambda ()
                    (if (procedure? _default4452_)
                        (_default4452_ _key4448_)
                        _default4452_)))
                 (_K44644487_
                  (lambda (_rest4481_ _v4482_ _k4484_)
                    (if (eqv? _k4484_ _key4448_)
                        _v4482_
                        (_lp4455_ _rest4481_)))))
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
                            (_K44644487_ _rest4504_ _v4502_ _k4495_)))
                        (_else44624478_))))
                (_else44624478_))))))
    (define pgetv__0
      (lambda (_key4509_ _lst4510_)
        (let ((_default4512_ '#f))
          (pgetv__% _key4509_ _lst4510_ _default4512_))))
    (define pgetv
      (lambda _g7951_
        (let ((_g7950_ (let () (declare (not safe)) (##length _g7951_))))
          (cond ((let () (declare (not safe)) (##fx= _g7950_ 2))
                 (apply pgetv__0 _g7951_))
                ((let () (declare (not safe)) (##fx= _g7950_ 3))
                 (apply pgetv__% _g7951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g7951_))))))
    (define pget__%
      (lambda (_key4377_ _lst4379_ _default4381_)
        (let _lp4384_ ((_rest4387_ _lst4379_))
          (let* ((_rest43894399_ _rest4387_)
                 (_else43914407_
                  (lambda ()
                    (if (procedure? _default4381_)
                        (_default4381_ _key4377_)
                        _default4381_)))
                 (_K43934416_
                  (lambda (_rest4410_ _v4411_ _k4413_)
                    (if (equal? _k4413_ _key4377_)
                        _v4411_
                        (_lp4384_ _rest4410_)))))
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
                            (_K43934416_ _rest4433_ _v4431_ _k4424_)))
                        (_else43914407_))))
                (_else43914407_))))))
    (define pget__0
      (lambda (_key4438_ _lst4439_)
        (let ((_default4441_ '#f))
          (pget__% _key4438_ _lst4439_ _default4441_))))
    (define pget
      (lambda _g7953_
        (let ((_g7952_ (let () (declare (not safe)) (##length _g7953_))))
          (cond ((let () (declare (not safe)) (##fx= _g7952_ 2))
                 (apply pget__0 _g7953_))
                ((let () (declare (not safe)) (##fx= _g7952_ 3))
                 (apply pget__% _g7953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g7953_))))))
    (define find
      (lambda (_pred4370_ _lst4371_)
        (let ((_$e4373_ (memf _pred4370_ _lst4371_)))
          (if _$e4373_ (car _$e4373_) '#f))))
    (define memf
      (lambda (_proc4330_ _lst4331_)
        (let _lp4333_ ((_rest4335_ _lst4331_))
          (let* ((_rest43364344_ _rest4335_)
                 (_else43384352_ (lambda () '#f))
                 (_K43404358_
                  (lambda (_tl4355_ _hd4356_)
                    (if (_proc4330_ _hd4356_)
                        _rest4335_
                        (_lp4333_ _tl4355_)))))
            (if (let () (declare (not safe)) (##pair? _rest43364344_))
                (let ((_hd43414361_
                       (let () (declare (not safe)) (##car _rest43364344_)))
                      (_tl43424363_
                       (let () (declare (not safe)) (##cdr _rest43364344_))))
                  (let* ((_hd4366_ _hd43414361_) (_tl4368_ _tl43424363_))
                    (_K43404358_ _tl4368_ _hd4366_)))
                (_else43384352_))))))
    (define remove1
      (lambda (_el4283_ _lst4285_)
        (let _lp4288_ ((_rest4291_ _lst4285_) (_r4293_ '()))
          (let* ((_rest42954303_ _rest4291_)
                 (_else42974311_ (lambda () _lst4285_))
                 (_K42994318_
                  (lambda (_rest4314_ _hd4315_)
                    (if (equal? _el4283_ _hd4315_)
                        (foldl1 cons _rest4314_ _r4293_)
                        (_lp4288_ _rest4314_ (cons _hd4315_ _r4293_))))))
            (if (let () (declare (not safe)) (##pair? _rest42954303_))
                (let ((_hd43004321_
                       (let () (declare (not safe)) (##car _rest42954303_)))
                      (_tl43014323_
                       (let () (declare (not safe)) (##cdr _rest42954303_))))
                  (let* ((_hd4326_ _hd43004321_) (_rest4328_ _tl43014323_))
                    (_K42994318_ _rest4328_ _hd4326_)))
                (_else42974311_))))))
    (define remv
      (lambda (_el4236_ _lst4238_)
        (let _lp4241_ ((_rest4244_ _lst4238_) (_r4246_ '()))
          (let* ((_rest42484256_ _rest4244_)
                 (_else42504264_ (lambda () _lst4238_))
                 (_K42524271_
                  (lambda (_rest4267_ _hd4268_)
                    (if (eqv? _el4236_ _hd4268_)
                        (foldl1 cons _rest4267_ _r4246_)
                        (_lp4241_ _rest4267_ (cons _hd4268_ _r4246_))))))
            (if (let () (declare (not safe)) (##pair? _rest42484256_))
                (let ((_hd42534274_
                       (let () (declare (not safe)) (##car _rest42484256_)))
                      (_tl42544276_
                       (let () (declare (not safe)) (##cdr _rest42484256_))))
                  (let* ((_hd4279_ _hd42534274_) (_rest4281_ _tl42544276_))
                    (_K42524271_ _rest4281_ _hd4279_)))
                (_else42504264_))))))
    (define remq
      (lambda (_el4189_ _lst4191_)
        (let _lp4194_ ((_rest4197_ _lst4191_) (_r4199_ '()))
          (let* ((_rest42014209_ _rest4197_)
                 (_else42034217_ (lambda () _lst4191_))
                 (_K42054224_
                  (lambda (_rest4220_ _hd4221_)
                    (if (eq? _el4189_ _hd4221_)
                        (foldl1 cons _rest4220_ _r4199_)
                        (_lp4194_ _rest4220_ (cons _hd4221_ _r4199_))))))
            (if (let () (declare (not safe)) (##pair? _rest42014209_))
                (let ((_hd42064227_
                       (let () (declare (not safe)) (##car _rest42014209_)))
                      (_tl42074229_
                       (let () (declare (not safe)) (##cdr _rest42014209_))))
                  (let* ((_hd4232_ _hd42064227_) (_rest4234_ _tl42074229_))
                    (_K42054224_ _rest4234_ _hd4232_)))
                (_else42034217_))))))
    (define remf
      (lambda (_proc4148_ _lst4149_)
        (let _lp4151_ ((_rest4153_ _lst4149_) (_r4154_ '()))
          (let* ((_rest41554163_ _rest4153_)
                 (_else41574171_ (lambda () _lst4149_))
                 (_K41594177_
                  (lambda (_rest4174_ _hd4175_)
                    (if (_proc4148_ _hd4175_)
                        (foldl1 cons _rest4174_ _r4154_)
                        (_lp4151_ _rest4174_ (cons _hd4175_ _r4154_))))))
            (if (let () (declare (not safe)) (##pair? _rest41554163_))
                (let ((_hd41604180_
                       (let () (declare (not safe)) (##car _rest41554163_)))
                      (_tl41614182_
                       (let () (declare (not safe)) (##cdr _rest41554163_))))
                  (let* ((_hd4185_ _hd41604180_) (_rest4187_ _tl41614182_))
                    (_K41594177_ _rest4187_ _hd4185_)))
                (_else41574171_))))))
    (define 1+ (lambda (_x4146_) (+ _x4146_ '1)))
    (define 1- (lambda (_x4144_) (- _x4144_ '1)))
    (define fx1+ (lambda (_x4142_) (fx+ _x4142_ '1)))
    (define fx1- (lambda (_x4140_) (fx- _x4140_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define interned-symbol?
      (lambda (_x4138_)
        (if (symbol? _x4138_) (not (uninterned-symbol? _x4138_)) '#f)))
    (define make-symbol
      (lambda _args4134_
        (string->symbol
         (apply string-append
                (map (lambda (_x4136_)
                       (if (string? _x4136_)
                           _x4136_
                           (if (symbol? _x4136_)
                               (symbol->string _x4136_)
                               (if (keyword? _x4136_)
                                   (keyword->string _x4136_)
                                   (if (number? _x4136_)
                                       (number->string _x4136_)
                                       (error '"cannot convert to symbol"
                                              _x4136_))))))
                     _args4134_)))))
    (define interned-keyword?
      (lambda (_x4132_)
        (if (keyword? _x4132_) (not (uninterned-keyword? _x4132_)) '#f)))
    (define symbol->keyword
      (lambda (_sym4130_)
        ((if (uninterned-symbol? _sym4130_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym4130_))))
    (define keyword->symbol
      (lambda (_kw4128_)
        ((if (uninterned-keyword? _kw4128_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw4128_))))
    (define bytes->string__%
      (lambda (_bstr4106_ _enc4107_)
        (if (eq? _enc4107_ 'UTF-8)
            (utf8->string _bstr4106_)
            (let* ((_in4109_
                    (open-input-u8vector
                     (cons 'char-encoding:
                           (cons _enc4107_
                                 (cons 'init: (cons _bstr4106_ '()))))))
                   (_len4111_ (u8vector-length _bstr4106_))
                   (_out4113_ (make-string _len4111_))
                   (_n4115_ (read-substring _out4113_ '0 _len4111_ _in4109_)))
              (string-shrink! _out4113_ _n4115_)
              _out4113_))))
    (define bytes->string__0
      (lambda (_bstr4121_)
        (let ((_enc4123_ 'UTF-8)) (bytes->string__% _bstr4121_ _enc4123_))))
    (define bytes->string
      (lambda _g7955_
        (let ((_g7954_ (let () (declare (not safe)) (##length _g7955_))))
          (cond ((let () (declare (not safe)) (##fx= _g7954_ 1))
                 (apply bytes->string__0 _g7955_))
                ((let () (declare (not safe)) (##fx= _g7954_ 2))
                 (apply bytes->string__% _g7955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g7955_))))))
    (define string->bytes__%
      (lambda (_str4092_ _enc4093_)
        (if (eq? _enc4093_ 'UTF-8)
            (string->utf8 _str4092_)
            (substring->bytes
             _str4092_
             '0
             (string-length _str4092_)
             _enc4093_))))
    (define string->bytes__0
      (lambda (_str4098_)
        (let ((_enc4100_ 'UTF-8)) (string->bytes__% _str4098_ _enc4100_))))
    (define string->bytes
      (lambda _g7957_
        (let ((_g7956_ (let () (declare (not safe)) (##length _g7957_))))
          (cond ((let () (declare (not safe)) (##fx= _g7956_ 1))
                 (apply string->bytes__0 _g7957_))
                ((let () (declare (not safe)) (##fx= _g7956_ 2))
                 (apply string->bytes__% _g7957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g7957_))))))
    (define substring->bytes__%
      (lambda (_str4070_ _start4071_ _end4072_ _enc4073_)
        (if (eq? _enc4073_ 'UTF-8)
            (string->utf8 _str4070_ _start4071_ _end4072_)
            (let ((_out4075_
                   (open-output-u8vector
                    (cons 'char-encoding: (cons _enc4073_ '())))))
              (write-substring _str4070_ _start4071_ _end4072_ _out4075_)
              (get-output-u8vector _out4075_)))))
    (define substring->bytes__0
      (lambda (_str4080_ _start4081_ _end4082_)
        (let ((_enc4084_ 'UTF-8))
          (substring->bytes__% _str4080_ _start4081_ _end4082_ _enc4084_))))
    (define substring->bytes
      (lambda _g7959_
        (let ((_g7958_ (let () (declare (not safe)) (##length _g7959_))))
          (cond ((let () (declare (not safe)) (##fx= _g7958_ 3))
                 (apply substring->bytes__0 _g7959_))
                ((let () (declare (not safe)) (##fx= _g7958_ 4))
                 (apply substring->bytes__% _g7959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g7959_))))))
    (define string-empty?
      (lambda (_str4067_)
        (let ((__tmp7960 (string-length _str4067_)))
          (declare (not safe))
          (##fxzero? __tmp7960))))
    (define string-prefix?
      (lambda (_prefix4057_ _str4058_)
        (let ((_str-len4060_ (string-length _str4058_))
              (_prefix-len4061_ (string-length _prefix4057_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len4061_ _str-len4060_))
              (let _lp4063_ ((_i4065_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i4065_ _prefix-len4061_))
                    (if (eq? (let ()
                               (declare (not safe))
                               (##string-ref _str4058_ _i4065_))
                             (let ()
                               (declare (not safe))
                               (##string-ref _prefix4057_ _i4065_)))
                        (_lp4063_
                         (let () (declare (not safe)) (##fx+ _i4065_ '1)))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str4035_ _char4036_ _start4037_)
        (let ((_len4039_ (string-length _str4035_)))
          (let _lp4041_ ((_k4043_ _start4037_))
            (if (let () (declare (not safe)) (##fx< _k4043_ _len4039_))
                (if (eq? _char4036_
                         (let ()
                           (declare (not safe))
                           (##string-ref _str4035_ _k4043_)))
                    _k4043_
                    (_lp4041_
                     (let () (declare (not safe)) (##fx+ _k4043_ '1))))
                '#f)))))
    (define string-index__0
      (lambda (_str4048_ _char4049_)
        (let ((_start4051_ '0))
          (string-index__% _str4048_ _char4049_ _start4051_))))
    (define string-index
      (lambda _g7962_
        (let ((_g7961_ (let () (declare (not safe)) (##length _g7962_))))
          (cond ((let () (declare (not safe)) (##fx= _g7961_ 2))
                 (apply string-index__0 _g7962_))
                ((let () (declare (not safe)) (##fx= _g7961_ 3))
                 (apply string-index__% _g7962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g7962_))))))
    (define string-rindex__%
      (lambda (_str4006_ _char4007_ _start4008_)
        (let* ((_len4010_ (string-length _str4006_))
               (_start4015_
                (let ((_$e4012_ _start4008_))
                  (if _$e4012_
                      _$e4012_
                      (let () (declare (not safe)) (##fx- _len4010_ '1))))))
          (let _lp4018_ ((_k4020_ _start4015_))
            (if (let () (declare (not safe)) (##fx>= _k4020_ '0))
                (if (eq? _char4007_
                         (let ()
                           (declare (not safe))
                           (##string-ref _str4006_ _k4020_)))
                    _k4020_
                    (_lp4018_
                     (let () (declare (not safe)) (##fx- _k4020_ '1))))
                '#f)))))
    (define string-rindex__0
      (lambda (_str4025_ _char4026_)
        (let ((_start4028_ '#f))
          (string-rindex__% _str4025_ _char4026_ _start4028_))))
    (define string-rindex
      (lambda _g7964_
        (let ((_g7963_ (let () (declare (not safe)) (##length _g7964_))))
          (cond ((let () (declare (not safe)) (##fx= _g7963_ 2))
                 (apply string-rindex__0 _g7964_))
                ((let () (declare (not safe)) (##fx= _g7963_ 3))
                 (apply string-rindex__% _g7964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g7964_))))))
    (define string-split
      (lambda (_str3990_ _char3991_)
        (let ((_len3993_ (string-length _str3990_)))
          (let _lp3995_ ((_start3997_ '0) (_r3998_ '()))
            (let ((_$e4000_ (string-index _str3990_ _char3991_ _start3997_)))
              (if _$e4000_
                  ((lambda (_end4003_)
                     (_lp3995_
                      (let () (declare (not safe)) (##fx+ _end4003_ '1))
                      (cons (let ()
                              (declare (not safe))
                              (##substring _str3990_ _start3997_ _end4003_))
                            _r3998_)))
                   _$e4000_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start3997_ _len3993_))
                      (foldl1 cons
                              (list (let ()
                                      (declare (not safe))
                                      (##substring
                                       _str3990_
                                       _start3997_
                                       _len3993_)))
                              _r3998_)
                      (reverse _r3998_))))))))
    (define string-join
      (lambda (_strs3895_ _join3896_)
        (letrec ((_join-length3898_
                  (lambda (_strs3949_ _jlen3950_)
                    (let _lp3952_ ((_rest3954_ _strs3949_) (_len3955_ '0))
                      (let* ((_rest39563964_ _rest3954_)
                             (_else39583972_ (lambda () '0))
                             (_K39603978_
                              (lambda (_rest3975_ _hd3976_)
                                (if (string? _hd3976_)
                                    (if (pair? _rest3975_)
                                        (_lp3952_
                                         _rest3975_
                                         (let ((__tmp7965
                                                (let ()
                                                  (declare (not safe))
                                                  (##string-length _hd3976_))))
                                           (declare (not safe))
                                           (##fx+ __tmp7965
                                                  _jlen3950_
                                                  _len3955_)))
                                        (let ((__tmp7966
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd3976_))))
                                          (declare (not safe))
                                          (##fx+ __tmp7966 _len3955_)))
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
                                (_K39603978_ _rest3988_ _hd3986_)))
                            (_else39583972_)))))))
          (let* ((_join3900_
                  (if (char? _join3896_)
                      (string _join3896_)
                      (if (string? _join3896_)
                          _join3896_
                          (error '"expected string or char" _join3896_))))
                 (_jlen3902_
                  (let () (declare (not safe)) (##string-length _join3900_)))
                 (_olen3904_ (_join-length3898_ _strs3895_ _jlen3902_))
                 (_ostr3906_ (make-string _olen3904_)))
            (let _lp3909_ ((_rest3911_ _strs3895_) (_k3912_ '0))
              (let* ((_rest39133921_ _rest3911_)
                     (_else39153929_ (lambda () '""))
                     (_K39173937_
                      (lambda (_rest3932_ _hd3933_)
                        (let ((_hdlen3935_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd3933_))))
                          (if (pair? _rest3932_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd3933_
                                   '0
                                   _hdlen3935_
                                   _ostr3906_
                                   _k3912_))
                                (let ((__tmp7967
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k3912_ _hdlen3935_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join3900_
                                   '0
                                   _jlen3902_
                                   _ostr3906_
                                   __tmp7967))
                                (_lp3909_
                                 _rest3932_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _k3912_ _hdlen3935_ _jlen3902_))))
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
                        (_K39173937_ _rest3947_ _hd3945_)))
                    (_else39153929_))))))))))
