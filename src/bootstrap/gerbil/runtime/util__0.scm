(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1709994212)
  (begin
    (define displayln
      (lambda _args56850_
        (let _lp56852_ ((_rest56854_ _args56850_))
          (let* ((_rest5685556863_ _rest56854_)
                 (_else5685756871_ (lambda () (newline)))
                 (_K5685956877_
                  (lambda (_rest56874_ _hd56875_)
                    (display _hd56875_)
                    (let () (declare (not safe)) (_lp56852_ _rest56874_)))))
            (if (let () (declare (not safe)) (##pair? _rest5685556863_))
                (let ((_hd5686056880_
                       (let () (declare (not safe)) (##car _rest5685556863_)))
                      (_tl5686156882_
                       (let () (declare (not safe)) (##cdr _rest5685556863_))))
                  (let* ((_hd56885_ _hd5686056880_)
                         (_rest56887_ _tl5686156882_))
                    (declare (not safe))
                    (_K5685956877_ _rest56887_ _hd56885_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args56848_ (for-each display _args56848_)))
    (define file-newer?
      (lambda (_file156841_ _file256842_)
        (letrec ((_modification-time56844_
                  (lambda (_file56846_)
                    (let ((__tmp57271
                           (file-info-last-modification-time
                            (file-info _file56846_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp57271)))))
          (let ((__tmp57273
                 (let ()
                   (declare (not safe))
                   (_modification-time56844_ _file156841_)))
                (__tmp57272
                 (let ()
                   (declare (not safe))
                   (_modification-time56844_ _file256842_))))
            (declare (not safe))
            (##fl> __tmp57273 __tmp57272)))))
    (define create-directory*__%
      (lambda (_dir56815_ _perms56816_)
        (letrec ((_create156818_
                  (lambda (_path56829_)
                    (if (file-exists? _path56829_)
                        (if (let ((__tmp57274 (file-type _path56829_)))
                              (declare (not safe))
                              (eq? __tmp57274 'directory))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"Path component is not a directory"
                                     _path56829_)))
                        (if _perms56816_
                            (create-directory
                             (list 'path:
                                   _path56829_
                                   'permissions:
                                   _perms56816_))
                            (create-directory _path56829_))))))
          (if (file-exists? _dir56815_)
              '#!void
              (let _lp56820_ ((_start56822_ '0))
                (let ((_$e56824_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir56815_ '#\/ _start56822_))))
                  (if _$e56824_
                      ((lambda (_x56827_)
                         (if (let () (declare (not safe)) (##fx> _x56827_ '0))
                             (let ((__tmp57275
                                    (substring _dir56815_ '0 _x56827_)))
                               (declare (not safe))
                               (_create156818_ __tmp57275))
                             '#!void)
                         (let ((__tmp57276
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x56827_ '1))))
                           (declare (not safe))
                           (_lp56820_ __tmp57276)))
                       _$e56824_)
                      (let ()
                        (declare (not safe))
                        (_create156818_ _dir56815_)))))))))
    (define create-directory*__0
      (lambda (_dir56834_)
        (let ((_perms56836_ '493))
          (declare (not safe))
          (create-directory*__% _dir56834_ _perms56836_))))
    (define create-directory*
      (lambda _g57278_
        (let ((_g57277_ (let () (declare (not safe)) (##length _g57278_))))
          (cond ((let () (declare (not safe)) (##fx= _g57277_ 1))
                 (apply (lambda (_dir56834_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir56834_)))
                        _g57278_))
                ((let () (declare (not safe)) (##fx= _g57277_ 2))
                 (apply (lambda (_dir56838_ _perms56839_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir56838_ _perms56839_)))
                        _g57278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g57278_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g57279_ '#t))
    (define true?
      (lambda (_obj56811_) (let () (declare (not safe)) (eq? _obj56811_ '#t))))
    (define false (lambda _g57280_ '#f))
    (define void (lambda _g57281_ '#!void))
    (define void?
      (lambda (_obj56807_)
        (let () (declare (not safe)) (eq? _obj56807_ '#!void))))
    (define eof-object (lambda _g57282_ '#!eof))
    (define identity (lambda (_obj56804_) _obj56804_))
    (define dssl-object?
      (lambda (_obj56802_)
        (if (memq _obj56802_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj56800_)
        (let () (declare (not safe)) (eq? _obj56800_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj56798_)
        (let () (declare (not safe)) (eq? _obj56798_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj56796_)
        (let () (declare (not safe)) (eq? _obj56796_ '#!optional))))
    (define immediate?
      (lambda (_obj56792_)
        (let* ((_t56794_ (let () (declare (not safe)) (##type _obj56792_)))
               (__tmp57283
                (let () (declare (not safe)) (##fxand _t56794_ '1))))
          (declare (not safe))
          (##fxzero? __tmp57283))))
    (define nonnegative-fixnum?
      (lambda (_obj56790_)
        (if (let () (declare (not safe)) (fixnum? _obj56790_))
            (let ((__tmp57284 (fxnegative? _obj56790_)))
              (declare (not safe))
              (not __tmp57284))
            '#f)))
    (define values-count
      (lambda (_obj56788_)
        (if (let () (declare (not safe)) (##values? _obj56788_))
            (let () (declare (not safe)) (##vector-length _obj56788_))
            '1)))
    (define values-ref
      (lambda (_obj56785_ _k56786_)
        (if (let () (declare (not safe)) (##values? _obj56785_))
            (let () (declare (not safe)) (##vector-ref _obj56785_ _k56786_))
            _obj56785_)))
    (define values->list
      (lambda (_obj56783_)
        (if (let () (declare (not safe)) (##values? _obj56783_))
            (let () (declare (not safe)) (##vector->list _obj56783_))
            (list _obj56783_))))
    (define subvector->list__%
      (lambda (_obj56768_ _start56769_)
        (let ((_lst56771_
               (let () (declare (not safe)) (##vector->list _obj56768_))))
          (list-tail _lst56771_ _start56769_))))
    (define subvector->list__0
      (lambda (_obj56776_)
        (let ((_start56778_ '0))
          (declare (not safe))
          (subvector->list__% _obj56776_ _start56778_))))
    (define subvector->list
      (lambda _g57286_
        (let ((_g57285_ (let () (declare (not safe)) (##length _g57286_))))
          (cond ((let () (declare (not safe)) (##fx= _g57285_ 1))
                 (apply (lambda (_obj56776_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj56776_)))
                        _g57286_))
                ((let () (declare (not safe)) (##fx= _g57285_ 2))
                 (apply (lambda (_obj56780_ _start56781_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj56780_ _start56781_)))
                        _g57286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g57286_))))))
    (define make-list__%
      (lambda (_k56749_ _val56750_)
        (if (let () (declare (not safe)) (fixnum? _k56749_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected argument 1 to be fixnum" _k56749_)))
        (let _lp56752_ ((_n56754_ '0) (_r56755_ '()))
          (if (let () (declare (not safe)) (##fx< _n56754_ _k56749_))
              (let ((__tmp57288
                     (let () (declare (not safe)) (##fx+ _n56754_ '1)))
                    (__tmp57287
                     (let () (declare (not safe)) (cons _val56750_ _r56755_))))
                (declare (not safe))
                (_lp56752_ __tmp57288 __tmp57287))
              _r56755_))))
    (define make-list__0
      (lambda (_k56760_)
        (let ((_val56762_ '#f))
          (declare (not safe))
          (make-list__% _k56760_ _val56762_))))
    (define make-list
      (lambda _g57290_
        (let ((_g57289_ (let () (declare (not safe)) (##length _g57290_))))
          (cond ((let () (declare (not safe)) (##fx= _g57289_ 1))
                 (apply (lambda (_k56760_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k56760_)))
                        _g57290_))
                ((let () (declare (not safe)) (##fx= _g57289_ 2))
                 (apply (lambda (_k56764_ _val56765_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k56764_ _val56765_)))
                        _g57290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g57290_))))))
    (define cons*
      (lambda (_x56739_ _y56740_ . _rest56741_)
        (letrec ((_recur56743_
                  (lambda (_x56745_ _rest56746_)
                    (if (let () (declare (not safe)) (pair? _rest56746_))
                        (let ((__tmp57291
                               (let ((__tmp57293
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest56746_)))
                                     (__tmp57292
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest56746_))))
                                 (declare (not safe))
                                 (_recur56743_ __tmp57293 __tmp57292))))
                          (declare (not safe))
                          (cons _x56745_ __tmp57291))
                        _x56745_))))
          (let ((__tmp57294
                 (let ()
                   (declare (not safe))
                   (_recur56743_ _y56740_ _rest56741_))))
            (declare (not safe))
            (cons _x56739_ __tmp57294)))))
    (define foldl1
      (lambda (_f56697_ _iv56698_ _lst56699_)
        (let _lp56701_ ((_rest56703_ _lst56699_) (_r56704_ _iv56698_))
          (let* ((_rest5670556713_ _rest56703_)
                 (_else5670756721_ (lambda () _r56704_))
                 (_K5670956727_
                  (lambda (_rest56724_ _x56725_)
                    (let ((__tmp57295 (_f56697_ _x56725_ _r56704_)))
                      (declare (not safe))
                      (_lp56701_ _rest56724_ __tmp57295)))))
            (if (let () (declare (not safe)) (##pair? _rest5670556713_))
                (let ((_hd5671056730_
                       (let () (declare (not safe)) (##car _rest5670556713_)))
                      (_tl5671156732_
                       (let () (declare (not safe)) (##cdr _rest5670556713_))))
                  (let* ((_x56735_ _hd5671056730_)
                         (_rest56737_ _tl5671156732_))
                    (declare (not safe))
                    (_K5670956727_ _rest56737_ _x56735_)))
                (let () (declare (not safe)) (_else5670756721_)))))))
    (define foldl2
      (lambda (_f56620_ _iv56621_ _lst156622_ _lst256623_)
        (let _lp56625_ ((_rest156627_ _lst156622_)
                        (_rest256628_ _lst256623_)
                        (_r56629_ _iv56621_))
          (let* ((_rest15663056638_ _rest156627_)
                 (_else5663256646_ (lambda () _r56629_))
                 (_K5663456685_
                  (lambda (_rest156649_ _x156650_)
                    (let* ((_rest25665156659_ _rest256628_)
                           (_else5665356667_ (lambda () _r56629_))
                           (_K5665556673_
                            (lambda (_rest256670_ _x256671_)
                              (let ((__tmp57296
                                     (_f56620_ _x156650_ _x256671_ _r56629_)))
                                (declare (not safe))
                                (_lp56625_
                                 _rest156649_
                                 _rest256670_
                                 __tmp57296)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25665156659_))
                          (let ((_hd5665656676_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25665156659_)))
                                (_tl5665756678_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25665156659_))))
                            (let* ((_x256681_ _hd5665656676_)
                                   (_rest256683_ _tl5665756678_))
                              (declare (not safe))
                              (_K5665556673_ _rest256683_ _x256681_)))
                          (let () (declare (not safe)) (_else5665356667_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15663056638_))
                (let ((_hd5663556688_
                       (let () (declare (not safe)) (##car _rest15663056638_)))
                      (_tl5663656690_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15663056638_))))
                  (let* ((_x156693_ _hd5663556688_)
                         (_rest156695_ _tl5663656690_))
                    (declare (not safe))
                    (_K5663456685_ _rest156695_ _x156693_)))
                (let () (declare (not safe)) (_else5663256646_)))))))
    (define foldl
      (lambda _g57298_
        (let ((_g57297_ (let () (declare (not safe)) (##length _g57298_))))
          (cond ((let () (declare (not safe)) (##fx= _g57297_ 3))
                 (apply (lambda (_f56605_ _iv56606_ _lst56607_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f56605_ _iv56606_ _lst56607_)))
                        _g57298_))
                ((let () (declare (not safe)) (##fx= _g57297_ 4))
                 (apply (lambda (_f56609_ _iv56610_ _lst156611_ _lst256612_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f56609_
                                    _iv56610_
                                    _lst156611_
                                    _lst256612_)))
                        _g57298_))
                ((let () (declare (not safe)) (##fx>= _g57297_ 4))
                 (apply foldl* _g57298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g57298_))))))
    (define foldl*
      (lambda (_f56593_ _iv56594_ . _rest56595_)
        (let _recur56597_ ((_iv56599_ _iv56594_) (_rest56600_ _rest56595_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56600_))
              (let ((__tmp57300
                     (apply _f56593_
                            (let ((__tmp57302
                                   (lambda (_xs56602_ _r56603_)
                                     (let ((__tmp57303 (car _xs56602_)))
                                       (declare (not safe))
                                       (cons __tmp57303 _r56603_))))
                                  (__tmp57301 (list _iv56599_)))
                              (declare (not safe))
                              (foldr1 __tmp57302 __tmp57301 _rest56600_))))
                    (__tmp57299 (map cdr _rest56600_)))
                (declare (not safe))
                (_recur56597_ __tmp57300 __tmp57299))
              _iv56599_))))
    (define foldr1
      (lambda (_f56552_ _iv56553_ _lst56554_)
        (let _recur56556_ ((_rest56558_ _lst56554_))
          (let* ((_rest5655956567_ _rest56558_)
                 (_else5656156575_ (lambda () _iv56553_))
                 (_K5656356581_
                  (lambda (_rest56578_ _x56579_)
                    (_f56552_
                     _x56579_
                     (let ()
                       (declare (not safe))
                       (_recur56556_ _rest56578_))))))
            (if (let () (declare (not safe)) (##pair? _rest5655956567_))
                (let ((_hd5656456584_
                       (let () (declare (not safe)) (##car _rest5655956567_)))
                      (_tl5656556586_
                       (let () (declare (not safe)) (##cdr _rest5655956567_))))
                  (let* ((_x56589_ _hd5656456584_)
                         (_rest56591_ _tl5656556586_))
                    (declare (not safe))
                    (_K5656356581_ _rest56591_ _x56589_)))
                (let () (declare (not safe)) (_else5656156575_)))))))
    (define foldr2
      (lambda (_f56476_ _iv56477_ _lst156478_ _lst256479_)
        (let _recur56481_ ((_rest156483_ _lst156478_)
                           (_rest256484_ _lst256479_))
          (let* ((_rest15648556493_ _rest156483_)
                 (_else5648756501_ (lambda () _iv56477_))
                 (_K5648956540_
                  (lambda (_rest156504_ _x156505_)
                    (let* ((_rest25650656514_ _rest256484_)
                           (_else5650856522_ (lambda () _iv56477_))
                           (_K5651056528_
                            (lambda (_rest256525_ _x256526_)
                              (_f56476_
                               _x156505_
                               _x256526_
                               (let ()
                                 (declare (not safe))
                                 (_recur56481_ _rest156504_ _rest256525_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25650656514_))
                          (let ((_hd5651156531_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25650656514_)))
                                (_tl5651256533_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25650656514_))))
                            (let* ((_x256536_ _hd5651156531_)
                                   (_rest256538_ _tl5651256533_))
                              (declare (not safe))
                              (_K5651056528_ _rest256538_ _x256536_)))
                          (let () (declare (not safe)) (_else5650856522_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15648556493_))
                (let ((_hd5649056543_
                       (let () (declare (not safe)) (##car _rest15648556493_)))
                      (_tl5649156545_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15648556493_))))
                  (let* ((_x156548_ _hd5649056543_)
                         (_rest156550_ _tl5649156545_))
                    (declare (not safe))
                    (_K5648956540_ _rest156550_ _x156548_)))
                (let () (declare (not safe)) (_else5648756501_)))))))
    (define foldr
      (lambda _g57305_
        (let ((_g57304_ (let () (declare (not safe)) (##length _g57305_))))
          (cond ((let () (declare (not safe)) (##fx= _g57304_ 3))
                 (apply (lambda (_f56461_ _iv56462_ _lst56463_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f56461_ _iv56462_ _lst56463_)))
                        _g57305_))
                ((let () (declare (not safe)) (##fx= _g57304_ 4))
                 (apply (lambda (_f56465_ _iv56466_ _lst156467_ _lst256468_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f56465_
                                    _iv56466_
                                    _lst156467_
                                    _lst256468_)))
                        _g57305_))
                ((let () (declare (not safe)) (##fx>= _g57304_ 4))
                 (apply foldr* _g57305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g57305_))))))
    (define foldr*
      (lambda (_f56450_ _iv56451_ . _rest56452_)
        (let _recur56454_ ((_rest56456_ _rest56452_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56456_))
              (apply _f56450_
                     (let ((__tmp57308
                            (lambda (_xs56458_ _r56459_)
                              (let ((__tmp57309 (car _xs56458_)))
                                (declare (not safe))
                                (cons __tmp57309 _r56459_))))
                           (__tmp57306
                            (list (let ((__tmp57307 (map cdr _rest56456_)))
                                    (declare (not safe))
                                    (_recur56454_ __tmp57307)))))
                       (declare (not safe))
                       (foldr1 __tmp57308 __tmp57306 _rest56456_)))
              _iv56451_))))
    (define drop
      (lambda (_l56447_ _k56448_)
        (if (let () (declare (not safe)) (##fxpositive? _k56448_))
            (let ((__tmp57311 (let () (declare (not safe)) (##cdr _l56447_)))
                  (__tmp57310
                   (let () (declare (not safe)) (##fx- _k56448_ '1))))
              (declare (not safe))
              (drop __tmp57311 __tmp57310))
            _l56447_)))
    (define remove-nulls!
      (lambda (_l56334_)
        (let* ((_l5633556348_ _l56334_)
               (_E5633956352_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _l5633556348_)))))
          (let ((_K5634456437_
                 (lambda (_r56435_)
                   (let () (declare (not safe)) (remove-nulls! _r56435_))))
                (_K5634156424_
                 (lambda (_r56364_)
                   (let _loop56366_ ((_l56368_ _l56334_) (_r56369_ _r56364_))
                     (let* ((_r5637056383_ _r56369_)
                            (_E5637456387_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _r5637056383_)))))
                       (let ((_K5637956414_
                              (lambda (_rr56412_)
                                (set-cdr!
                                 _l56368_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr56412_)))))
                             (_K5637656401_
                              (lambda (_rr56399_)
                                (let ()
                                  (declare (not safe))
                                  (_loop56366_ _r56369_ _rr56399_))))
                             (_K5637556392_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5637056383_))
                             (let ((_tl5638156419_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5637056383_)))
                                   (_hd5638056417_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5637056383_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5638056417_))
                                   (let ((_rr56422_ _tl5638156419_))
                                     (declare (not safe))
                                     (_K5637956414_ _rr56422_))
                                   (let ((_rr56407_ _tl5638156419_))
                                     (declare (not safe))
                                     (_K5637656401_ _rr56407_))))
                             '#!void))))
                   _l56334_))
                (_K5634056357_ (lambda () _l56334_)))
            (if (let () (declare (not safe)) (##pair? _l5633556348_))
                (let ((_tl5634656442_
                       (let () (declare (not safe)) (##cdr _l5633556348_)))
                      (_hd5634556440_
                       (let () (declare (not safe)) (##car _l5633556348_))))
                  (if (let () (declare (not safe)) (##null? _hd5634556440_))
                      (let ((_r56445_ _tl5634656442_))
                        (declare (not safe))
                        (remove-nulls! _r56445_))
                      (let ((_r56430_ _tl5634656442_))
                        (declare (not safe))
                        (_K5634156424_ _r56430_))))
                (let () (declare (not safe)) (_K5634056357_)))))))
    (define append1!
      (lambda (_l56329_ _x56330_)
        (let ((_l256332_ (let () (declare (not safe)) (cons _x56330_ '()))))
          (if (let () (declare (not safe)) (pair? _l56329_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l56329_))
               _l256332_)
              _l256332_))))
    (define append-reverse
      (lambda (_rev-head56326_ _tail56327_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail56327_ _rev-head56326_))))
    (define append-reverse-until
      (lambda (_pred56279_ _rhead56280_ _tail56281_)
        (let _loop56283_ ((_rhead56285_ _rhead56280_)
                          (_tail56286_ _tail56281_))
          (let* ((_rhead5628756296_ _rhead56285_)
                 (_E5629056300_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rhead5628756296_)))))
            (let ((_K5629456323_ (lambda () (values '() _tail56286_)))
                  (_K5629156307_
                   (lambda (_r56304_ _a56305_)
                     (if (_pred56279_ _a56305_)
                         (values _rhead56285_ _tail56286_)
                         (let ((__tmp57312
                                (let ()
                                  (declare (not safe))
                                  (cons _a56305_ _tail56286_))))
                           (declare (not safe))
                           (_loop56283_ _r56304_ __tmp57312))))))
              (let ((_try-match5628956319_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5628756296_))
                           (let ((_tl5629356312_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5628756296_)))
                                 (_hd5629256310_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5628756296_))))
                             (let ((_a56315_ _hd5629256310_)
                                   (_r56317_ _tl5629356312_))
                               (let ()
                                 (declare (not safe))
                                 (_K5629156307_ _r56317_ _a56315_))))
                           (let () (declare (not safe)) (_E5629056300_))))))
                (if (let () (declare (not safe)) (##null? _rhead5628756296_))
                    (let () (declare (not safe)) (_K5629456323_))
                    (let ()
                      (declare (not safe))
                      (_try-match5628956319_)))))))))
    (define andmap1
      (lambda (_f56239_ _lst56240_)
        (let _lp56242_ ((_rest56244_ _lst56240_))
          (let* ((_rest5624556253_ _rest56244_)
                 (_else5624756261_ (lambda () '#t))
                 (_K5624956267_
                  (lambda (_rest56264_ _x56265_)
                    (if (_f56239_ _x56265_)
                        (let () (declare (not safe)) (_lp56242_ _rest56264_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5624556253_))
                (let ((_hd5625056270_
                       (let () (declare (not safe)) (##car _rest5624556253_)))
                      (_tl5625156272_
                       (let () (declare (not safe)) (##cdr _rest5624556253_))))
                  (let* ((_x56275_ _hd5625056270_)
                         (_rest56277_ _tl5625156272_))
                    (declare (not safe))
                    (_K5624956267_ _rest56277_ _x56275_)))
                (let () (declare (not safe)) (_else5624756261_)))))))
    (define andmap2
      (lambda (_f56164_ _lst156165_ _lst256166_)
        (let _lp56168_ ((_rest156170_ _lst156165_) (_rest256171_ _lst256166_))
          (let* ((_rest15617256180_ _rest156170_)
                 (_else5617456188_ (lambda () '#t))
                 (_K5617656227_
                  (lambda (_rest156191_ _x156192_)
                    (let* ((_rest25619356201_ _rest256171_)
                           (_else5619556209_ (lambda () '#t))
                           (_K5619756215_
                            (lambda (_rest256212_ _x256213_)
                              (if (_f56164_ _x156192_ _x256213_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp56168_ _rest156191_ _rest256212_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25619356201_))
                          (let ((_hd5619856218_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25619356201_)))
                                (_tl5619956220_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25619356201_))))
                            (let* ((_x256223_ _hd5619856218_)
                                   (_rest256225_ _tl5619956220_))
                              (declare (not safe))
                              (_K5619756215_ _rest256225_ _x256223_)))
                          (let () (declare (not safe)) (_else5619556209_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15617256180_))
                (let ((_hd5617756230_
                       (let () (declare (not safe)) (##car _rest15617256180_)))
                      (_tl5617856232_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15617256180_))))
                  (let* ((_x156235_ _hd5617756230_)
                         (_rest156237_ _tl5617856232_))
                    (declare (not safe))
                    (_K5617656227_ _rest156237_ _x156235_)))
                (let () (declare (not safe)) (_else5617456188_)))))))
    (define andmap
      (lambda _g57314_
        (let ((_g57313_ (let () (declare (not safe)) (##length _g57314_))))
          (cond ((let () (declare (not safe)) (##fx= _g57313_ 2))
                 (apply (lambda (_f56152_ _lst56153_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f56152_ _lst56153_)))
                        _g57314_))
                ((let () (declare (not safe)) (##fx= _g57313_ 3))
                 (apply (lambda (_f56155_ _lst156156_ _lst256157_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f56155_ _lst156156_ _lst256157_)))
                        _g57314_))
                ((let () (declare (not safe)) (##fx>= _g57313_ 3))
                 (apply andmap* _g57314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g57314_))))))
    (define andmap*
      (lambda (_f56145_ . _rest56146_)
        (let _recur56148_ ((_rest56150_ _rest56146_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56150_))
              (if (apply _f56145_ (map car _rest56150_))
                  (let ((__tmp57315 (map cdr _rest56150_)))
                    (declare (not safe))
                    (_recur56148_ __tmp57315))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f56102_ _lst56103_)
        (let _lp56105_ ((_rest56107_ _lst56103_))
          (let* ((_rest5610856116_ _rest56107_)
                 (_else5611056124_ (lambda () '#f))
                 (_K5611256133_
                  (lambda (_rest56127_ _x56128_)
                    (let ((_$e56130_ (_f56102_ _x56128_)))
                      (if _$e56130_
                          _$e56130_
                          (let ()
                            (declare (not safe))
                            (_lp56105_ _rest56127_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5610856116_))
                (let ((_hd5611356136_
                       (let () (declare (not safe)) (##car _rest5610856116_)))
                      (_tl5611456138_
                       (let () (declare (not safe)) (##cdr _rest5610856116_))))
                  (let* ((_x56141_ _hd5611356136_)
                         (_rest56143_ _tl5611456138_))
                    (declare (not safe))
                    (_K5611256133_ _rest56143_ _x56141_)))
                (let () (declare (not safe)) (_else5611056124_)))))))
    (define ormap2
      (lambda (_f56024_ _lst156025_ _lst256026_)
        (let _lp56028_ ((_rest156030_ _lst156025_) (_rest256031_ _lst256026_))
          (let* ((_rest15603256040_ _rest156030_)
                 (_else5603456048_ (lambda () '#f))
                 (_K5603656090_
                  (lambda (_rest156051_ _x156052_)
                    (let* ((_rest25605356061_ _rest256031_)
                           (_else5605556069_ (lambda () '#f))
                           (_K5605756078_
                            (lambda (_rest256072_ _x256073_)
                              (let ((_$e56075_ (_f56024_ _x156052_ _x256073_)))
                                (if _$e56075_
                                    _$e56075_
                                    (let ()
                                      (declare (not safe))
                                      (_lp56028_
                                       _rest156051_
                                       _rest256072_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25605356061_))
                          (let ((_hd5605856081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25605356061_)))
                                (_tl5605956083_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25605356061_))))
                            (let* ((_x256086_ _hd5605856081_)
                                   (_rest256088_ _tl5605956083_))
                              (declare (not safe))
                              (_K5605756078_ _rest256088_ _x256086_)))
                          (let () (declare (not safe)) (_else5605556069_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15603256040_))
                (let ((_hd5603756093_
                       (let () (declare (not safe)) (##car _rest15603256040_)))
                      (_tl5603856095_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15603256040_))))
                  (let* ((_x156098_ _hd5603756093_)
                         (_rest156100_ _tl5603856095_))
                    (declare (not safe))
                    (_K5603656090_ _rest156100_ _x156098_)))
                (let () (declare (not safe)) (_else5603456048_)))))))
    (define ormap
      (lambda _g57317_
        (let ((_g57316_ (let () (declare (not safe)) (##length _g57317_))))
          (cond ((let () (declare (not safe)) (##fx= _g57316_ 2))
                 (apply (lambda (_f56012_ _lst56013_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f56012_ _lst56013_)))
                        _g57317_))
                ((let () (declare (not safe)) (##fx= _g57316_ 3))
                 (apply (lambda (_f56015_ _lst156016_ _lst256017_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f56015_ _lst156016_ _lst256017_)))
                        _g57317_))
                ((let () (declare (not safe)) (##fx>= _g57316_ 3))
                 (apply ormap* _g57317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g57317_))))))
    (define ormap*
      (lambda (_f56002_ . _rest56003_)
        (let _recur56005_ ((_rest56007_ _rest56003_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56007_))
              (let ((_$e56009_ (apply _f56002_ (map car _rest56007_))))
                (if _$e56009_
                    _$e56009_
                    (let ((__tmp57318 (map cdr _rest56007_)))
                      (declare (not safe))
                      (_recur56005_ __tmp57318))))
              '#f))))
    (define filter
      (lambda (_f55960_ _lst55961_)
        (let _recur55963_ ((_lst55965_ _lst55961_))
          (let* ((_lst5596655974_ _lst55965_)
                 (_else5596855982_ (lambda () '()))
                 (_K5597055990_
                  (lambda (_rest55985_ _hd55986_)
                    (if (_f55960_ _hd55986_)
                        (let ((_tail55988_
                               (let ()
                                 (declare (not safe))
                                 (_recur55963_ _rest55985_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail55988_ _rest55985_))
                              _lst55965_
                              (let ()
                                (declare (not safe))
                                (cons _hd55986_ _tail55988_))))
                        (let ()
                          (declare (not safe))
                          (_recur55963_ _rest55985_))))))
            (if (let () (declare (not safe)) (##pair? _lst5596655974_))
                (let ((_hd5597155993_
                       (let () (declare (not safe)) (##car _lst5596655974_)))
                      (_tl5597255995_
                       (let () (declare (not safe)) (##cdr _lst5596655974_))))
                  (let* ((_hd55998_ _hd5597155993_)
                         (_rest56000_ _tl5597255995_))
                    (declare (not safe))
                    (_K5597055990_ _rest56000_ _hd55998_)))
                (let () (declare (not safe)) (_else5596855982_)))))))
    (define filter-map1
      (lambda (_f55915_ _lst55916_)
        (let _recur55918_ ((_rest55920_ _lst55916_))
          (let* ((_rest5592155929_ _rest55920_)
                 (_else5592355937_ (lambda () '()))
                 (_K5592555948_
                  (lambda (_rest55940_ _x55941_)
                    (let ((_$e55943_ (_f55915_ _x55941_)))
                      (if _$e55943_
                          ((lambda (_r55946_)
                             (let ((__tmp57319
                                    (let ()
                                      (declare (not safe))
                                      (_recur55918_ _rest55940_))))
                               (declare (not safe))
                               (cons _r55946_ __tmp57319)))
                           _$e55943_)
                          (let ()
                            (declare (not safe))
                            (_recur55918_ _rest55940_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5592155929_))
                (let ((_hd5592655951_
                       (let () (declare (not safe)) (##car _rest5592155929_)))
                      (_tl5592755953_
                       (let () (declare (not safe)) (##cdr _rest5592155929_))))
                  (let* ((_x55956_ _hd5592655951_)
                         (_rest55958_ _tl5592755953_))
                    (declare (not safe))
                    (_K5592555948_ _rest55958_ _x55956_)))
                (let () (declare (not safe)) (_else5592355937_)))))))
    (define filter-map2
      (lambda (_f55835_ _lst155836_ _lst255837_)
        (let _recur55839_ ((_rest155841_ _lst155836_)
                           (_rest255842_ _lst255837_))
          (let* ((_rest15584355851_ _rest155841_)
                 (_else5584555859_ (lambda () '()))
                 (_K5584755903_
                  (lambda (_rest155862_ _x155863_)
                    (let* ((_rest25586455872_ _rest255842_)
                           (_else5586655880_ (lambda () '()))
                           (_K5586855891_
                            (lambda (_rest255883_ _x255884_)
                              (let ((_$e55886_ (_f55835_ _x155863_ _x255884_)))
                                (if _$e55886_
                                    ((lambda (_r55889_)
                                       (let ((__tmp57320
                                              (let ()
                                                (declare (not safe))
                                                (_recur55839_
                                                 _rest155862_
                                                 _rest255883_))))
                                         (declare (not safe))
                                         (cons _r55889_ __tmp57320)))
                                     _$e55886_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur55839_
                                       _rest155862_
                                       _rest255883_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25586455872_))
                          (let ((_hd5586955894_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25586455872_)))
                                (_tl5587055896_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25586455872_))))
                            (let* ((_x255899_ _hd5586955894_)
                                   (_rest255901_ _tl5587055896_))
                              (declare (not safe))
                              (_K5586855891_ _rest255901_ _x255899_)))
                          (let () (declare (not safe)) (_else5586655880_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15584355851_))
                (let ((_hd5584855906_
                       (let () (declare (not safe)) (##car _rest15584355851_)))
                      (_tl5584955908_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15584355851_))))
                  (let* ((_x155911_ _hd5584855906_)
                         (_rest155913_ _tl5584955908_))
                    (declare (not safe))
                    (_K5584755903_ _rest155913_ _x155911_)))
                (let () (declare (not safe)) (_else5584555859_)))))))
    (define filter-map
      (lambda _g57322_
        (let ((_g57321_ (let () (declare (not safe)) (##length _g57322_))))
          (cond ((let () (declare (not safe)) (##fx= _g57321_ 2))
                 (apply (lambda (_f55823_ _lst55824_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f55823_ _lst55824_)))
                        _g57322_))
                ((let () (declare (not safe)) (##fx= _g57321_ 3))
                 (apply (lambda (_f55826_ _lst155827_ _lst255828_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f55826_ _lst155827_ _lst255828_)))
                        _g57322_))
                ((let () (declare (not safe)) (##fx>= _g57321_ 3))
                 (apply filter-map* _g57322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g57322_))))))
    (define filter-map*
      (lambda (_f55811_ . _rest55812_)
        (let _recur55814_ ((_rest55816_ _rest55812_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55816_))
              (let ((_$e55818_ (apply _f55811_ (map car _rest55816_))))
                (if _$e55818_
                    ((lambda (_r55821_)
                       (let ((__tmp57324
                              (let ((__tmp57325 (map cdr _rest55816_)))
                                (declare (not safe))
                                (_recur55814_ __tmp57325))))
                         (declare (not safe))
                         (cons _r55821_ __tmp57324)))
                     _$e55818_)
                    (let ((__tmp57323 (map cdr _rest55816_)))
                      (declare (not safe))
                      (_recur55814_ __tmp57323))))
              '()))))
    (define iota__%
      (lambda (_count55779_ _start55780_ _step55781_)
        (if (let () (declare (not safe)) (fixnum? _count55779_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected fixnum" _count55779_)))
        (if (let () (declare (not safe)) (number? _start55780_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected number" _start55780_)))
        (if (let () (declare (not safe)) (number? _step55781_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected number" _step55781_)))
        (let ((_root55783_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp55785_ ((_i55787_ '0)
                          (_x55788_ _start55780_)
                          (_tl55789_ _root55783_))
            (if (let () (declare (not safe)) (##fx< _i55787_ _count55779_))
                (let ((_tl*55791_
                       (let () (declare (not safe)) (cons _x55788_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl55789_ _tl*55791_))
                  (let ((__tmp57327
                         (let () (declare (not safe)) (##fx+ _i55787_ '1)))
                        (__tmp57326 (+ _x55788_ _step55781_)))
                    (declare (not safe))
                    (_lp55785_ __tmp57327 __tmp57326 _tl*55791_)))
                (let () (declare (not safe)) (##cdr _root55783_)))))))
    (define iota__0
      (lambda (_count55796_)
        (let* ((_start55798_ '0) (_step55800_ '1))
          (declare (not safe))
          (iota__% _count55796_ _start55798_ _step55800_))))
    (define iota__1
      (lambda (_count55802_ _start55803_)
        (let ((_step55805_ '1))
          (declare (not safe))
          (iota__% _count55802_ _start55803_ _step55805_))))
    (define iota
      (lambda _g57329_
        (let ((_g57328_ (let () (declare (not safe)) (##length _g57329_))))
          (cond ((let () (declare (not safe)) (##fx= _g57328_ 1))
                 (apply (lambda (_count55796_)
                          (let () (declare (not safe)) (iota__0 _count55796_)))
                        _g57329_))
                ((let () (declare (not safe)) (##fx= _g57328_ 2))
                 (apply (lambda (_count55802_ _start55803_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count55802_ _start55803_)))
                        _g57329_))
                ((let () (declare (not safe)) (##fx= _g57328_ 3))
                 (apply (lambda (_count55807_ _start55808_ _step55809_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count55807_ _start55808_ _step55809_)))
                        _g57329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g57329_))))))
    (define last-pair
      (lambda (_lst55753_)
        (let* ((_lst5575455761_ _lst55753_)
               (_E5575655765_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _lst5575455761_))))
               (_K5575755770_
                (lambda (_rest55768_)
                  (if (let () (declare (not safe)) (pair? _rest55768_))
                      (let () (declare (not safe)) (last-pair _rest55768_))
                      _lst55753_))))
          (if (let () (declare (not safe)) (##pair? _lst5575455761_))
              (let* ((_tl5575955773_
                      (let () (declare (not safe)) (##cdr _lst5575455761_)))
                     (_rest55776_ _tl5575955773_))
                (declare (not safe))
                (_K5575755770_ _rest55776_))
              (let () (declare (not safe)) (_E5575655765_))))))
    (define last
      (lambda (_lst55751_)
        (car (let () (declare (not safe)) (last-pair _lst55751_)))))
    (define assgetq__%
      (lambda (_key55729_ _lst55731_ _default55733_)
        (let ((_$e55736_
               (if (let () (declare (not safe)) (pair? _lst55731_))
                   (assq _key55729_ _lst55731_)
                   '#f)))
          (if _$e55736_
              (cdr _$e55736_)
              (if (let () (declare (not safe)) (procedure? _default55733_))
                  (_default55733_ _key55729_)
                  _default55733_)))))
    (define assgetq__0
      (lambda (_key55742_ _lst55743_)
        (let ((_default55745_ '#f))
          (declare (not safe))
          (assgetq__% _key55742_ _lst55743_ _default55745_))))
    (define assgetq
      (lambda _g57331_
        (let ((_g57330_ (let () (declare (not safe)) (##length _g57331_))))
          (cond ((let () (declare (not safe)) (##fx= _g57330_ 2))
                 (apply (lambda (_key55742_ _lst55743_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key55742_ _lst55743_)))
                        _g57331_))
                ((let () (declare (not safe)) (##fx= _g57330_ 3))
                 (apply (lambda (_key55747_ _lst55748_ _default55749_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key55747_ _lst55748_ _default55749_)))
                        _g57331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g57331_))))))
    (define assgetv__%
      (lambda (_key55706_ _lst55708_ _default55710_)
        (let ((_$e55713_
               (if (let () (declare (not safe)) (pair? _lst55708_))
                   (assv _key55706_ _lst55708_)
                   '#f)))
          (if _$e55713_
              (cdr _$e55713_)
              (if (let () (declare (not safe)) (procedure? _default55710_))
                  (_default55710_ _key55706_)
                  _default55710_)))))
    (define assgetv__0
      (lambda (_key55719_ _lst55720_)
        (let ((_default55722_ '#f))
          (declare (not safe))
          (assgetv__% _key55719_ _lst55720_ _default55722_))))
    (define assgetv
      (lambda _g57333_
        (let ((_g57332_ (let () (declare (not safe)) (##length _g57333_))))
          (cond ((let () (declare (not safe)) (##fx= _g57332_ 2))
                 (apply (lambda (_key55719_ _lst55720_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key55719_ _lst55720_)))
                        _g57333_))
                ((let () (declare (not safe)) (##fx= _g57332_ 3))
                 (apply (lambda (_key55724_ _lst55725_ _default55726_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key55724_ _lst55725_ _default55726_)))
                        _g57333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g57333_))))))
    (define assget__%
      (lambda (_key55683_ _lst55685_ _default55687_)
        (let ((_$e55690_
               (if (let () (declare (not safe)) (pair? _lst55685_))
                   (assoc _key55683_ _lst55685_)
                   '#f)))
          (if _$e55690_
              (cdr _$e55690_)
              (if (let () (declare (not safe)) (procedure? _default55687_))
                  (_default55687_ _key55683_)
                  _default55687_)))))
    (define assget__0
      (lambda (_key55696_ _lst55697_)
        (let ((_default55699_ '#f))
          (declare (not safe))
          (assget__% _key55696_ _lst55697_ _default55699_))))
    (define assget
      (lambda _g57335_
        (let ((_g57334_ (let () (declare (not safe)) (##length _g57335_))))
          (cond ((let () (declare (not safe)) (##fx= _g57334_ 2))
                 (apply (lambda (_key55696_ _lst55697_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key55696_ _lst55697_)))
                        _g57335_))
                ((let () (declare (not safe)) (##fx= _g57334_ 3))
                 (apply (lambda (_key55701_ _lst55702_ _default55703_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key55701_ _lst55702_ _default55703_)))
                        _g57335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g57335_))))))
    (define pgetq__%
      (lambda (_key55612_ _lst55614_ _default55616_)
        (let _lp55619_ ((_rest55622_ _lst55614_))
          (let* ((_rest5562455634_ _rest55622_)
                 (_else5562655642_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55616_))
                        (_default55616_ _key55612_)
                        _default55616_)))
                 (_K5562855651_
                  (lambda (_rest55645_ _v55646_ _k55648_)
                    (if (let () (declare (not safe)) (eq? _k55648_ _key55612_))
                        _v55646_
                        (let ()
                          (declare (not safe))
                          (_lp55619_ _rest55645_))))))
            (if (let () (declare (not safe)) (##pair? _rest5562455634_))
                (let ((_hd5562955654_
                       (let () (declare (not safe)) (##car _rest5562455634_)))
                      (_tl5563055656_
                       (let () (declare (not safe)) (##cdr _rest5562455634_))))
                  (let ((_k55659_ _hd5562955654_))
                    (if (let () (declare (not safe)) (##pair? _tl5563055656_))
                        (let ((_hd5563155661_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5563055656_)))
                              (_tl5563255663_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5563055656_))))
                          (let* ((_v55666_ _hd5563155661_)
                                 (_rest55668_ _tl5563255663_))
                            (declare (not safe))
                            (_K5562855651_ _rest55668_ _v55666_ _k55659_)))
                        (let () (declare (not safe)) (_else5562655642_)))))
                (let () (declare (not safe)) (_else5562655642_)))))))
    (define pgetq__0
      (lambda (_key55673_ _lst55674_)
        (let ((_default55676_ '#f))
          (declare (not safe))
          (pgetq__% _key55673_ _lst55674_ _default55676_))))
    (define pgetq
      (lambda _g57337_
        (let ((_g57336_ (let () (declare (not safe)) (##length _g57337_))))
          (cond ((let () (declare (not safe)) (##fx= _g57336_ 2))
                 (apply (lambda (_key55673_ _lst55674_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key55673_ _lst55674_)))
                        _g57337_))
                ((let () (declare (not safe)) (##fx= _g57336_ 3))
                 (apply (lambda (_key55678_ _lst55679_ _default55680_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key55678_ _lst55679_ _default55680_)))
                        _g57337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g57337_))))))
    (define pgetv__%
      (lambda (_key55541_ _lst55543_ _default55545_)
        (let _lp55548_ ((_rest55551_ _lst55543_))
          (let* ((_rest5555355563_ _rest55551_)
                 (_else5555555571_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55545_))
                        (_default55545_ _key55541_)
                        _default55545_)))
                 (_K5555755580_
                  (lambda (_rest55574_ _v55575_ _k55577_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k55577_ _key55541_))
                        _v55575_
                        (let ()
                          (declare (not safe))
                          (_lp55548_ _rest55574_))))))
            (if (let () (declare (not safe)) (##pair? _rest5555355563_))
                (let ((_hd5555855583_
                       (let () (declare (not safe)) (##car _rest5555355563_)))
                      (_tl5555955585_
                       (let () (declare (not safe)) (##cdr _rest5555355563_))))
                  (let ((_k55588_ _hd5555855583_))
                    (if (let () (declare (not safe)) (##pair? _tl5555955585_))
                        (let ((_hd5556055590_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5555955585_)))
                              (_tl5556155592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5555955585_))))
                          (let* ((_v55595_ _hd5556055590_)
                                 (_rest55597_ _tl5556155592_))
                            (declare (not safe))
                            (_K5555755580_ _rest55597_ _v55595_ _k55588_)))
                        (let () (declare (not safe)) (_else5555555571_)))))
                (let () (declare (not safe)) (_else5555555571_)))))))
    (define pgetv__0
      (lambda (_key55602_ _lst55603_)
        (let ((_default55605_ '#f))
          (declare (not safe))
          (pgetv__% _key55602_ _lst55603_ _default55605_))))
    (define pgetv
      (lambda _g57339_
        (let ((_g57338_ (let () (declare (not safe)) (##length _g57339_))))
          (cond ((let () (declare (not safe)) (##fx= _g57338_ 2))
                 (apply (lambda (_key55602_ _lst55603_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key55602_ _lst55603_)))
                        _g57339_))
                ((let () (declare (not safe)) (##fx= _g57338_ 3))
                 (apply (lambda (_key55607_ _lst55608_ _default55609_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key55607_ _lst55608_ _default55609_)))
                        _g57339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g57339_))))))
    (define pget__%
      (lambda (_key55470_ _lst55472_ _default55474_)
        (let _lp55477_ ((_rest55480_ _lst55472_))
          (let* ((_rest5548255492_ _rest55480_)
                 (_else5548455500_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55474_))
                        (_default55474_ _key55470_)
                        _default55474_)))
                 (_K5548655509_
                  (lambda (_rest55503_ _v55504_ _k55506_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k55506_ _key55470_))
                        _v55504_
                        (let ()
                          (declare (not safe))
                          (_lp55477_ _rest55503_))))))
            (if (let () (declare (not safe)) (##pair? _rest5548255492_))
                (let ((_hd5548755512_
                       (let () (declare (not safe)) (##car _rest5548255492_)))
                      (_tl5548855514_
                       (let () (declare (not safe)) (##cdr _rest5548255492_))))
                  (let ((_k55517_ _hd5548755512_))
                    (if (let () (declare (not safe)) (##pair? _tl5548855514_))
                        (let ((_hd5548955519_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5548855514_)))
                              (_tl5549055521_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5548855514_))))
                          (let* ((_v55524_ _hd5548955519_)
                                 (_rest55526_ _tl5549055521_))
                            (declare (not safe))
                            (_K5548655509_ _rest55526_ _v55524_ _k55517_)))
                        (let () (declare (not safe)) (_else5548455500_)))))
                (let () (declare (not safe)) (_else5548455500_)))))))
    (define pget__0
      (lambda (_key55531_ _lst55532_)
        (let ((_default55534_ '#f))
          (declare (not safe))
          (pget__% _key55531_ _lst55532_ _default55534_))))
    (define pget
      (lambda _g57341_
        (let ((_g57340_ (let () (declare (not safe)) (##length _g57341_))))
          (cond ((let () (declare (not safe)) (##fx= _g57340_ 2))
                 (apply (lambda (_key55531_ _lst55532_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key55531_ _lst55532_)))
                        _g57341_))
                ((let () (declare (not safe)) (##fx= _g57340_ 3))
                 (apply (lambda (_key55536_ _lst55537_ _default55538_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key55536_ _lst55537_ _default55538_)))
                        _g57341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g57341_))))))
    (define find
      (lambda (_pred55463_ _lst55464_)
        (let ((_$e55466_
               (let () (declare (not safe)) (memf _pred55463_ _lst55464_))))
          (if _$e55466_ (car _$e55466_) '#f))))
    (define memf
      (lambda (_proc55423_ _lst55424_)
        (let _lp55426_ ((_rest55428_ _lst55424_))
          (let* ((_rest5542955437_ _rest55428_)
                 (_else5543155445_ (lambda () '#f))
                 (_K5543355451_
                  (lambda (_tl55448_ _hd55449_)
                    (if (_proc55423_ _hd55449_)
                        _rest55428_
                        (let () (declare (not safe)) (_lp55426_ _tl55448_))))))
            (if (let () (declare (not safe)) (##pair? _rest5542955437_))
                (let ((_hd5543455454_
                       (let () (declare (not safe)) (##car _rest5542955437_)))
                      (_tl5543555456_
                       (let () (declare (not safe)) (##cdr _rest5542955437_))))
                  (let* ((_hd55459_ _hd5543455454_) (_tl55461_ _tl5543555456_))
                    (declare (not safe))
                    (_K5543355451_ _tl55461_ _hd55459_)))
                (let () (declare (not safe)) (_else5543155445_)))))))
    (define remove1
      (lambda (_el55376_ _lst55378_)
        (let _lp55381_ ((_rest55384_ _lst55378_) (_r55386_ '()))
          (let* ((_rest5538855396_ _rest55384_)
                 (_else5539055404_ (lambda () _lst55378_))
                 (_K5539255411_
                  (lambda (_rest55407_ _hd55408_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el55376_ _hd55408_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55407_ _r55386_))
                        (let ((__tmp57342
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55408_ _r55386_))))
                          (declare (not safe))
                          (_lp55381_ _rest55407_ __tmp57342))))))
            (if (let () (declare (not safe)) (##pair? _rest5538855396_))
                (let ((_hd5539355414_
                       (let () (declare (not safe)) (##car _rest5538855396_)))
                      (_tl5539455416_
                       (let () (declare (not safe)) (##cdr _rest5538855396_))))
                  (let* ((_hd55419_ _hd5539355414_)
                         (_rest55421_ _tl5539455416_))
                    (declare (not safe))
                    (_K5539255411_ _rest55421_ _hd55419_)))
                (let () (declare (not safe)) (_else5539055404_)))))))
    (define remv
      (lambda (_el55329_ _lst55331_)
        (let _lp55334_ ((_rest55337_ _lst55331_) (_r55339_ '()))
          (let* ((_rest5534155349_ _rest55337_)
                 (_else5534355357_ (lambda () _lst55331_))
                 (_K5534555364_
                  (lambda (_rest55360_ _hd55361_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el55329_ _hd55361_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55360_ _r55339_))
                        (let ((__tmp57343
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55361_ _r55339_))))
                          (declare (not safe))
                          (_lp55334_ _rest55360_ __tmp57343))))))
            (if (let () (declare (not safe)) (##pair? _rest5534155349_))
                (let ((_hd5534655367_
                       (let () (declare (not safe)) (##car _rest5534155349_)))
                      (_tl5534755369_
                       (let () (declare (not safe)) (##cdr _rest5534155349_))))
                  (let* ((_hd55372_ _hd5534655367_)
                         (_rest55374_ _tl5534755369_))
                    (declare (not safe))
                    (_K5534555364_ _rest55374_ _hd55372_)))
                (let () (declare (not safe)) (_else5534355357_)))))))
    (define remq
      (lambda (_el55282_ _lst55284_)
        (let _lp55287_ ((_rest55290_ _lst55284_) (_r55292_ '()))
          (let* ((_rest5529455302_ _rest55290_)
                 (_else5529655310_ (lambda () _lst55284_))
                 (_K5529855317_
                  (lambda (_rest55313_ _hd55314_)
                    (if (let () (declare (not safe)) (eq? _el55282_ _hd55314_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55313_ _r55292_))
                        (let ((__tmp57344
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55314_ _r55292_))))
                          (declare (not safe))
                          (_lp55287_ _rest55313_ __tmp57344))))))
            (if (let () (declare (not safe)) (##pair? _rest5529455302_))
                (let ((_hd5529955320_
                       (let () (declare (not safe)) (##car _rest5529455302_)))
                      (_tl5530055322_
                       (let () (declare (not safe)) (##cdr _rest5529455302_))))
                  (let* ((_hd55325_ _hd5529955320_)
                         (_rest55327_ _tl5530055322_))
                    (declare (not safe))
                    (_K5529855317_ _rest55327_ _hd55325_)))
                (let () (declare (not safe)) (_else5529655310_)))))))
    (define remf
      (lambda (_proc55241_ _lst55242_)
        (let _lp55244_ ((_rest55246_ _lst55242_) (_r55247_ '()))
          (let* ((_rest5524855256_ _rest55246_)
                 (_else5525055264_ (lambda () _lst55242_))
                 (_K5525255270_
                  (lambda (_rest55267_ _hd55268_)
                    (if (_proc55241_ _hd55268_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55267_ _r55247_))
                        (let ((__tmp57345
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55268_ _r55247_))))
                          (declare (not safe))
                          (_lp55244_ _rest55267_ __tmp57345))))))
            (if (let () (declare (not safe)) (##pair? _rest5524855256_))
                (let ((_hd5525355273_
                       (let () (declare (not safe)) (##car _rest5524855256_)))
                      (_tl5525455275_
                       (let () (declare (not safe)) (##cdr _rest5524855256_))))
                  (let* ((_hd55278_ _hd5525355273_)
                         (_rest55280_ _tl5525455275_))
                    (declare (not safe))
                    (_K5525255270_ _rest55280_ _hd55278_)))
                (let () (declare (not safe)) (_else5525055264_)))))))
    (define 1+ (lambda (_x55239_) (+ _x55239_ '1)))
    (define 1- (lambda (_x55237_) (- _x55237_ '1)))
    (define fx1+ (lambda (_x55235_) (fx+ _x55235_ '1)))
    (define fx1- (lambda (_x55233_) (fx- _x55233_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x55231_)
        (if (let () (declare (not safe)) (fixnum? _x55231_))
            (let () (declare (not safe)) (##fx>= _x55231_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x55229_)
        (if (let () (declare (not safe)) (fixnum? _x55229_))
            (let () (declare (not safe)) (##fx> _x55229_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x55227_) (let () (declare (not safe)) (eq? _x55227_ '0))))
    (define fx<0?
      (lambda (_x55225_)
        (if (let () (declare (not safe)) (fixnum? _x55225_))
            (let () (declare (not safe)) (##fx< _x55225_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x55223_)
        (if (let () (declare (not safe)) (fixnum? _x55223_))
            (let () (declare (not safe)) (##fx<= _x55223_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x55221_)
        (if (let () (declare (not safe)) (symbol? _x55221_))
            (let ((__tmp57346 (uninterned-symbol? _x55221_)))
              (declare (not safe))
              (not __tmp57346))
            '#f)))
    (define display-as-string
      (lambda (_x55193_ _port55194_)
        (if (or (let () (declare (not safe)) (string? _x55193_))
                (let () (declare (not safe)) (symbol? _x55193_))
                (keyword? _x55193_)
                (let () (declare (not safe)) (number? _x55193_))
                (let () (declare (not safe)) (char? _x55193_)))
            (display _x55193_ _port55194_)
            (if (let () (declare (not safe)) (pair? _x55193_))
                (begin
                  (let ((__tmp57347 (car _x55193_)))
                    (declare (not safe))
                    (display-as-string __tmp57347 _port55194_))
                  (let ((__tmp57348 (cdr _x55193_)))
                    (declare (not safe))
                    (display-as-string __tmp57348 _port55194_)))
                (if (let () (declare (not safe)) (vector? _x55193_))
                    (vector-for-each
                     (lambda (_g5520755209_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5520755209_ _port55194_)))
                     _x55193_)
                    (if (or (let () (declare (not safe)) (null? _x55193_))
                            (let ()
                              (declare (not safe))
                              (eq? _x55193_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x55193_))
                            (let () (declare (not safe)) (boolean? _x55193_)))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot convert as string" _x55193_))))))))
    (define as-string__0
      (lambda (_x55181_)
        (if (let () (declare (not safe)) (string? _x55181_))
            _x55181_
            (if (let () (declare (not safe)) (symbol? _x55181_))
                (symbol->string _x55181_)
                (if (keyword? _x55181_)
                    (keyword->string _x55181_)
                    (call-with-output-string
                     '()
                     (lambda (_g5518255184_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x55181_ _g5518255184_)))))))))
    (define as-string__1
      (lambda _args55187_
        (call-with-output-string
         '()
         (lambda (_g5518855190_)
           (let ()
             (declare (not safe))
             (display-as-string _args55187_ _g5518855190_))))))
    (define as-string
      (lambda _g57350_
        (let ((_g57349_ (let () (declare (not safe)) (##length _g57350_))))
          (cond ((let () (declare (not safe)) (##fx= _g57349_ 1))
                 (apply (lambda (_x55181_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x55181_)))
                        _g57350_))
                (#t (apply as-string__1 _g57350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g57350_))))))
    (define make-symbol__0
      (lambda (_x55177_)
        (if (interned-symbol? _x55177_)
            _x55177_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x55177_))))))
    (define make-symbol__1
      (lambda _args55179_ (string->symbol (apply as-string _args55179_))))
    (define make-symbol
      (lambda _g57352_
        (let ((_g57351_ (let () (declare (not safe)) (##length _g57352_))))
          (cond ((let () (declare (not safe)) (##fx= _g57351_ 1))
                 (apply (lambda (_x55177_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x55177_)))
                        _g57352_))
                (#t (apply make-symbol__1 _g57352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g57352_))))))
    (define make-keyword__0
      (lambda (_x55173_)
        (if (interned-keyword? _x55173_)
            _x55173_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x55173_))))))
    (define make-keyword__1
      (lambda _args55175_ (string->keyword (apply as-string _args55175_))))
    (define make-keyword
      (lambda _g57354_
        (let ((_g57353_ (let () (declare (not safe)) (##length _g57354_))))
          (cond ((let () (declare (not safe)) (##fx= _g57353_ 1))
                 (apply (lambda (_x55173_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x55173_)))
                        _g57354_))
                (#t (apply make-keyword__1 _g57354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g57354_))))))
    (define interned-keyword?
      (lambda (_x55171_)
        (if (keyword? _x55171_)
            (let ((__tmp57355 (uninterned-keyword? _x55171_)))
              (declare (not safe))
              (not __tmp57355))
            '#f)))
    (define symbol->keyword
      (lambda (_sym55169_)
        ((if (uninterned-symbol? _sym55169_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym55169_))))
    (define keyword->symbol
      (lambda (_kw55167_)
        ((if (uninterned-keyword? _kw55167_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw55167_))))
    (define bytes->string__%
      (lambda (_bstr55145_ _enc55146_)
        (if (let () (declare (not safe)) (eq? _enc55146_ 'UTF-8))
            (utf8->string _bstr55145_)
            (let* ((_in55148_
                    (open-input-u8vector
                     (let ((__tmp57356
                            (let ((__tmp57357
                                   (let ((__tmp57358
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr55145_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp57358))))
                              (declare (not safe))
                              (cons _enc55146_ __tmp57357))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp57356))))
                   (_len55150_ (u8vector-length _bstr55145_))
                   (_out55152_ (make-string _len55150_))
                   (_n55154_
                    (read-substring _out55152_ '0 _len55150_ _in55148_)))
              (string-shrink! _out55152_ _n55154_)
              _out55152_))))
    (define bytes->string__0
      (lambda (_bstr55160_)
        (let ((_enc55162_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr55160_ _enc55162_))))
    (define bytes->string
      (lambda _g57360_
        (let ((_g57359_ (let () (declare (not safe)) (##length _g57360_))))
          (cond ((let () (declare (not safe)) (##fx= _g57359_ 1))
                 (apply (lambda (_bstr55160_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr55160_)))
                        _g57360_))
                ((let () (declare (not safe)) (##fx= _g57359_ 2))
                 (apply (lambda (_bstr55164_ _enc55165_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr55164_ _enc55165_)))
                        _g57360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g57360_))))))
    (define string->bytes__%
      (lambda (_str55131_ _enc55132_)
        (if (let () (declare (not safe)) (eq? _enc55132_ 'UTF-8))
            (string->utf8 _str55131_)
            (substring->bytes
             _str55131_
             '0
             (string-length _str55131_)
             _enc55132_))))
    (define string->bytes__0
      (lambda (_str55137_)
        (let ((_enc55139_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str55137_ _enc55139_))))
    (define string->bytes
      (lambda _g57362_
        (let ((_g57361_ (let () (declare (not safe)) (##length _g57362_))))
          (cond ((let () (declare (not safe)) (##fx= _g57361_ 1))
                 (apply (lambda (_str55137_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str55137_)))
                        _g57362_))
                ((let () (declare (not safe)) (##fx= _g57361_ 2))
                 (apply (lambda (_str55141_ _enc55142_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str55141_ _enc55142_)))
                        _g57362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g57362_))))))
    (define substring->bytes__%
      (lambda (_str55109_ _start55110_ _end55111_ _enc55112_)
        (if (let () (declare (not safe)) (eq? _enc55112_ 'UTF-8))
            (string->utf8 _str55109_ _start55110_ _end55111_)
            (let ((_out55114_
                   (open-output-u8vector
                    (let ((__tmp57363
                           (let ()
                             (declare (not safe))
                             (cons _enc55112_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp57363)))))
              (write-substring _str55109_ _start55110_ _end55111_ _out55114_)
              (get-output-u8vector _out55114_)))))
    (define substring->bytes__0
      (lambda (_str55119_ _start55120_ _end55121_)
        (let ((_enc55123_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str55119_
           _start55120_
           _end55121_
           _enc55123_))))
    (define substring->bytes
      (lambda _g57365_
        (let ((_g57364_ (let () (declare (not safe)) (##length _g57365_))))
          (cond ((let () (declare (not safe)) (##fx= _g57364_ 3))
                 (apply (lambda (_str55119_ _start55120_ _end55121_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str55119_
                             _start55120_
                             _end55121_)))
                        _g57365_))
                ((let () (declare (not safe)) (##fx= _g57364_ 4))
                 (apply (lambda (_str55125_ _start55126_ _end55127_ _enc55128_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str55125_
                             _start55126_
                             _end55127_
                             _enc55128_)))
                        _g57365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g57365_))))))
    (define string-empty?
      (lambda (_str55106_)
        (let ((__tmp57366 (string-length _str55106_)))
          (declare (not safe))
          (##fxzero? __tmp57366))))
    (define string-prefix?
      (lambda (_prefix55096_ _str55097_)
        (let ((_str-len55099_ (string-length _str55097_))
              (_prefix-len55100_ (string-length _prefix55096_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len55100_ _str-len55099_))
              (let _lp55102_ ((_i55104_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i55104_ _prefix-len55100_))
                    (if (let ((__tmp57369
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str55097_ _i55104_)))
                              (__tmp57368
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix55096_ _i55104_))))
                          (declare (not safe))
                          (eq? __tmp57369 __tmp57368))
                        (let ((__tmp57367
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i55104_ '1))))
                          (declare (not safe))
                          (_lp55102_ __tmp57367))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str55074_ _char55075_ _start55076_)
        (let ((_len55078_ (string-length _str55074_)))
          (let _lp55080_ ((_k55082_ _start55076_))
            (if (let () (declare (not safe)) (##fx< _k55082_ _len55078_))
                (if (let ((__tmp57371
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55074_ _k55082_))))
                      (declare (not safe))
                      (eq? _char55075_ __tmp57371))
                    _k55082_
                    (let ((__tmp57370
                           (let () (declare (not safe)) (##fx+ _k55082_ '1))))
                      (declare (not safe))
                      (_lp55080_ __tmp57370)))
                '#f)))))
    (define string-index__0
      (lambda (_str55087_ _char55088_)
        (let ((_start55090_ '0))
          (declare (not safe))
          (string-index__% _str55087_ _char55088_ _start55090_))))
    (define string-index
      (lambda _g57373_
        (let ((_g57372_ (let () (declare (not safe)) (##length _g57373_))))
          (cond ((let () (declare (not safe)) (##fx= _g57372_ 2))
                 (apply (lambda (_str55087_ _char55088_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str55087_ _char55088_)))
                        _g57373_))
                ((let () (declare (not safe)) (##fx= _g57372_ 3))
                 (apply (lambda (_str55092_ _char55093_ _start55094_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str55092_
                             _char55093_
                             _start55094_)))
                        _g57373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g57373_))))))
    (define string-rindex__%
      (lambda (_str55045_ _char55046_ _start55047_)
        (let* ((_len55049_ (string-length _str55045_))
               (_start55054_
                (let ((_$e55051_ _start55047_))
                  (if _$e55051_
                      _$e55051_
                      (let () (declare (not safe)) (##fx- _len55049_ '1))))))
          (let _lp55057_ ((_k55059_ _start55054_))
            (if (let () (declare (not safe)) (##fx>= _k55059_ '0))
                (if (let ((__tmp57375
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55045_ _k55059_))))
                      (declare (not safe))
                      (eq? _char55046_ __tmp57375))
                    _k55059_
                    (let ((__tmp57374
                           (let () (declare (not safe)) (##fx- _k55059_ '1))))
                      (declare (not safe))
                      (_lp55057_ __tmp57374)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str55064_ _char55065_)
        (let ((_start55067_ '#f))
          (declare (not safe))
          (string-rindex__% _str55064_ _char55065_ _start55067_))))
    (define string-rindex
      (lambda _g57377_
        (let ((_g57376_ (let () (declare (not safe)) (##length _g57377_))))
          (cond ((let () (declare (not safe)) (##fx= _g57376_ 2))
                 (apply (lambda (_str55064_ _char55065_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str55064_ _char55065_)))
                        _g57377_))
                ((let () (declare (not safe)) (##fx= _g57376_ 3))
                 (apply (lambda (_str55069_ _char55070_ _start55071_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str55069_
                             _char55070_
                             _start55071_)))
                        _g57377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g57377_))))))
    (define string-split
      (lambda (_str55029_ _char55030_)
        (let ((_len55032_ (string-length _str55029_)))
          (let _lp55034_ ((_start55036_ '0) (_r55037_ '()))
            (let ((_$e55039_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str55029_ _char55030_ _start55036_))))
              (if _$e55039_
                  ((lambda (_end55042_)
                     (let ((__tmp57381
                            (let ()
                              (declare (not safe))
                              (##fx+ _end55042_ '1)))
                           (__tmp57379
                            (let ((__tmp57380
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55029_
                                      _start55036_
                                      _end55042_))))
                              (declare (not safe))
                              (cons __tmp57380 _r55037_))))
                       (declare (not safe))
                       (_lp55034_ __tmp57381 __tmp57379)))
                   _$e55039_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start55036_ _len55032_))
                      (let ((__tmp57378
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55029_
                                      _start55036_
                                      _len55032_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp57378 _r55037_))
                      (reverse _r55037_))))))))
    (define string-join
      (lambda (_strs54934_ _join54935_)
        (letrec ((_join-length54937_
                  (lambda (_strs54988_ _jlen54989_)
                    (let _lp54991_ ((_rest54993_ _strs54988_) (_len54994_ '0))
                      (let* ((_rest5499555003_ _rest54993_)
                             (_else5499755011_ (lambda () '0))
                             (_K5499955017_
                              (lambda (_rest55014_ _hd55015_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd55015_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest55014_))
                                        (let ((__tmp57383
                                               (let ((__tmp57384
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd55015_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp57384
                                                        _jlen54989_
                                                        _len54994_))))
                                          (declare (not safe))
                                          (_lp54991_ _rest55014_ __tmp57383))
                                        (let ((__tmp57382
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd55015_))))
                                          (declare (not safe))
                                          (##fx+ __tmp57382 _len54994_)))
                                    (let ()
                                      (declare (not safe))
                                      (error '"expected string" _hd55015_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5499555003_))
                            (let ((_hd5500055020_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5499555003_)))
                                  (_tl5500155022_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5499555003_))))
                              (let* ((_hd55025_ _hd5500055020_)
                                     (_rest55027_ _tl5500155022_))
                                (declare (not safe))
                                (_K5499955017_ _rest55027_ _hd55025_)))
                            (let ()
                              (declare (not safe))
                              (_else5499755011_))))))))
          (let* ((_join54939_
                  (if (let () (declare (not safe)) (char? _join54935_))
                      (string _join54935_)
                      (if (let () (declare (not safe)) (string? _join54935_))
                          _join54935_
                          (let ()
                            (declare (not safe))
                            (error '"expected string or char" _join54935_)))))
                 (_jlen54941_
                  (let () (declare (not safe)) (##string-length _join54939_)))
                 (_olen54943_
                  (let ()
                    (declare (not safe))
                    (_join-length54937_ _strs54934_ _jlen54941_)))
                 (_ostr54945_ (make-string _olen54943_)))
            (let _lp54948_ ((_rest54950_ _strs54934_) (_k54951_ '0))
              (let* ((_rest5495254960_ _rest54950_)
                     (_else5495454968_ (lambda () '""))
                     (_K5495654976_
                      (lambda (_rest54971_ _hd54972_)
                        (let ((_hdlen54974_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd54972_))))
                          (if (let () (declare (not safe)) (pair? _rest54971_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54972_
                                   '0
                                   _hdlen54974_
                                   _ostr54945_
                                   _k54951_))
                                (let ((__tmp57385
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54951_ _hdlen54974_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join54939_
                                   '0
                                   _jlen54941_
                                   _ostr54945_
                                   __tmp57385))
                                (let ((__tmp57386
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54951_
                                                _hdlen54974_
                                                _jlen54941_))))
                                  (declare (not safe))
                                  (_lp54948_ _rest54971_ __tmp57386)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54972_
                                   '0
                                   _hdlen54974_
                                   _ostr54945_
                                   _k54951_))
                                _ostr54945_))))))
                (if (let () (declare (not safe)) (##pair? _rest5495254960_))
                    (let ((_hd5495754979_
                           (let ()
                             (declare (not safe))
                             (##car _rest5495254960_)))
                          (_tl5495854981_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5495254960_))))
                      (let* ((_hd54984_ _hd5495754979_)
                             (_rest54986_ _tl5495854981_))
                        (declare (not safe))
                        (_K5495654976_ _rest54986_ _hd54984_)))
                    (let () (declare (not safe)) (_else5495454968_)))))))))
    (define read-u8vector
      (lambda (_bytes54931_ _port54932_)
        (read-subu8vector
         _bytes54931_
         '0
         (u8vector-length _bytes54931_)
         _port54932_)))
    (define write-u8vector
      (lambda (_bytes54928_ _port54929_)
        (write-subu8vector
         _bytes54928_
         '0
         (u8vector-length _bytes54928_)
         _port54929_)))
    (define read-string
      (lambda (_str54925_ _port54926_)
        (read-substring _str54925_ '0 (string-length _str54925_) _port54926_)))
    (define write-string
      (lambda (_str54922_ _port54923_)
        (write-substring
         _str54922_
         '0
         (string-length _str54922_)
         _port54923_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag54891_
               _dbg-exprs54892_
               _dbg-thunks54893_
               _expr54894_
               _thunk54895_)
        (letrec ((_o54897_ (current-output-port))
                 (_e54898_ (current-error-port))
                 (_p54899_ (DBG-printer))
                 (_f54900_
                  (lambda () (force-output _o54897_) (force-output _e54898_)))
                 (_d54901_ (lambda (_x54908_) (display _x54908_ _e54898_)))
                 (_w54902_ (lambda (_x54910_) (_p54899_ _x54910_ _e54898_)))
                 (_n54903_ (lambda () (newline _e54898_)))
                 (_v54904_
                  (lambda (_l54913_)
                    (for-each
                     (lambda (_x54915_)
                       (let () (declare (not safe)) (_d54901_ '" "))
                       (let () (declare (not safe)) (_w54902_ _x54915_)))
                     _l54913_)
                    (let () (declare (not safe)) (_n54903_))))
                 (_x54905_
                  (lambda (_expr54917_ _thunk54918_)
                    (let () (declare (not safe)) (_f54900_))
                    (let () (declare (not safe)) (_d54901_ '"  "))
                    (let () (declare (not safe)) (_w54902_ _expr54917_))
                    (let () (declare (not safe)) (_d54901_ '" =>"))
                    (call-with-values
                     _thunk54918_
                     (lambda _x54920_
                       (let () (declare (not safe)) (_v54904_ _x54920_))
                       (let () (declare (not safe)) (_f54900_))
                       (apply values _x54920_))))))
          (if _tag54891_
              (begin
                (if (let () (declare (not safe)) (eq? _tag54891_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f54900_))
                      (let () (declare (not safe)) (_d54901_ _tag54891_))
                      (let () (declare (not safe)) (_n54903_))))
                (for-each _x54905_ _dbg-exprs54892_ _dbg-thunks54893_)
                (if _thunk54895_
                    (let ()
                      (declare (not safe))
                      (_x54905_ _expr54894_ _thunk54895_))
                    '#!void))
              (if _thunk54895_ (_thunk54895_) '#!void)))))))
