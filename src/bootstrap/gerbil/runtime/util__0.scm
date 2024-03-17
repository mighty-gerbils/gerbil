(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1710677336)
  (begin
    (define displayln
      (lambda _args56958_
        (let _lp56960_ ((_rest56962_ _args56958_))
          (let* ((_rest5696356971_ _rest56962_)
                 (_else5696556979_ (lambda () (newline)))
                 (_K5696756985_
                  (lambda (_rest56982_ _hd56983_)
                    (display _hd56983_)
                    (let () (declare (not safe)) (_lp56960_ _rest56982_)))))
            (if (let () (declare (not safe)) (##pair? _rest5696356971_))
                (let ((_hd5696856988_
                       (let () (declare (not safe)) (##car _rest5696356971_)))
                      (_tl5696956990_
                       (let () (declare (not safe)) (##cdr _rest5696356971_))))
                  (let* ((_hd56993_ _hd5696856988_)
                         (_rest56995_ _tl5696956990_))
                    (declare (not safe))
                    (_K5696756985_ _rest56995_ _hd56993_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args56956_ (for-each display _args56956_)))
    (define file-newer?
      (lambda (_file156949_ _file256950_)
        (letrec ((_modification-time56952_
                  (lambda (_file56954_)
                    (let ((__tmp57379
                           (file-info-last-modification-time
                            (file-info _file56954_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp57379)))))
          (let ((__tmp57381
                 (let ()
                   (declare (not safe))
                   (_modification-time56952_ _file156949_)))
                (__tmp57380
                 (let ()
                   (declare (not safe))
                   (_modification-time56952_ _file256950_))))
            (declare (not safe))
            (##fl> __tmp57381 __tmp57380)))))
    (define create-directory*__%
      (lambda (_dir56923_ _perms56924_)
        (letrec ((_create156926_
                  (lambda (_path56937_)
                    (if (file-exists? _path56937_)
                        (if (let ((__tmp57382 (file-type _path56937_)))
                              (declare (not safe))
                              (eq? __tmp57382 'directory))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"Path component is not a directory"
                                     _path56937_)))
                        (if _perms56924_
                            (create-directory
                             (list 'path:
                                   _path56937_
                                   'permissions:
                                   _perms56924_))
                            (create-directory _path56937_))))))
          (if (file-exists? _dir56923_)
              '#!void
              (let _lp56928_ ((_start56930_ '0))
                (let ((_$e56932_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir56923_ '#\/ _start56930_))))
                  (if _$e56932_
                      ((lambda (_x56935_)
                         (if (let () (declare (not safe)) (##fx> _x56935_ '0))
                             (let ((__tmp57383
                                    (substring _dir56923_ '0 _x56935_)))
                               (declare (not safe))
                               (_create156926_ __tmp57383))
                             '#!void)
                         (let ((__tmp57384
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x56935_ '1))))
                           (declare (not safe))
                           (_lp56928_ __tmp57384)))
                       _$e56932_)
                      (let ()
                        (declare (not safe))
                        (_create156926_ _dir56923_)))))))))
    (define create-directory*__0
      (lambda (_dir56942_)
        (let ((_perms56944_ '493))
          (declare (not safe))
          (create-directory*__% _dir56942_ _perms56944_))))
    (define create-directory*
      (lambda _g57386_
        (let ((_g57385_ (let () (declare (not safe)) (##length _g57386_))))
          (cond ((let () (declare (not safe)) (##fx= _g57385_ 1))
                 (apply (lambda (_dir56942_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir56942_)))
                        _g57386_))
                ((let () (declare (not safe)) (##fx= _g57385_ 2))
                 (apply (lambda (_dir56946_ _perms56947_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir56946_ _perms56947_)))
                        _g57386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g57386_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g57387_ '#t))
    (define true?
      (lambda (_obj56919_) (let () (declare (not safe)) (eq? _obj56919_ '#t))))
    (define false (lambda _g57388_ '#f))
    (define void (lambda _g57389_ '#!void))
    (define void?
      (lambda (_obj56915_)
        (let () (declare (not safe)) (eq? _obj56915_ '#!void))))
    (define dssl-object?
      (lambda (_obj56913_)
        (if (memq _obj56913_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj56911_)
        (let () (declare (not safe)) (eq? _obj56911_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj56909_)
        (let () (declare (not safe)) (eq? _obj56909_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj56907_)
        (let () (declare (not safe)) (eq? _obj56907_ '#!optional))))
    (define immediate?
      (lambda (_obj56903_)
        (let* ((_t56905_ (let () (declare (not safe)) (##type _obj56903_)))
               (__tmp57390
                (let () (declare (not safe)) (##fxand _t56905_ '1))))
          (declare (not safe))
          (##fxzero? __tmp57390))))
    (define nonnegative-fixnum?
      (lambda (_obj56901_)
        (if (let () (declare (not safe)) (fixnum? _obj56901_))
            (let ((__tmp57391 (fxnegative? _obj56901_)))
              (declare (not safe))
              (not __tmp57391))
            '#f)))
    (define values-count
      (lambda (_obj56899_)
        (if (let () (declare (not safe)) (##values? _obj56899_))
            (let () (declare (not safe)) (##vector-length _obj56899_))
            '1)))
    (define values-ref
      (lambda (_obj56896_ _k56897_)
        (if (let () (declare (not safe)) (##values? _obj56896_))
            (let () (declare (not safe)) (##vector-ref _obj56896_ _k56897_))
            _obj56896_)))
    (define values->list
      (lambda (_obj56894_)
        (if (let () (declare (not safe)) (##values? _obj56894_))
            (let () (declare (not safe)) (##vector->list _obj56894_))
            (list _obj56894_))))
    (define subvector->list__%
      (lambda (_obj56879_ _start56880_)
        (let ((_lst56882_
               (let () (declare (not safe)) (##vector->list _obj56879_))))
          (list-tail _lst56882_ _start56880_))))
    (define subvector->list__0
      (lambda (_obj56887_)
        (let ((_start56889_ '0))
          (declare (not safe))
          (subvector->list__% _obj56887_ _start56889_))))
    (define subvector->list
      (lambda _g57393_
        (let ((_g57392_ (let () (declare (not safe)) (##length _g57393_))))
          (cond ((let () (declare (not safe)) (##fx= _g57392_ 1))
                 (apply (lambda (_obj56887_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj56887_)))
                        _g57393_))
                ((let () (declare (not safe)) (##fx= _g57392_ 2))
                 (apply (lambda (_obj56891_ _start56892_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj56891_ _start56892_)))
                        _g57393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g57393_))))))
    (define cons*
      (lambda (_x56869_ _y56870_ . _rest56871_)
        (letrec ((_recur56873_
                  (lambda (_x56875_ _rest56876_)
                    (if (let () (declare (not safe)) (pair? _rest56876_))
                        (let ((__tmp57394
                               (let ((__tmp57396
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest56876_)))
                                     (__tmp57395
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest56876_))))
                                 (declare (not safe))
                                 (_recur56873_ __tmp57396 __tmp57395))))
                          (declare (not safe))
                          (cons _x56875_ __tmp57394))
                        _x56875_))))
          (let ((__tmp57397
                 (let ()
                   (declare (not safe))
                   (_recur56873_ _y56870_ _rest56871_))))
            (declare (not safe))
            (cons _x56869_ __tmp57397)))))
    (define foldl1
      (lambda (_f56827_ _iv56828_ _lst56829_)
        (let _lp56831_ ((_rest56833_ _lst56829_) (_r56834_ _iv56828_))
          (let* ((_rest5683556843_ _rest56833_)
                 (_else5683756851_ (lambda () _r56834_))
                 (_K5683956857_
                  (lambda (_rest56854_ _x56855_)
                    (let ((__tmp57398 (_f56827_ _x56855_ _r56834_)))
                      (declare (not safe))
                      (_lp56831_ _rest56854_ __tmp57398)))))
            (if (let () (declare (not safe)) (##pair? _rest5683556843_))
                (let ((_hd5684056860_
                       (let () (declare (not safe)) (##car _rest5683556843_)))
                      (_tl5684156862_
                       (let () (declare (not safe)) (##cdr _rest5683556843_))))
                  (let* ((_x56865_ _hd5684056860_)
                         (_rest56867_ _tl5684156862_))
                    (declare (not safe))
                    (_K5683956857_ _rest56867_ _x56865_)))
                (let () (declare (not safe)) (_else5683756851_)))))))
    (define foldl2
      (lambda (_f56750_ _iv56751_ _lst156752_ _lst256753_)
        (let _lp56755_ ((_rest156757_ _lst156752_)
                        (_rest256758_ _lst256753_)
                        (_r56759_ _iv56751_))
          (let* ((_rest15676056768_ _rest156757_)
                 (_else5676256776_ (lambda () _r56759_))
                 (_K5676456815_
                  (lambda (_rest156779_ _x156780_)
                    (let* ((_rest25678156789_ _rest256758_)
                           (_else5678356797_ (lambda () _r56759_))
                           (_K5678556803_
                            (lambda (_rest256800_ _x256801_)
                              (let ((__tmp57399
                                     (_f56750_ _x156780_ _x256801_ _r56759_)))
                                (declare (not safe))
                                (_lp56755_
                                 _rest156779_
                                 _rest256800_
                                 __tmp57399)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25678156789_))
                          (let ((_hd5678656806_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25678156789_)))
                                (_tl5678756808_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25678156789_))))
                            (let* ((_x256811_ _hd5678656806_)
                                   (_rest256813_ _tl5678756808_))
                              (declare (not safe))
                              (_K5678556803_ _rest256813_ _x256811_)))
                          (let () (declare (not safe)) (_else5678356797_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15676056768_))
                (let ((_hd5676556818_
                       (let () (declare (not safe)) (##car _rest15676056768_)))
                      (_tl5676656820_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15676056768_))))
                  (let* ((_x156823_ _hd5676556818_)
                         (_rest156825_ _tl5676656820_))
                    (declare (not safe))
                    (_K5676456815_ _rest156825_ _x156823_)))
                (let () (declare (not safe)) (_else5676256776_)))))))
    (define foldl
      (lambda _g57401_
        (let ((_g57400_ (let () (declare (not safe)) (##length _g57401_))))
          (cond ((let () (declare (not safe)) (##fx= _g57400_ 3))
                 (apply (lambda (_f56735_ _iv56736_ _lst56737_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f56735_ _iv56736_ _lst56737_)))
                        _g57401_))
                ((let () (declare (not safe)) (##fx= _g57400_ 4))
                 (apply (lambda (_f56739_ _iv56740_ _lst156741_ _lst256742_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f56739_
                                    _iv56740_
                                    _lst156741_
                                    _lst256742_)))
                        _g57401_))
                ((let () (declare (not safe)) (##fx>= _g57400_ 4))
                 (apply foldl* _g57401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g57401_))))))
    (define foldl*
      (lambda (_f56723_ _iv56724_ . _rest56725_)
        (let _recur56727_ ((_iv56729_ _iv56724_) (_rest56730_ _rest56725_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56730_))
              (let ((__tmp57403
                     (apply _f56723_
                            (let ((__tmp57405
                                   (lambda (_xs56732_ _r56733_)
                                     (let ((__tmp57406 (car _xs56732_)))
                                       (declare (not safe))
                                       (cons __tmp57406 _r56733_))))
                                  (__tmp57404 (list _iv56729_)))
                              (declare (not safe))
                              (foldr1 __tmp57405 __tmp57404 _rest56730_))))
                    (__tmp57402 (map cdr _rest56730_)))
                (declare (not safe))
                (_recur56727_ __tmp57403 __tmp57402))
              _iv56729_))))
    (define foldr1
      (lambda (_f56682_ _iv56683_ _lst56684_)
        (let _recur56686_ ((_rest56688_ _lst56684_))
          (let* ((_rest5668956697_ _rest56688_)
                 (_else5669156705_ (lambda () _iv56683_))
                 (_K5669356711_
                  (lambda (_rest56708_ _x56709_)
                    (_f56682_
                     _x56709_
                     (let ()
                       (declare (not safe))
                       (_recur56686_ _rest56708_))))))
            (if (let () (declare (not safe)) (##pair? _rest5668956697_))
                (let ((_hd5669456714_
                       (let () (declare (not safe)) (##car _rest5668956697_)))
                      (_tl5669556716_
                       (let () (declare (not safe)) (##cdr _rest5668956697_))))
                  (let* ((_x56719_ _hd5669456714_)
                         (_rest56721_ _tl5669556716_))
                    (declare (not safe))
                    (_K5669356711_ _rest56721_ _x56719_)))
                (let () (declare (not safe)) (_else5669156705_)))))))
    (define foldr2
      (lambda (_f56606_ _iv56607_ _lst156608_ _lst256609_)
        (let _recur56611_ ((_rest156613_ _lst156608_)
                           (_rest256614_ _lst256609_))
          (let* ((_rest15661556623_ _rest156613_)
                 (_else5661756631_ (lambda () _iv56607_))
                 (_K5661956670_
                  (lambda (_rest156634_ _x156635_)
                    (let* ((_rest25663656644_ _rest256614_)
                           (_else5663856652_ (lambda () _iv56607_))
                           (_K5664056658_
                            (lambda (_rest256655_ _x256656_)
                              (_f56606_
                               _x156635_
                               _x256656_
                               (let ()
                                 (declare (not safe))
                                 (_recur56611_ _rest156634_ _rest256655_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25663656644_))
                          (let ((_hd5664156661_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25663656644_)))
                                (_tl5664256663_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25663656644_))))
                            (let* ((_x256666_ _hd5664156661_)
                                   (_rest256668_ _tl5664256663_))
                              (declare (not safe))
                              (_K5664056658_ _rest256668_ _x256666_)))
                          (let () (declare (not safe)) (_else5663856652_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15661556623_))
                (let ((_hd5662056673_
                       (let () (declare (not safe)) (##car _rest15661556623_)))
                      (_tl5662156675_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15661556623_))))
                  (let* ((_x156678_ _hd5662056673_)
                         (_rest156680_ _tl5662156675_))
                    (declare (not safe))
                    (_K5661956670_ _rest156680_ _x156678_)))
                (let () (declare (not safe)) (_else5661756631_)))))))
    (define foldr
      (lambda _g57408_
        (let ((_g57407_ (let () (declare (not safe)) (##length _g57408_))))
          (cond ((let () (declare (not safe)) (##fx= _g57407_ 3))
                 (apply (lambda (_f56591_ _iv56592_ _lst56593_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f56591_ _iv56592_ _lst56593_)))
                        _g57408_))
                ((let () (declare (not safe)) (##fx= _g57407_ 4))
                 (apply (lambda (_f56595_ _iv56596_ _lst156597_ _lst256598_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f56595_
                                    _iv56596_
                                    _lst156597_
                                    _lst256598_)))
                        _g57408_))
                ((let () (declare (not safe)) (##fx>= _g57407_ 4))
                 (apply foldr* _g57408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g57408_))))))
    (define foldr*
      (lambda (_f56580_ _iv56581_ . _rest56582_)
        (let _recur56584_ ((_rest56586_ _rest56582_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56586_))
              (apply _f56580_
                     (let ((__tmp57411
                            (lambda (_xs56588_ _r56589_)
                              (let ((__tmp57412 (car _xs56588_)))
                                (declare (not safe))
                                (cons __tmp57412 _r56589_))))
                           (__tmp57409
                            (list (let ((__tmp57410 (map cdr _rest56586_)))
                                    (declare (not safe))
                                    (_recur56584_ __tmp57410)))))
                       (declare (not safe))
                       (foldr1 __tmp57411 __tmp57409 _rest56586_)))
              _iv56581_))))
    (define remove-nulls!
      (lambda (_l56467_)
        (let* ((_l5646856481_ _l56467_)
               (_E5647256485_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _l5646856481_)))))
          (let ((_K5647756570_
                 (lambda (_r56568_)
                   (let () (declare (not safe)) (remove-nulls! _r56568_))))
                (_K5647456557_
                 (lambda (_r56497_)
                   (let _loop56499_ ((_l56501_ _l56467_) (_r56502_ _r56497_))
                     (let* ((_r5650356516_ _r56502_)
                            (_E5650756520_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _r5650356516_)))))
                       (let ((_K5651256547_
                              (lambda (_rr56545_)
                                (set-cdr!
                                 _l56501_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr56545_)))))
                             (_K5650956534_
                              (lambda (_rr56532_)
                                (let ()
                                  (declare (not safe))
                                  (_loop56499_ _r56502_ _rr56532_))))
                             (_K5650856525_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5650356516_))
                             (let ((_tl5651456552_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5650356516_)))
                                   (_hd5651356550_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5650356516_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5651356550_))
                                   (let ((_rr56555_ _tl5651456552_))
                                     (declare (not safe))
                                     (_K5651256547_ _rr56555_))
                                   (let ((_rr56540_ _tl5651456552_))
                                     (declare (not safe))
                                     (_K5650956534_ _rr56540_))))
                             '#!void))))
                   _l56467_))
                (_K5647356490_ (lambda () _l56467_)))
            (if (let () (declare (not safe)) (##pair? _l5646856481_))
                (let ((_tl5647956575_
                       (let () (declare (not safe)) (##cdr _l5646856481_)))
                      (_hd5647856573_
                       (let () (declare (not safe)) (##car _l5646856481_))))
                  (if (let () (declare (not safe)) (##null? _hd5647856573_))
                      (let ((_r56578_ _tl5647956575_))
                        (declare (not safe))
                        (remove-nulls! _r56578_))
                      (let ((_r56563_ _tl5647956575_))
                        (declare (not safe))
                        (_K5647456557_ _r56563_))))
                (let () (declare (not safe)) (_K5647356490_)))))))
    (define append1!
      (lambda (_l56462_ _x56463_)
        (let ((_l256465_ (let () (declare (not safe)) (cons _x56463_ '()))))
          (if (let () (declare (not safe)) (pair? _l56462_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l56462_))
               _l256465_)
              _l256465_))))
    (define append-reverse-until
      (lambda (_pred56415_ _rhead56416_ _tail56417_)
        (let _loop56419_ ((_rhead56421_ _rhead56416_)
                          (_tail56422_ _tail56417_))
          (let* ((_rhead5642356432_ _rhead56421_)
                 (_E5642656436_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rhead5642356432_)))))
            (let ((_K5643056459_ (lambda () (values '() _tail56422_)))
                  (_K5642756443_
                   (lambda (_r56440_ _a56441_)
                     (if (_pred56415_ _a56441_)
                         (values _rhead56421_ _tail56422_)
                         (let ((__tmp57413
                                (let ()
                                  (declare (not safe))
                                  (cons _a56441_ _tail56422_))))
                           (declare (not safe))
                           (_loop56419_ _r56440_ __tmp57413))))))
              (let ((_try-match5642556455_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5642356432_))
                           (let ((_tl5642956448_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5642356432_)))
                                 (_hd5642856446_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5642356432_))))
                             (let ((_a56451_ _hd5642856446_)
                                   (_r56453_ _tl5642956448_))
                               (let ()
                                 (declare (not safe))
                                 (_K5642756443_ _r56453_ _a56451_))))
                           (let () (declare (not safe)) (_E5642656436_))))))
                (if (let () (declare (not safe)) (##null? _rhead5642356432_))
                    (let () (declare (not safe)) (_K5643056459_))
                    (let ()
                      (declare (not safe))
                      (_try-match5642556455_)))))))))
    (define andmap1
      (lambda (_f56375_ _lst56376_)
        (let _lp56378_ ((_rest56380_ _lst56376_))
          (let* ((_rest5638156389_ _rest56380_)
                 (_else5638356397_ (lambda () '#t))
                 (_K5638556403_
                  (lambda (_rest56400_ _x56401_)
                    (if (_f56375_ _x56401_)
                        (let () (declare (not safe)) (_lp56378_ _rest56400_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5638156389_))
                (let ((_hd5638656406_
                       (let () (declare (not safe)) (##car _rest5638156389_)))
                      (_tl5638756408_
                       (let () (declare (not safe)) (##cdr _rest5638156389_))))
                  (let* ((_x56411_ _hd5638656406_)
                         (_rest56413_ _tl5638756408_))
                    (declare (not safe))
                    (_K5638556403_ _rest56413_ _x56411_)))
                (let () (declare (not safe)) (_else5638356397_)))))))
    (define andmap2
      (lambda (_f56300_ _lst156301_ _lst256302_)
        (let _lp56304_ ((_rest156306_ _lst156301_) (_rest256307_ _lst256302_))
          (let* ((_rest15630856316_ _rest156306_)
                 (_else5631056324_ (lambda () '#t))
                 (_K5631256363_
                  (lambda (_rest156327_ _x156328_)
                    (let* ((_rest25632956337_ _rest256307_)
                           (_else5633156345_ (lambda () '#t))
                           (_K5633356351_
                            (lambda (_rest256348_ _x256349_)
                              (if (_f56300_ _x156328_ _x256349_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp56304_ _rest156327_ _rest256348_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25632956337_))
                          (let ((_hd5633456354_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25632956337_)))
                                (_tl5633556356_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25632956337_))))
                            (let* ((_x256359_ _hd5633456354_)
                                   (_rest256361_ _tl5633556356_))
                              (declare (not safe))
                              (_K5633356351_ _rest256361_ _x256359_)))
                          (let () (declare (not safe)) (_else5633156345_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15630856316_))
                (let ((_hd5631356366_
                       (let () (declare (not safe)) (##car _rest15630856316_)))
                      (_tl5631456368_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15630856316_))))
                  (let* ((_x156371_ _hd5631356366_)
                         (_rest156373_ _tl5631456368_))
                    (declare (not safe))
                    (_K5631256363_ _rest156373_ _x156371_)))
                (let () (declare (not safe)) (_else5631056324_)))))))
    (define andmap
      (lambda _g57415_
        (let ((_g57414_ (let () (declare (not safe)) (##length _g57415_))))
          (cond ((let () (declare (not safe)) (##fx= _g57414_ 2))
                 (apply (lambda (_f56288_ _lst56289_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f56288_ _lst56289_)))
                        _g57415_))
                ((let () (declare (not safe)) (##fx= _g57414_ 3))
                 (apply (lambda (_f56291_ _lst156292_ _lst256293_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f56291_ _lst156292_ _lst256293_)))
                        _g57415_))
                ((let () (declare (not safe)) (##fx>= _g57414_ 3))
                 (apply andmap* _g57415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g57415_))))))
    (define andmap*
      (lambda (_f56281_ . _rest56282_)
        (let _recur56284_ ((_rest56286_ _rest56282_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56286_))
              (if (apply _f56281_ (map car _rest56286_))
                  (let ((__tmp57416 (map cdr _rest56286_)))
                    (declare (not safe))
                    (_recur56284_ __tmp57416))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f56238_ _lst56239_)
        (let _lp56241_ ((_rest56243_ _lst56239_))
          (let* ((_rest5624456252_ _rest56243_)
                 (_else5624656260_ (lambda () '#f))
                 (_K5624856269_
                  (lambda (_rest56263_ _x56264_)
                    (let ((_$e56266_ (_f56238_ _x56264_)))
                      (if _$e56266_
                          _$e56266_
                          (let ()
                            (declare (not safe))
                            (_lp56241_ _rest56263_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5624456252_))
                (let ((_hd5624956272_
                       (let () (declare (not safe)) (##car _rest5624456252_)))
                      (_tl5625056274_
                       (let () (declare (not safe)) (##cdr _rest5624456252_))))
                  (let* ((_x56277_ _hd5624956272_)
                         (_rest56279_ _tl5625056274_))
                    (declare (not safe))
                    (_K5624856269_ _rest56279_ _x56277_)))
                (let () (declare (not safe)) (_else5624656260_)))))))
    (define ormap2
      (lambda (_f56160_ _lst156161_ _lst256162_)
        (let _lp56164_ ((_rest156166_ _lst156161_) (_rest256167_ _lst256162_))
          (let* ((_rest15616856176_ _rest156166_)
                 (_else5617056184_ (lambda () '#f))
                 (_K5617256226_
                  (lambda (_rest156187_ _x156188_)
                    (let* ((_rest25618956197_ _rest256167_)
                           (_else5619156205_ (lambda () '#f))
                           (_K5619356214_
                            (lambda (_rest256208_ _x256209_)
                              (let ((_$e56211_ (_f56160_ _x156188_ _x256209_)))
                                (if _$e56211_
                                    _$e56211_
                                    (let ()
                                      (declare (not safe))
                                      (_lp56164_
                                       _rest156187_
                                       _rest256208_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25618956197_))
                          (let ((_hd5619456217_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25618956197_)))
                                (_tl5619556219_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25618956197_))))
                            (let* ((_x256222_ _hd5619456217_)
                                   (_rest256224_ _tl5619556219_))
                              (declare (not safe))
                              (_K5619356214_ _rest256224_ _x256222_)))
                          (let () (declare (not safe)) (_else5619156205_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15616856176_))
                (let ((_hd5617356229_
                       (let () (declare (not safe)) (##car _rest15616856176_)))
                      (_tl5617456231_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15616856176_))))
                  (let* ((_x156234_ _hd5617356229_)
                         (_rest156236_ _tl5617456231_))
                    (declare (not safe))
                    (_K5617256226_ _rest156236_ _x156234_)))
                (let () (declare (not safe)) (_else5617056184_)))))))
    (define ormap
      (lambda _g57418_
        (let ((_g57417_ (let () (declare (not safe)) (##length _g57418_))))
          (cond ((let () (declare (not safe)) (##fx= _g57417_ 2))
                 (apply (lambda (_f56148_ _lst56149_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f56148_ _lst56149_)))
                        _g57418_))
                ((let () (declare (not safe)) (##fx= _g57417_ 3))
                 (apply (lambda (_f56151_ _lst156152_ _lst256153_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f56151_ _lst156152_ _lst256153_)))
                        _g57418_))
                ((let () (declare (not safe)) (##fx>= _g57417_ 3))
                 (apply ormap* _g57418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g57418_))))))
    (define ormap*
      (lambda (_f56138_ . _rest56139_)
        (let _recur56141_ ((_rest56143_ _rest56139_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56143_))
              (let ((_$e56145_ (apply _f56138_ (map car _rest56143_))))
                (if _$e56145_
                    _$e56145_
                    (let ((__tmp57419 (map cdr _rest56143_)))
                      (declare (not safe))
                      (_recur56141_ __tmp57419))))
              '#f))))
    (define filter-map1
      (lambda (_f56093_ _lst56094_)
        (let _recur56096_ ((_rest56098_ _lst56094_))
          (let* ((_rest5609956107_ _rest56098_)
                 (_else5610156115_ (lambda () '()))
                 (_K5610356126_
                  (lambda (_rest56118_ _x56119_)
                    (let ((_$e56121_ (_f56093_ _x56119_)))
                      (if _$e56121_
                          ((lambda (_r56124_)
                             (let ((__tmp57420
                                    (let ()
                                      (declare (not safe))
                                      (_recur56096_ _rest56118_))))
                               (declare (not safe))
                               (cons _r56124_ __tmp57420)))
                           _$e56121_)
                          (let ()
                            (declare (not safe))
                            (_recur56096_ _rest56118_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5609956107_))
                (let ((_hd5610456129_
                       (let () (declare (not safe)) (##car _rest5609956107_)))
                      (_tl5610556131_
                       (let () (declare (not safe)) (##cdr _rest5609956107_))))
                  (let* ((_x56134_ _hd5610456129_)
                         (_rest56136_ _tl5610556131_))
                    (declare (not safe))
                    (_K5610356126_ _rest56136_ _x56134_)))
                (let () (declare (not safe)) (_else5610156115_)))))))
    (define filter-map2
      (lambda (_f56013_ _lst156014_ _lst256015_)
        (let _recur56017_ ((_rest156019_ _lst156014_)
                           (_rest256020_ _lst256015_))
          (let* ((_rest15602156029_ _rest156019_)
                 (_else5602356037_ (lambda () '()))
                 (_K5602556081_
                  (lambda (_rest156040_ _x156041_)
                    (let* ((_rest25604256050_ _rest256020_)
                           (_else5604456058_ (lambda () '()))
                           (_K5604656069_
                            (lambda (_rest256061_ _x256062_)
                              (let ((_$e56064_ (_f56013_ _x156041_ _x256062_)))
                                (if _$e56064_
                                    ((lambda (_r56067_)
                                       (let ((__tmp57421
                                              (let ()
                                                (declare (not safe))
                                                (_recur56017_
                                                 _rest156040_
                                                 _rest256061_))))
                                         (declare (not safe))
                                         (cons _r56067_ __tmp57421)))
                                     _$e56064_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur56017_
                                       _rest156040_
                                       _rest256061_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25604256050_))
                          (let ((_hd5604756072_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25604256050_)))
                                (_tl5604856074_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25604256050_))))
                            (let* ((_x256077_ _hd5604756072_)
                                   (_rest256079_ _tl5604856074_))
                              (declare (not safe))
                              (_K5604656069_ _rest256079_ _x256077_)))
                          (let () (declare (not safe)) (_else5604456058_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15602156029_))
                (let ((_hd5602656084_
                       (let () (declare (not safe)) (##car _rest15602156029_)))
                      (_tl5602756086_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15602156029_))))
                  (let* ((_x156089_ _hd5602656084_)
                         (_rest156091_ _tl5602756086_))
                    (declare (not safe))
                    (_K5602556081_ _rest156091_ _x156089_)))
                (let () (declare (not safe)) (_else5602356037_)))))))
    (define filter-map
      (lambda _g57423_
        (let ((_g57422_ (let () (declare (not safe)) (##length _g57423_))))
          (cond ((let () (declare (not safe)) (##fx= _g57422_ 2))
                 (apply (lambda (_f56001_ _lst56002_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f56001_ _lst56002_)))
                        _g57423_))
                ((let () (declare (not safe)) (##fx= _g57422_ 3))
                 (apply (lambda (_f56004_ _lst156005_ _lst256006_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f56004_ _lst156005_ _lst256006_)))
                        _g57423_))
                ((let () (declare (not safe)) (##fx>= _g57422_ 3))
                 (apply filter-map* _g57423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g57423_))))))
    (define filter-map*
      (lambda (_f55989_ . _rest55990_)
        (let _recur55992_ ((_rest55994_ _rest55990_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55994_))
              (let ((_$e55996_ (apply _f55989_ (map car _rest55994_))))
                (if _$e55996_
                    ((lambda (_r55999_)
                       (let ((__tmp57425
                              (let ((__tmp57426 (map cdr _rest55994_)))
                                (declare (not safe))
                                (_recur55992_ __tmp57426))))
                         (declare (not safe))
                         (cons _r55999_ __tmp57425)))
                     _$e55996_)
                    (let ((__tmp57424 (map cdr _rest55994_)))
                      (declare (not safe))
                      (_recur55992_ __tmp57424))))
              '()))))
    (define assgetq__%
      (lambda (_key55967_ _lst55969_ _default55971_)
        (let ((_$e55974_
               (if (let () (declare (not safe)) (pair? _lst55969_))
                   (assq _key55967_ _lst55969_)
                   '#f)))
          (if _$e55974_
              (cdr _$e55974_)
              (if (let () (declare (not safe)) (procedure? _default55971_))
                  (_default55971_ _key55967_)
                  _default55971_)))))
    (define assgetq__0
      (lambda (_key55980_ _lst55981_)
        (let ((_default55983_ '#f))
          (declare (not safe))
          (assgetq__% _key55980_ _lst55981_ _default55983_))))
    (define assgetq
      (lambda _g57428_
        (let ((_g57427_ (let () (declare (not safe)) (##length _g57428_))))
          (cond ((let () (declare (not safe)) (##fx= _g57427_ 2))
                 (apply (lambda (_key55980_ _lst55981_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key55980_ _lst55981_)))
                        _g57428_))
                ((let () (declare (not safe)) (##fx= _g57427_ 3))
                 (apply (lambda (_key55985_ _lst55986_ _default55987_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key55985_ _lst55986_ _default55987_)))
                        _g57428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g57428_))))))
    (define assgetv__%
      (lambda (_key55944_ _lst55946_ _default55948_)
        (let ((_$e55951_
               (if (let () (declare (not safe)) (pair? _lst55946_))
                   (assv _key55944_ _lst55946_)
                   '#f)))
          (if _$e55951_
              (cdr _$e55951_)
              (if (let () (declare (not safe)) (procedure? _default55948_))
                  (_default55948_ _key55944_)
                  _default55948_)))))
    (define assgetv__0
      (lambda (_key55957_ _lst55958_)
        (let ((_default55960_ '#f))
          (declare (not safe))
          (assgetv__% _key55957_ _lst55958_ _default55960_))))
    (define assgetv
      (lambda _g57430_
        (let ((_g57429_ (let () (declare (not safe)) (##length _g57430_))))
          (cond ((let () (declare (not safe)) (##fx= _g57429_ 2))
                 (apply (lambda (_key55957_ _lst55958_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key55957_ _lst55958_)))
                        _g57430_))
                ((let () (declare (not safe)) (##fx= _g57429_ 3))
                 (apply (lambda (_key55962_ _lst55963_ _default55964_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key55962_ _lst55963_ _default55964_)))
                        _g57430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g57430_))))))
    (define assget__%
      (lambda (_key55921_ _lst55923_ _default55925_)
        (let ((_$e55928_
               (if (let () (declare (not safe)) (pair? _lst55923_))
                   (assoc _key55921_ _lst55923_)
                   '#f)))
          (if _$e55928_
              (cdr _$e55928_)
              (if (let () (declare (not safe)) (procedure? _default55925_))
                  (_default55925_ _key55921_)
                  _default55925_)))))
    (define assget__0
      (lambda (_key55934_ _lst55935_)
        (let ((_default55937_ '#f))
          (declare (not safe))
          (assget__% _key55934_ _lst55935_ _default55937_))))
    (define assget
      (lambda _g57432_
        (let ((_g57431_ (let () (declare (not safe)) (##length _g57432_))))
          (cond ((let () (declare (not safe)) (##fx= _g57431_ 2))
                 (apply (lambda (_key55934_ _lst55935_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key55934_ _lst55935_)))
                        _g57432_))
                ((let () (declare (not safe)) (##fx= _g57431_ 3))
                 (apply (lambda (_key55939_ _lst55940_ _default55941_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key55939_ _lst55940_ _default55941_)))
                        _g57432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g57432_))))))
    (define pgetq__%
      (lambda (_key55850_ _lst55852_ _default55854_)
        (let _lp55857_ ((_rest55860_ _lst55852_))
          (let* ((_rest5586255872_ _rest55860_)
                 (_else5586455880_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55854_))
                        (_default55854_ _key55850_)
                        _default55854_)))
                 (_K5586655889_
                  (lambda (_rest55883_ _v55884_ _k55886_)
                    (if (let () (declare (not safe)) (eq? _k55886_ _key55850_))
                        _v55884_
                        (let ()
                          (declare (not safe))
                          (_lp55857_ _rest55883_))))))
            (if (let () (declare (not safe)) (##pair? _rest5586255872_))
                (let ((_hd5586755892_
                       (let () (declare (not safe)) (##car _rest5586255872_)))
                      (_tl5586855894_
                       (let () (declare (not safe)) (##cdr _rest5586255872_))))
                  (let ((_k55897_ _hd5586755892_))
                    (if (let () (declare (not safe)) (##pair? _tl5586855894_))
                        (let ((_hd5586955899_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5586855894_)))
                              (_tl5587055901_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5586855894_))))
                          (let* ((_v55904_ _hd5586955899_)
                                 (_rest55906_ _tl5587055901_))
                            (declare (not safe))
                            (_K5586655889_ _rest55906_ _v55904_ _k55897_)))
                        (let () (declare (not safe)) (_else5586455880_)))))
                (let () (declare (not safe)) (_else5586455880_)))))))
    (define pgetq__0
      (lambda (_key55911_ _lst55912_)
        (let ((_default55914_ '#f))
          (declare (not safe))
          (pgetq__% _key55911_ _lst55912_ _default55914_))))
    (define pgetq
      (lambda _g57434_
        (let ((_g57433_ (let () (declare (not safe)) (##length _g57434_))))
          (cond ((let () (declare (not safe)) (##fx= _g57433_ 2))
                 (apply (lambda (_key55911_ _lst55912_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key55911_ _lst55912_)))
                        _g57434_))
                ((let () (declare (not safe)) (##fx= _g57433_ 3))
                 (apply (lambda (_key55916_ _lst55917_ _default55918_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key55916_ _lst55917_ _default55918_)))
                        _g57434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g57434_))))))
    (define pgetv__%
      (lambda (_key55779_ _lst55781_ _default55783_)
        (let _lp55786_ ((_rest55789_ _lst55781_))
          (let* ((_rest5579155801_ _rest55789_)
                 (_else5579355809_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55783_))
                        (_default55783_ _key55779_)
                        _default55783_)))
                 (_K5579555818_
                  (lambda (_rest55812_ _v55813_ _k55815_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k55815_ _key55779_))
                        _v55813_
                        (let ()
                          (declare (not safe))
                          (_lp55786_ _rest55812_))))))
            (if (let () (declare (not safe)) (##pair? _rest5579155801_))
                (let ((_hd5579655821_
                       (let () (declare (not safe)) (##car _rest5579155801_)))
                      (_tl5579755823_
                       (let () (declare (not safe)) (##cdr _rest5579155801_))))
                  (let ((_k55826_ _hd5579655821_))
                    (if (let () (declare (not safe)) (##pair? _tl5579755823_))
                        (let ((_hd5579855828_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5579755823_)))
                              (_tl5579955830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5579755823_))))
                          (let* ((_v55833_ _hd5579855828_)
                                 (_rest55835_ _tl5579955830_))
                            (declare (not safe))
                            (_K5579555818_ _rest55835_ _v55833_ _k55826_)))
                        (let () (declare (not safe)) (_else5579355809_)))))
                (let () (declare (not safe)) (_else5579355809_)))))))
    (define pgetv__0
      (lambda (_key55840_ _lst55841_)
        (let ((_default55843_ '#f))
          (declare (not safe))
          (pgetv__% _key55840_ _lst55841_ _default55843_))))
    (define pgetv
      (lambda _g57436_
        (let ((_g57435_ (let () (declare (not safe)) (##length _g57436_))))
          (cond ((let () (declare (not safe)) (##fx= _g57435_ 2))
                 (apply (lambda (_key55840_ _lst55841_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key55840_ _lst55841_)))
                        _g57436_))
                ((let () (declare (not safe)) (##fx= _g57435_ 3))
                 (apply (lambda (_key55845_ _lst55846_ _default55847_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key55845_ _lst55846_ _default55847_)))
                        _g57436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g57436_))))))
    (define pget__%
      (lambda (_key55708_ _lst55710_ _default55712_)
        (let _lp55715_ ((_rest55718_ _lst55710_))
          (let* ((_rest5572055730_ _rest55718_)
                 (_else5572255738_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55712_))
                        (_default55712_ _key55708_)
                        _default55712_)))
                 (_K5572455747_
                  (lambda (_rest55741_ _v55742_ _k55744_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k55744_ _key55708_))
                        _v55742_
                        (let ()
                          (declare (not safe))
                          (_lp55715_ _rest55741_))))))
            (if (let () (declare (not safe)) (##pair? _rest5572055730_))
                (let ((_hd5572555750_
                       (let () (declare (not safe)) (##car _rest5572055730_)))
                      (_tl5572655752_
                       (let () (declare (not safe)) (##cdr _rest5572055730_))))
                  (let ((_k55755_ _hd5572555750_))
                    (if (let () (declare (not safe)) (##pair? _tl5572655752_))
                        (let ((_hd5572755757_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5572655752_)))
                              (_tl5572855759_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5572655752_))))
                          (let* ((_v55762_ _hd5572755757_)
                                 (_rest55764_ _tl5572855759_))
                            (declare (not safe))
                            (_K5572455747_ _rest55764_ _v55762_ _k55755_)))
                        (let () (declare (not safe)) (_else5572255738_)))))
                (let () (declare (not safe)) (_else5572255738_)))))))
    (define pget__0
      (lambda (_key55769_ _lst55770_)
        (let ((_default55772_ '#f))
          (declare (not safe))
          (pget__% _key55769_ _lst55770_ _default55772_))))
    (define pget
      (lambda _g57438_
        (let ((_g57437_ (let () (declare (not safe)) (##length _g57438_))))
          (cond ((let () (declare (not safe)) (##fx= _g57437_ 2))
                 (apply (lambda (_key55769_ _lst55770_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key55769_ _lst55770_)))
                        _g57438_))
                ((let () (declare (not safe)) (##fx= _g57437_ 3))
                 (apply (lambda (_key55774_ _lst55775_ _default55776_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key55774_ _lst55775_ _default55776_)))
                        _g57438_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g57438_))))))
    (define find
      (lambda (_pred55701_ _lst55702_)
        (let ((_$e55704_
               (let () (declare (not safe)) (memf _pred55701_ _lst55702_))))
          (if _$e55704_ (car _$e55704_) '#f))))
    (define memf
      (lambda (_proc55661_ _lst55662_)
        (let _lp55664_ ((_rest55666_ _lst55662_))
          (let* ((_rest5566755675_ _rest55666_)
                 (_else5566955683_ (lambda () '#f))
                 (_K5567155689_
                  (lambda (_tl55686_ _hd55687_)
                    (if (_proc55661_ _hd55687_)
                        _rest55666_
                        (let () (declare (not safe)) (_lp55664_ _tl55686_))))))
            (if (let () (declare (not safe)) (##pair? _rest5566755675_))
                (let ((_hd5567255692_
                       (let () (declare (not safe)) (##car _rest5566755675_)))
                      (_tl5567355694_
                       (let () (declare (not safe)) (##cdr _rest5566755675_))))
                  (let* ((_hd55697_ _hd5567255692_) (_tl55699_ _tl5567355694_))
                    (declare (not safe))
                    (_K5567155689_ _tl55699_ _hd55697_)))
                (let () (declare (not safe)) (_else5566955683_)))))))
    (define remove1
      (lambda (_el55614_ _lst55616_)
        (let _lp55619_ ((_rest55622_ _lst55616_) (_r55624_ '()))
          (let* ((_rest5562655634_ _rest55622_)
                 (_else5562855642_ (lambda () _lst55616_))
                 (_K5563055649_
                  (lambda (_rest55645_ _hd55646_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el55614_ _hd55646_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55645_ _r55624_))
                        (let ((__tmp57439
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55646_ _r55624_))))
                          (declare (not safe))
                          (_lp55619_ _rest55645_ __tmp57439))))))
            (if (let () (declare (not safe)) (##pair? _rest5562655634_))
                (let ((_hd5563155652_
                       (let () (declare (not safe)) (##car _rest5562655634_)))
                      (_tl5563255654_
                       (let () (declare (not safe)) (##cdr _rest5562655634_))))
                  (let* ((_hd55657_ _hd5563155652_)
                         (_rest55659_ _tl5563255654_))
                    (declare (not safe))
                    (_K5563055649_ _rest55659_ _hd55657_)))
                (let () (declare (not safe)) (_else5562855642_)))))))
    (define remv
      (lambda (_el55567_ _lst55569_)
        (let _lp55572_ ((_rest55575_ _lst55569_) (_r55577_ '()))
          (let* ((_rest5557955587_ _rest55575_)
                 (_else5558155595_ (lambda () _lst55569_))
                 (_K5558355602_
                  (lambda (_rest55598_ _hd55599_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el55567_ _hd55599_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55598_ _r55577_))
                        (let ((__tmp57440
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55599_ _r55577_))))
                          (declare (not safe))
                          (_lp55572_ _rest55598_ __tmp57440))))))
            (if (let () (declare (not safe)) (##pair? _rest5557955587_))
                (let ((_hd5558455605_
                       (let () (declare (not safe)) (##car _rest5557955587_)))
                      (_tl5558555607_
                       (let () (declare (not safe)) (##cdr _rest5557955587_))))
                  (let* ((_hd55610_ _hd5558455605_)
                         (_rest55612_ _tl5558555607_))
                    (declare (not safe))
                    (_K5558355602_ _rest55612_ _hd55610_)))
                (let () (declare (not safe)) (_else5558155595_)))))))
    (define remq
      (lambda (_el55520_ _lst55522_)
        (let _lp55525_ ((_rest55528_ _lst55522_) (_r55530_ '()))
          (let* ((_rest5553255540_ _rest55528_)
                 (_else5553455548_ (lambda () _lst55522_))
                 (_K5553655555_
                  (lambda (_rest55551_ _hd55552_)
                    (if (let () (declare (not safe)) (eq? _el55520_ _hd55552_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55551_ _r55530_))
                        (let ((__tmp57441
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55552_ _r55530_))))
                          (declare (not safe))
                          (_lp55525_ _rest55551_ __tmp57441))))))
            (if (let () (declare (not safe)) (##pair? _rest5553255540_))
                (let ((_hd5553755558_
                       (let () (declare (not safe)) (##car _rest5553255540_)))
                      (_tl5553855560_
                       (let () (declare (not safe)) (##cdr _rest5553255540_))))
                  (let* ((_hd55563_ _hd5553755558_)
                         (_rest55565_ _tl5553855560_))
                    (declare (not safe))
                    (_K5553655555_ _rest55565_ _hd55563_)))
                (let () (declare (not safe)) (_else5553455548_)))))))
    (define remf
      (lambda (_proc55479_ _lst55480_)
        (let _lp55482_ ((_rest55484_ _lst55480_) (_r55485_ '()))
          (let* ((_rest5548655494_ _rest55484_)
                 (_else5548855502_ (lambda () _lst55480_))
                 (_K5549055508_
                  (lambda (_rest55505_ _hd55506_)
                    (if (_proc55479_ _hd55506_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55505_ _r55485_))
                        (let ((__tmp57442
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55506_ _r55485_))))
                          (declare (not safe))
                          (_lp55482_ _rest55505_ __tmp57442))))))
            (if (let () (declare (not safe)) (##pair? _rest5548655494_))
                (let ((_hd5549155511_
                       (let () (declare (not safe)) (##car _rest5548655494_)))
                      (_tl5549255513_
                       (let () (declare (not safe)) (##cdr _rest5548655494_))))
                  (let* ((_hd55516_ _hd5549155511_)
                         (_rest55518_ _tl5549255513_))
                    (declare (not safe))
                    (_K5549055508_ _rest55518_ _hd55516_)))
                (let () (declare (not safe)) (_else5548855502_)))))))
    (define 1+ (lambda (_x55477_) (+ _x55477_ '1)))
    (define 1- (lambda (_x55475_) (- _x55475_ '1)))
    (define fx1+ (lambda (_x55473_) (fx+ _x55473_ '1)))
    (define fx1- (lambda (_x55471_) (fx- _x55471_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x55469_)
        (if (let () (declare (not safe)) (fixnum? _x55469_))
            (let () (declare (not safe)) (##fx>= _x55469_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x55467_)
        (if (let () (declare (not safe)) (fixnum? _x55467_))
            (let () (declare (not safe)) (##fx> _x55467_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x55465_) (let () (declare (not safe)) (eq? _x55465_ '0))))
    (define fx<0?
      (lambda (_x55463_)
        (if (let () (declare (not safe)) (fixnum? _x55463_))
            (let () (declare (not safe)) (##fx< _x55463_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x55461_)
        (if (let () (declare (not safe)) (fixnum? _x55461_))
            (let () (declare (not safe)) (##fx<= _x55461_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x55459_)
        (if (let () (declare (not safe)) (symbol? _x55459_))
            (let ((__tmp57443 (uninterned-symbol? _x55459_)))
              (declare (not safe))
              (not __tmp57443))
            '#f)))
    (define display-as-string
      (lambda (_x55431_ _port55432_)
        (if (or (let () (declare (not safe)) (string? _x55431_))
                (let () (declare (not safe)) (symbol? _x55431_))
                (keyword? _x55431_)
                (let () (declare (not safe)) (number? _x55431_))
                (let () (declare (not safe)) (char? _x55431_)))
            (display _x55431_ _port55432_)
            (if (let () (declare (not safe)) (pair? _x55431_))
                (begin
                  (let ((__tmp57444 (car _x55431_)))
                    (declare (not safe))
                    (display-as-string __tmp57444 _port55432_))
                  (let ((__tmp57445 (cdr _x55431_)))
                    (declare (not safe))
                    (display-as-string __tmp57445 _port55432_)))
                (if (let () (declare (not safe)) (vector? _x55431_))
                    (vector-for-each
                     (lambda (_g5544555447_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5544555447_ _port55432_)))
                     _x55431_)
                    (if (or (let () (declare (not safe)) (null? _x55431_))
                            (let ()
                              (declare (not safe))
                              (eq? _x55431_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x55431_))
                            (let () (declare (not safe)) (boolean? _x55431_)))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot convert as string" _x55431_))))))))
    (define as-string__0
      (lambda (_x55419_)
        (if (let () (declare (not safe)) (string? _x55419_))
            _x55419_
            (if (let () (declare (not safe)) (symbol? _x55419_))
                (symbol->string _x55419_)
                (if (keyword? _x55419_)
                    (keyword->string _x55419_)
                    (if (let () (declare (not safe)) (number? _x55419_))
                        (number->string _x55419_)
                        (call-with-output-string
                         '()
                         (lambda (_g5542055422_)
                           (let ()
                             (declare (not safe))
                             (display-as-string
                              _x55419_
                              _g5542055422_))))))))))
    (define as-string__1
      (lambda _args55425_
        (call-with-output-string
         '()
         (lambda (_g5542655428_)
           (let ()
             (declare (not safe))
             (display-as-string _args55425_ _g5542655428_))))))
    (define as-string
      (lambda _g57447_
        (let ((_g57446_ (let () (declare (not safe)) (##length _g57447_))))
          (cond ((let () (declare (not safe)) (##fx= _g57446_ 1))
                 (apply (lambda (_x55419_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x55419_)))
                        _g57447_))
                (#t (apply as-string__1 _g57447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g57447_))))))
    (define make-symbol__0
      (lambda (_x55415_)
        (if (let () (declare (not safe)) (interned-symbol? _x55415_))
            _x55415_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x55415_))))))
    (define make-symbol__1
      (lambda _args55417_ (string->symbol (apply as-string _args55417_))))
    (define make-symbol
      (lambda _g57449_
        (let ((_g57448_ (let () (declare (not safe)) (##length _g57449_))))
          (cond ((let () (declare (not safe)) (##fx= _g57448_ 1))
                 (apply (lambda (_x55415_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x55415_)))
                        _g57449_))
                (#t (apply make-symbol__1 _g57449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g57449_))))))
    (define make-keyword__0
      (lambda (_x55411_)
        (if (let () (declare (not safe)) (interned-keyword? _x55411_))
            _x55411_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x55411_))))))
    (define make-keyword__1
      (lambda _args55413_ (string->keyword (apply as-string _args55413_))))
    (define make-keyword
      (lambda _g57451_
        (let ((_g57450_ (let () (declare (not safe)) (##length _g57451_))))
          (cond ((let () (declare (not safe)) (##fx= _g57450_ 1))
                 (apply (lambda (_x55411_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x55411_)))
                        _g57451_))
                (#t (apply make-keyword__1 _g57451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g57451_))))))
    (define interned-keyword?
      (lambda (_x55409_)
        (if (keyword? _x55409_)
            (let ((__tmp57452 (uninterned-keyword? _x55409_)))
              (declare (not safe))
              (not __tmp57452))
            '#f)))
    (define symbol->keyword
      (lambda (_sym55407_)
        ((if (uninterned-symbol? _sym55407_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym55407_))))
    (define keyword->symbol
      (lambda (_kw55405_)
        ((if (uninterned-keyword? _kw55405_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw55405_))))
    (define bytes->string__%
      (lambda (_bstr55383_ _enc55384_)
        (if (let () (declare (not safe)) (eq? _enc55384_ 'UTF-8))
            (utf8->string _bstr55383_)
            (let* ((_in55386_
                    (open-input-u8vector
                     (let ((__tmp57453
                            (let ((__tmp57454
                                   (let ((__tmp57455
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr55383_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp57455))))
                              (declare (not safe))
                              (cons _enc55384_ __tmp57454))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp57453))))
                   (_len55388_ (u8vector-length _bstr55383_))
                   (_out55390_ (make-string _len55388_))
                   (_n55392_
                    (read-substring _out55390_ '0 _len55388_ _in55386_)))
              (string-shrink! _out55390_ _n55392_)
              _out55390_))))
    (define bytes->string__0
      (lambda (_bstr55398_)
        (let ((_enc55400_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr55398_ _enc55400_))))
    (define bytes->string
      (lambda _g57457_
        (let ((_g57456_ (let () (declare (not safe)) (##length _g57457_))))
          (cond ((let () (declare (not safe)) (##fx= _g57456_ 1))
                 (apply (lambda (_bstr55398_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr55398_)))
                        _g57457_))
                ((let () (declare (not safe)) (##fx= _g57456_ 2))
                 (apply (lambda (_bstr55402_ _enc55403_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr55402_ _enc55403_)))
                        _g57457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g57457_))))))
    (define string->bytes__%
      (lambda (_str55369_ _enc55370_)
        (if (let () (declare (not safe)) (eq? _enc55370_ 'UTF-8))
            (string->utf8 _str55369_)
            (let ((__tmp57458 (string-length _str55369_)))
              (declare (not safe))
              (substring->bytes _str55369_ '0 __tmp57458 _enc55370_)))))
    (define string->bytes__0
      (lambda (_str55375_)
        (let ((_enc55377_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str55375_ _enc55377_))))
    (define string->bytes
      (lambda _g57460_
        (let ((_g57459_ (let () (declare (not safe)) (##length _g57460_))))
          (cond ((let () (declare (not safe)) (##fx= _g57459_ 1))
                 (apply (lambda (_str55375_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str55375_)))
                        _g57460_))
                ((let () (declare (not safe)) (##fx= _g57459_ 2))
                 (apply (lambda (_str55379_ _enc55380_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str55379_ _enc55380_)))
                        _g57460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g57460_))))))
    (define substring->bytes__%
      (lambda (_str55347_ _start55348_ _end55349_ _enc55350_)
        (if (let () (declare (not safe)) (eq? _enc55350_ 'UTF-8))
            (string->utf8 _str55347_ _start55348_ _end55349_)
            (let ((_out55352_
                   (open-output-u8vector
                    (let ((__tmp57461
                           (let ()
                             (declare (not safe))
                             (cons _enc55350_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp57461)))))
              (write-substring _str55347_ _start55348_ _end55349_ _out55352_)
              (get-output-u8vector _out55352_)))))
    (define substring->bytes__0
      (lambda (_str55357_ _start55358_ _end55359_)
        (let ((_enc55361_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str55357_
           _start55358_
           _end55359_
           _enc55361_))))
    (define substring->bytes
      (lambda _g57463_
        (let ((_g57462_ (let () (declare (not safe)) (##length _g57463_))))
          (cond ((let () (declare (not safe)) (##fx= _g57462_ 3))
                 (apply (lambda (_str55357_ _start55358_ _end55359_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str55357_
                             _start55358_
                             _end55359_)))
                        _g57463_))
                ((let () (declare (not safe)) (##fx= _g57462_ 4))
                 (apply (lambda (_str55363_ _start55364_ _end55365_ _enc55366_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str55363_
                             _start55364_
                             _end55365_
                             _enc55366_)))
                        _g57463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g57463_))))))
    (define string-empty?
      (lambda (_str55344_)
        (let ((__tmp57464 (string-length _str55344_)))
          (declare (not safe))
          (##fxzero? __tmp57464))))
    (define string-prefix?
      (lambda (_prefix55334_ _str55335_)
        (let ((_str-len55337_ (string-length _str55335_))
              (_prefix-len55338_ (string-length _prefix55334_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len55338_ _str-len55337_))
              (let _lp55340_ ((_i55342_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i55342_ _prefix-len55338_))
                    (if (let ((__tmp57467
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str55335_ _i55342_)))
                              (__tmp57466
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix55334_ _i55342_))))
                          (declare (not safe))
                          (eq? __tmp57467 __tmp57466))
                        (let ((__tmp57465
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i55342_ '1))))
                          (declare (not safe))
                          (_lp55340_ __tmp57465))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str55312_ _char55313_ _start55314_)
        (let ((_len55316_ (string-length _str55312_)))
          (let _lp55318_ ((_k55320_ _start55314_))
            (if (let () (declare (not safe)) (##fx< _k55320_ _len55316_))
                (if (let ((__tmp57469
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55312_ _k55320_))))
                      (declare (not safe))
                      (eq? _char55313_ __tmp57469))
                    _k55320_
                    (let ((__tmp57468
                           (let () (declare (not safe)) (##fx+ _k55320_ '1))))
                      (declare (not safe))
                      (_lp55318_ __tmp57468)))
                '#f)))))
    (define string-index__0
      (lambda (_str55325_ _char55326_)
        (let ((_start55328_ '0))
          (declare (not safe))
          (string-index__% _str55325_ _char55326_ _start55328_))))
    (define string-index
      (lambda _g57471_
        (let ((_g57470_ (let () (declare (not safe)) (##length _g57471_))))
          (cond ((let () (declare (not safe)) (##fx= _g57470_ 2))
                 (apply (lambda (_str55325_ _char55326_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str55325_ _char55326_)))
                        _g57471_))
                ((let () (declare (not safe)) (##fx= _g57470_ 3))
                 (apply (lambda (_str55330_ _char55331_ _start55332_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str55330_
                             _char55331_
                             _start55332_)))
                        _g57471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g57471_))))))
    (define string-rindex__%
      (lambda (_str55283_ _char55284_ _start55285_)
        (let* ((_len55287_ (string-length _str55283_))
               (_start55292_
                (let ((_$e55289_ _start55285_))
                  (if _$e55289_
                      _$e55289_
                      (let () (declare (not safe)) (##fx- _len55287_ '1))))))
          (let _lp55295_ ((_k55297_ _start55292_))
            (if (let () (declare (not safe)) (##fx>= _k55297_ '0))
                (if (let ((__tmp57473
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55283_ _k55297_))))
                      (declare (not safe))
                      (eq? _char55284_ __tmp57473))
                    _k55297_
                    (let ((__tmp57472
                           (let () (declare (not safe)) (##fx- _k55297_ '1))))
                      (declare (not safe))
                      (_lp55295_ __tmp57472)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str55302_ _char55303_)
        (let ((_start55305_ '#f))
          (declare (not safe))
          (string-rindex__% _str55302_ _char55303_ _start55305_))))
    (define string-rindex
      (lambda _g57475_
        (let ((_g57474_ (let () (declare (not safe)) (##length _g57475_))))
          (cond ((let () (declare (not safe)) (##fx= _g57474_ 2))
                 (apply (lambda (_str55302_ _char55303_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str55302_ _char55303_)))
                        _g57475_))
                ((let () (declare (not safe)) (##fx= _g57474_ 3))
                 (apply (lambda (_str55307_ _char55308_ _start55309_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str55307_
                             _char55308_
                             _start55309_)))
                        _g57475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g57475_))))))
    (define string-split
      (lambda (_str55267_ _char55268_)
        (let ((_len55270_ (string-length _str55267_)))
          (let _lp55272_ ((_start55274_ '0) (_r55275_ '()))
            (let ((_$e55277_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str55267_ _char55268_ _start55274_))))
              (if _$e55277_
                  ((lambda (_end55280_)
                     (let ((__tmp57479
                            (let ()
                              (declare (not safe))
                              (##fx+ _end55280_ '1)))
                           (__tmp57477
                            (let ((__tmp57478
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55267_
                                      _start55274_
                                      _end55280_))))
                              (declare (not safe))
                              (cons __tmp57478 _r55275_))))
                       (declare (not safe))
                       (_lp55272_ __tmp57479 __tmp57477)))
                   _$e55277_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start55274_ _len55270_))
                      (let ((__tmp57476
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55267_
                                      _start55274_
                                      _len55270_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp57476 _r55275_))
                      (reverse _r55275_))))))))
    (define string-join
      (lambda (_strs55172_ _join55173_)
        (letrec ((_join-length55175_
                  (lambda (_strs55226_ _jlen55227_)
                    (let _lp55229_ ((_rest55231_ _strs55226_) (_len55232_ '0))
                      (let* ((_rest5523355241_ _rest55231_)
                             (_else5523555249_ (lambda () '0))
                             (_K5523755255_
                              (lambda (_rest55252_ _hd55253_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd55253_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest55252_))
                                        (let ((__tmp57481
                                               (let ((__tmp57482
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd55253_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp57482
                                                        _jlen55227_
                                                        _len55232_))))
                                          (declare (not safe))
                                          (_lp55229_ _rest55252_ __tmp57481))
                                        (let ((__tmp57480
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd55253_))))
                                          (declare (not safe))
                                          (##fx+ __tmp57480 _len55232_)))
                                    (let ()
                                      (declare (not safe))
                                      (error '"expected string" _hd55253_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5523355241_))
                            (let ((_hd5523855258_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5523355241_)))
                                  (_tl5523955260_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5523355241_))))
                              (let* ((_hd55263_ _hd5523855258_)
                                     (_rest55265_ _tl5523955260_))
                                (declare (not safe))
                                (_K5523755255_ _rest55265_ _hd55263_)))
                            (let ()
                              (declare (not safe))
                              (_else5523555249_))))))))
          (let* ((_join55177_
                  (if (let () (declare (not safe)) (char? _join55173_))
                      (string _join55173_)
                      (if (let () (declare (not safe)) (string? _join55173_))
                          _join55173_
                          (let ()
                            (declare (not safe))
                            (error '"expected string or char" _join55173_)))))
                 (_jlen55179_
                  (let () (declare (not safe)) (##string-length _join55177_)))
                 (_olen55181_
                  (let ()
                    (declare (not safe))
                    (_join-length55175_ _strs55172_ _jlen55179_)))
                 (_ostr55183_ (make-string _olen55181_)))
            (let _lp55186_ ((_rest55188_ _strs55172_) (_k55189_ '0))
              (let* ((_rest5519055198_ _rest55188_)
                     (_else5519255206_ (lambda () '""))
                     (_K5519455214_
                      (lambda (_rest55209_ _hd55210_)
                        (let ((_hdlen55212_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd55210_))))
                          (if (let () (declare (not safe)) (pair? _rest55209_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd55210_
                                   '0
                                   _hdlen55212_
                                   _ostr55183_
                                   _k55189_))
                                (let ((__tmp57483
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k55189_ _hdlen55212_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join55177_
                                   '0
                                   _jlen55179_
                                   _ostr55183_
                                   __tmp57483))
                                (let ((__tmp57484
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k55189_
                                                _hdlen55212_
                                                _jlen55179_))))
                                  (declare (not safe))
                                  (_lp55186_ _rest55209_ __tmp57484)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd55210_
                                   '0
                                   _hdlen55212_
                                   _ostr55183_
                                   _k55189_))
                                _ostr55183_))))))
                (if (let () (declare (not safe)) (##pair? _rest5519055198_))
                    (let ((_hd5519555217_
                           (let ()
                             (declare (not safe))
                             (##car _rest5519055198_)))
                          (_tl5519655219_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5519055198_))))
                      (let* ((_hd55222_ _hd5519555217_)
                             (_rest55224_ _tl5519655219_))
                        (declare (not safe))
                        (_K5519455214_ _rest55224_ _hd55222_)))
                    (let () (declare (not safe)) (_else5519255206_)))))))))
    (define read-u8vector
      (lambda (_bytes55169_ _port55170_)
        (read-subu8vector
         _bytes55169_
         '0
         (u8vector-length _bytes55169_)
         _port55170_)))
    (define write-u8vector
      (lambda (_bytes55166_ _port55167_)
        (write-subu8vector
         _bytes55166_
         '0
         (u8vector-length _bytes55166_)
         _port55167_)))
    (define read-string
      (lambda (_str55163_ _port55164_)
        (read-substring _str55163_ '0 (string-length _str55163_) _port55164_)))
    (define write-string
      (lambda (_str55160_ _port55161_)
        (write-substring
         _str55160_
         '0
         (string-length _str55160_)
         _port55161_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag55129_
               _dbg-exprs55130_
               _dbg-thunks55131_
               _expr55132_
               _thunk55133_)
        (letrec ((_o55135_ (current-output-port))
                 (_e55136_ (current-error-port))
                 (_p55137_ (DBG-printer))
                 (_f55138_
                  (lambda () (force-output _o55135_) (force-output _e55136_)))
                 (_d55139_ (lambda (_x55146_) (display _x55146_ _e55136_)))
                 (_w55140_ (lambda (_x55148_) (_p55137_ _x55148_ _e55136_)))
                 (_n55141_ (lambda () (newline _e55136_)))
                 (_v55142_
                  (lambda (_l55151_)
                    (for-each
                     (lambda (_x55153_)
                       (let () (declare (not safe)) (_d55139_ '" "))
                       (let () (declare (not safe)) (_w55140_ _x55153_)))
                     _l55151_)
                    (let () (declare (not safe)) (_n55141_))))
                 (_x55143_
                  (lambda (_expr55155_ _thunk55156_)
                    (let () (declare (not safe)) (_f55138_))
                    (let () (declare (not safe)) (_d55139_ '"  "))
                    (let () (declare (not safe)) (_w55140_ _expr55155_))
                    (let () (declare (not safe)) (_d55139_ '" =>"))
                    (call-with-values
                     _thunk55156_
                     (lambda _x55158_
                       (let () (declare (not safe)) (_v55142_ _x55158_))
                       (let () (declare (not safe)) (_f55138_))
                       (apply values _x55158_))))))
          (if _tag55129_
              (begin
                (if (let () (declare (not safe)) (eq? _tag55129_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f55138_))
                      (let () (declare (not safe)) (_d55139_ _tag55129_))
                      (let () (declare (not safe)) (_n55141_))))
                (for-each _x55143_ _dbg-exprs55130_ _dbg-thunks55131_)
                (if _thunk55133_
                    (let ()
                      (declare (not safe))
                      (_x55143_ _expr55132_ _thunk55133_))
                    '#!void))
              (if _thunk55133_ (_thunk55133_) '#!void)))))))
