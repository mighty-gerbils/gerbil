(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1710694200)
  (begin
    (define displayln
      (lambda _args54344_
        (let _lp54346_ ((_rest54348_ _args54344_))
          (let* ((_rest5434954357_ _rest54348_)
                 (_else5435154365_ (lambda () (newline)))
                 (_K5435354371_
                  (lambda (_rest54368_ _hd54369_)
                    (display _hd54369_)
                    (let () (declare (not safe)) (_lp54346_ _rest54368_)))))
            (if (let () (declare (not safe)) (##pair? _rest5434954357_))
                (let ((_hd5435454374_
                       (let () (declare (not safe)) (##car _rest5434954357_)))
                      (_tl5435554376_
                       (let () (declare (not safe)) (##cdr _rest5434954357_))))
                  (let* ((_hd54379_ _hd5435454374_)
                         (_rest54381_ _tl5435554376_))
                    (declare (not safe))
                    (_K5435354371_ _rest54381_ _hd54379_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args54342_ (for-each display _args54342_)))
    (define file-newer?
      (lambda (_file154335_ _file254336_)
        (letrec ((_modification-time54338_
                  (lambda (_file54340_)
                    (let ((__tmp54765
                           (file-info-last-modification-time
                            (file-info _file54340_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp54765)))))
          (let ((__tmp54767
                 (let ()
                   (declare (not safe))
                   (_modification-time54338_ _file154335_)))
                (__tmp54766
                 (let ()
                   (declare (not safe))
                   (_modification-time54338_ _file254336_))))
            (declare (not safe))
            (##fl> __tmp54767 __tmp54766)))))
    (define create-directory*__%
      (lambda (_dir54309_ _perms54310_)
        (letrec ((_create154312_
                  (lambda (_path54323_)
                    (if (file-exists? _path54323_)
                        (if (let ((__tmp54768 (file-type _path54323_)))
                              (declare (not safe))
                              (eq? __tmp54768 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path54323_))
                        (if _perms54310_
                            (create-directory
                             (list 'path:
                                   _path54323_
                                   'permissions:
                                   _perms54310_))
                            (create-directory _path54323_))))))
          (if (file-exists? _dir54309_)
              '#!void
              (let _lp54314_ ((_start54316_ '0))
                (let ((_$e54318_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir54309_ '#\/ _start54316_))))
                  (if _$e54318_
                      ((lambda (_x54321_)
                         (if (let () (declare (not safe)) (##fx> _x54321_ '0))
                             (let ((__tmp54769
                                    (substring _dir54309_ '0 _x54321_)))
                               (declare (not safe))
                               (_create154312_ __tmp54769))
                             '#!void)
                         (let ((__tmp54770
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x54321_ '1))))
                           (declare (not safe))
                           (_lp54314_ __tmp54770)))
                       _$e54318_)
                      (let ()
                        (declare (not safe))
                        (_create154312_ _dir54309_)))))))))
    (define create-directory*__0
      (lambda (_dir54328_)
        (let ((_perms54330_ '493))
          (declare (not safe))
          (create-directory*__% _dir54328_ _perms54330_))))
    (define create-directory*
      (lambda _g54772_
        (let ((_g54771_ (let () (declare (not safe)) (##length _g54772_))))
          (cond ((let () (declare (not safe)) (##fx= _g54771_ 1))
                 (apply (lambda (_dir54328_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir54328_)))
                        _g54772_))
                ((let () (declare (not safe)) (##fx= _g54771_ 2))
                 (apply (lambda (_dir54332_ _perms54333_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir54332_ _perms54333_)))
                        _g54772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g54772_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g54773_ '#t))
    (define true?
      (lambda (_obj54305_) (let () (declare (not safe)) (eq? _obj54305_ '#t))))
    (define false (lambda _g54774_ '#f))
    (define void (lambda _g54775_ '#!void))
    (define void?
      (lambda (_obj54301_)
        (let () (declare (not safe)) (eq? _obj54301_ '#!void))))
    (define dssl-object?
      (lambda (_obj54299_)
        (if (memq _obj54299_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj54297_)
        (let () (declare (not safe)) (eq? _obj54297_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj54295_)
        (let () (declare (not safe)) (eq? _obj54295_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj54293_)
        (let () (declare (not safe)) (eq? _obj54293_ '#!optional))))
    (define immediate?
      (lambda (_obj54289_)
        (let* ((_t54291_ (let () (declare (not safe)) (##type _obj54289_)))
               (__tmp54776
                (let () (declare (not safe)) (##fxand _t54291_ '1))))
          (declare (not safe))
          (##fxzero? __tmp54776))))
    (define nonnegative-fixnum?
      (lambda (_obj54287_)
        (if (let () (declare (not safe)) (fixnum? _obj54287_))
            (let ((__tmp54777 (fxnegative? _obj54287_)))
              (declare (not safe))
              (not __tmp54777))
            '#f)))
    (define values-count
      (lambda (_obj54285_)
        (if (let () (declare (not safe)) (##values? _obj54285_))
            (let () (declare (not safe)) (##vector-length _obj54285_))
            '1)))
    (define values-ref
      (lambda (_obj54282_ _k54283_)
        (if (let () (declare (not safe)) (##values? _obj54282_))
            (let () (declare (not safe)) (##vector-ref _obj54282_ _k54283_))
            _obj54282_)))
    (define values->list
      (lambda (_obj54280_)
        (if (let () (declare (not safe)) (##values? _obj54280_))
            (let () (declare (not safe)) (##vector->list _obj54280_))
            (list _obj54280_))))
    (define subvector->list__%
      (lambda (_obj54265_ _start54266_)
        (let ((_lst54268_
               (let () (declare (not safe)) (##vector->list _obj54265_))))
          (list-tail _lst54268_ _start54266_))))
    (define subvector->list__0
      (lambda (_obj54273_)
        (let ((_start54275_ '0))
          (declare (not safe))
          (subvector->list__% _obj54273_ _start54275_))))
    (define subvector->list
      (lambda _g54779_
        (let ((_g54778_ (let () (declare (not safe)) (##length _g54779_))))
          (cond ((let () (declare (not safe)) (##fx= _g54778_ 1))
                 (apply (lambda (_obj54273_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj54273_)))
                        _g54779_))
                ((let () (declare (not safe)) (##fx= _g54778_ 2))
                 (apply (lambda (_obj54277_ _start54278_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj54277_ _start54278_)))
                        _g54779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g54779_))))))
    (define cons*
      (lambda (_x54255_ _y54256_ . _rest54257_)
        (letrec ((_recur54259_
                  (lambda (_x54261_ _rest54262_)
                    (if (let () (declare (not safe)) (pair? _rest54262_))
                        (let ((__tmp54780
                               (let ((__tmp54782
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest54262_)))
                                     (__tmp54781
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest54262_))))
                                 (declare (not safe))
                                 (_recur54259_ __tmp54782 __tmp54781))))
                          (declare (not safe))
                          (cons _x54261_ __tmp54780))
                        _x54261_))))
          (let ((__tmp54783
                 (let ()
                   (declare (not safe))
                   (_recur54259_ _y54256_ _rest54257_))))
            (declare (not safe))
            (cons _x54255_ __tmp54783)))))
    (define foldl1
      (lambda (_f54213_ _iv54214_ _lst54215_)
        (let _lp54217_ ((_rest54219_ _lst54215_) (_r54220_ _iv54214_))
          (let* ((_rest5422154229_ _rest54219_)
                 (_else5422354237_ (lambda () _r54220_))
                 (_K5422554243_
                  (lambda (_rest54240_ _x54241_)
                    (let ((__tmp54784 (_f54213_ _x54241_ _r54220_)))
                      (declare (not safe))
                      (_lp54217_ _rest54240_ __tmp54784)))))
            (if (let () (declare (not safe)) (##pair? _rest5422154229_))
                (let ((_hd5422654246_
                       (let () (declare (not safe)) (##car _rest5422154229_)))
                      (_tl5422754248_
                       (let () (declare (not safe)) (##cdr _rest5422154229_))))
                  (let* ((_x54251_ _hd5422654246_)
                         (_rest54253_ _tl5422754248_))
                    (declare (not safe))
                    (_K5422554243_ _rest54253_ _x54251_)))
                (let () (declare (not safe)) (_else5422354237_)))))))
    (define foldl2
      (lambda (_f54136_ _iv54137_ _lst154138_ _lst254139_)
        (let _lp54141_ ((_rest154143_ _lst154138_)
                        (_rest254144_ _lst254139_)
                        (_r54145_ _iv54137_))
          (let* ((_rest15414654154_ _rest154143_)
                 (_else5414854162_ (lambda () _r54145_))
                 (_K5415054201_
                  (lambda (_rest154165_ _x154166_)
                    (let* ((_rest25416754175_ _rest254144_)
                           (_else5416954183_ (lambda () _r54145_))
                           (_K5417154189_
                            (lambda (_rest254186_ _x254187_)
                              (let ((__tmp54785
                                     (_f54136_ _x154166_ _x254187_ _r54145_)))
                                (declare (not safe))
                                (_lp54141_
                                 _rest154165_
                                 _rest254186_
                                 __tmp54785)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25416754175_))
                          (let ((_hd5417254192_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25416754175_)))
                                (_tl5417354194_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25416754175_))))
                            (let* ((_x254197_ _hd5417254192_)
                                   (_rest254199_ _tl5417354194_))
                              (declare (not safe))
                              (_K5417154189_ _rest254199_ _x254197_)))
                          (let () (declare (not safe)) (_else5416954183_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15414654154_))
                (let ((_hd5415154204_
                       (let () (declare (not safe)) (##car _rest15414654154_)))
                      (_tl5415254206_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15414654154_))))
                  (let* ((_x154209_ _hd5415154204_)
                         (_rest154211_ _tl5415254206_))
                    (declare (not safe))
                    (_K5415054201_ _rest154211_ _x154209_)))
                (let () (declare (not safe)) (_else5414854162_)))))))
    (define foldl
      (lambda _g54787_
        (let ((_g54786_ (let () (declare (not safe)) (##length _g54787_))))
          (cond ((let () (declare (not safe)) (##fx= _g54786_ 3))
                 (apply (lambda (_f54121_ _iv54122_ _lst54123_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f54121_ _iv54122_ _lst54123_)))
                        _g54787_))
                ((let () (declare (not safe)) (##fx= _g54786_ 4))
                 (apply (lambda (_f54125_ _iv54126_ _lst154127_ _lst254128_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f54125_
                                    _iv54126_
                                    _lst154127_
                                    _lst254128_)))
                        _g54787_))
                ((let () (declare (not safe)) (##fx>= _g54786_ 4))
                 (apply foldl* _g54787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g54787_))))))
    (define foldl*
      (lambda (_f54109_ _iv54110_ . _rest54111_)
        (let _recur54113_ ((_iv54115_ _iv54110_) (_rest54116_ _rest54111_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest54116_))
              (let ((__tmp54789
                     (apply _f54109_
                            (let ((__tmp54791
                                   (lambda (_xs54118_ _r54119_)
                                     (let ((__tmp54792 (car _xs54118_)))
                                       (declare (not safe))
                                       (cons __tmp54792 _r54119_))))
                                  (__tmp54790 (list _iv54115_)))
                              (declare (not safe))
                              (foldr1 __tmp54791 __tmp54790 _rest54116_))))
                    (__tmp54788 (map cdr _rest54116_)))
                (declare (not safe))
                (_recur54113_ __tmp54789 __tmp54788))
              _iv54115_))))
    (define foldr1
      (lambda (_f54068_ _iv54069_ _lst54070_)
        (let _recur54072_ ((_rest54074_ _lst54070_))
          (let* ((_rest5407554083_ _rest54074_)
                 (_else5407754091_ (lambda () _iv54069_))
                 (_K5407954097_
                  (lambda (_rest54094_ _x54095_)
                    (_f54068_
                     _x54095_
                     (let ()
                       (declare (not safe))
                       (_recur54072_ _rest54094_))))))
            (if (let () (declare (not safe)) (##pair? _rest5407554083_))
                (let ((_hd5408054100_
                       (let () (declare (not safe)) (##car _rest5407554083_)))
                      (_tl5408154102_
                       (let () (declare (not safe)) (##cdr _rest5407554083_))))
                  (let* ((_x54105_ _hd5408054100_)
                         (_rest54107_ _tl5408154102_))
                    (declare (not safe))
                    (_K5407954097_ _rest54107_ _x54105_)))
                (let () (declare (not safe)) (_else5407754091_)))))))
    (define foldr2
      (lambda (_f53992_ _iv53993_ _lst153994_ _lst253995_)
        (let _recur53997_ ((_rest153999_ _lst153994_)
                           (_rest254000_ _lst253995_))
          (let* ((_rest15400154009_ _rest153999_)
                 (_else5400354017_ (lambda () _iv53993_))
                 (_K5400554056_
                  (lambda (_rest154020_ _x154021_)
                    (let* ((_rest25402254030_ _rest254000_)
                           (_else5402454038_ (lambda () _iv53993_))
                           (_K5402654044_
                            (lambda (_rest254041_ _x254042_)
                              (_f53992_
                               _x154021_
                               _x254042_
                               (let ()
                                 (declare (not safe))
                                 (_recur53997_ _rest154020_ _rest254041_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25402254030_))
                          (let ((_hd5402754047_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25402254030_)))
                                (_tl5402854049_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25402254030_))))
                            (let* ((_x254052_ _hd5402754047_)
                                   (_rest254054_ _tl5402854049_))
                              (declare (not safe))
                              (_K5402654044_ _rest254054_ _x254052_)))
                          (let () (declare (not safe)) (_else5402454038_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15400154009_))
                (let ((_hd5400654059_
                       (let () (declare (not safe)) (##car _rest15400154009_)))
                      (_tl5400754061_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15400154009_))))
                  (let* ((_x154064_ _hd5400654059_)
                         (_rest154066_ _tl5400754061_))
                    (declare (not safe))
                    (_K5400554056_ _rest154066_ _x154064_)))
                (let () (declare (not safe)) (_else5400354017_)))))))
    (define foldr
      (lambda _g54794_
        (let ((_g54793_ (let () (declare (not safe)) (##length _g54794_))))
          (cond ((let () (declare (not safe)) (##fx= _g54793_ 3))
                 (apply (lambda (_f53977_ _iv53978_ _lst53979_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f53977_ _iv53978_ _lst53979_)))
                        _g54794_))
                ((let () (declare (not safe)) (##fx= _g54793_ 4))
                 (apply (lambda (_f53981_ _iv53982_ _lst153983_ _lst253984_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f53981_
                                    _iv53982_
                                    _lst153983_
                                    _lst253984_)))
                        _g54794_))
                ((let () (declare (not safe)) (##fx>= _g54793_ 4))
                 (apply foldr* _g54794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g54794_))))))
    (define foldr*
      (lambda (_f53966_ _iv53967_ . _rest53968_)
        (let _recur53970_ ((_rest53972_ _rest53968_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53972_))
              (apply _f53966_
                     (let ((__tmp54797
                            (lambda (_xs53974_ _r53975_)
                              (let ((__tmp54798 (car _xs53974_)))
                                (declare (not safe))
                                (cons __tmp54798 _r53975_))))
                           (__tmp54795
                            (list (let ((__tmp54796 (map cdr _rest53972_)))
                                    (declare (not safe))
                                    (_recur53970_ __tmp54796)))))
                       (declare (not safe))
                       (foldr1 __tmp54797 __tmp54795 _rest53972_)))
              _iv53967_))))
    (define remove-nulls!
      (lambda (_l53853_)
        (let* ((_l5385453867_ _l53853_)
               (_E5385853871_
                (lambda () (error '"No clause matching" _l5385453867_))))
          (let ((_K5386353956_
                 (lambda (_r53954_)
                   (let () (declare (not safe)) (remove-nulls! _r53954_))))
                (_K5386053943_
                 (lambda (_r53883_)
                   (let _loop53885_ ((_l53887_ _l53853_) (_r53888_ _r53883_))
                     (let* ((_r5388953902_ _r53888_)
                            (_E5389353906_
                             (lambda ()
                               (error '"No clause matching" _r5388953902_))))
                       (let ((_K5389853933_
                              (lambda (_rr53931_)
                                (set-cdr!
                                 _l53887_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr53931_)))))
                             (_K5389553920_
                              (lambda (_rr53918_)
                                (let ()
                                  (declare (not safe))
                                  (_loop53885_ _r53888_ _rr53918_))))
                             (_K5389453911_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5388953902_))
                             (let ((_tl5390053938_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5388953902_)))
                                   (_hd5389953936_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5388953902_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5389953936_))
                                   (let ((_rr53941_ _tl5390053938_))
                                     (declare (not safe))
                                     (_K5389853933_ _rr53941_))
                                   (let ((_rr53926_ _tl5390053938_))
                                     (declare (not safe))
                                     (_K5389553920_ _rr53926_))))
                             '#!void))))
                   _l53853_))
                (_K5385953876_ (lambda () _l53853_)))
            (if (let () (declare (not safe)) (##pair? _l5385453867_))
                (let ((_tl5386553961_
                       (let () (declare (not safe)) (##cdr _l5385453867_)))
                      (_hd5386453959_
                       (let () (declare (not safe)) (##car _l5385453867_))))
                  (if (let () (declare (not safe)) (##null? _hd5386453959_))
                      (let ((_r53964_ _tl5386553961_))
                        (declare (not safe))
                        (remove-nulls! _r53964_))
                      (let ((_r53949_ _tl5386553961_))
                        (declare (not safe))
                        (_K5386053943_ _r53949_))))
                (let () (declare (not safe)) (_K5385953876_)))))))
    (define append1!
      (lambda (_l53848_ _x53849_)
        (let ((_l253851_ (let () (declare (not safe)) (cons _x53849_ '()))))
          (if (let () (declare (not safe)) (pair? _l53848_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l53848_))
               _l253851_)
              _l253851_))))
    (define append-reverse-until
      (lambda (_pred53801_ _rhead53802_ _tail53803_)
        (let _loop53805_ ((_rhead53807_ _rhead53802_)
                          (_tail53808_ _tail53803_))
          (let* ((_rhead5380953818_ _rhead53807_)
                 (_E5381253822_
                  (lambda () (error '"No clause matching" _rhead5380953818_))))
            (let ((_K5381653845_ (lambda () (values '() _tail53808_)))
                  (_K5381353829_
                   (lambda (_r53826_ _a53827_)
                     (if (_pred53801_ _a53827_)
                         (values _rhead53807_ _tail53808_)
                         (let ((__tmp54799
                                (let ()
                                  (declare (not safe))
                                  (cons _a53827_ _tail53808_))))
                           (declare (not safe))
                           (_loop53805_ _r53826_ __tmp54799))))))
              (let ((_try-match5381153841_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5380953818_))
                           (let ((_tl5381553834_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5380953818_)))
                                 (_hd5381453832_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5380953818_))))
                             (let ((_a53837_ _hd5381453832_)
                                   (_r53839_ _tl5381553834_))
                               (let ()
                                 (declare (not safe))
                                 (_K5381353829_ _r53839_ _a53837_))))
                           (let () (declare (not safe)) (_E5381253822_))))))
                (if (let () (declare (not safe)) (##null? _rhead5380953818_))
                    (let () (declare (not safe)) (_K5381653845_))
                    (let ()
                      (declare (not safe))
                      (_try-match5381153841_)))))))))
    (define andmap1
      (lambda (_f53761_ _lst53762_)
        (let _lp53764_ ((_rest53766_ _lst53762_))
          (let* ((_rest5376753775_ _rest53766_)
                 (_else5376953783_ (lambda () '#t))
                 (_K5377153789_
                  (lambda (_rest53786_ _x53787_)
                    (if (_f53761_ _x53787_)
                        (let () (declare (not safe)) (_lp53764_ _rest53786_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5376753775_))
                (let ((_hd5377253792_
                       (let () (declare (not safe)) (##car _rest5376753775_)))
                      (_tl5377353794_
                       (let () (declare (not safe)) (##cdr _rest5376753775_))))
                  (let* ((_x53797_ _hd5377253792_)
                         (_rest53799_ _tl5377353794_))
                    (declare (not safe))
                    (_K5377153789_ _rest53799_ _x53797_)))
                (let () (declare (not safe)) (_else5376953783_)))))))
    (define andmap2
      (lambda (_f53686_ _lst153687_ _lst253688_)
        (let _lp53690_ ((_rest153692_ _lst153687_) (_rest253693_ _lst253688_))
          (let* ((_rest15369453702_ _rest153692_)
                 (_else5369653710_ (lambda () '#t))
                 (_K5369853749_
                  (lambda (_rest153713_ _x153714_)
                    (let* ((_rest25371553723_ _rest253693_)
                           (_else5371753731_ (lambda () '#t))
                           (_K5371953737_
                            (lambda (_rest253734_ _x253735_)
                              (if (_f53686_ _x153714_ _x253735_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp53690_ _rest153713_ _rest253734_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25371553723_))
                          (let ((_hd5372053740_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25371553723_)))
                                (_tl5372153742_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25371553723_))))
                            (let* ((_x253745_ _hd5372053740_)
                                   (_rest253747_ _tl5372153742_))
                              (declare (not safe))
                              (_K5371953737_ _rest253747_ _x253745_)))
                          (let () (declare (not safe)) (_else5371753731_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15369453702_))
                (let ((_hd5369953752_
                       (let () (declare (not safe)) (##car _rest15369453702_)))
                      (_tl5370053754_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15369453702_))))
                  (let* ((_x153757_ _hd5369953752_)
                         (_rest153759_ _tl5370053754_))
                    (declare (not safe))
                    (_K5369853749_ _rest153759_ _x153757_)))
                (let () (declare (not safe)) (_else5369653710_)))))))
    (define andmap
      (lambda _g54801_
        (let ((_g54800_ (let () (declare (not safe)) (##length _g54801_))))
          (cond ((let () (declare (not safe)) (##fx= _g54800_ 2))
                 (apply (lambda (_f53674_ _lst53675_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f53674_ _lst53675_)))
                        _g54801_))
                ((let () (declare (not safe)) (##fx= _g54800_ 3))
                 (apply (lambda (_f53677_ _lst153678_ _lst253679_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f53677_ _lst153678_ _lst253679_)))
                        _g54801_))
                ((let () (declare (not safe)) (##fx>= _g54800_ 3))
                 (apply andmap* _g54801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g54801_))))))
    (define andmap*
      (lambda (_f53667_ . _rest53668_)
        (let _recur53670_ ((_rest53672_ _rest53668_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53672_))
              (if (apply _f53667_ (map car _rest53672_))
                  (let ((__tmp54802 (map cdr _rest53672_)))
                    (declare (not safe))
                    (_recur53670_ __tmp54802))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f53624_ _lst53625_)
        (let _lp53627_ ((_rest53629_ _lst53625_))
          (let* ((_rest5363053638_ _rest53629_)
                 (_else5363253646_ (lambda () '#f))
                 (_K5363453655_
                  (lambda (_rest53649_ _x53650_)
                    (let ((_$e53652_ (_f53624_ _x53650_)))
                      (if _$e53652_
                          _$e53652_
                          (let ()
                            (declare (not safe))
                            (_lp53627_ _rest53649_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5363053638_))
                (let ((_hd5363553658_
                       (let () (declare (not safe)) (##car _rest5363053638_)))
                      (_tl5363653660_
                       (let () (declare (not safe)) (##cdr _rest5363053638_))))
                  (let* ((_x53663_ _hd5363553658_)
                         (_rest53665_ _tl5363653660_))
                    (declare (not safe))
                    (_K5363453655_ _rest53665_ _x53663_)))
                (let () (declare (not safe)) (_else5363253646_)))))))
    (define ormap2
      (lambda (_f53546_ _lst153547_ _lst253548_)
        (let _lp53550_ ((_rest153552_ _lst153547_) (_rest253553_ _lst253548_))
          (let* ((_rest15355453562_ _rest153552_)
                 (_else5355653570_ (lambda () '#f))
                 (_K5355853612_
                  (lambda (_rest153573_ _x153574_)
                    (let* ((_rest25357553583_ _rest253553_)
                           (_else5357753591_ (lambda () '#f))
                           (_K5357953600_
                            (lambda (_rest253594_ _x253595_)
                              (let ((_$e53597_ (_f53546_ _x153574_ _x253595_)))
                                (if _$e53597_
                                    _$e53597_
                                    (let ()
                                      (declare (not safe))
                                      (_lp53550_
                                       _rest153573_
                                       _rest253594_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25357553583_))
                          (let ((_hd5358053603_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25357553583_)))
                                (_tl5358153605_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25357553583_))))
                            (let* ((_x253608_ _hd5358053603_)
                                   (_rest253610_ _tl5358153605_))
                              (declare (not safe))
                              (_K5357953600_ _rest253610_ _x253608_)))
                          (let () (declare (not safe)) (_else5357753591_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15355453562_))
                (let ((_hd5355953615_
                       (let () (declare (not safe)) (##car _rest15355453562_)))
                      (_tl5356053617_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15355453562_))))
                  (let* ((_x153620_ _hd5355953615_)
                         (_rest153622_ _tl5356053617_))
                    (declare (not safe))
                    (_K5355853612_ _rest153622_ _x153620_)))
                (let () (declare (not safe)) (_else5355653570_)))))))
    (define ormap
      (lambda _g54804_
        (let ((_g54803_ (let () (declare (not safe)) (##length _g54804_))))
          (cond ((let () (declare (not safe)) (##fx= _g54803_ 2))
                 (apply (lambda (_f53534_ _lst53535_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f53534_ _lst53535_)))
                        _g54804_))
                ((let () (declare (not safe)) (##fx= _g54803_ 3))
                 (apply (lambda (_f53537_ _lst153538_ _lst253539_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f53537_ _lst153538_ _lst253539_)))
                        _g54804_))
                ((let () (declare (not safe)) (##fx>= _g54803_ 3))
                 (apply ormap* _g54804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g54804_))))))
    (define ormap*
      (lambda (_f53524_ . _rest53525_)
        (let _recur53527_ ((_rest53529_ _rest53525_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53529_))
              (let ((_$e53531_ (apply _f53524_ (map car _rest53529_))))
                (if _$e53531_
                    _$e53531_
                    (let ((__tmp54805 (map cdr _rest53529_)))
                      (declare (not safe))
                      (_recur53527_ __tmp54805))))
              '#f))))
    (define filter-map1
      (lambda (_f53479_ _lst53480_)
        (let _recur53482_ ((_rest53484_ _lst53480_))
          (let* ((_rest5348553493_ _rest53484_)
                 (_else5348753501_ (lambda () '()))
                 (_K5348953512_
                  (lambda (_rest53504_ _x53505_)
                    (let ((_$e53507_ (_f53479_ _x53505_)))
                      (if _$e53507_
                          ((lambda (_r53510_)
                             (let ((__tmp54806
                                    (let ()
                                      (declare (not safe))
                                      (_recur53482_ _rest53504_))))
                               (declare (not safe))
                               (cons _r53510_ __tmp54806)))
                           _$e53507_)
                          (let ()
                            (declare (not safe))
                            (_recur53482_ _rest53504_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5348553493_))
                (let ((_hd5349053515_
                       (let () (declare (not safe)) (##car _rest5348553493_)))
                      (_tl5349153517_
                       (let () (declare (not safe)) (##cdr _rest5348553493_))))
                  (let* ((_x53520_ _hd5349053515_)
                         (_rest53522_ _tl5349153517_))
                    (declare (not safe))
                    (_K5348953512_ _rest53522_ _x53520_)))
                (let () (declare (not safe)) (_else5348753501_)))))))
    (define filter-map2
      (lambda (_f53399_ _lst153400_ _lst253401_)
        (let _recur53403_ ((_rest153405_ _lst153400_)
                           (_rest253406_ _lst253401_))
          (let* ((_rest15340753415_ _rest153405_)
                 (_else5340953423_ (lambda () '()))
                 (_K5341153467_
                  (lambda (_rest153426_ _x153427_)
                    (let* ((_rest25342853436_ _rest253406_)
                           (_else5343053444_ (lambda () '()))
                           (_K5343253455_
                            (lambda (_rest253447_ _x253448_)
                              (let ((_$e53450_ (_f53399_ _x153427_ _x253448_)))
                                (if _$e53450_
                                    ((lambda (_r53453_)
                                       (let ((__tmp54807
                                              (let ()
                                                (declare (not safe))
                                                (_recur53403_
                                                 _rest153426_
                                                 _rest253447_))))
                                         (declare (not safe))
                                         (cons _r53453_ __tmp54807)))
                                     _$e53450_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur53403_
                                       _rest153426_
                                       _rest253447_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25342853436_))
                          (let ((_hd5343353458_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25342853436_)))
                                (_tl5343453460_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25342853436_))))
                            (let* ((_x253463_ _hd5343353458_)
                                   (_rest253465_ _tl5343453460_))
                              (declare (not safe))
                              (_K5343253455_ _rest253465_ _x253463_)))
                          (let () (declare (not safe)) (_else5343053444_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15340753415_))
                (let ((_hd5341253470_
                       (let () (declare (not safe)) (##car _rest15340753415_)))
                      (_tl5341353472_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15340753415_))))
                  (let* ((_x153475_ _hd5341253470_)
                         (_rest153477_ _tl5341353472_))
                    (declare (not safe))
                    (_K5341153467_ _rest153477_ _x153475_)))
                (let () (declare (not safe)) (_else5340953423_)))))))
    (define filter-map
      (lambda _g54809_
        (let ((_g54808_ (let () (declare (not safe)) (##length _g54809_))))
          (cond ((let () (declare (not safe)) (##fx= _g54808_ 2))
                 (apply (lambda (_f53387_ _lst53388_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f53387_ _lst53388_)))
                        _g54809_))
                ((let () (declare (not safe)) (##fx= _g54808_ 3))
                 (apply (lambda (_f53390_ _lst153391_ _lst253392_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f53390_ _lst153391_ _lst253392_)))
                        _g54809_))
                ((let () (declare (not safe)) (##fx>= _g54808_ 3))
                 (apply filter-map* _g54809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g54809_))))))
    (define filter-map*
      (lambda (_f53375_ . _rest53376_)
        (let _recur53378_ ((_rest53380_ _rest53376_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53380_))
              (let ((_$e53382_ (apply _f53375_ (map car _rest53380_))))
                (if _$e53382_
                    ((lambda (_r53385_)
                       (let ((__tmp54810
                              (let ((__tmp54811 (map cdr _rest53380_)))
                                (declare (not safe))
                                (_recur53378_ __tmp54811))))
                         (declare (not safe))
                         (cons _r53385_ __tmp54810)))
                     _$e53382_)
                    (let ((__tmp54812 (map cdr _rest53380_)))
                      (declare (not safe))
                      (_recur53378_ __tmp54812))))
              '()))))
    (define assgetq__%
      (lambda (_key53353_ _lst53355_ _default53357_)
        (let ((_$e53360_
               (if (let () (declare (not safe)) (pair? _lst53355_))
                   (assq _key53353_ _lst53355_)
                   '#f)))
          (if _$e53360_
              (cdr _$e53360_)
              (if (let () (declare (not safe)) (procedure? _default53357_))
                  (_default53357_ _key53353_)
                  _default53357_)))))
    (define assgetq__0
      (lambda (_key53366_ _lst53367_)
        (let ((_default53369_ '#f))
          (declare (not safe))
          (assgetq__% _key53366_ _lst53367_ _default53369_))))
    (define assgetq
      (lambda _g54814_
        (let ((_g54813_ (let () (declare (not safe)) (##length _g54814_))))
          (cond ((let () (declare (not safe)) (##fx= _g54813_ 2))
                 (apply (lambda (_key53366_ _lst53367_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key53366_ _lst53367_)))
                        _g54814_))
                ((let () (declare (not safe)) (##fx= _g54813_ 3))
                 (apply (lambda (_key53371_ _lst53372_ _default53373_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key53371_ _lst53372_ _default53373_)))
                        _g54814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g54814_))))))
    (define assgetv__%
      (lambda (_key53330_ _lst53332_ _default53334_)
        (let ((_$e53337_
               (if (let () (declare (not safe)) (pair? _lst53332_))
                   (assv _key53330_ _lst53332_)
                   '#f)))
          (if _$e53337_
              (cdr _$e53337_)
              (if (let () (declare (not safe)) (procedure? _default53334_))
                  (_default53334_ _key53330_)
                  _default53334_)))))
    (define assgetv__0
      (lambda (_key53343_ _lst53344_)
        (let ((_default53346_ '#f))
          (declare (not safe))
          (assgetv__% _key53343_ _lst53344_ _default53346_))))
    (define assgetv
      (lambda _g54816_
        (let ((_g54815_ (let () (declare (not safe)) (##length _g54816_))))
          (cond ((let () (declare (not safe)) (##fx= _g54815_ 2))
                 (apply (lambda (_key53343_ _lst53344_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key53343_ _lst53344_)))
                        _g54816_))
                ((let () (declare (not safe)) (##fx= _g54815_ 3))
                 (apply (lambda (_key53348_ _lst53349_ _default53350_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key53348_ _lst53349_ _default53350_)))
                        _g54816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g54816_))))))
    (define assget__%
      (lambda (_key53307_ _lst53309_ _default53311_)
        (let ((_$e53314_
               (if (let () (declare (not safe)) (pair? _lst53309_))
                   (assoc _key53307_ _lst53309_)
                   '#f)))
          (if _$e53314_
              (cdr _$e53314_)
              (if (let () (declare (not safe)) (procedure? _default53311_))
                  (_default53311_ _key53307_)
                  _default53311_)))))
    (define assget__0
      (lambda (_key53320_ _lst53321_)
        (let ((_default53323_ '#f))
          (declare (not safe))
          (assget__% _key53320_ _lst53321_ _default53323_))))
    (define assget
      (lambda _g54818_
        (let ((_g54817_ (let () (declare (not safe)) (##length _g54818_))))
          (cond ((let () (declare (not safe)) (##fx= _g54817_ 2))
                 (apply (lambda (_key53320_ _lst53321_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key53320_ _lst53321_)))
                        _g54818_))
                ((let () (declare (not safe)) (##fx= _g54817_ 3))
                 (apply (lambda (_key53325_ _lst53326_ _default53327_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key53325_ _lst53326_ _default53327_)))
                        _g54818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g54818_))))))
    (define pgetq__%
      (lambda (_key53236_ _lst53238_ _default53240_)
        (let _lp53243_ ((_rest53246_ _lst53238_))
          (let* ((_rest5324853258_ _rest53246_)
                 (_else5325053266_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default53240_))
                        (_default53240_ _key53236_)
                        _default53240_)))
                 (_K5325253275_
                  (lambda (_rest53269_ _v53270_ _k53272_)
                    (if (let () (declare (not safe)) (eq? _k53272_ _key53236_))
                        _v53270_
                        (let ()
                          (declare (not safe))
                          (_lp53243_ _rest53269_))))))
            (if (let () (declare (not safe)) (##pair? _rest5324853258_))
                (let ((_hd5325353278_
                       (let () (declare (not safe)) (##car _rest5324853258_)))
                      (_tl5325453280_
                       (let () (declare (not safe)) (##cdr _rest5324853258_))))
                  (let ((_k53283_ _hd5325353278_))
                    (if (let () (declare (not safe)) (##pair? _tl5325453280_))
                        (let ((_hd5325553285_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5325453280_)))
                              (_tl5325653287_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5325453280_))))
                          (let* ((_v53290_ _hd5325553285_)
                                 (_rest53292_ _tl5325653287_))
                            (declare (not safe))
                            (_K5325253275_ _rest53292_ _v53290_ _k53283_)))
                        (let () (declare (not safe)) (_else5325053266_)))))
                (let () (declare (not safe)) (_else5325053266_)))))))
    (define pgetq__0
      (lambda (_key53297_ _lst53298_)
        (let ((_default53300_ '#f))
          (declare (not safe))
          (pgetq__% _key53297_ _lst53298_ _default53300_))))
    (define pgetq
      (lambda _g54820_
        (let ((_g54819_ (let () (declare (not safe)) (##length _g54820_))))
          (cond ((let () (declare (not safe)) (##fx= _g54819_ 2))
                 (apply (lambda (_key53297_ _lst53298_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key53297_ _lst53298_)))
                        _g54820_))
                ((let () (declare (not safe)) (##fx= _g54819_ 3))
                 (apply (lambda (_key53302_ _lst53303_ _default53304_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key53302_ _lst53303_ _default53304_)))
                        _g54820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g54820_))))))
    (define pgetv__%
      (lambda (_key53165_ _lst53167_ _default53169_)
        (let _lp53172_ ((_rest53175_ _lst53167_))
          (let* ((_rest5317753187_ _rest53175_)
                 (_else5317953195_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default53169_))
                        (_default53169_ _key53165_)
                        _default53169_)))
                 (_K5318153204_
                  (lambda (_rest53198_ _v53199_ _k53201_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k53201_ _key53165_))
                        _v53199_
                        (let ()
                          (declare (not safe))
                          (_lp53172_ _rest53198_))))))
            (if (let () (declare (not safe)) (##pair? _rest5317753187_))
                (let ((_hd5318253207_
                       (let () (declare (not safe)) (##car _rest5317753187_)))
                      (_tl5318353209_
                       (let () (declare (not safe)) (##cdr _rest5317753187_))))
                  (let ((_k53212_ _hd5318253207_))
                    (if (let () (declare (not safe)) (##pair? _tl5318353209_))
                        (let ((_hd5318453214_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5318353209_)))
                              (_tl5318553216_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5318353209_))))
                          (let* ((_v53219_ _hd5318453214_)
                                 (_rest53221_ _tl5318553216_))
                            (declare (not safe))
                            (_K5318153204_ _rest53221_ _v53219_ _k53212_)))
                        (let () (declare (not safe)) (_else5317953195_)))))
                (let () (declare (not safe)) (_else5317953195_)))))))
    (define pgetv__0
      (lambda (_key53226_ _lst53227_)
        (let ((_default53229_ '#f))
          (declare (not safe))
          (pgetv__% _key53226_ _lst53227_ _default53229_))))
    (define pgetv
      (lambda _g54822_
        (let ((_g54821_ (let () (declare (not safe)) (##length _g54822_))))
          (cond ((let () (declare (not safe)) (##fx= _g54821_ 2))
                 (apply (lambda (_key53226_ _lst53227_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key53226_ _lst53227_)))
                        _g54822_))
                ((let () (declare (not safe)) (##fx= _g54821_ 3))
                 (apply (lambda (_key53231_ _lst53232_ _default53233_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key53231_ _lst53232_ _default53233_)))
                        _g54822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g54822_))))))
    (define pget__%
      (lambda (_key53094_ _lst53096_ _default53098_)
        (let _lp53101_ ((_rest53104_ _lst53096_))
          (let* ((_rest5310653116_ _rest53104_)
                 (_else5310853124_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default53098_))
                        (_default53098_ _key53094_)
                        _default53098_)))
                 (_K5311053133_
                  (lambda (_rest53127_ _v53128_ _k53130_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k53130_ _key53094_))
                        _v53128_
                        (let ()
                          (declare (not safe))
                          (_lp53101_ _rest53127_))))))
            (if (let () (declare (not safe)) (##pair? _rest5310653116_))
                (let ((_hd5311153136_
                       (let () (declare (not safe)) (##car _rest5310653116_)))
                      (_tl5311253138_
                       (let () (declare (not safe)) (##cdr _rest5310653116_))))
                  (let ((_k53141_ _hd5311153136_))
                    (if (let () (declare (not safe)) (##pair? _tl5311253138_))
                        (let ((_hd5311353143_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5311253138_)))
                              (_tl5311453145_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5311253138_))))
                          (let* ((_v53148_ _hd5311353143_)
                                 (_rest53150_ _tl5311453145_))
                            (declare (not safe))
                            (_K5311053133_ _rest53150_ _v53148_ _k53141_)))
                        (let () (declare (not safe)) (_else5310853124_)))))
                (let () (declare (not safe)) (_else5310853124_)))))))
    (define pget__0
      (lambda (_key53155_ _lst53156_)
        (let ((_default53158_ '#f))
          (declare (not safe))
          (pget__% _key53155_ _lst53156_ _default53158_))))
    (define pget
      (lambda _g54824_
        (let ((_g54823_ (let () (declare (not safe)) (##length _g54824_))))
          (cond ((let () (declare (not safe)) (##fx= _g54823_ 2))
                 (apply (lambda (_key53155_ _lst53156_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key53155_ _lst53156_)))
                        _g54824_))
                ((let () (declare (not safe)) (##fx= _g54823_ 3))
                 (apply (lambda (_key53160_ _lst53161_ _default53162_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key53160_ _lst53161_ _default53162_)))
                        _g54824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g54824_))))))
    (define find
      (lambda (_pred53087_ _lst53088_)
        (let ((_$e53090_
               (let () (declare (not safe)) (memf _pred53087_ _lst53088_))))
          (if _$e53090_ (car _$e53090_) '#f))))
    (define memf
      (lambda (_proc53047_ _lst53048_)
        (let _lp53050_ ((_rest53052_ _lst53048_))
          (let* ((_rest5305353061_ _rest53052_)
                 (_else5305553069_ (lambda () '#f))
                 (_K5305753075_
                  (lambda (_tl53072_ _hd53073_)
                    (if (_proc53047_ _hd53073_)
                        _rest53052_
                        (let () (declare (not safe)) (_lp53050_ _tl53072_))))))
            (if (let () (declare (not safe)) (##pair? _rest5305353061_))
                (let ((_hd5305853078_
                       (let () (declare (not safe)) (##car _rest5305353061_)))
                      (_tl5305953080_
                       (let () (declare (not safe)) (##cdr _rest5305353061_))))
                  (let* ((_hd53083_ _hd5305853078_) (_tl53085_ _tl5305953080_))
                    (declare (not safe))
                    (_K5305753075_ _tl53085_ _hd53083_)))
                (let () (declare (not safe)) (_else5305553069_)))))))
    (define remove1
      (lambda (_el53000_ _lst53002_)
        (let _lp53005_ ((_rest53008_ _lst53002_) (_r53010_ '()))
          (let* ((_rest5301253020_ _rest53008_)
                 (_else5301453028_ (lambda () _lst53002_))
                 (_K5301653035_
                  (lambda (_rest53031_ _hd53032_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el53000_ _hd53032_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest53031_ _r53010_))
                        (let ((__tmp54825
                               (let ()
                                 (declare (not safe))
                                 (cons _hd53032_ _r53010_))))
                          (declare (not safe))
                          (_lp53005_ _rest53031_ __tmp54825))))))
            (if (let () (declare (not safe)) (##pair? _rest5301253020_))
                (let ((_hd5301753038_
                       (let () (declare (not safe)) (##car _rest5301253020_)))
                      (_tl5301853040_
                       (let () (declare (not safe)) (##cdr _rest5301253020_))))
                  (let* ((_hd53043_ _hd5301753038_)
                         (_rest53045_ _tl5301853040_))
                    (declare (not safe))
                    (_K5301653035_ _rest53045_ _hd53043_)))
                (let () (declare (not safe)) (_else5301453028_)))))))
    (define remv
      (lambda (_el52953_ _lst52955_)
        (let _lp52958_ ((_rest52961_ _lst52955_) (_r52963_ '()))
          (let* ((_rest5296552973_ _rest52961_)
                 (_else5296752981_ (lambda () _lst52955_))
                 (_K5296952988_
                  (lambda (_rest52984_ _hd52985_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el52953_ _hd52985_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52984_ _r52963_))
                        (let ((__tmp54826
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52985_ _r52963_))))
                          (declare (not safe))
                          (_lp52958_ _rest52984_ __tmp54826))))))
            (if (let () (declare (not safe)) (##pair? _rest5296552973_))
                (let ((_hd5297052991_
                       (let () (declare (not safe)) (##car _rest5296552973_)))
                      (_tl5297152993_
                       (let () (declare (not safe)) (##cdr _rest5296552973_))))
                  (let* ((_hd52996_ _hd5297052991_)
                         (_rest52998_ _tl5297152993_))
                    (declare (not safe))
                    (_K5296952988_ _rest52998_ _hd52996_)))
                (let () (declare (not safe)) (_else5296752981_)))))))
    (define remq
      (lambda (_el52906_ _lst52908_)
        (let _lp52911_ ((_rest52914_ _lst52908_) (_r52916_ '()))
          (let* ((_rest5291852926_ _rest52914_)
                 (_else5292052934_ (lambda () _lst52908_))
                 (_K5292252941_
                  (lambda (_rest52937_ _hd52938_)
                    (if (let () (declare (not safe)) (eq? _el52906_ _hd52938_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52937_ _r52916_))
                        (let ((__tmp54827
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52938_ _r52916_))))
                          (declare (not safe))
                          (_lp52911_ _rest52937_ __tmp54827))))))
            (if (let () (declare (not safe)) (##pair? _rest5291852926_))
                (let ((_hd5292352944_
                       (let () (declare (not safe)) (##car _rest5291852926_)))
                      (_tl5292452946_
                       (let () (declare (not safe)) (##cdr _rest5291852926_))))
                  (let* ((_hd52949_ _hd5292352944_)
                         (_rest52951_ _tl5292452946_))
                    (declare (not safe))
                    (_K5292252941_ _rest52951_ _hd52949_)))
                (let () (declare (not safe)) (_else5292052934_)))))))
    (define remf
      (lambda (_proc52865_ _lst52866_)
        (let _lp52868_ ((_rest52870_ _lst52866_) (_r52871_ '()))
          (let* ((_rest5287252880_ _rest52870_)
                 (_else5287452888_ (lambda () _lst52866_))
                 (_K5287652894_
                  (lambda (_rest52891_ _hd52892_)
                    (if (_proc52865_ _hd52892_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52891_ _r52871_))
                        (let ((__tmp54828
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52892_ _r52871_))))
                          (declare (not safe))
                          (_lp52868_ _rest52891_ __tmp54828))))))
            (if (let () (declare (not safe)) (##pair? _rest5287252880_))
                (let ((_hd5287752897_
                       (let () (declare (not safe)) (##car _rest5287252880_)))
                      (_tl5287852899_
                       (let () (declare (not safe)) (##cdr _rest5287252880_))))
                  (let* ((_hd52902_ _hd5287752897_)
                         (_rest52904_ _tl5287852899_))
                    (declare (not safe))
                    (_K5287652894_ _rest52904_ _hd52902_)))
                (let () (declare (not safe)) (_else5287452888_)))))))
    (define 1+ (lambda (_x52863_) (+ _x52863_ '1)))
    (define 1- (lambda (_x52861_) (- _x52861_ '1)))
    (define fx1+ (lambda (_x52859_) (fx+ _x52859_ '1)))
    (define fx1- (lambda (_x52857_) (fx- _x52857_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x52855_)
        (if (let () (declare (not safe)) (fixnum? _x52855_))
            (let () (declare (not safe)) (##fx>= _x52855_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x52853_)
        (if (let () (declare (not safe)) (fixnum? _x52853_))
            (let () (declare (not safe)) (##fx> _x52853_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x52851_) (let () (declare (not safe)) (eq? _x52851_ '0))))
    (define fx<0?
      (lambda (_x52849_)
        (if (let () (declare (not safe)) (fixnum? _x52849_))
            (let () (declare (not safe)) (##fx< _x52849_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x52847_)
        (if (let () (declare (not safe)) (fixnum? _x52847_))
            (let () (declare (not safe)) (##fx<= _x52847_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x52845_)
        (if (let () (declare (not safe)) (symbol? _x52845_))
            (let ((__tmp54829 (uninterned-symbol? _x52845_)))
              (declare (not safe))
              (not __tmp54829))
            '#f)))
    (define display-as-string
      (lambda (_x52817_ _port52818_)
        (if (or (let () (declare (not safe)) (string? _x52817_))
                (let () (declare (not safe)) (symbol? _x52817_))
                (keyword? _x52817_)
                (let () (declare (not safe)) (number? _x52817_))
                (let () (declare (not safe)) (char? _x52817_)))
            (display _x52817_ _port52818_)
            (if (let () (declare (not safe)) (pair? _x52817_))
                (begin
                  (let ((__tmp54830 (car _x52817_)))
                    (declare (not safe))
                    (display-as-string __tmp54830 _port52818_))
                  (let ((__tmp54831 (cdr _x52817_)))
                    (declare (not safe))
                    (display-as-string __tmp54831 _port52818_)))
                (if (let () (declare (not safe)) (vector? _x52817_))
                    (vector-for-each
                     (lambda (_g5283152833_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5283152833_ _port52818_)))
                     _x52817_)
                    (if (or (let () (declare (not safe)) (null? _x52817_))
                            (let ()
                              (declare (not safe))
                              (eq? _x52817_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x52817_))
                            (let () (declare (not safe)) (boolean? _x52817_)))
                        '#!void
                        (error '"cannot convert as string" _x52817_)))))))
    (define as-string__0
      (lambda (_x52805_)
        (if (let () (declare (not safe)) (string? _x52805_))
            _x52805_
            (if (let () (declare (not safe)) (symbol? _x52805_))
                (symbol->string _x52805_)
                (if (keyword? _x52805_)
                    (keyword->string _x52805_)
                    (if (let () (declare (not safe)) (number? _x52805_))
                        (number->string _x52805_)
                        (call-with-output-string
                         '()
                         (lambda (_g5280652808_)
                           (let ()
                             (declare (not safe))
                             (display-as-string
                              _x52805_
                              _g5280652808_))))))))))
    (define as-string__1
      (lambda _args52811_
        (call-with-output-string
         '()
         (lambda (_g5281252814_)
           (let ()
             (declare (not safe))
             (display-as-string _args52811_ _g5281252814_))))))
    (define as-string
      (lambda _g54833_
        (let ((_g54832_ (let () (declare (not safe)) (##length _g54833_))))
          (cond ((let () (declare (not safe)) (##fx= _g54832_ 1))
                 (apply (lambda (_x52805_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x52805_)))
                        _g54833_))
                (#t (apply as-string__1 _g54833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g54833_))))))
    (define make-symbol__0
      (lambda (_x52801_)
        (if (interned-symbol? _x52801_)
            _x52801_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x52801_))))))
    (define make-symbol__1
      (lambda _args52803_ (string->symbol (apply as-string _args52803_))))
    (define make-symbol
      (lambda _g54835_
        (let ((_g54834_ (let () (declare (not safe)) (##length _g54835_))))
          (cond ((let () (declare (not safe)) (##fx= _g54834_ 1))
                 (apply (lambda (_x52801_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x52801_)))
                        _g54835_))
                (#t (apply make-symbol__1 _g54835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g54835_))))))
    (define make-keyword__0
      (lambda (_x52797_)
        (if (interned-keyword? _x52797_)
            _x52797_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x52797_))))))
    (define make-keyword__1
      (lambda _args52799_ (string->keyword (apply as-string _args52799_))))
    (define make-keyword
      (lambda _g54837_
        (let ((_g54836_ (let () (declare (not safe)) (##length _g54837_))))
          (cond ((let () (declare (not safe)) (##fx= _g54836_ 1))
                 (apply (lambda (_x52797_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x52797_)))
                        _g54837_))
                (#t (apply make-keyword__1 _g54837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g54837_))))))
    (define interned-keyword?
      (lambda (_x52795_)
        (if (keyword? _x52795_)
            (let ((__tmp54838 (uninterned-keyword? _x52795_)))
              (declare (not safe))
              (not __tmp54838))
            '#f)))
    (define symbol->keyword
      (lambda (_sym52793_)
        ((if (uninterned-symbol? _sym52793_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym52793_))))
    (define keyword->symbol
      (lambda (_kw52791_)
        ((if (uninterned-keyword? _kw52791_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw52791_))))
    (define bytes->string__%
      (lambda (_bstr52769_ _enc52770_)
        (if (let () (declare (not safe)) (eq? _enc52770_ 'UTF-8))
            (utf8->string _bstr52769_)
            (let* ((_in52772_
                    (open-input-u8vector
                     (let ((__tmp54839
                            (let ((__tmp54840
                                   (let ((__tmp54841
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr52769_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp54841))))
                              (declare (not safe))
                              (cons _enc52770_ __tmp54840))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp54839))))
                   (_len52774_ (u8vector-length _bstr52769_))
                   (_out52776_ (make-string _len52774_))
                   (_n52778_
                    (read-substring _out52776_ '0 _len52774_ _in52772_)))
              (string-shrink! _out52776_ _n52778_)
              _out52776_))))
    (define bytes->string__0
      (lambda (_bstr52784_)
        (let ((_enc52786_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr52784_ _enc52786_))))
    (define bytes->string
      (lambda _g54843_
        (let ((_g54842_ (let () (declare (not safe)) (##length _g54843_))))
          (cond ((let () (declare (not safe)) (##fx= _g54842_ 1))
                 (apply (lambda (_bstr52784_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr52784_)))
                        _g54843_))
                ((let () (declare (not safe)) (##fx= _g54842_ 2))
                 (apply (lambda (_bstr52788_ _enc52789_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr52788_ _enc52789_)))
                        _g54843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g54843_))))))
    (define string->bytes__%
      (lambda (_str52755_ _enc52756_)
        (if (let () (declare (not safe)) (eq? _enc52756_ 'UTF-8))
            (string->utf8 _str52755_)
            (substring->bytes
             _str52755_
             '0
             (string-length _str52755_)
             _enc52756_))))
    (define string->bytes__0
      (lambda (_str52761_)
        (let ((_enc52763_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str52761_ _enc52763_))))
    (define string->bytes
      (lambda _g54845_
        (let ((_g54844_ (let () (declare (not safe)) (##length _g54845_))))
          (cond ((let () (declare (not safe)) (##fx= _g54844_ 1))
                 (apply (lambda (_str52761_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str52761_)))
                        _g54845_))
                ((let () (declare (not safe)) (##fx= _g54844_ 2))
                 (apply (lambda (_str52765_ _enc52766_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str52765_ _enc52766_)))
                        _g54845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g54845_))))))
    (define substring->bytes__%
      (lambda (_str52733_ _start52734_ _end52735_ _enc52736_)
        (if (let () (declare (not safe)) (eq? _enc52736_ 'UTF-8))
            (string->utf8 _str52733_ _start52734_ _end52735_)
            (let ((_out52738_
                   (open-output-u8vector
                    (let ((__tmp54846
                           (let ()
                             (declare (not safe))
                             (cons _enc52736_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp54846)))))
              (write-substring _str52733_ _start52734_ _end52735_ _out52738_)
              (get-output-u8vector _out52738_)))))
    (define substring->bytes__0
      (lambda (_str52743_ _start52744_ _end52745_)
        (let ((_enc52747_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str52743_
           _start52744_
           _end52745_
           _enc52747_))))
    (define substring->bytes
      (lambda _g54848_
        (let ((_g54847_ (let () (declare (not safe)) (##length _g54848_))))
          (cond ((let () (declare (not safe)) (##fx= _g54847_ 3))
                 (apply (lambda (_str52743_ _start52744_ _end52745_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str52743_
                             _start52744_
                             _end52745_)))
                        _g54848_))
                ((let () (declare (not safe)) (##fx= _g54847_ 4))
                 (apply (lambda (_str52749_ _start52750_ _end52751_ _enc52752_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str52749_
                             _start52750_
                             _end52751_
                             _enc52752_)))
                        _g54848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g54848_))))))
    (define string-empty?
      (lambda (_str52730_)
        (let ((__tmp54849 (string-length _str52730_)))
          (declare (not safe))
          (##fxzero? __tmp54849))))
    (define string-prefix?
      (lambda (_prefix52720_ _str52721_)
        (let ((_str-len52723_ (string-length _str52721_))
              (_prefix-len52724_ (string-length _prefix52720_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len52724_ _str-len52723_))
              (let _lp52726_ ((_i52728_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i52728_ _prefix-len52724_))
                    (if (let ((__tmp54851
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str52721_ _i52728_)))
                              (__tmp54850
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix52720_ _i52728_))))
                          (declare (not safe))
                          (eq? __tmp54851 __tmp54850))
                        (let ((__tmp54852
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i52728_ '1))))
                          (declare (not safe))
                          (_lp52726_ __tmp54852))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str52698_ _char52699_ _start52700_)
        (let ((_len52702_ (string-length _str52698_)))
          (let _lp52704_ ((_k52706_ _start52700_))
            (if (let () (declare (not safe)) (##fx< _k52706_ _len52702_))
                (if (let ((__tmp54853
                           (let ()
                             (declare (not safe))
                             (##string-ref _str52698_ _k52706_))))
                      (declare (not safe))
                      (eq? _char52699_ __tmp54853))
                    _k52706_
                    (let ((__tmp54854
                           (let () (declare (not safe)) (##fx+ _k52706_ '1))))
                      (declare (not safe))
                      (_lp52704_ __tmp54854)))
                '#f)))))
    (define string-index__0
      (lambda (_str52711_ _char52712_)
        (let ((_start52714_ '0))
          (declare (not safe))
          (string-index__% _str52711_ _char52712_ _start52714_))))
    (define string-index
      (lambda _g54856_
        (let ((_g54855_ (let () (declare (not safe)) (##length _g54856_))))
          (cond ((let () (declare (not safe)) (##fx= _g54855_ 2))
                 (apply (lambda (_str52711_ _char52712_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str52711_ _char52712_)))
                        _g54856_))
                ((let () (declare (not safe)) (##fx= _g54855_ 3))
                 (apply (lambda (_str52716_ _char52717_ _start52718_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str52716_
                             _char52717_
                             _start52718_)))
                        _g54856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g54856_))))))
    (define string-rindex__%
      (lambda (_str52669_ _char52670_ _start52671_)
        (let* ((_len52673_ (string-length _str52669_))
               (_start52678_
                (let ((_$e52675_ _start52671_))
                  (if _$e52675_
                      _$e52675_
                      (let () (declare (not safe)) (##fx- _len52673_ '1))))))
          (let _lp52681_ ((_k52683_ _start52678_))
            (if (let () (declare (not safe)) (##fx>= _k52683_ '0))
                (if (let ((__tmp54857
                           (let ()
                             (declare (not safe))
                             (##string-ref _str52669_ _k52683_))))
                      (declare (not safe))
                      (eq? _char52670_ __tmp54857))
                    _k52683_
                    (let ((__tmp54858
                           (let () (declare (not safe)) (##fx- _k52683_ '1))))
                      (declare (not safe))
                      (_lp52681_ __tmp54858)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str52688_ _char52689_)
        (let ((_start52691_ '#f))
          (declare (not safe))
          (string-rindex__% _str52688_ _char52689_ _start52691_))))
    (define string-rindex
      (lambda _g54860_
        (let ((_g54859_ (let () (declare (not safe)) (##length _g54860_))))
          (cond ((let () (declare (not safe)) (##fx= _g54859_ 2))
                 (apply (lambda (_str52688_ _char52689_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str52688_ _char52689_)))
                        _g54860_))
                ((let () (declare (not safe)) (##fx= _g54859_ 3))
                 (apply (lambda (_str52693_ _char52694_ _start52695_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str52693_
                             _char52694_
                             _start52695_)))
                        _g54860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g54860_))))))
    (define string-split
      (lambda (_str52653_ _char52654_)
        (let ((_len52656_ (string-length _str52653_)))
          (let _lp52658_ ((_start52660_ '0) (_r52661_ '()))
            (let ((_$e52663_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str52653_ _char52654_ _start52660_))))
              (if _$e52663_
                  ((lambda (_end52666_)
                     (let ((__tmp54863
                            (let ()
                              (declare (not safe))
                              (##fx+ _end52666_ '1)))
                           (__tmp54861
                            (let ((__tmp54862
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str52653_
                                      _start52660_
                                      _end52666_))))
                              (declare (not safe))
                              (cons __tmp54862 _r52661_))))
                       (declare (not safe))
                       (_lp52658_ __tmp54863 __tmp54861)))
                   _$e52663_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start52660_ _len52656_))
                      (let ((__tmp54864
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str52653_
                                      _start52660_
                                      _len52656_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp54864 _r52661_))
                      (reverse _r52661_))))))))
    (define string-join
      (lambda (_strs52558_ _join52559_)
        (letrec ((_join-length52561_
                  (lambda (_strs52612_ _jlen52613_)
                    (let _lp52615_ ((_rest52617_ _strs52612_) (_len52618_ '0))
                      (let* ((_rest5261952627_ _rest52617_)
                             (_else5262152635_ (lambda () '0))
                             (_K5262352641_
                              (lambda (_rest52638_ _hd52639_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd52639_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest52638_))
                                        (let ((__tmp54865
                                               (let ((__tmp54866
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd52639_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp54866
                                                        _jlen52613_
                                                        _len52618_))))
                                          (declare (not safe))
                                          (_lp52615_ _rest52638_ __tmp54865))
                                        (let ((__tmp54867
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd52639_))))
                                          (declare (not safe))
                                          (##fx+ __tmp54867 _len52618_)))
                                    (error '"expected string" _hd52639_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5261952627_))
                            (let ((_hd5262452644_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5261952627_)))
                                  (_tl5262552646_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5261952627_))))
                              (let* ((_hd52649_ _hd5262452644_)
                                     (_rest52651_ _tl5262552646_))
                                (declare (not safe))
                                (_K5262352641_ _rest52651_ _hd52649_)))
                            (let ()
                              (declare (not safe))
                              (_else5262152635_))))))))
          (let* ((_join52563_
                  (if (let () (declare (not safe)) (char? _join52559_))
                      (string _join52559_)
                      (if (let () (declare (not safe)) (string? _join52559_))
                          _join52559_
                          (error '"expected string or char" _join52559_))))
                 (_jlen52565_
                  (let () (declare (not safe)) (##string-length _join52563_)))
                 (_olen52567_
                  (let ()
                    (declare (not safe))
                    (_join-length52561_ _strs52558_ _jlen52565_)))
                 (_ostr52569_ (make-string _olen52567_)))
            (let _lp52572_ ((_rest52574_ _strs52558_) (_k52575_ '0))
              (let* ((_rest5257652584_ _rest52574_)
                     (_else5257852592_ (lambda () '""))
                     (_K5258052600_
                      (lambda (_rest52595_ _hd52596_)
                        (let ((_hdlen52598_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd52596_))))
                          (if (let () (declare (not safe)) (pair? _rest52595_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd52596_
                                   '0
                                   _hdlen52598_
                                   _ostr52569_
                                   _k52575_))
                                (let ((__tmp54868
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k52575_ _hdlen52598_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join52563_
                                   '0
                                   _jlen52565_
                                   _ostr52569_
                                   __tmp54868))
                                (let ((__tmp54869
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k52575_
                                                _hdlen52598_
                                                _jlen52565_))))
                                  (declare (not safe))
                                  (_lp52572_ _rest52595_ __tmp54869)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd52596_
                                   '0
                                   _hdlen52598_
                                   _ostr52569_
                                   _k52575_))
                                _ostr52569_))))))
                (if (let () (declare (not safe)) (##pair? _rest5257652584_))
                    (let ((_hd5258152603_
                           (let ()
                             (declare (not safe))
                             (##car _rest5257652584_)))
                          (_tl5258252605_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5257652584_))))
                      (let* ((_hd52608_ _hd5258152603_)
                             (_rest52610_ _tl5258252605_))
                        (declare (not safe))
                        (_K5258052600_ _rest52610_ _hd52608_)))
                    (let () (declare (not safe)) (_else5257852592_)))))))))
    (define read-u8vector
      (lambda (_bytes52555_ _port52556_)
        (read-subu8vector
         _bytes52555_
         '0
         (u8vector-length _bytes52555_)
         _port52556_)))
    (define write-u8vector
      (lambda (_bytes52552_ _port52553_)
        (write-subu8vector
         _bytes52552_
         '0
         (u8vector-length _bytes52552_)
         _port52553_)))
    (define read-string
      (lambda (_str52549_ _port52550_)
        (read-substring _str52549_ '0 (string-length _str52549_) _port52550_)))
    (define write-string
      (lambda (_str52546_ _port52547_)
        (write-substring
         _str52546_
         '0
         (string-length _str52546_)
         _port52547_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag52515_
               _dbg-exprs52516_
               _dbg-thunks52517_
               _expr52518_
               _thunk52519_)
        (letrec ((_o52521_ (current-output-port))
                 (_e52522_ (current-error-port))
                 (_p52523_ (DBG-printer))
                 (_f52524_
                  (lambda () (force-output _o52521_) (force-output _e52522_)))
                 (_d52525_ (lambda (_x52532_) (display _x52532_ _e52522_)))
                 (_w52526_ (lambda (_x52534_) (_p52523_ _x52534_ _e52522_)))
                 (_n52527_ (lambda () (newline _e52522_)))
                 (_v52528_
                  (lambda (_l52537_)
                    (for-each
                     (lambda (_x52539_)
                       (let () (declare (not safe)) (_d52525_ '" "))
                       (let () (declare (not safe)) (_w52526_ _x52539_)))
                     _l52537_)
                    (let () (declare (not safe)) (_n52527_))))
                 (_x52529_
                  (lambda (_expr52541_ _thunk52542_)
                    (let () (declare (not safe)) (_f52524_))
                    (let () (declare (not safe)) (_d52525_ '"  "))
                    (let () (declare (not safe)) (_w52526_ _expr52541_))
                    (let () (declare (not safe)) (_d52525_ '" =>"))
                    (call-with-values
                     _thunk52542_
                     (lambda _x52544_
                       (let () (declare (not safe)) (_v52528_ _x52544_))
                       (let () (declare (not safe)) (_f52524_))
                       (apply values _x52544_))))))
          (if _tag52515_
              (begin
                (if (let () (declare (not safe)) (eq? _tag52515_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f52524_))
                      (let () (declare (not safe)) (_d52525_ _tag52515_))
                      (let () (declare (not safe)) (_n52527_))))
                (for-each _x52529_ _dbg-exprs52516_ _dbg-thunks52517_)
                (if _thunk52519_
                    (let ()
                      (declare (not safe))
                      (_x52529_ _expr52518_ _thunk52519_))
                    '#!void))
              (if _thunk52519_ (_thunk52519_) '#!void)))))))
