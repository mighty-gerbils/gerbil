(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1708418153)
  (begin
    (define displayln
      (lambda _args56548_
        (let _lp56550_ ((_rest56552_ _args56548_))
          (let* ((_rest5655356561_ _rest56552_)
                 (_else5655556569_ (lambda () (newline)))
                 (_K5655756575_
                  (lambda (_rest56572_ _hd56573_)
                    (display _hd56573_)
                    (let () (declare (not safe)) (_lp56550_ _rest56572_)))))
            (if (let () (declare (not safe)) (##pair? _rest5655356561_))
                (let ((_hd5655856578_
                       (let () (declare (not safe)) (##car _rest5655356561_)))
                      (_tl5655956580_
                       (let () (declare (not safe)) (##cdr _rest5655356561_))))
                  (let* ((_hd56583_ _hd5655856578_)
                         (_rest56585_ _tl5655956580_))
                    (declare (not safe))
                    (_K5655756575_ _rest56585_ _hd56583_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args56546_ (for-each display _args56546_)))
    (define file-newer?
      (lambda (_file156539_ _file256540_)
        (letrec ((_modification-time56542_
                  (lambda (_file56544_)
                    (let ((__tmp56969
                           (file-info-last-modification-time
                            (file-info _file56544_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp56969)))))
          (let ((__tmp56971
                 (let ()
                   (declare (not safe))
                   (_modification-time56542_ _file156539_)))
                (__tmp56970
                 (let ()
                   (declare (not safe))
                   (_modification-time56542_ _file256540_))))
            (declare (not safe))
            (##fl> __tmp56971 __tmp56970)))))
    (define create-directory*__%
      (lambda (_dir56513_ _perms56514_)
        (letrec ((_create156516_
                  (lambda (_path56527_)
                    (if (file-exists? _path56527_)
                        (if (let ((__tmp56972 (file-type _path56527_)))
                              (declare (not safe))
                              (eq? __tmp56972 'directory))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"Path component is not a directory"
                                     _path56527_)))
                        (if _perms56514_
                            (create-directory
                             (list 'path:
                                   _path56527_
                                   'permissions:
                                   _perms56514_))
                            (create-directory _path56527_))))))
          (if (file-exists? _dir56513_)
              '#!void
              (let _lp56518_ ((_start56520_ '0))
                (let ((_$e56522_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir56513_ '#\/ _start56520_))))
                  (if _$e56522_
                      ((lambda (_x56525_)
                         (if (let () (declare (not safe)) (##fx> _x56525_ '0))
                             (let ((__tmp56973
                                    (substring _dir56513_ '0 _x56525_)))
                               (declare (not safe))
                               (_create156516_ __tmp56973))
                             '#!void)
                         (let ((__tmp56974
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x56525_ '1))))
                           (declare (not safe))
                           (_lp56518_ __tmp56974)))
                       _$e56522_)
                      (let ()
                        (declare (not safe))
                        (_create156516_ _dir56513_)))))))))
    (define create-directory*__0
      (lambda (_dir56532_)
        (let ((_perms56534_ '493))
          (declare (not safe))
          (create-directory*__% _dir56532_ _perms56534_))))
    (define create-directory*
      (lambda _g56976_
        (let ((_g56975_ (let () (declare (not safe)) (##length _g56976_))))
          (cond ((let () (declare (not safe)) (##fx= _g56975_ 1))
                 (apply (lambda (_dir56532_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir56532_)))
                        _g56976_))
                ((let () (declare (not safe)) (##fx= _g56975_ 2))
                 (apply (lambda (_dir56536_ _perms56537_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir56536_ _perms56537_)))
                        _g56976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g56976_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g56977_ '#t))
    (define true?
      (lambda (_obj56509_) (let () (declare (not safe)) (eq? _obj56509_ '#t))))
    (define false (lambda _g56978_ '#f))
    (define void (lambda _g56979_ '#!void))
    (define void?
      (lambda (_obj56505_)
        (let () (declare (not safe)) (eq? _obj56505_ '#!void))))
    (define eof-object (lambda _g56980_ '#!eof))
    (define identity (lambda (_obj56502_) _obj56502_))
    (define dssl-object?
      (lambda (_obj56500_)
        (if (memq _obj56500_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj56498_)
        (let () (declare (not safe)) (eq? _obj56498_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj56496_)
        (let () (declare (not safe)) (eq? _obj56496_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj56494_)
        (let () (declare (not safe)) (eq? _obj56494_ '#!optional))))
    (define immediate?
      (lambda (_obj56490_)
        (let* ((_t56492_ (let () (declare (not safe)) (##type _obj56490_)))
               (__tmp56981
                (let () (declare (not safe)) (##fxand _t56492_ '1))))
          (declare (not safe))
          (##fxzero? __tmp56981))))
    (define nonnegative-fixnum?
      (lambda (_obj56488_)
        (if (let () (declare (not safe)) (fixnum? _obj56488_))
            (let ((__tmp56982 (fxnegative? _obj56488_)))
              (declare (not safe))
              (not __tmp56982))
            '#f)))
    (define values-count
      (lambda (_obj56486_)
        (if (let () (declare (not safe)) (##values? _obj56486_))
            (let () (declare (not safe)) (##vector-length _obj56486_))
            '1)))
    (define values-ref
      (lambda (_obj56483_ _k56484_)
        (if (let () (declare (not safe)) (##values? _obj56483_))
            (let () (declare (not safe)) (##vector-ref _obj56483_ _k56484_))
            _obj56483_)))
    (define values->list
      (lambda (_obj56481_)
        (if (let () (declare (not safe)) (##values? _obj56481_))
            (let () (declare (not safe)) (##vector->list _obj56481_))
            (list _obj56481_))))
    (define subvector->list__%
      (lambda (_obj56466_ _start56467_)
        (let ((_lst56469_
               (let () (declare (not safe)) (##vector->list _obj56466_))))
          (list-tail _lst56469_ _start56467_))))
    (define subvector->list__0
      (lambda (_obj56474_)
        (let ((_start56476_ '0))
          (declare (not safe))
          (subvector->list__% _obj56474_ _start56476_))))
    (define subvector->list
      (lambda _g56984_
        (let ((_g56983_ (let () (declare (not safe)) (##length _g56984_))))
          (cond ((let () (declare (not safe)) (##fx= _g56983_ 1))
                 (apply (lambda (_obj56474_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj56474_)))
                        _g56984_))
                ((let () (declare (not safe)) (##fx= _g56983_ 2))
                 (apply (lambda (_obj56478_ _start56479_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj56478_ _start56479_)))
                        _g56984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g56984_))))))
    (define make-list__%
      (lambda (_k56447_ _val56448_)
        (if (let () (declare (not safe)) (fixnum? _k56447_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected argument 1 to be fixnum" _k56447_)))
        (let _lp56450_ ((_n56452_ '0) (_r56453_ '()))
          (if (let () (declare (not safe)) (##fx< _n56452_ _k56447_))
              (let ((__tmp56986
                     (let () (declare (not safe)) (##fx+ _n56452_ '1)))
                    (__tmp56985
                     (let () (declare (not safe)) (cons _val56448_ _r56453_))))
                (declare (not safe))
                (_lp56450_ __tmp56986 __tmp56985))
              _r56453_))))
    (define make-list__0
      (lambda (_k56458_)
        (let ((_val56460_ '#f))
          (declare (not safe))
          (make-list__% _k56458_ _val56460_))))
    (define make-list
      (lambda _g56988_
        (let ((_g56987_ (let () (declare (not safe)) (##length _g56988_))))
          (cond ((let () (declare (not safe)) (##fx= _g56987_ 1))
                 (apply (lambda (_k56458_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k56458_)))
                        _g56988_))
                ((let () (declare (not safe)) (##fx= _g56987_ 2))
                 (apply (lambda (_k56462_ _val56463_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k56462_ _val56463_)))
                        _g56988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g56988_))))))
    (define cons*
      (lambda (_x56437_ _y56438_ . _rest56439_)
        (letrec ((_recur56441_
                  (lambda (_x56443_ _rest56444_)
                    (if (let () (declare (not safe)) (pair? _rest56444_))
                        (let ((__tmp56989
                               (let ((__tmp56991
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest56444_)))
                                     (__tmp56990
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest56444_))))
                                 (declare (not safe))
                                 (_recur56441_ __tmp56991 __tmp56990))))
                          (declare (not safe))
                          (cons _x56443_ __tmp56989))
                        _x56443_))))
          (let ((__tmp56992
                 (let ()
                   (declare (not safe))
                   (_recur56441_ _y56438_ _rest56439_))))
            (declare (not safe))
            (cons _x56437_ __tmp56992)))))
    (define foldl1
      (lambda (_f56395_ _iv56396_ _lst56397_)
        (let _lp56399_ ((_rest56401_ _lst56397_) (_r56402_ _iv56396_))
          (let* ((_rest5640356411_ _rest56401_)
                 (_else5640556419_ (lambda () _r56402_))
                 (_K5640756425_
                  (lambda (_rest56422_ _x56423_)
                    (let ((__tmp56993 (_f56395_ _x56423_ _r56402_)))
                      (declare (not safe))
                      (_lp56399_ _rest56422_ __tmp56993)))))
            (if (let () (declare (not safe)) (##pair? _rest5640356411_))
                (let ((_hd5640856428_
                       (let () (declare (not safe)) (##car _rest5640356411_)))
                      (_tl5640956430_
                       (let () (declare (not safe)) (##cdr _rest5640356411_))))
                  (let* ((_x56433_ _hd5640856428_)
                         (_rest56435_ _tl5640956430_))
                    (declare (not safe))
                    (_K5640756425_ _rest56435_ _x56433_)))
                (let () (declare (not safe)) (_else5640556419_)))))))
    (define foldl2
      (lambda (_f56318_ _iv56319_ _lst156320_ _lst256321_)
        (let _lp56323_ ((_rest156325_ _lst156320_)
                        (_rest256326_ _lst256321_)
                        (_r56327_ _iv56319_))
          (let* ((_rest15632856336_ _rest156325_)
                 (_else5633056344_ (lambda () _r56327_))
                 (_K5633256383_
                  (lambda (_rest156347_ _x156348_)
                    (let* ((_rest25634956357_ _rest256326_)
                           (_else5635156365_ (lambda () _r56327_))
                           (_K5635356371_
                            (lambda (_rest256368_ _x256369_)
                              (let ((__tmp56994
                                     (_f56318_ _x156348_ _x256369_ _r56327_)))
                                (declare (not safe))
                                (_lp56323_
                                 _rest156347_
                                 _rest256368_
                                 __tmp56994)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25634956357_))
                          (let ((_hd5635456374_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25634956357_)))
                                (_tl5635556376_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25634956357_))))
                            (let* ((_x256379_ _hd5635456374_)
                                   (_rest256381_ _tl5635556376_))
                              (declare (not safe))
                              (_K5635356371_ _rest256381_ _x256379_)))
                          (let () (declare (not safe)) (_else5635156365_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15632856336_))
                (let ((_hd5633356386_
                       (let () (declare (not safe)) (##car _rest15632856336_)))
                      (_tl5633456388_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15632856336_))))
                  (let* ((_x156391_ _hd5633356386_)
                         (_rest156393_ _tl5633456388_))
                    (declare (not safe))
                    (_K5633256383_ _rest156393_ _x156391_)))
                (let () (declare (not safe)) (_else5633056344_)))))))
    (define foldl
      (lambda _g56996_
        (let ((_g56995_ (let () (declare (not safe)) (##length _g56996_))))
          (cond ((let () (declare (not safe)) (##fx= _g56995_ 3))
                 (apply (lambda (_f56303_ _iv56304_ _lst56305_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f56303_ _iv56304_ _lst56305_)))
                        _g56996_))
                ((let () (declare (not safe)) (##fx= _g56995_ 4))
                 (apply (lambda (_f56307_ _iv56308_ _lst156309_ _lst256310_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f56307_
                                    _iv56308_
                                    _lst156309_
                                    _lst256310_)))
                        _g56996_))
                ((let () (declare (not safe)) (##fx>= _g56995_ 4))
                 (apply foldl* _g56996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g56996_))))))
    (define foldl*
      (lambda (_f56291_ _iv56292_ . _rest56293_)
        (let _recur56295_ ((_iv56297_ _iv56292_) (_rest56298_ _rest56293_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56298_))
              (let ((__tmp56998
                     (apply _f56291_
                            (let ((__tmp57000
                                   (lambda (_xs56300_ _r56301_)
                                     (let ((__tmp57001 (car _xs56300_)))
                                       (declare (not safe))
                                       (cons __tmp57001 _r56301_))))
                                  (__tmp56999 (list _iv56297_)))
                              (declare (not safe))
                              (foldr1 __tmp57000 __tmp56999 _rest56298_))))
                    (__tmp56997 (map cdr _rest56298_)))
                (declare (not safe))
                (_recur56295_ __tmp56998 __tmp56997))
              _iv56297_))))
    (define foldr1
      (lambda (_f56250_ _iv56251_ _lst56252_)
        (let _recur56254_ ((_rest56256_ _lst56252_))
          (let* ((_rest5625756265_ _rest56256_)
                 (_else5625956273_ (lambda () _iv56251_))
                 (_K5626156279_
                  (lambda (_rest56276_ _x56277_)
                    (_f56250_
                     _x56277_
                     (let ()
                       (declare (not safe))
                       (_recur56254_ _rest56276_))))))
            (if (let () (declare (not safe)) (##pair? _rest5625756265_))
                (let ((_hd5626256282_
                       (let () (declare (not safe)) (##car _rest5625756265_)))
                      (_tl5626356284_
                       (let () (declare (not safe)) (##cdr _rest5625756265_))))
                  (let* ((_x56287_ _hd5626256282_)
                         (_rest56289_ _tl5626356284_))
                    (declare (not safe))
                    (_K5626156279_ _rest56289_ _x56287_)))
                (let () (declare (not safe)) (_else5625956273_)))))))
    (define foldr2
      (lambda (_f56174_ _iv56175_ _lst156176_ _lst256177_)
        (let _recur56179_ ((_rest156181_ _lst156176_)
                           (_rest256182_ _lst256177_))
          (let* ((_rest15618356191_ _rest156181_)
                 (_else5618556199_ (lambda () _iv56175_))
                 (_K5618756238_
                  (lambda (_rest156202_ _x156203_)
                    (let* ((_rest25620456212_ _rest256182_)
                           (_else5620656220_ (lambda () _iv56175_))
                           (_K5620856226_
                            (lambda (_rest256223_ _x256224_)
                              (_f56174_
                               _x156203_
                               _x256224_
                               (let ()
                                 (declare (not safe))
                                 (_recur56179_ _rest156202_ _rest256223_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25620456212_))
                          (let ((_hd5620956229_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25620456212_)))
                                (_tl5621056231_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25620456212_))))
                            (let* ((_x256234_ _hd5620956229_)
                                   (_rest256236_ _tl5621056231_))
                              (declare (not safe))
                              (_K5620856226_ _rest256236_ _x256234_)))
                          (let () (declare (not safe)) (_else5620656220_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15618356191_))
                (let ((_hd5618856241_
                       (let () (declare (not safe)) (##car _rest15618356191_)))
                      (_tl5618956243_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15618356191_))))
                  (let* ((_x156246_ _hd5618856241_)
                         (_rest156248_ _tl5618956243_))
                    (declare (not safe))
                    (_K5618756238_ _rest156248_ _x156246_)))
                (let () (declare (not safe)) (_else5618556199_)))))))
    (define foldr
      (lambda _g57003_
        (let ((_g57002_ (let () (declare (not safe)) (##length _g57003_))))
          (cond ((let () (declare (not safe)) (##fx= _g57002_ 3))
                 (apply (lambda (_f56159_ _iv56160_ _lst56161_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f56159_ _iv56160_ _lst56161_)))
                        _g57003_))
                ((let () (declare (not safe)) (##fx= _g57002_ 4))
                 (apply (lambda (_f56163_ _iv56164_ _lst156165_ _lst256166_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f56163_
                                    _iv56164_
                                    _lst156165_
                                    _lst256166_)))
                        _g57003_))
                ((let () (declare (not safe)) (##fx>= _g57002_ 4))
                 (apply foldr* _g57003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g57003_))))))
    (define foldr*
      (lambda (_f56148_ _iv56149_ . _rest56150_)
        (let _recur56152_ ((_rest56154_ _rest56150_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56154_))
              (apply _f56148_
                     (let ((__tmp57006
                            (lambda (_xs56156_ _r56157_)
                              (let ((__tmp57007 (car _xs56156_)))
                                (declare (not safe))
                                (cons __tmp57007 _r56157_))))
                           (__tmp57004
                            (list (let ((__tmp57005 (map cdr _rest56154_)))
                                    (declare (not safe))
                                    (_recur56152_ __tmp57005)))))
                       (declare (not safe))
                       (foldr1 __tmp57006 __tmp57004 _rest56154_)))
              _iv56149_))))
    (define drop
      (lambda (_l56145_ _k56146_)
        (if (let () (declare (not safe)) (##fxpositive? _k56146_))
            (let ((__tmp57009 (let () (declare (not safe)) (##cdr _l56145_)))
                  (__tmp57008
                   (let () (declare (not safe)) (##fx- _k56146_ '1))))
              (declare (not safe))
              (drop __tmp57009 __tmp57008))
            _l56145_)))
    (define remove-nulls!
      (lambda (_l56032_)
        (let* ((_l5603356046_ _l56032_)
               (_E5603756050_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _l5603356046_)))))
          (let ((_K5604256135_
                 (lambda (_r56133_)
                   (let () (declare (not safe)) (remove-nulls! _r56133_))))
                (_K5603956122_
                 (lambda (_r56062_)
                   (let _loop56064_ ((_l56066_ _l56032_) (_r56067_ _r56062_))
                     (let* ((_r5606856081_ _r56067_)
                            (_E5607256085_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _r5606856081_)))))
                       (let ((_K5607756112_
                              (lambda (_rr56110_)
                                (set-cdr!
                                 _l56066_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr56110_)))))
                             (_K5607456099_
                              (lambda (_rr56097_)
                                (let ()
                                  (declare (not safe))
                                  (_loop56064_ _r56067_ _rr56097_))))
                             (_K5607356090_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5606856081_))
                             (let ((_tl5607956117_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5606856081_)))
                                   (_hd5607856115_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5606856081_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5607856115_))
                                   (let ((_rr56120_ _tl5607956117_))
                                     (declare (not safe))
                                     (_K5607756112_ _rr56120_))
                                   (let ((_rr56105_ _tl5607956117_))
                                     (declare (not safe))
                                     (_K5607456099_ _rr56105_))))
                             '#!void))))
                   _l56032_))
                (_K5603856055_ (lambda () _l56032_)))
            (if (let () (declare (not safe)) (##pair? _l5603356046_))
                (let ((_tl5604456140_
                       (let () (declare (not safe)) (##cdr _l5603356046_)))
                      (_hd5604356138_
                       (let () (declare (not safe)) (##car _l5603356046_))))
                  (if (let () (declare (not safe)) (##null? _hd5604356138_))
                      (let ((_r56143_ _tl5604456140_))
                        (declare (not safe))
                        (remove-nulls! _r56143_))
                      (let ((_r56128_ _tl5604456140_))
                        (declare (not safe))
                        (_K5603956122_ _r56128_))))
                (let () (declare (not safe)) (_K5603856055_)))))))
    (define append1!
      (lambda (_l56027_ _x56028_)
        (let ((_l256030_ (let () (declare (not safe)) (cons _x56028_ '()))))
          (if (let () (declare (not safe)) (pair? _l56027_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l56027_))
               _l256030_)
              _l256030_))))
    (define append-reverse
      (lambda (_rev-head56024_ _tail56025_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail56025_ _rev-head56024_))))
    (define append-reverse-until
      (lambda (_pred55977_ _rhead55978_ _tail55979_)
        (let _loop55981_ ((_rhead55983_ _rhead55978_)
                          (_tail55984_ _tail55979_))
          (let* ((_rhead5598555994_ _rhead55983_)
                 (_E5598855998_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rhead5598555994_)))))
            (let ((_K5599256021_ (lambda () (values '() _tail55984_)))
                  (_K5598956005_
                   (lambda (_r56002_ _a56003_)
                     (if (_pred55977_ _a56003_)
                         (values _rhead55983_ _tail55984_)
                         (let ((__tmp57010
                                (let ()
                                  (declare (not safe))
                                  (cons _a56003_ _tail55984_))))
                           (declare (not safe))
                           (_loop55981_ _r56002_ __tmp57010))))))
              (let ((_try-match5598756017_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5598555994_))
                           (let ((_tl5599156010_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5598555994_)))
                                 (_hd5599056008_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5598555994_))))
                             (let ((_a56013_ _hd5599056008_)
                                   (_r56015_ _tl5599156010_))
                               (let ()
                                 (declare (not safe))
                                 (_K5598956005_ _r56015_ _a56013_))))
                           (let () (declare (not safe)) (_E5598855998_))))))
                (if (let () (declare (not safe)) (##null? _rhead5598555994_))
                    (let () (declare (not safe)) (_K5599256021_))
                    (let ()
                      (declare (not safe))
                      (_try-match5598756017_)))))))))
    (define andmap1
      (lambda (_f55937_ _lst55938_)
        (let _lp55940_ ((_rest55942_ _lst55938_))
          (let* ((_rest5594355951_ _rest55942_)
                 (_else5594555959_ (lambda () '#t))
                 (_K5594755965_
                  (lambda (_rest55962_ _x55963_)
                    (if (_f55937_ _x55963_)
                        (let () (declare (not safe)) (_lp55940_ _rest55962_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5594355951_))
                (let ((_hd5594855968_
                       (let () (declare (not safe)) (##car _rest5594355951_)))
                      (_tl5594955970_
                       (let () (declare (not safe)) (##cdr _rest5594355951_))))
                  (let* ((_x55973_ _hd5594855968_)
                         (_rest55975_ _tl5594955970_))
                    (declare (not safe))
                    (_K5594755965_ _rest55975_ _x55973_)))
                (let () (declare (not safe)) (_else5594555959_)))))))
    (define andmap2
      (lambda (_f55862_ _lst155863_ _lst255864_)
        (let _lp55866_ ((_rest155868_ _lst155863_) (_rest255869_ _lst255864_))
          (let* ((_rest15587055878_ _rest155868_)
                 (_else5587255886_ (lambda () '#t))
                 (_K5587455925_
                  (lambda (_rest155889_ _x155890_)
                    (let* ((_rest25589155899_ _rest255869_)
                           (_else5589355907_ (lambda () '#t))
                           (_K5589555913_
                            (lambda (_rest255910_ _x255911_)
                              (if (_f55862_ _x155890_ _x255911_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp55866_ _rest155889_ _rest255910_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25589155899_))
                          (let ((_hd5589655916_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25589155899_)))
                                (_tl5589755918_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25589155899_))))
                            (let* ((_x255921_ _hd5589655916_)
                                   (_rest255923_ _tl5589755918_))
                              (declare (not safe))
                              (_K5589555913_ _rest255923_ _x255921_)))
                          (let () (declare (not safe)) (_else5589355907_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15587055878_))
                (let ((_hd5587555928_
                       (let () (declare (not safe)) (##car _rest15587055878_)))
                      (_tl5587655930_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15587055878_))))
                  (let* ((_x155933_ _hd5587555928_)
                         (_rest155935_ _tl5587655930_))
                    (declare (not safe))
                    (_K5587455925_ _rest155935_ _x155933_)))
                (let () (declare (not safe)) (_else5587255886_)))))))
    (define andmap
      (lambda _g57012_
        (let ((_g57011_ (let () (declare (not safe)) (##length _g57012_))))
          (cond ((let () (declare (not safe)) (##fx= _g57011_ 2))
                 (apply (lambda (_f55850_ _lst55851_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f55850_ _lst55851_)))
                        _g57012_))
                ((let () (declare (not safe)) (##fx= _g57011_ 3))
                 (apply (lambda (_f55853_ _lst155854_ _lst255855_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f55853_ _lst155854_ _lst255855_)))
                        _g57012_))
                ((let () (declare (not safe)) (##fx>= _g57011_ 3))
                 (apply andmap* _g57012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g57012_))))))
    (define andmap*
      (lambda (_f55843_ . _rest55844_)
        (let _recur55846_ ((_rest55848_ _rest55844_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55848_))
              (if (apply _f55843_ (map car _rest55848_))
                  (let ((__tmp57013 (map cdr _rest55848_)))
                    (declare (not safe))
                    (_recur55846_ __tmp57013))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f55800_ _lst55801_)
        (let _lp55803_ ((_rest55805_ _lst55801_))
          (let* ((_rest5580655814_ _rest55805_)
                 (_else5580855822_ (lambda () '#f))
                 (_K5581055831_
                  (lambda (_rest55825_ _x55826_)
                    (let ((_$e55828_ (_f55800_ _x55826_)))
                      (if _$e55828_
                          _$e55828_
                          (let ()
                            (declare (not safe))
                            (_lp55803_ _rest55825_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5580655814_))
                (let ((_hd5581155834_
                       (let () (declare (not safe)) (##car _rest5580655814_)))
                      (_tl5581255836_
                       (let () (declare (not safe)) (##cdr _rest5580655814_))))
                  (let* ((_x55839_ _hd5581155834_)
                         (_rest55841_ _tl5581255836_))
                    (declare (not safe))
                    (_K5581055831_ _rest55841_ _x55839_)))
                (let () (declare (not safe)) (_else5580855822_)))))))
    (define ormap2
      (lambda (_f55722_ _lst155723_ _lst255724_)
        (let _lp55726_ ((_rest155728_ _lst155723_) (_rest255729_ _lst255724_))
          (let* ((_rest15573055738_ _rest155728_)
                 (_else5573255746_ (lambda () '#f))
                 (_K5573455788_
                  (lambda (_rest155749_ _x155750_)
                    (let* ((_rest25575155759_ _rest255729_)
                           (_else5575355767_ (lambda () '#f))
                           (_K5575555776_
                            (lambda (_rest255770_ _x255771_)
                              (let ((_$e55773_ (_f55722_ _x155750_ _x255771_)))
                                (if _$e55773_
                                    _$e55773_
                                    (let ()
                                      (declare (not safe))
                                      (_lp55726_
                                       _rest155749_
                                       _rest255770_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25575155759_))
                          (let ((_hd5575655779_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25575155759_)))
                                (_tl5575755781_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25575155759_))))
                            (let* ((_x255784_ _hd5575655779_)
                                   (_rest255786_ _tl5575755781_))
                              (declare (not safe))
                              (_K5575555776_ _rest255786_ _x255784_)))
                          (let () (declare (not safe)) (_else5575355767_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15573055738_))
                (let ((_hd5573555791_
                       (let () (declare (not safe)) (##car _rest15573055738_)))
                      (_tl5573655793_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15573055738_))))
                  (let* ((_x155796_ _hd5573555791_)
                         (_rest155798_ _tl5573655793_))
                    (declare (not safe))
                    (_K5573455788_ _rest155798_ _x155796_)))
                (let () (declare (not safe)) (_else5573255746_)))))))
    (define ormap
      (lambda _g57015_
        (let ((_g57014_ (let () (declare (not safe)) (##length _g57015_))))
          (cond ((let () (declare (not safe)) (##fx= _g57014_ 2))
                 (apply (lambda (_f55710_ _lst55711_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f55710_ _lst55711_)))
                        _g57015_))
                ((let () (declare (not safe)) (##fx= _g57014_ 3))
                 (apply (lambda (_f55713_ _lst155714_ _lst255715_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f55713_ _lst155714_ _lst255715_)))
                        _g57015_))
                ((let () (declare (not safe)) (##fx>= _g57014_ 3))
                 (apply ormap* _g57015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g57015_))))))
    (define ormap*
      (lambda (_f55700_ . _rest55701_)
        (let _recur55703_ ((_rest55705_ _rest55701_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55705_))
              (let ((_$e55707_ (apply _f55700_ (map car _rest55705_))))
                (if _$e55707_
                    _$e55707_
                    (let ((__tmp57016 (map cdr _rest55705_)))
                      (declare (not safe))
                      (_recur55703_ __tmp57016))))
              '#f))))
    (define filter
      (lambda (_f55658_ _lst55659_)
        (let _recur55661_ ((_lst55663_ _lst55659_))
          (let* ((_lst5566455672_ _lst55663_)
                 (_else5566655680_ (lambda () '()))
                 (_K5566855688_
                  (lambda (_rest55683_ _hd55684_)
                    (if (_f55658_ _hd55684_)
                        (let ((_tail55686_
                               (let ()
                                 (declare (not safe))
                                 (_recur55661_ _rest55683_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail55686_ _rest55683_))
                              _lst55663_
                              (let ()
                                (declare (not safe))
                                (cons _hd55684_ _tail55686_))))
                        (let ()
                          (declare (not safe))
                          (_recur55661_ _rest55683_))))))
            (if (let () (declare (not safe)) (##pair? _lst5566455672_))
                (let ((_hd5566955691_
                       (let () (declare (not safe)) (##car _lst5566455672_)))
                      (_tl5567055693_
                       (let () (declare (not safe)) (##cdr _lst5566455672_))))
                  (let* ((_hd55696_ _hd5566955691_)
                         (_rest55698_ _tl5567055693_))
                    (declare (not safe))
                    (_K5566855688_ _rest55698_ _hd55696_)))
                (let () (declare (not safe)) (_else5566655680_)))))))
    (define filter-map1
      (lambda (_f55613_ _lst55614_)
        (let _recur55616_ ((_rest55618_ _lst55614_))
          (let* ((_rest5561955627_ _rest55618_)
                 (_else5562155635_ (lambda () '()))
                 (_K5562355646_
                  (lambda (_rest55638_ _x55639_)
                    (let ((_$e55641_ (_f55613_ _x55639_)))
                      (if _$e55641_
                          ((lambda (_r55644_)
                             (let ((__tmp57017
                                    (let ()
                                      (declare (not safe))
                                      (_recur55616_ _rest55638_))))
                               (declare (not safe))
                               (cons _r55644_ __tmp57017)))
                           _$e55641_)
                          (let ()
                            (declare (not safe))
                            (_recur55616_ _rest55638_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5561955627_))
                (let ((_hd5562455649_
                       (let () (declare (not safe)) (##car _rest5561955627_)))
                      (_tl5562555651_
                       (let () (declare (not safe)) (##cdr _rest5561955627_))))
                  (let* ((_x55654_ _hd5562455649_)
                         (_rest55656_ _tl5562555651_))
                    (declare (not safe))
                    (_K5562355646_ _rest55656_ _x55654_)))
                (let () (declare (not safe)) (_else5562155635_)))))))
    (define filter-map2
      (lambda (_f55533_ _lst155534_ _lst255535_)
        (let _recur55537_ ((_rest155539_ _lst155534_)
                           (_rest255540_ _lst255535_))
          (let* ((_rest15554155549_ _rest155539_)
                 (_else5554355557_ (lambda () '()))
                 (_K5554555601_
                  (lambda (_rest155560_ _x155561_)
                    (let* ((_rest25556255570_ _rest255540_)
                           (_else5556455578_ (lambda () '()))
                           (_K5556655589_
                            (lambda (_rest255581_ _x255582_)
                              (let ((_$e55584_ (_f55533_ _x155561_ _x255582_)))
                                (if _$e55584_
                                    ((lambda (_r55587_)
                                       (let ((__tmp57018
                                              (let ()
                                                (declare (not safe))
                                                (_recur55537_
                                                 _rest155560_
                                                 _rest255581_))))
                                         (declare (not safe))
                                         (cons _r55587_ __tmp57018)))
                                     _$e55584_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur55537_
                                       _rest155560_
                                       _rest255581_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25556255570_))
                          (let ((_hd5556755592_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25556255570_)))
                                (_tl5556855594_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25556255570_))))
                            (let* ((_x255597_ _hd5556755592_)
                                   (_rest255599_ _tl5556855594_))
                              (declare (not safe))
                              (_K5556655589_ _rest255599_ _x255597_)))
                          (let () (declare (not safe)) (_else5556455578_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15554155549_))
                (let ((_hd5554655604_
                       (let () (declare (not safe)) (##car _rest15554155549_)))
                      (_tl5554755606_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15554155549_))))
                  (let* ((_x155609_ _hd5554655604_)
                         (_rest155611_ _tl5554755606_))
                    (declare (not safe))
                    (_K5554555601_ _rest155611_ _x155609_)))
                (let () (declare (not safe)) (_else5554355557_)))))))
    (define filter-map
      (lambda _g57020_
        (let ((_g57019_ (let () (declare (not safe)) (##length _g57020_))))
          (cond ((let () (declare (not safe)) (##fx= _g57019_ 2))
                 (apply (lambda (_f55521_ _lst55522_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f55521_ _lst55522_)))
                        _g57020_))
                ((let () (declare (not safe)) (##fx= _g57019_ 3))
                 (apply (lambda (_f55524_ _lst155525_ _lst255526_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f55524_ _lst155525_ _lst255526_)))
                        _g57020_))
                ((let () (declare (not safe)) (##fx>= _g57019_ 3))
                 (apply filter-map* _g57020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g57020_))))))
    (define filter-map*
      (lambda (_f55509_ . _rest55510_)
        (let _recur55512_ ((_rest55514_ _rest55510_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55514_))
              (let ((_$e55516_ (apply _f55509_ (map car _rest55514_))))
                (if _$e55516_
                    ((lambda (_r55519_)
                       (let ((__tmp57022
                              (let ((__tmp57023 (map cdr _rest55514_)))
                                (declare (not safe))
                                (_recur55512_ __tmp57023))))
                         (declare (not safe))
                         (cons _r55519_ __tmp57022)))
                     _$e55516_)
                    (let ((__tmp57021 (map cdr _rest55514_)))
                      (declare (not safe))
                      (_recur55512_ __tmp57021))))
              '()))))
    (define iota__%
      (lambda (_count55477_ _start55478_ _step55479_)
        (if (let () (declare (not safe)) (fixnum? _count55477_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected fixnum" _count55477_)))
        (if (let () (declare (not safe)) (number? _start55478_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected number" _start55478_)))
        (if (let () (declare (not safe)) (number? _step55479_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected number" _step55479_)))
        (let ((_root55481_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp55483_ ((_i55485_ '0)
                          (_x55486_ _start55478_)
                          (_tl55487_ _root55481_))
            (if (let () (declare (not safe)) (##fx< _i55485_ _count55477_))
                (let ((_tl*55489_
                       (let () (declare (not safe)) (cons _x55486_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl55487_ _tl*55489_))
                  (let ((__tmp57025
                         (let () (declare (not safe)) (##fx+ _i55485_ '1)))
                        (__tmp57024 (+ _x55486_ _step55479_)))
                    (declare (not safe))
                    (_lp55483_ __tmp57025 __tmp57024 _tl*55489_)))
                (let () (declare (not safe)) (##cdr _root55481_)))))))
    (define iota__0
      (lambda (_count55494_)
        (let* ((_start55496_ '0) (_step55498_ '1))
          (declare (not safe))
          (iota__% _count55494_ _start55496_ _step55498_))))
    (define iota__1
      (lambda (_count55500_ _start55501_)
        (let ((_step55503_ '1))
          (declare (not safe))
          (iota__% _count55500_ _start55501_ _step55503_))))
    (define iota
      (lambda _g57027_
        (let ((_g57026_ (let () (declare (not safe)) (##length _g57027_))))
          (cond ((let () (declare (not safe)) (##fx= _g57026_ 1))
                 (apply (lambda (_count55494_)
                          (let () (declare (not safe)) (iota__0 _count55494_)))
                        _g57027_))
                ((let () (declare (not safe)) (##fx= _g57026_ 2))
                 (apply (lambda (_count55500_ _start55501_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count55500_ _start55501_)))
                        _g57027_))
                ((let () (declare (not safe)) (##fx= _g57026_ 3))
                 (apply (lambda (_count55505_ _start55506_ _step55507_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count55505_ _start55506_ _step55507_)))
                        _g57027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g57027_))))))
    (define last-pair
      (lambda (_lst55451_)
        (let* ((_lst5545255459_ _lst55451_)
               (_E5545455463_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _lst5545255459_))))
               (_K5545555468_
                (lambda (_rest55466_)
                  (if (let () (declare (not safe)) (pair? _rest55466_))
                      (let () (declare (not safe)) (last-pair _rest55466_))
                      _lst55451_))))
          (if (let () (declare (not safe)) (##pair? _lst5545255459_))
              (let* ((_tl5545755471_
                      (let () (declare (not safe)) (##cdr _lst5545255459_)))
                     (_rest55474_ _tl5545755471_))
                (declare (not safe))
                (_K5545555468_ _rest55474_))
              (let () (declare (not safe)) (_E5545455463_))))))
    (define last
      (lambda (_lst55449_)
        (car (let () (declare (not safe)) (last-pair _lst55449_)))))
    (define assgetq__%
      (lambda (_key55427_ _lst55429_ _default55431_)
        (let ((_$e55434_
               (if (let () (declare (not safe)) (pair? _lst55429_))
                   (assq _key55427_ _lst55429_)
                   '#f)))
          (if _$e55434_
              (cdr _$e55434_)
              (if (let () (declare (not safe)) (procedure? _default55431_))
                  (_default55431_ _key55427_)
                  _default55431_)))))
    (define assgetq__0
      (lambda (_key55440_ _lst55441_)
        (let ((_default55443_ '#f))
          (declare (not safe))
          (assgetq__% _key55440_ _lst55441_ _default55443_))))
    (define assgetq
      (lambda _g57029_
        (let ((_g57028_ (let () (declare (not safe)) (##length _g57029_))))
          (cond ((let () (declare (not safe)) (##fx= _g57028_ 2))
                 (apply (lambda (_key55440_ _lst55441_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key55440_ _lst55441_)))
                        _g57029_))
                ((let () (declare (not safe)) (##fx= _g57028_ 3))
                 (apply (lambda (_key55445_ _lst55446_ _default55447_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key55445_ _lst55446_ _default55447_)))
                        _g57029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g57029_))))))
    (define assgetv__%
      (lambda (_key55404_ _lst55406_ _default55408_)
        (let ((_$e55411_
               (if (let () (declare (not safe)) (pair? _lst55406_))
                   (assv _key55404_ _lst55406_)
                   '#f)))
          (if _$e55411_
              (cdr _$e55411_)
              (if (let () (declare (not safe)) (procedure? _default55408_))
                  (_default55408_ _key55404_)
                  _default55408_)))))
    (define assgetv__0
      (lambda (_key55417_ _lst55418_)
        (let ((_default55420_ '#f))
          (declare (not safe))
          (assgetv__% _key55417_ _lst55418_ _default55420_))))
    (define assgetv
      (lambda _g57031_
        (let ((_g57030_ (let () (declare (not safe)) (##length _g57031_))))
          (cond ((let () (declare (not safe)) (##fx= _g57030_ 2))
                 (apply (lambda (_key55417_ _lst55418_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key55417_ _lst55418_)))
                        _g57031_))
                ((let () (declare (not safe)) (##fx= _g57030_ 3))
                 (apply (lambda (_key55422_ _lst55423_ _default55424_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key55422_ _lst55423_ _default55424_)))
                        _g57031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g57031_))))))
    (define assget__%
      (lambda (_key55381_ _lst55383_ _default55385_)
        (let ((_$e55388_
               (if (let () (declare (not safe)) (pair? _lst55383_))
                   (assoc _key55381_ _lst55383_)
                   '#f)))
          (if _$e55388_
              (cdr _$e55388_)
              (if (let () (declare (not safe)) (procedure? _default55385_))
                  (_default55385_ _key55381_)
                  _default55385_)))))
    (define assget__0
      (lambda (_key55394_ _lst55395_)
        (let ((_default55397_ '#f))
          (declare (not safe))
          (assget__% _key55394_ _lst55395_ _default55397_))))
    (define assget
      (lambda _g57033_
        (let ((_g57032_ (let () (declare (not safe)) (##length _g57033_))))
          (cond ((let () (declare (not safe)) (##fx= _g57032_ 2))
                 (apply (lambda (_key55394_ _lst55395_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key55394_ _lst55395_)))
                        _g57033_))
                ((let () (declare (not safe)) (##fx= _g57032_ 3))
                 (apply (lambda (_key55399_ _lst55400_ _default55401_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key55399_ _lst55400_ _default55401_)))
                        _g57033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g57033_))))))
    (define pgetq__%
      (lambda (_key55310_ _lst55312_ _default55314_)
        (let _lp55317_ ((_rest55320_ _lst55312_))
          (let* ((_rest5532255332_ _rest55320_)
                 (_else5532455340_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55314_))
                        (_default55314_ _key55310_)
                        _default55314_)))
                 (_K5532655349_
                  (lambda (_rest55343_ _v55344_ _k55346_)
                    (if (let () (declare (not safe)) (eq? _k55346_ _key55310_))
                        _v55344_
                        (let ()
                          (declare (not safe))
                          (_lp55317_ _rest55343_))))))
            (if (let () (declare (not safe)) (##pair? _rest5532255332_))
                (let ((_hd5532755352_
                       (let () (declare (not safe)) (##car _rest5532255332_)))
                      (_tl5532855354_
                       (let () (declare (not safe)) (##cdr _rest5532255332_))))
                  (let ((_k55357_ _hd5532755352_))
                    (if (let () (declare (not safe)) (##pair? _tl5532855354_))
                        (let ((_hd5532955359_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5532855354_)))
                              (_tl5533055361_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5532855354_))))
                          (let* ((_v55364_ _hd5532955359_)
                                 (_rest55366_ _tl5533055361_))
                            (declare (not safe))
                            (_K5532655349_ _rest55366_ _v55364_ _k55357_)))
                        (let () (declare (not safe)) (_else5532455340_)))))
                (let () (declare (not safe)) (_else5532455340_)))))))
    (define pgetq__0
      (lambda (_key55371_ _lst55372_)
        (let ((_default55374_ '#f))
          (declare (not safe))
          (pgetq__% _key55371_ _lst55372_ _default55374_))))
    (define pgetq
      (lambda _g57035_
        (let ((_g57034_ (let () (declare (not safe)) (##length _g57035_))))
          (cond ((let () (declare (not safe)) (##fx= _g57034_ 2))
                 (apply (lambda (_key55371_ _lst55372_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key55371_ _lst55372_)))
                        _g57035_))
                ((let () (declare (not safe)) (##fx= _g57034_ 3))
                 (apply (lambda (_key55376_ _lst55377_ _default55378_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key55376_ _lst55377_ _default55378_)))
                        _g57035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g57035_))))))
    (define pgetv__%
      (lambda (_key55239_ _lst55241_ _default55243_)
        (let _lp55246_ ((_rest55249_ _lst55241_))
          (let* ((_rest5525155261_ _rest55249_)
                 (_else5525355269_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55243_))
                        (_default55243_ _key55239_)
                        _default55243_)))
                 (_K5525555278_
                  (lambda (_rest55272_ _v55273_ _k55275_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k55275_ _key55239_))
                        _v55273_
                        (let ()
                          (declare (not safe))
                          (_lp55246_ _rest55272_))))))
            (if (let () (declare (not safe)) (##pair? _rest5525155261_))
                (let ((_hd5525655281_
                       (let () (declare (not safe)) (##car _rest5525155261_)))
                      (_tl5525755283_
                       (let () (declare (not safe)) (##cdr _rest5525155261_))))
                  (let ((_k55286_ _hd5525655281_))
                    (if (let () (declare (not safe)) (##pair? _tl5525755283_))
                        (let ((_hd5525855288_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5525755283_)))
                              (_tl5525955290_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5525755283_))))
                          (let* ((_v55293_ _hd5525855288_)
                                 (_rest55295_ _tl5525955290_))
                            (declare (not safe))
                            (_K5525555278_ _rest55295_ _v55293_ _k55286_)))
                        (let () (declare (not safe)) (_else5525355269_)))))
                (let () (declare (not safe)) (_else5525355269_)))))))
    (define pgetv__0
      (lambda (_key55300_ _lst55301_)
        (let ((_default55303_ '#f))
          (declare (not safe))
          (pgetv__% _key55300_ _lst55301_ _default55303_))))
    (define pgetv
      (lambda _g57037_
        (let ((_g57036_ (let () (declare (not safe)) (##length _g57037_))))
          (cond ((let () (declare (not safe)) (##fx= _g57036_ 2))
                 (apply (lambda (_key55300_ _lst55301_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key55300_ _lst55301_)))
                        _g57037_))
                ((let () (declare (not safe)) (##fx= _g57036_ 3))
                 (apply (lambda (_key55305_ _lst55306_ _default55307_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key55305_ _lst55306_ _default55307_)))
                        _g57037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g57037_))))))
    (define pget__%
      (lambda (_key55168_ _lst55170_ _default55172_)
        (let _lp55175_ ((_rest55178_ _lst55170_))
          (let* ((_rest5518055190_ _rest55178_)
                 (_else5518255198_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55172_))
                        (_default55172_ _key55168_)
                        _default55172_)))
                 (_K5518455207_
                  (lambda (_rest55201_ _v55202_ _k55204_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k55204_ _key55168_))
                        _v55202_
                        (let ()
                          (declare (not safe))
                          (_lp55175_ _rest55201_))))))
            (if (let () (declare (not safe)) (##pair? _rest5518055190_))
                (let ((_hd5518555210_
                       (let () (declare (not safe)) (##car _rest5518055190_)))
                      (_tl5518655212_
                       (let () (declare (not safe)) (##cdr _rest5518055190_))))
                  (let ((_k55215_ _hd5518555210_))
                    (if (let () (declare (not safe)) (##pair? _tl5518655212_))
                        (let ((_hd5518755217_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5518655212_)))
                              (_tl5518855219_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5518655212_))))
                          (let* ((_v55222_ _hd5518755217_)
                                 (_rest55224_ _tl5518855219_))
                            (declare (not safe))
                            (_K5518455207_ _rest55224_ _v55222_ _k55215_)))
                        (let () (declare (not safe)) (_else5518255198_)))))
                (let () (declare (not safe)) (_else5518255198_)))))))
    (define pget__0
      (lambda (_key55229_ _lst55230_)
        (let ((_default55232_ '#f))
          (declare (not safe))
          (pget__% _key55229_ _lst55230_ _default55232_))))
    (define pget
      (lambda _g57039_
        (let ((_g57038_ (let () (declare (not safe)) (##length _g57039_))))
          (cond ((let () (declare (not safe)) (##fx= _g57038_ 2))
                 (apply (lambda (_key55229_ _lst55230_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key55229_ _lst55230_)))
                        _g57039_))
                ((let () (declare (not safe)) (##fx= _g57038_ 3))
                 (apply (lambda (_key55234_ _lst55235_ _default55236_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key55234_ _lst55235_ _default55236_)))
                        _g57039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g57039_))))))
    (define find
      (lambda (_pred55161_ _lst55162_)
        (let ((_$e55164_
               (let () (declare (not safe)) (memf _pred55161_ _lst55162_))))
          (if _$e55164_ (car _$e55164_) '#f))))
    (define memf
      (lambda (_proc55121_ _lst55122_)
        (let _lp55124_ ((_rest55126_ _lst55122_))
          (let* ((_rest5512755135_ _rest55126_)
                 (_else5512955143_ (lambda () '#f))
                 (_K5513155149_
                  (lambda (_tl55146_ _hd55147_)
                    (if (_proc55121_ _hd55147_)
                        _rest55126_
                        (let () (declare (not safe)) (_lp55124_ _tl55146_))))))
            (if (let () (declare (not safe)) (##pair? _rest5512755135_))
                (let ((_hd5513255152_
                       (let () (declare (not safe)) (##car _rest5512755135_)))
                      (_tl5513355154_
                       (let () (declare (not safe)) (##cdr _rest5512755135_))))
                  (let* ((_hd55157_ _hd5513255152_) (_tl55159_ _tl5513355154_))
                    (declare (not safe))
                    (_K5513155149_ _tl55159_ _hd55157_)))
                (let () (declare (not safe)) (_else5512955143_)))))))
    (define remove1
      (lambda (_el55074_ _lst55076_)
        (let _lp55079_ ((_rest55082_ _lst55076_) (_r55084_ '()))
          (let* ((_rest5508655094_ _rest55082_)
                 (_else5508855102_ (lambda () _lst55076_))
                 (_K5509055109_
                  (lambda (_rest55105_ _hd55106_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el55074_ _hd55106_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55105_ _r55084_))
                        (let ((__tmp57040
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55106_ _r55084_))))
                          (declare (not safe))
                          (_lp55079_ _rest55105_ __tmp57040))))))
            (if (let () (declare (not safe)) (##pair? _rest5508655094_))
                (let ((_hd5509155112_
                       (let () (declare (not safe)) (##car _rest5508655094_)))
                      (_tl5509255114_
                       (let () (declare (not safe)) (##cdr _rest5508655094_))))
                  (let* ((_hd55117_ _hd5509155112_)
                         (_rest55119_ _tl5509255114_))
                    (declare (not safe))
                    (_K5509055109_ _rest55119_ _hd55117_)))
                (let () (declare (not safe)) (_else5508855102_)))))))
    (define remv
      (lambda (_el55027_ _lst55029_)
        (let _lp55032_ ((_rest55035_ _lst55029_) (_r55037_ '()))
          (let* ((_rest5503955047_ _rest55035_)
                 (_else5504155055_ (lambda () _lst55029_))
                 (_K5504355062_
                  (lambda (_rest55058_ _hd55059_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el55027_ _hd55059_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55058_ _r55037_))
                        (let ((__tmp57041
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55059_ _r55037_))))
                          (declare (not safe))
                          (_lp55032_ _rest55058_ __tmp57041))))))
            (if (let () (declare (not safe)) (##pair? _rest5503955047_))
                (let ((_hd5504455065_
                       (let () (declare (not safe)) (##car _rest5503955047_)))
                      (_tl5504555067_
                       (let () (declare (not safe)) (##cdr _rest5503955047_))))
                  (let* ((_hd55070_ _hd5504455065_)
                         (_rest55072_ _tl5504555067_))
                    (declare (not safe))
                    (_K5504355062_ _rest55072_ _hd55070_)))
                (let () (declare (not safe)) (_else5504155055_)))))))
    (define remq
      (lambda (_el54980_ _lst54982_)
        (let _lp54985_ ((_rest54988_ _lst54982_) (_r54990_ '()))
          (let* ((_rest5499255000_ _rest54988_)
                 (_else5499455008_ (lambda () _lst54982_))
                 (_K5499655015_
                  (lambda (_rest55011_ _hd55012_)
                    (if (let () (declare (not safe)) (eq? _el54980_ _hd55012_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55011_ _r54990_))
                        (let ((__tmp57042
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55012_ _r54990_))))
                          (declare (not safe))
                          (_lp54985_ _rest55011_ __tmp57042))))))
            (if (let () (declare (not safe)) (##pair? _rest5499255000_))
                (let ((_hd5499755018_
                       (let () (declare (not safe)) (##car _rest5499255000_)))
                      (_tl5499855020_
                       (let () (declare (not safe)) (##cdr _rest5499255000_))))
                  (let* ((_hd55023_ _hd5499755018_)
                         (_rest55025_ _tl5499855020_))
                    (declare (not safe))
                    (_K5499655015_ _rest55025_ _hd55023_)))
                (let () (declare (not safe)) (_else5499455008_)))))))
    (define remf
      (lambda (_proc54939_ _lst54940_)
        (let _lp54942_ ((_rest54944_ _lst54940_) (_r54945_ '()))
          (let* ((_rest5494654954_ _rest54944_)
                 (_else5494854962_ (lambda () _lst54940_))
                 (_K5495054968_
                  (lambda (_rest54965_ _hd54966_)
                    (if (_proc54939_ _hd54966_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest54965_ _r54945_))
                        (let ((__tmp57043
                               (let ()
                                 (declare (not safe))
                                 (cons _hd54966_ _r54945_))))
                          (declare (not safe))
                          (_lp54942_ _rest54965_ __tmp57043))))))
            (if (let () (declare (not safe)) (##pair? _rest5494654954_))
                (let ((_hd5495154971_
                       (let () (declare (not safe)) (##car _rest5494654954_)))
                      (_tl5495254973_
                       (let () (declare (not safe)) (##cdr _rest5494654954_))))
                  (let* ((_hd54976_ _hd5495154971_)
                         (_rest54978_ _tl5495254973_))
                    (declare (not safe))
                    (_K5495054968_ _rest54978_ _hd54976_)))
                (let () (declare (not safe)) (_else5494854962_)))))))
    (define 1+ (lambda (_x54937_) (+ _x54937_ '1)))
    (define 1- (lambda (_x54935_) (- _x54935_ '1)))
    (define fx1+ (lambda (_x54933_) (fx+ _x54933_ '1)))
    (define fx1- (lambda (_x54931_) (fx- _x54931_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x54929_)
        (if (let () (declare (not safe)) (fixnum? _x54929_))
            (let () (declare (not safe)) (##fx>= _x54929_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x54927_)
        (if (let () (declare (not safe)) (fixnum? _x54927_))
            (let () (declare (not safe)) (##fx> _x54927_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x54925_) (let () (declare (not safe)) (eq? _x54925_ '0))))
    (define fx<0?
      (lambda (_x54923_)
        (if (let () (declare (not safe)) (fixnum? _x54923_))
            (let () (declare (not safe)) (##fx< _x54923_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x54921_)
        (if (let () (declare (not safe)) (fixnum? _x54921_))
            (let () (declare (not safe)) (##fx<= _x54921_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x54919_)
        (if (let () (declare (not safe)) (symbol? _x54919_))
            (let ((__tmp57044 (uninterned-symbol? _x54919_)))
              (declare (not safe))
              (not __tmp57044))
            '#f)))
    (define display-as-string
      (lambda (_x54891_ _port54892_)
        (if (or (let () (declare (not safe)) (string? _x54891_))
                (let () (declare (not safe)) (symbol? _x54891_))
                (keyword? _x54891_)
                (let () (declare (not safe)) (number? _x54891_))
                (let () (declare (not safe)) (char? _x54891_)))
            (display _x54891_ _port54892_)
            (if (let () (declare (not safe)) (pair? _x54891_))
                (begin
                  (let ((__tmp57045 (car _x54891_)))
                    (declare (not safe))
                    (display-as-string __tmp57045 _port54892_))
                  (let ((__tmp57046 (cdr _x54891_)))
                    (declare (not safe))
                    (display-as-string __tmp57046 _port54892_)))
                (if (let () (declare (not safe)) (vector? _x54891_))
                    (vector-for-each
                     (lambda (_g5490554907_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5490554907_ _port54892_)))
                     _x54891_)
                    (if (or (let () (declare (not safe)) (null? _x54891_))
                            (let ()
                              (declare (not safe))
                              (eq? _x54891_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x54891_))
                            (let () (declare (not safe)) (boolean? _x54891_)))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot convert as string" _x54891_))))))))
    (define as-string__0
      (lambda (_x54879_)
        (if (let () (declare (not safe)) (string? _x54879_))
            _x54879_
            (if (let () (declare (not safe)) (symbol? _x54879_))
                (symbol->string _x54879_)
                (if (keyword? _x54879_)
                    (keyword->string _x54879_)
                    (call-with-output-string
                     '()
                     (lambda (_g5488054882_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x54879_ _g5488054882_)))))))))
    (define as-string__1
      (lambda _args54885_
        (call-with-output-string
         '()
         (lambda (_g5488654888_)
           (let ()
             (declare (not safe))
             (display-as-string _args54885_ _g5488654888_))))))
    (define as-string
      (lambda _g57048_
        (let ((_g57047_ (let () (declare (not safe)) (##length _g57048_))))
          (cond ((let () (declare (not safe)) (##fx= _g57047_ 1))
                 (apply (lambda (_x54879_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x54879_)))
                        _g57048_))
                (#t (apply as-string__1 _g57048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g57048_))))))
    (define make-symbol__0
      (lambda (_x54875_)
        (if (interned-symbol? _x54875_)
            _x54875_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x54875_))))))
    (define make-symbol__1
      (lambda _args54877_ (string->symbol (apply as-string _args54877_))))
    (define make-symbol
      (lambda _g57050_
        (let ((_g57049_ (let () (declare (not safe)) (##length _g57050_))))
          (cond ((let () (declare (not safe)) (##fx= _g57049_ 1))
                 (apply (lambda (_x54875_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x54875_)))
                        _g57050_))
                (#t (apply make-symbol__1 _g57050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g57050_))))))
    (define make-keyword__0
      (lambda (_x54871_)
        (if (interned-keyword? _x54871_)
            _x54871_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x54871_))))))
    (define make-keyword__1
      (lambda _args54873_ (string->keyword (apply as-string _args54873_))))
    (define make-keyword
      (lambda _g57052_
        (let ((_g57051_ (let () (declare (not safe)) (##length _g57052_))))
          (cond ((let () (declare (not safe)) (##fx= _g57051_ 1))
                 (apply (lambda (_x54871_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x54871_)))
                        _g57052_))
                (#t (apply make-keyword__1 _g57052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g57052_))))))
    (define interned-keyword?
      (lambda (_x54869_)
        (if (keyword? _x54869_)
            (let ((__tmp57053 (uninterned-keyword? _x54869_)))
              (declare (not safe))
              (not __tmp57053))
            '#f)))
    (define symbol->keyword
      (lambda (_sym54867_)
        ((if (uninterned-symbol? _sym54867_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym54867_))))
    (define keyword->symbol
      (lambda (_kw54865_)
        ((if (uninterned-keyword? _kw54865_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw54865_))))
    (define bytes->string__%
      (lambda (_bstr54843_ _enc54844_)
        (if (let () (declare (not safe)) (eq? _enc54844_ 'UTF-8))
            (utf8->string _bstr54843_)
            (let* ((_in54846_
                    (open-input-u8vector
                     (let ((__tmp57054
                            (let ((__tmp57055
                                   (let ((__tmp57056
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr54843_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp57056))))
                              (declare (not safe))
                              (cons _enc54844_ __tmp57055))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp57054))))
                   (_len54848_ (u8vector-length _bstr54843_))
                   (_out54850_ (make-string _len54848_))
                   (_n54852_
                    (read-substring _out54850_ '0 _len54848_ _in54846_)))
              (string-shrink! _out54850_ _n54852_)
              _out54850_))))
    (define bytes->string__0
      (lambda (_bstr54858_)
        (let ((_enc54860_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr54858_ _enc54860_))))
    (define bytes->string
      (lambda _g57058_
        (let ((_g57057_ (let () (declare (not safe)) (##length _g57058_))))
          (cond ((let () (declare (not safe)) (##fx= _g57057_ 1))
                 (apply (lambda (_bstr54858_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr54858_)))
                        _g57058_))
                ((let () (declare (not safe)) (##fx= _g57057_ 2))
                 (apply (lambda (_bstr54862_ _enc54863_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr54862_ _enc54863_)))
                        _g57058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g57058_))))))
    (define string->bytes__%
      (lambda (_str54829_ _enc54830_)
        (if (let () (declare (not safe)) (eq? _enc54830_ 'UTF-8))
            (string->utf8 _str54829_)
            (substring->bytes
             _str54829_
             '0
             (string-length _str54829_)
             _enc54830_))))
    (define string->bytes__0
      (lambda (_str54835_)
        (let ((_enc54837_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str54835_ _enc54837_))))
    (define string->bytes
      (lambda _g57060_
        (let ((_g57059_ (let () (declare (not safe)) (##length _g57060_))))
          (cond ((let () (declare (not safe)) (##fx= _g57059_ 1))
                 (apply (lambda (_str54835_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str54835_)))
                        _g57060_))
                ((let () (declare (not safe)) (##fx= _g57059_ 2))
                 (apply (lambda (_str54839_ _enc54840_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str54839_ _enc54840_)))
                        _g57060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g57060_))))))
    (define substring->bytes__%
      (lambda (_str54807_ _start54808_ _end54809_ _enc54810_)
        (if (let () (declare (not safe)) (eq? _enc54810_ 'UTF-8))
            (string->utf8 _str54807_ _start54808_ _end54809_)
            (let ((_out54812_
                   (open-output-u8vector
                    (let ((__tmp57061
                           (let ()
                             (declare (not safe))
                             (cons _enc54810_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp57061)))))
              (write-substring _str54807_ _start54808_ _end54809_ _out54812_)
              (get-output-u8vector _out54812_)))))
    (define substring->bytes__0
      (lambda (_str54817_ _start54818_ _end54819_)
        (let ((_enc54821_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str54817_
           _start54818_
           _end54819_
           _enc54821_))))
    (define substring->bytes
      (lambda _g57063_
        (let ((_g57062_ (let () (declare (not safe)) (##length _g57063_))))
          (cond ((let () (declare (not safe)) (##fx= _g57062_ 3))
                 (apply (lambda (_str54817_ _start54818_ _end54819_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str54817_
                             _start54818_
                             _end54819_)))
                        _g57063_))
                ((let () (declare (not safe)) (##fx= _g57062_ 4))
                 (apply (lambda (_str54823_ _start54824_ _end54825_ _enc54826_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str54823_
                             _start54824_
                             _end54825_
                             _enc54826_)))
                        _g57063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g57063_))))))
    (define string-empty?
      (lambda (_str54804_)
        (let ((__tmp57064 (string-length _str54804_)))
          (declare (not safe))
          (##fxzero? __tmp57064))))
    (define string-prefix?
      (lambda (_prefix54794_ _str54795_)
        (let ((_str-len54797_ (string-length _str54795_))
              (_prefix-len54798_ (string-length _prefix54794_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len54798_ _str-len54797_))
              (let _lp54800_ ((_i54802_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i54802_ _prefix-len54798_))
                    (if (let ((__tmp57067
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str54795_ _i54802_)))
                              (__tmp57066
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix54794_ _i54802_))))
                          (declare (not safe))
                          (eq? __tmp57067 __tmp57066))
                        (let ((__tmp57065
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i54802_ '1))))
                          (declare (not safe))
                          (_lp54800_ __tmp57065))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str54772_ _char54773_ _start54774_)
        (let ((_len54776_ (string-length _str54772_)))
          (let _lp54778_ ((_k54780_ _start54774_))
            (if (let () (declare (not safe)) (##fx< _k54780_ _len54776_))
                (if (let ((__tmp57069
                           (let ()
                             (declare (not safe))
                             (##string-ref _str54772_ _k54780_))))
                      (declare (not safe))
                      (eq? _char54773_ __tmp57069))
                    _k54780_
                    (let ((__tmp57068
                           (let () (declare (not safe)) (##fx+ _k54780_ '1))))
                      (declare (not safe))
                      (_lp54778_ __tmp57068)))
                '#f)))))
    (define string-index__0
      (lambda (_str54785_ _char54786_)
        (let ((_start54788_ '0))
          (declare (not safe))
          (string-index__% _str54785_ _char54786_ _start54788_))))
    (define string-index
      (lambda _g57071_
        (let ((_g57070_ (let () (declare (not safe)) (##length _g57071_))))
          (cond ((let () (declare (not safe)) (##fx= _g57070_ 2))
                 (apply (lambda (_str54785_ _char54786_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str54785_ _char54786_)))
                        _g57071_))
                ((let () (declare (not safe)) (##fx= _g57070_ 3))
                 (apply (lambda (_str54790_ _char54791_ _start54792_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str54790_
                             _char54791_
                             _start54792_)))
                        _g57071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g57071_))))))
    (define string-rindex__%
      (lambda (_str54743_ _char54744_ _start54745_)
        (let* ((_len54747_ (string-length _str54743_))
               (_start54752_
                (let ((_$e54749_ _start54745_))
                  (if _$e54749_
                      _$e54749_
                      (let () (declare (not safe)) (##fx- _len54747_ '1))))))
          (let _lp54755_ ((_k54757_ _start54752_))
            (if (let () (declare (not safe)) (##fx>= _k54757_ '0))
                (if (let ((__tmp57073
                           (let ()
                             (declare (not safe))
                             (##string-ref _str54743_ _k54757_))))
                      (declare (not safe))
                      (eq? _char54744_ __tmp57073))
                    _k54757_
                    (let ((__tmp57072
                           (let () (declare (not safe)) (##fx- _k54757_ '1))))
                      (declare (not safe))
                      (_lp54755_ __tmp57072)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str54762_ _char54763_)
        (let ((_start54765_ '#f))
          (declare (not safe))
          (string-rindex__% _str54762_ _char54763_ _start54765_))))
    (define string-rindex
      (lambda _g57075_
        (let ((_g57074_ (let () (declare (not safe)) (##length _g57075_))))
          (cond ((let () (declare (not safe)) (##fx= _g57074_ 2))
                 (apply (lambda (_str54762_ _char54763_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str54762_ _char54763_)))
                        _g57075_))
                ((let () (declare (not safe)) (##fx= _g57074_ 3))
                 (apply (lambda (_str54767_ _char54768_ _start54769_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str54767_
                             _char54768_
                             _start54769_)))
                        _g57075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g57075_))))))
    (define string-split
      (lambda (_str54727_ _char54728_)
        (let ((_len54730_ (string-length _str54727_)))
          (let _lp54732_ ((_start54734_ '0) (_r54735_ '()))
            (let ((_$e54737_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str54727_ _char54728_ _start54734_))))
              (if _$e54737_
                  ((lambda (_end54740_)
                     (let ((__tmp57079
                            (let ()
                              (declare (not safe))
                              (##fx+ _end54740_ '1)))
                           (__tmp57077
                            (let ((__tmp57078
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str54727_
                                      _start54734_
                                      _end54740_))))
                              (declare (not safe))
                              (cons __tmp57078 _r54735_))))
                       (declare (not safe))
                       (_lp54732_ __tmp57079 __tmp57077)))
                   _$e54737_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start54734_ _len54730_))
                      (let ((__tmp57076
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str54727_
                                      _start54734_
                                      _len54730_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp57076 _r54735_))
                      (reverse _r54735_))))))))
    (define string-join
      (lambda (_strs54632_ _join54633_)
        (letrec ((_join-length54635_
                  (lambda (_strs54686_ _jlen54687_)
                    (let _lp54689_ ((_rest54691_ _strs54686_) (_len54692_ '0))
                      (let* ((_rest5469354701_ _rest54691_)
                             (_else5469554709_ (lambda () '0))
                             (_K5469754715_
                              (lambda (_rest54712_ _hd54713_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd54713_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest54712_))
                                        (let ((__tmp57081
                                               (let ((__tmp57082
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd54713_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp57082
                                                        _jlen54687_
                                                        _len54692_))))
                                          (declare (not safe))
                                          (_lp54689_ _rest54712_ __tmp57081))
                                        (let ((__tmp57080
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd54713_))))
                                          (declare (not safe))
                                          (##fx+ __tmp57080 _len54692_)))
                                    (let ()
                                      (declare (not safe))
                                      (error '"expected string" _hd54713_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5469354701_))
                            (let ((_hd5469854718_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5469354701_)))
                                  (_tl5469954720_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5469354701_))))
                              (let* ((_hd54723_ _hd5469854718_)
                                     (_rest54725_ _tl5469954720_))
                                (declare (not safe))
                                (_K5469754715_ _rest54725_ _hd54723_)))
                            (let ()
                              (declare (not safe))
                              (_else5469554709_))))))))
          (let* ((_join54637_
                  (if (let () (declare (not safe)) (char? _join54633_))
                      (string _join54633_)
                      (if (let () (declare (not safe)) (string? _join54633_))
                          _join54633_
                          (let ()
                            (declare (not safe))
                            (error '"expected string or char" _join54633_)))))
                 (_jlen54639_
                  (let () (declare (not safe)) (##string-length _join54637_)))
                 (_olen54641_
                  (let ()
                    (declare (not safe))
                    (_join-length54635_ _strs54632_ _jlen54639_)))
                 (_ostr54643_ (make-string _olen54641_)))
            (let _lp54646_ ((_rest54648_ _strs54632_) (_k54649_ '0))
              (let* ((_rest5465054658_ _rest54648_)
                     (_else5465254666_ (lambda () '""))
                     (_K5465454674_
                      (lambda (_rest54669_ _hd54670_)
                        (let ((_hdlen54672_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd54670_))))
                          (if (let () (declare (not safe)) (pair? _rest54669_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54670_
                                   '0
                                   _hdlen54672_
                                   _ostr54643_
                                   _k54649_))
                                (let ((__tmp57083
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54649_ _hdlen54672_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join54637_
                                   '0
                                   _jlen54639_
                                   _ostr54643_
                                   __tmp57083))
                                (let ((__tmp57084
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54649_
                                                _hdlen54672_
                                                _jlen54639_))))
                                  (declare (not safe))
                                  (_lp54646_ _rest54669_ __tmp57084)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54670_
                                   '0
                                   _hdlen54672_
                                   _ostr54643_
                                   _k54649_))
                                _ostr54643_))))))
                (if (let () (declare (not safe)) (##pair? _rest5465054658_))
                    (let ((_hd5465554677_
                           (let ()
                             (declare (not safe))
                             (##car _rest5465054658_)))
                          (_tl5465654679_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5465054658_))))
                      (let* ((_hd54682_ _hd5465554677_)
                             (_rest54684_ _tl5465654679_))
                        (declare (not safe))
                        (_K5465454674_ _rest54684_ _hd54682_)))
                    (let () (declare (not safe)) (_else5465254666_)))))))))
    (define read-u8vector
      (lambda (_bytes54629_ _port54630_)
        (read-subu8vector
         _bytes54629_
         '0
         (u8vector-length _bytes54629_)
         _port54630_)))
    (define write-u8vector
      (lambda (_bytes54626_ _port54627_)
        (write-subu8vector
         _bytes54626_
         '0
         (u8vector-length _bytes54626_)
         _port54627_)))
    (define read-string
      (lambda (_str54623_ _port54624_)
        (read-substring _str54623_ '0 (string-length _str54623_) _port54624_)))
    (define write-string
      (lambda (_str54620_ _port54621_)
        (write-substring
         _str54620_
         '0
         (string-length _str54620_)
         _port54621_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag54589_
               _dbg-exprs54590_
               _dbg-thunks54591_
               _expr54592_
               _thunk54593_)
        (letrec ((_o54595_ (current-output-port))
                 (_e54596_ (current-error-port))
                 (_p54597_ (DBG-printer))
                 (_f54598_
                  (lambda () (force-output _o54595_) (force-output _e54596_)))
                 (_d54599_ (lambda (_x54606_) (display _x54606_ _e54596_)))
                 (_w54600_ (lambda (_x54608_) (_p54597_ _x54608_ _e54596_)))
                 (_n54601_ (lambda () (newline _e54596_)))
                 (_v54602_
                  (lambda (_l54611_)
                    (for-each
                     (lambda (_x54613_)
                       (let () (declare (not safe)) (_d54599_ '" "))
                       (let () (declare (not safe)) (_w54600_ _x54613_)))
                     _l54611_)
                    (let () (declare (not safe)) (_n54601_))))
                 (_x54603_
                  (lambda (_expr54615_ _thunk54616_)
                    (let () (declare (not safe)) (_f54598_))
                    (let () (declare (not safe)) (_d54599_ '"  "))
                    (let () (declare (not safe)) (_w54600_ _expr54615_))
                    (let () (declare (not safe)) (_d54599_ '" =>"))
                    (call-with-values
                     _thunk54616_
                     (lambda _x54618_
                       (let () (declare (not safe)) (_v54602_ _x54618_))
                       (let () (declare (not safe)) (_f54598_))
                       (apply values _x54618_))))))
          (if _tag54589_
              (begin
                (if (let () (declare (not safe)) (eq? _tag54589_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f54598_))
                      (let () (declare (not safe)) (_d54599_ _tag54589_))
                      (let () (declare (not safe)) (_n54601_))))
                (for-each _x54603_ _dbg-exprs54590_ _dbg-thunks54591_)
                (if _thunk54593_
                    (let ()
                      (declare (not safe))
                      (_x54603_ _expr54592_ _thunk54593_))
                    '#!void))
              (if _thunk54593_ (_thunk54593_) '#!void)))))))
