(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1710237310)
  (begin
    (define displayln
      (lambda _args56184_
        (let _lp56186_ ((_rest56188_ _args56184_))
          (let* ((_rest5618956197_ _rest56188_)
                 (_else5619156205_ (lambda () (newline)))
                 (_K5619356211_
                  (lambda (_rest56208_ _hd56209_)
                    (display _hd56209_)
                    (let () (declare (not safe)) (_lp56186_ _rest56208_)))))
            (if (let () (declare (not safe)) (##pair? _rest5618956197_))
                (let ((_hd5619456214_
                       (let () (declare (not safe)) (##car _rest5618956197_)))
                      (_tl5619556216_
                       (let () (declare (not safe)) (##cdr _rest5618956197_))))
                  (let* ((_hd56219_ _hd5619456214_)
                         (_rest56221_ _tl5619556216_))
                    (declare (not safe))
                    (_K5619356211_ _rest56221_ _hd56219_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args56182_ (for-each display _args56182_)))
    (define file-newer?
      (lambda (_file156175_ _file256176_)
        (letrec ((_modification-time56178_
                  (lambda (_file56180_)
                    (let ((__tmp56605
                           (file-info-last-modification-time
                            (file-info _file56180_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp56605)))))
          (let ((__tmp56607
                 (let ()
                   (declare (not safe))
                   (_modification-time56178_ _file156175_)))
                (__tmp56606
                 (let ()
                   (declare (not safe))
                   (_modification-time56178_ _file256176_))))
            (declare (not safe))
            (##fl> __tmp56607 __tmp56606)))))
    (define create-directory*__%
      (lambda (_dir56149_ _perms56150_)
        (letrec ((_create156152_
                  (lambda (_path56163_)
                    (if (file-exists? _path56163_)
                        (if (let ((__tmp56608 (file-type _path56163_)))
                              (declare (not safe))
                              (eq? __tmp56608 'directory))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"Path component is not a directory"
                                     _path56163_)))
                        (if _perms56150_
                            (create-directory
                             (list 'path:
                                   _path56163_
                                   'permissions:
                                   _perms56150_))
                            (create-directory _path56163_))))))
          (if (file-exists? _dir56149_)
              '#!void
              (let _lp56154_ ((_start56156_ '0))
                (let ((_$e56158_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir56149_ '#\/ _start56156_))))
                  (if _$e56158_
                      ((lambda (_x56161_)
                         (if (let () (declare (not safe)) (##fx> _x56161_ '0))
                             (let ((__tmp56609
                                    (substring _dir56149_ '0 _x56161_)))
                               (declare (not safe))
                               (_create156152_ __tmp56609))
                             '#!void)
                         (let ((__tmp56610
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x56161_ '1))))
                           (declare (not safe))
                           (_lp56154_ __tmp56610)))
                       _$e56158_)
                      (let ()
                        (declare (not safe))
                        (_create156152_ _dir56149_)))))))))
    (define create-directory*__0
      (lambda (_dir56168_)
        (let ((_perms56170_ '493))
          (declare (not safe))
          (create-directory*__% _dir56168_ _perms56170_))))
    (define create-directory*
      (lambda _g56612_
        (let ((_g56611_ (let () (declare (not safe)) (##length _g56612_))))
          (cond ((let () (declare (not safe)) (##fx= _g56611_ 1))
                 (apply (lambda (_dir56168_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir56168_)))
                        _g56612_))
                ((let () (declare (not safe)) (##fx= _g56611_ 2))
                 (apply (lambda (_dir56172_ _perms56173_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir56172_ _perms56173_)))
                        _g56612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g56612_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g56613_ '#t))
    (define true?
      (lambda (_obj56145_) (let () (declare (not safe)) (eq? _obj56145_ '#t))))
    (define false (lambda _g56614_ '#f))
    (define void (lambda _g56615_ '#!void))
    (define void?
      (lambda (_obj56141_)
        (let () (declare (not safe)) (eq? _obj56141_ '#!void))))
    (define dssl-object?
      (lambda (_obj56139_)
        (if (memq _obj56139_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj56137_)
        (let () (declare (not safe)) (eq? _obj56137_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj56135_)
        (let () (declare (not safe)) (eq? _obj56135_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj56133_)
        (let () (declare (not safe)) (eq? _obj56133_ '#!optional))))
    (define immediate?
      (lambda (_obj56129_)
        (let* ((_t56131_ (let () (declare (not safe)) (##type _obj56129_)))
               (__tmp56616
                (let () (declare (not safe)) (##fxand _t56131_ '1))))
          (declare (not safe))
          (##fxzero? __tmp56616))))
    (define nonnegative-fixnum?
      (lambda (_obj56127_)
        (if (let () (declare (not safe)) (fixnum? _obj56127_))
            (let ((__tmp56617 (fxnegative? _obj56127_)))
              (declare (not safe))
              (not __tmp56617))
            '#f)))
    (define values-count
      (lambda (_obj56125_)
        (if (let () (declare (not safe)) (##values? _obj56125_))
            (let () (declare (not safe)) (##vector-length _obj56125_))
            '1)))
    (define values-ref
      (lambda (_obj56122_ _k56123_)
        (if (let () (declare (not safe)) (##values? _obj56122_))
            (let () (declare (not safe)) (##vector-ref _obj56122_ _k56123_))
            _obj56122_)))
    (define values->list
      (lambda (_obj56120_)
        (if (let () (declare (not safe)) (##values? _obj56120_))
            (let () (declare (not safe)) (##vector->list _obj56120_))
            (list _obj56120_))))
    (define subvector->list__%
      (lambda (_obj56105_ _start56106_)
        (let ((_lst56108_
               (let () (declare (not safe)) (##vector->list _obj56105_))))
          (list-tail _lst56108_ _start56106_))))
    (define subvector->list__0
      (lambda (_obj56113_)
        (let ((_start56115_ '0))
          (declare (not safe))
          (subvector->list__% _obj56113_ _start56115_))))
    (define subvector->list
      (lambda _g56619_
        (let ((_g56618_ (let () (declare (not safe)) (##length _g56619_))))
          (cond ((let () (declare (not safe)) (##fx= _g56618_ 1))
                 (apply (lambda (_obj56113_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj56113_)))
                        _g56619_))
                ((let () (declare (not safe)) (##fx= _g56618_ 2))
                 (apply (lambda (_obj56117_ _start56118_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj56117_ _start56118_)))
                        _g56619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g56619_))))))
    (define cons*
      (lambda (_x56095_ _y56096_ . _rest56097_)
        (letrec ((_recur56099_
                  (lambda (_x56101_ _rest56102_)
                    (if (let () (declare (not safe)) (pair? _rest56102_))
                        (let ((__tmp56620
                               (let ((__tmp56622
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest56102_)))
                                     (__tmp56621
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest56102_))))
                                 (declare (not safe))
                                 (_recur56099_ __tmp56622 __tmp56621))))
                          (declare (not safe))
                          (cons _x56101_ __tmp56620))
                        _x56101_))))
          (let ((__tmp56623
                 (let ()
                   (declare (not safe))
                   (_recur56099_ _y56096_ _rest56097_))))
            (declare (not safe))
            (cons _x56095_ __tmp56623)))))
    (define foldl1
      (lambda (_f56053_ _iv56054_ _lst56055_)
        (let _lp56057_ ((_rest56059_ _lst56055_) (_r56060_ _iv56054_))
          (let* ((_rest5606156069_ _rest56059_)
                 (_else5606356077_ (lambda () _r56060_))
                 (_K5606556083_
                  (lambda (_rest56080_ _x56081_)
                    (let ((__tmp56624 (_f56053_ _x56081_ _r56060_)))
                      (declare (not safe))
                      (_lp56057_ _rest56080_ __tmp56624)))))
            (if (let () (declare (not safe)) (##pair? _rest5606156069_))
                (let ((_hd5606656086_
                       (let () (declare (not safe)) (##car _rest5606156069_)))
                      (_tl5606756088_
                       (let () (declare (not safe)) (##cdr _rest5606156069_))))
                  (let* ((_x56091_ _hd5606656086_)
                         (_rest56093_ _tl5606756088_))
                    (declare (not safe))
                    (_K5606556083_ _rest56093_ _x56091_)))
                (let () (declare (not safe)) (_else5606356077_)))))))
    (define foldl2
      (lambda (_f55976_ _iv55977_ _lst155978_ _lst255979_)
        (let _lp55981_ ((_rest155983_ _lst155978_)
                        (_rest255984_ _lst255979_)
                        (_r55985_ _iv55977_))
          (let* ((_rest15598655994_ _rest155983_)
                 (_else5598856002_ (lambda () _r55985_))
                 (_K5599056041_
                  (lambda (_rest156005_ _x156006_)
                    (let* ((_rest25600756015_ _rest255984_)
                           (_else5600956023_ (lambda () _r55985_))
                           (_K5601156029_
                            (lambda (_rest256026_ _x256027_)
                              (let ((__tmp56625
                                     (_f55976_ _x156006_ _x256027_ _r55985_)))
                                (declare (not safe))
                                (_lp55981_
                                 _rest156005_
                                 _rest256026_
                                 __tmp56625)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25600756015_))
                          (let ((_hd5601256032_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25600756015_)))
                                (_tl5601356034_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25600756015_))))
                            (let* ((_x256037_ _hd5601256032_)
                                   (_rest256039_ _tl5601356034_))
                              (declare (not safe))
                              (_K5601156029_ _rest256039_ _x256037_)))
                          (let () (declare (not safe)) (_else5600956023_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15598655994_))
                (let ((_hd5599156044_
                       (let () (declare (not safe)) (##car _rest15598655994_)))
                      (_tl5599256046_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15598655994_))))
                  (let* ((_x156049_ _hd5599156044_)
                         (_rest156051_ _tl5599256046_))
                    (declare (not safe))
                    (_K5599056041_ _rest156051_ _x156049_)))
                (let () (declare (not safe)) (_else5598856002_)))))))
    (define foldl
      (lambda _g56627_
        (let ((_g56626_ (let () (declare (not safe)) (##length _g56627_))))
          (cond ((let () (declare (not safe)) (##fx= _g56626_ 3))
                 (apply (lambda (_f55961_ _iv55962_ _lst55963_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f55961_ _iv55962_ _lst55963_)))
                        _g56627_))
                ((let () (declare (not safe)) (##fx= _g56626_ 4))
                 (apply (lambda (_f55965_ _iv55966_ _lst155967_ _lst255968_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f55965_
                                    _iv55966_
                                    _lst155967_
                                    _lst255968_)))
                        _g56627_))
                ((let () (declare (not safe)) (##fx>= _g56626_ 4))
                 (apply foldl* _g56627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g56627_))))))
    (define foldl*
      (lambda (_f55949_ _iv55950_ . _rest55951_)
        (let _recur55953_ ((_iv55955_ _iv55950_) (_rest55956_ _rest55951_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55956_))
              (let ((__tmp56629
                     (apply _f55949_
                            (let ((__tmp56631
                                   (lambda (_xs55958_ _r55959_)
                                     (let ((__tmp56632 (car _xs55958_)))
                                       (declare (not safe))
                                       (cons __tmp56632 _r55959_))))
                                  (__tmp56630 (list _iv55955_)))
                              (declare (not safe))
                              (foldr1 __tmp56631 __tmp56630 _rest55956_))))
                    (__tmp56628 (map cdr _rest55956_)))
                (declare (not safe))
                (_recur55953_ __tmp56629 __tmp56628))
              _iv55955_))))
    (define foldr1
      (lambda (_f55908_ _iv55909_ _lst55910_)
        (let _recur55912_ ((_rest55914_ _lst55910_))
          (let* ((_rest5591555923_ _rest55914_)
                 (_else5591755931_ (lambda () _iv55909_))
                 (_K5591955937_
                  (lambda (_rest55934_ _x55935_)
                    (_f55908_
                     _x55935_
                     (let ()
                       (declare (not safe))
                       (_recur55912_ _rest55934_))))))
            (if (let () (declare (not safe)) (##pair? _rest5591555923_))
                (let ((_hd5592055940_
                       (let () (declare (not safe)) (##car _rest5591555923_)))
                      (_tl5592155942_
                       (let () (declare (not safe)) (##cdr _rest5591555923_))))
                  (let* ((_x55945_ _hd5592055940_)
                         (_rest55947_ _tl5592155942_))
                    (declare (not safe))
                    (_K5591955937_ _rest55947_ _x55945_)))
                (let () (declare (not safe)) (_else5591755931_)))))))
    (define foldr2
      (lambda (_f55832_ _iv55833_ _lst155834_ _lst255835_)
        (let _recur55837_ ((_rest155839_ _lst155834_)
                           (_rest255840_ _lst255835_))
          (let* ((_rest15584155849_ _rest155839_)
                 (_else5584355857_ (lambda () _iv55833_))
                 (_K5584555896_
                  (lambda (_rest155860_ _x155861_)
                    (let* ((_rest25586255870_ _rest255840_)
                           (_else5586455878_ (lambda () _iv55833_))
                           (_K5586655884_
                            (lambda (_rest255881_ _x255882_)
                              (_f55832_
                               _x155861_
                               _x255882_
                               (let ()
                                 (declare (not safe))
                                 (_recur55837_ _rest155860_ _rest255881_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25586255870_))
                          (let ((_hd5586755887_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25586255870_)))
                                (_tl5586855889_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25586255870_))))
                            (let* ((_x255892_ _hd5586755887_)
                                   (_rest255894_ _tl5586855889_))
                              (declare (not safe))
                              (_K5586655884_ _rest255894_ _x255892_)))
                          (let () (declare (not safe)) (_else5586455878_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15584155849_))
                (let ((_hd5584655899_
                       (let () (declare (not safe)) (##car _rest15584155849_)))
                      (_tl5584755901_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15584155849_))))
                  (let* ((_x155904_ _hd5584655899_)
                         (_rest155906_ _tl5584755901_))
                    (declare (not safe))
                    (_K5584555896_ _rest155906_ _x155904_)))
                (let () (declare (not safe)) (_else5584355857_)))))))
    (define foldr
      (lambda _g56634_
        (let ((_g56633_ (let () (declare (not safe)) (##length _g56634_))))
          (cond ((let () (declare (not safe)) (##fx= _g56633_ 3))
                 (apply (lambda (_f55817_ _iv55818_ _lst55819_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f55817_ _iv55818_ _lst55819_)))
                        _g56634_))
                ((let () (declare (not safe)) (##fx= _g56633_ 4))
                 (apply (lambda (_f55821_ _iv55822_ _lst155823_ _lst255824_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f55821_
                                    _iv55822_
                                    _lst155823_
                                    _lst255824_)))
                        _g56634_))
                ((let () (declare (not safe)) (##fx>= _g56633_ 4))
                 (apply foldr* _g56634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g56634_))))))
    (define foldr*
      (lambda (_f55806_ _iv55807_ . _rest55808_)
        (let _recur55810_ ((_rest55812_ _rest55808_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55812_))
              (apply _f55806_
                     (let ((__tmp56637
                            (lambda (_xs55814_ _r55815_)
                              (let ((__tmp56638 (car _xs55814_)))
                                (declare (not safe))
                                (cons __tmp56638 _r55815_))))
                           (__tmp56635
                            (list (let ((__tmp56636 (map cdr _rest55812_)))
                                    (declare (not safe))
                                    (_recur55810_ __tmp56636)))))
                       (declare (not safe))
                       (foldr1 __tmp56637 __tmp56635 _rest55812_)))
              _iv55807_))))
    (define remove-nulls!
      (lambda (_l55693_)
        (let* ((_l5569455707_ _l55693_)
               (_E5569855711_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _l5569455707_)))))
          (let ((_K5570355796_
                 (lambda (_r55794_)
                   (let () (declare (not safe)) (remove-nulls! _r55794_))))
                (_K5570055783_
                 (lambda (_r55723_)
                   (let _loop55725_ ((_l55727_ _l55693_) (_r55728_ _r55723_))
                     (let* ((_r5572955742_ _r55728_)
                            (_E5573355746_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _r5572955742_)))))
                       (let ((_K5573855773_
                              (lambda (_rr55771_)
                                (set-cdr!
                                 _l55727_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr55771_)))))
                             (_K5573555760_
                              (lambda (_rr55758_)
                                (let ()
                                  (declare (not safe))
                                  (_loop55725_ _r55728_ _rr55758_))))
                             (_K5573455751_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5572955742_))
                             (let ((_tl5574055778_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5572955742_)))
                                   (_hd5573955776_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5572955742_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5573955776_))
                                   (let ((_rr55781_ _tl5574055778_))
                                     (declare (not safe))
                                     (_K5573855773_ _rr55781_))
                                   (let ((_rr55766_ _tl5574055778_))
                                     (declare (not safe))
                                     (_K5573555760_ _rr55766_))))
                             '#!void))))
                   _l55693_))
                (_K5569955716_ (lambda () _l55693_)))
            (if (let () (declare (not safe)) (##pair? _l5569455707_))
                (let ((_tl5570555801_
                       (let () (declare (not safe)) (##cdr _l5569455707_)))
                      (_hd5570455799_
                       (let () (declare (not safe)) (##car _l5569455707_))))
                  (if (let () (declare (not safe)) (##null? _hd5570455799_))
                      (let ((_r55804_ _tl5570555801_))
                        (declare (not safe))
                        (remove-nulls! _r55804_))
                      (let ((_r55789_ _tl5570555801_))
                        (declare (not safe))
                        (_K5570055783_ _r55789_))))
                (let () (declare (not safe)) (_K5569955716_)))))))
    (define append1!
      (lambda (_l55688_ _x55689_)
        (let ((_l255691_ (let () (declare (not safe)) (cons _x55689_ '()))))
          (if (let () (declare (not safe)) (pair? _l55688_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l55688_))
               _l255691_)
              _l255691_))))
    (define append-reverse-until
      (lambda (_pred55641_ _rhead55642_ _tail55643_)
        (let _loop55645_ ((_rhead55647_ _rhead55642_)
                          (_tail55648_ _tail55643_))
          (let* ((_rhead5564955658_ _rhead55647_)
                 (_E5565255662_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rhead5564955658_)))))
            (let ((_K5565655685_ (lambda () (values '() _tail55648_)))
                  (_K5565355669_
                   (lambda (_r55666_ _a55667_)
                     (if (_pred55641_ _a55667_)
                         (values _rhead55647_ _tail55648_)
                         (let ((__tmp56639
                                (let ()
                                  (declare (not safe))
                                  (cons _a55667_ _tail55648_))))
                           (declare (not safe))
                           (_loop55645_ _r55666_ __tmp56639))))))
              (let ((_try-match5565155681_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5564955658_))
                           (let ((_tl5565555674_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5564955658_)))
                                 (_hd5565455672_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5564955658_))))
                             (let ((_a55677_ _hd5565455672_)
                                   (_r55679_ _tl5565555674_))
                               (let ()
                                 (declare (not safe))
                                 (_K5565355669_ _r55679_ _a55677_))))
                           (let () (declare (not safe)) (_E5565255662_))))))
                (if (let () (declare (not safe)) (##null? _rhead5564955658_))
                    (let () (declare (not safe)) (_K5565655685_))
                    (let ()
                      (declare (not safe))
                      (_try-match5565155681_)))))))))
    (define andmap1
      (lambda (_f55601_ _lst55602_)
        (let _lp55604_ ((_rest55606_ _lst55602_))
          (let* ((_rest5560755615_ _rest55606_)
                 (_else5560955623_ (lambda () '#t))
                 (_K5561155629_
                  (lambda (_rest55626_ _x55627_)
                    (if (_f55601_ _x55627_)
                        (let () (declare (not safe)) (_lp55604_ _rest55626_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5560755615_))
                (let ((_hd5561255632_
                       (let () (declare (not safe)) (##car _rest5560755615_)))
                      (_tl5561355634_
                       (let () (declare (not safe)) (##cdr _rest5560755615_))))
                  (let* ((_x55637_ _hd5561255632_)
                         (_rest55639_ _tl5561355634_))
                    (declare (not safe))
                    (_K5561155629_ _rest55639_ _x55637_)))
                (let () (declare (not safe)) (_else5560955623_)))))))
    (define andmap2
      (lambda (_f55526_ _lst155527_ _lst255528_)
        (let _lp55530_ ((_rest155532_ _lst155527_) (_rest255533_ _lst255528_))
          (let* ((_rest15553455542_ _rest155532_)
                 (_else5553655550_ (lambda () '#t))
                 (_K5553855589_
                  (lambda (_rest155553_ _x155554_)
                    (let* ((_rest25555555563_ _rest255533_)
                           (_else5555755571_ (lambda () '#t))
                           (_K5555955577_
                            (lambda (_rest255574_ _x255575_)
                              (if (_f55526_ _x155554_ _x255575_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp55530_ _rest155553_ _rest255574_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25555555563_))
                          (let ((_hd5556055580_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25555555563_)))
                                (_tl5556155582_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25555555563_))))
                            (let* ((_x255585_ _hd5556055580_)
                                   (_rest255587_ _tl5556155582_))
                              (declare (not safe))
                              (_K5555955577_ _rest255587_ _x255585_)))
                          (let () (declare (not safe)) (_else5555755571_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15553455542_))
                (let ((_hd5553955592_
                       (let () (declare (not safe)) (##car _rest15553455542_)))
                      (_tl5554055594_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15553455542_))))
                  (let* ((_x155597_ _hd5553955592_)
                         (_rest155599_ _tl5554055594_))
                    (declare (not safe))
                    (_K5553855589_ _rest155599_ _x155597_)))
                (let () (declare (not safe)) (_else5553655550_)))))))
    (define andmap
      (lambda _g56641_
        (let ((_g56640_ (let () (declare (not safe)) (##length _g56641_))))
          (cond ((let () (declare (not safe)) (##fx= _g56640_ 2))
                 (apply (lambda (_f55514_ _lst55515_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f55514_ _lst55515_)))
                        _g56641_))
                ((let () (declare (not safe)) (##fx= _g56640_ 3))
                 (apply (lambda (_f55517_ _lst155518_ _lst255519_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f55517_ _lst155518_ _lst255519_)))
                        _g56641_))
                ((let () (declare (not safe)) (##fx>= _g56640_ 3))
                 (apply andmap* _g56641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g56641_))))))
    (define andmap*
      (lambda (_f55507_ . _rest55508_)
        (let _recur55510_ ((_rest55512_ _rest55508_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55512_))
              (if (apply _f55507_ (map car _rest55512_))
                  (let ((__tmp56642 (map cdr _rest55512_)))
                    (declare (not safe))
                    (_recur55510_ __tmp56642))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f55464_ _lst55465_)
        (let _lp55467_ ((_rest55469_ _lst55465_))
          (let* ((_rest5547055478_ _rest55469_)
                 (_else5547255486_ (lambda () '#f))
                 (_K5547455495_
                  (lambda (_rest55489_ _x55490_)
                    (let ((_$e55492_ (_f55464_ _x55490_)))
                      (if _$e55492_
                          _$e55492_
                          (let ()
                            (declare (not safe))
                            (_lp55467_ _rest55489_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5547055478_))
                (let ((_hd5547555498_
                       (let () (declare (not safe)) (##car _rest5547055478_)))
                      (_tl5547655500_
                       (let () (declare (not safe)) (##cdr _rest5547055478_))))
                  (let* ((_x55503_ _hd5547555498_)
                         (_rest55505_ _tl5547655500_))
                    (declare (not safe))
                    (_K5547455495_ _rest55505_ _x55503_)))
                (let () (declare (not safe)) (_else5547255486_)))))))
    (define ormap2
      (lambda (_f55386_ _lst155387_ _lst255388_)
        (let _lp55390_ ((_rest155392_ _lst155387_) (_rest255393_ _lst255388_))
          (let* ((_rest15539455402_ _rest155392_)
                 (_else5539655410_ (lambda () '#f))
                 (_K5539855452_
                  (lambda (_rest155413_ _x155414_)
                    (let* ((_rest25541555423_ _rest255393_)
                           (_else5541755431_ (lambda () '#f))
                           (_K5541955440_
                            (lambda (_rest255434_ _x255435_)
                              (let ((_$e55437_ (_f55386_ _x155414_ _x255435_)))
                                (if _$e55437_
                                    _$e55437_
                                    (let ()
                                      (declare (not safe))
                                      (_lp55390_
                                       _rest155413_
                                       _rest255434_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25541555423_))
                          (let ((_hd5542055443_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25541555423_)))
                                (_tl5542155445_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25541555423_))))
                            (let* ((_x255448_ _hd5542055443_)
                                   (_rest255450_ _tl5542155445_))
                              (declare (not safe))
                              (_K5541955440_ _rest255450_ _x255448_)))
                          (let () (declare (not safe)) (_else5541755431_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15539455402_))
                (let ((_hd5539955455_
                       (let () (declare (not safe)) (##car _rest15539455402_)))
                      (_tl5540055457_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15539455402_))))
                  (let* ((_x155460_ _hd5539955455_)
                         (_rest155462_ _tl5540055457_))
                    (declare (not safe))
                    (_K5539855452_ _rest155462_ _x155460_)))
                (let () (declare (not safe)) (_else5539655410_)))))))
    (define ormap
      (lambda _g56644_
        (let ((_g56643_ (let () (declare (not safe)) (##length _g56644_))))
          (cond ((let () (declare (not safe)) (##fx= _g56643_ 2))
                 (apply (lambda (_f55374_ _lst55375_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f55374_ _lst55375_)))
                        _g56644_))
                ((let () (declare (not safe)) (##fx= _g56643_ 3))
                 (apply (lambda (_f55377_ _lst155378_ _lst255379_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f55377_ _lst155378_ _lst255379_)))
                        _g56644_))
                ((let () (declare (not safe)) (##fx>= _g56643_ 3))
                 (apply ormap* _g56644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g56644_))))))
    (define ormap*
      (lambda (_f55364_ . _rest55365_)
        (let _recur55367_ ((_rest55369_ _rest55365_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55369_))
              (let ((_$e55371_ (apply _f55364_ (map car _rest55369_))))
                (if _$e55371_
                    _$e55371_
                    (let ((__tmp56645 (map cdr _rest55369_)))
                      (declare (not safe))
                      (_recur55367_ __tmp56645))))
              '#f))))
    (define filter-map1
      (lambda (_f55319_ _lst55320_)
        (let _recur55322_ ((_rest55324_ _lst55320_))
          (let* ((_rest5532555333_ _rest55324_)
                 (_else5532755341_ (lambda () '()))
                 (_K5532955352_
                  (lambda (_rest55344_ _x55345_)
                    (let ((_$e55347_ (_f55319_ _x55345_)))
                      (if _$e55347_
                          ((lambda (_r55350_)
                             (let ((__tmp56646
                                    (let ()
                                      (declare (not safe))
                                      (_recur55322_ _rest55344_))))
                               (declare (not safe))
                               (cons _r55350_ __tmp56646)))
                           _$e55347_)
                          (let ()
                            (declare (not safe))
                            (_recur55322_ _rest55344_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5532555333_))
                (let ((_hd5533055355_
                       (let () (declare (not safe)) (##car _rest5532555333_)))
                      (_tl5533155357_
                       (let () (declare (not safe)) (##cdr _rest5532555333_))))
                  (let* ((_x55360_ _hd5533055355_)
                         (_rest55362_ _tl5533155357_))
                    (declare (not safe))
                    (_K5532955352_ _rest55362_ _x55360_)))
                (let () (declare (not safe)) (_else5532755341_)))))))
    (define filter-map2
      (lambda (_f55239_ _lst155240_ _lst255241_)
        (let _recur55243_ ((_rest155245_ _lst155240_)
                           (_rest255246_ _lst255241_))
          (let* ((_rest15524755255_ _rest155245_)
                 (_else5524955263_ (lambda () '()))
                 (_K5525155307_
                  (lambda (_rest155266_ _x155267_)
                    (let* ((_rest25526855276_ _rest255246_)
                           (_else5527055284_ (lambda () '()))
                           (_K5527255295_
                            (lambda (_rest255287_ _x255288_)
                              (let ((_$e55290_ (_f55239_ _x155267_ _x255288_)))
                                (if _$e55290_
                                    ((lambda (_r55293_)
                                       (let ((__tmp56647
                                              (let ()
                                                (declare (not safe))
                                                (_recur55243_
                                                 _rest155266_
                                                 _rest255287_))))
                                         (declare (not safe))
                                         (cons _r55293_ __tmp56647)))
                                     _$e55290_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur55243_
                                       _rest155266_
                                       _rest255287_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25526855276_))
                          (let ((_hd5527355298_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25526855276_)))
                                (_tl5527455300_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25526855276_))))
                            (let* ((_x255303_ _hd5527355298_)
                                   (_rest255305_ _tl5527455300_))
                              (declare (not safe))
                              (_K5527255295_ _rest255305_ _x255303_)))
                          (let () (declare (not safe)) (_else5527055284_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15524755255_))
                (let ((_hd5525255310_
                       (let () (declare (not safe)) (##car _rest15524755255_)))
                      (_tl5525355312_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15524755255_))))
                  (let* ((_x155315_ _hd5525255310_)
                         (_rest155317_ _tl5525355312_))
                    (declare (not safe))
                    (_K5525155307_ _rest155317_ _x155315_)))
                (let () (declare (not safe)) (_else5524955263_)))))))
    (define filter-map
      (lambda _g56649_
        (let ((_g56648_ (let () (declare (not safe)) (##length _g56649_))))
          (cond ((let () (declare (not safe)) (##fx= _g56648_ 2))
                 (apply (lambda (_f55227_ _lst55228_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f55227_ _lst55228_)))
                        _g56649_))
                ((let () (declare (not safe)) (##fx= _g56648_ 3))
                 (apply (lambda (_f55230_ _lst155231_ _lst255232_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f55230_ _lst155231_ _lst255232_)))
                        _g56649_))
                ((let () (declare (not safe)) (##fx>= _g56648_ 3))
                 (apply filter-map* _g56649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g56649_))))))
    (define filter-map*
      (lambda (_f55215_ . _rest55216_)
        (let _recur55218_ ((_rest55220_ _rest55216_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55220_))
              (let ((_$e55222_ (apply _f55215_ (map car _rest55220_))))
                (if _$e55222_
                    ((lambda (_r55225_)
                       (let ((__tmp56651
                              (let ((__tmp56652 (map cdr _rest55220_)))
                                (declare (not safe))
                                (_recur55218_ __tmp56652))))
                         (declare (not safe))
                         (cons _r55225_ __tmp56651)))
                     _$e55222_)
                    (let ((__tmp56650 (map cdr _rest55220_)))
                      (declare (not safe))
                      (_recur55218_ __tmp56650))))
              '()))))
    (define assgetq__%
      (lambda (_key55193_ _lst55195_ _default55197_)
        (let ((_$e55200_
               (if (let () (declare (not safe)) (pair? _lst55195_))
                   (assq _key55193_ _lst55195_)
                   '#f)))
          (if _$e55200_
              (cdr _$e55200_)
              (if (let () (declare (not safe)) (procedure? _default55197_))
                  (_default55197_ _key55193_)
                  _default55197_)))))
    (define assgetq__0
      (lambda (_key55206_ _lst55207_)
        (let ((_default55209_ '#f))
          (declare (not safe))
          (assgetq__% _key55206_ _lst55207_ _default55209_))))
    (define assgetq
      (lambda _g56654_
        (let ((_g56653_ (let () (declare (not safe)) (##length _g56654_))))
          (cond ((let () (declare (not safe)) (##fx= _g56653_ 2))
                 (apply (lambda (_key55206_ _lst55207_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key55206_ _lst55207_)))
                        _g56654_))
                ((let () (declare (not safe)) (##fx= _g56653_ 3))
                 (apply (lambda (_key55211_ _lst55212_ _default55213_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key55211_ _lst55212_ _default55213_)))
                        _g56654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g56654_))))))
    (define assgetv__%
      (lambda (_key55170_ _lst55172_ _default55174_)
        (let ((_$e55177_
               (if (let () (declare (not safe)) (pair? _lst55172_))
                   (assv _key55170_ _lst55172_)
                   '#f)))
          (if _$e55177_
              (cdr _$e55177_)
              (if (let () (declare (not safe)) (procedure? _default55174_))
                  (_default55174_ _key55170_)
                  _default55174_)))))
    (define assgetv__0
      (lambda (_key55183_ _lst55184_)
        (let ((_default55186_ '#f))
          (declare (not safe))
          (assgetv__% _key55183_ _lst55184_ _default55186_))))
    (define assgetv
      (lambda _g56656_
        (let ((_g56655_ (let () (declare (not safe)) (##length _g56656_))))
          (cond ((let () (declare (not safe)) (##fx= _g56655_ 2))
                 (apply (lambda (_key55183_ _lst55184_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key55183_ _lst55184_)))
                        _g56656_))
                ((let () (declare (not safe)) (##fx= _g56655_ 3))
                 (apply (lambda (_key55188_ _lst55189_ _default55190_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key55188_ _lst55189_ _default55190_)))
                        _g56656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g56656_))))))
    (define assget__%
      (lambda (_key55147_ _lst55149_ _default55151_)
        (let ((_$e55154_
               (if (let () (declare (not safe)) (pair? _lst55149_))
                   (assoc _key55147_ _lst55149_)
                   '#f)))
          (if _$e55154_
              (cdr _$e55154_)
              (if (let () (declare (not safe)) (procedure? _default55151_))
                  (_default55151_ _key55147_)
                  _default55151_)))))
    (define assget__0
      (lambda (_key55160_ _lst55161_)
        (let ((_default55163_ '#f))
          (declare (not safe))
          (assget__% _key55160_ _lst55161_ _default55163_))))
    (define assget
      (lambda _g56658_
        (let ((_g56657_ (let () (declare (not safe)) (##length _g56658_))))
          (cond ((let () (declare (not safe)) (##fx= _g56657_ 2))
                 (apply (lambda (_key55160_ _lst55161_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key55160_ _lst55161_)))
                        _g56658_))
                ((let () (declare (not safe)) (##fx= _g56657_ 3))
                 (apply (lambda (_key55165_ _lst55166_ _default55167_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key55165_ _lst55166_ _default55167_)))
                        _g56658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g56658_))))))
    (define pgetq__%
      (lambda (_key55076_ _lst55078_ _default55080_)
        (let _lp55083_ ((_rest55086_ _lst55078_))
          (let* ((_rest5508855098_ _rest55086_)
                 (_else5509055106_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55080_))
                        (_default55080_ _key55076_)
                        _default55080_)))
                 (_K5509255115_
                  (lambda (_rest55109_ _v55110_ _k55112_)
                    (if (let () (declare (not safe)) (eq? _k55112_ _key55076_))
                        _v55110_
                        (let ()
                          (declare (not safe))
                          (_lp55083_ _rest55109_))))))
            (if (let () (declare (not safe)) (##pair? _rest5508855098_))
                (let ((_hd5509355118_
                       (let () (declare (not safe)) (##car _rest5508855098_)))
                      (_tl5509455120_
                       (let () (declare (not safe)) (##cdr _rest5508855098_))))
                  (let ((_k55123_ _hd5509355118_))
                    (if (let () (declare (not safe)) (##pair? _tl5509455120_))
                        (let ((_hd5509555125_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5509455120_)))
                              (_tl5509655127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5509455120_))))
                          (let* ((_v55130_ _hd5509555125_)
                                 (_rest55132_ _tl5509655127_))
                            (declare (not safe))
                            (_K5509255115_ _rest55132_ _v55130_ _k55123_)))
                        (let () (declare (not safe)) (_else5509055106_)))))
                (let () (declare (not safe)) (_else5509055106_)))))))
    (define pgetq__0
      (lambda (_key55137_ _lst55138_)
        (let ((_default55140_ '#f))
          (declare (not safe))
          (pgetq__% _key55137_ _lst55138_ _default55140_))))
    (define pgetq
      (lambda _g56660_
        (let ((_g56659_ (let () (declare (not safe)) (##length _g56660_))))
          (cond ((let () (declare (not safe)) (##fx= _g56659_ 2))
                 (apply (lambda (_key55137_ _lst55138_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key55137_ _lst55138_)))
                        _g56660_))
                ((let () (declare (not safe)) (##fx= _g56659_ 3))
                 (apply (lambda (_key55142_ _lst55143_ _default55144_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key55142_ _lst55143_ _default55144_)))
                        _g56660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g56660_))))))
    (define pgetv__%
      (lambda (_key55005_ _lst55007_ _default55009_)
        (let _lp55012_ ((_rest55015_ _lst55007_))
          (let* ((_rest5501755027_ _rest55015_)
                 (_else5501955035_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55009_))
                        (_default55009_ _key55005_)
                        _default55009_)))
                 (_K5502155044_
                  (lambda (_rest55038_ _v55039_ _k55041_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k55041_ _key55005_))
                        _v55039_
                        (let ()
                          (declare (not safe))
                          (_lp55012_ _rest55038_))))))
            (if (let () (declare (not safe)) (##pair? _rest5501755027_))
                (let ((_hd5502255047_
                       (let () (declare (not safe)) (##car _rest5501755027_)))
                      (_tl5502355049_
                       (let () (declare (not safe)) (##cdr _rest5501755027_))))
                  (let ((_k55052_ _hd5502255047_))
                    (if (let () (declare (not safe)) (##pair? _tl5502355049_))
                        (let ((_hd5502455054_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5502355049_)))
                              (_tl5502555056_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5502355049_))))
                          (let* ((_v55059_ _hd5502455054_)
                                 (_rest55061_ _tl5502555056_))
                            (declare (not safe))
                            (_K5502155044_ _rest55061_ _v55059_ _k55052_)))
                        (let () (declare (not safe)) (_else5501955035_)))))
                (let () (declare (not safe)) (_else5501955035_)))))))
    (define pgetv__0
      (lambda (_key55066_ _lst55067_)
        (let ((_default55069_ '#f))
          (declare (not safe))
          (pgetv__% _key55066_ _lst55067_ _default55069_))))
    (define pgetv
      (lambda _g56662_
        (let ((_g56661_ (let () (declare (not safe)) (##length _g56662_))))
          (cond ((let () (declare (not safe)) (##fx= _g56661_ 2))
                 (apply (lambda (_key55066_ _lst55067_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key55066_ _lst55067_)))
                        _g56662_))
                ((let () (declare (not safe)) (##fx= _g56661_ 3))
                 (apply (lambda (_key55071_ _lst55072_ _default55073_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key55071_ _lst55072_ _default55073_)))
                        _g56662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g56662_))))))
    (define pget__%
      (lambda (_key54934_ _lst54936_ _default54938_)
        (let _lp54941_ ((_rest54944_ _lst54936_))
          (let* ((_rest5494654956_ _rest54944_)
                 (_else5494854964_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default54938_))
                        (_default54938_ _key54934_)
                        _default54938_)))
                 (_K5495054973_
                  (lambda (_rest54967_ _v54968_ _k54970_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k54970_ _key54934_))
                        _v54968_
                        (let ()
                          (declare (not safe))
                          (_lp54941_ _rest54967_))))))
            (if (let () (declare (not safe)) (##pair? _rest5494654956_))
                (let ((_hd5495154976_
                       (let () (declare (not safe)) (##car _rest5494654956_)))
                      (_tl5495254978_
                       (let () (declare (not safe)) (##cdr _rest5494654956_))))
                  (let ((_k54981_ _hd5495154976_))
                    (if (let () (declare (not safe)) (##pair? _tl5495254978_))
                        (let ((_hd5495354983_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5495254978_)))
                              (_tl5495454985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5495254978_))))
                          (let* ((_v54988_ _hd5495354983_)
                                 (_rest54990_ _tl5495454985_))
                            (declare (not safe))
                            (_K5495054973_ _rest54990_ _v54988_ _k54981_)))
                        (let () (declare (not safe)) (_else5494854964_)))))
                (let () (declare (not safe)) (_else5494854964_)))))))
    (define pget__0
      (lambda (_key54995_ _lst54996_)
        (let ((_default54998_ '#f))
          (declare (not safe))
          (pget__% _key54995_ _lst54996_ _default54998_))))
    (define pget
      (lambda _g56664_
        (let ((_g56663_ (let () (declare (not safe)) (##length _g56664_))))
          (cond ((let () (declare (not safe)) (##fx= _g56663_ 2))
                 (apply (lambda (_key54995_ _lst54996_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key54995_ _lst54996_)))
                        _g56664_))
                ((let () (declare (not safe)) (##fx= _g56663_ 3))
                 (apply (lambda (_key55000_ _lst55001_ _default55002_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key55000_ _lst55001_ _default55002_)))
                        _g56664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g56664_))))))
    (define find
      (lambda (_pred54927_ _lst54928_)
        (let ((_$e54930_
               (let () (declare (not safe)) (memf _pred54927_ _lst54928_))))
          (if _$e54930_ (car _$e54930_) '#f))))
    (define memf
      (lambda (_proc54887_ _lst54888_)
        (let _lp54890_ ((_rest54892_ _lst54888_))
          (let* ((_rest5489354901_ _rest54892_)
                 (_else5489554909_ (lambda () '#f))
                 (_K5489754915_
                  (lambda (_tl54912_ _hd54913_)
                    (if (_proc54887_ _hd54913_)
                        _rest54892_
                        (let () (declare (not safe)) (_lp54890_ _tl54912_))))))
            (if (let () (declare (not safe)) (##pair? _rest5489354901_))
                (let ((_hd5489854918_
                       (let () (declare (not safe)) (##car _rest5489354901_)))
                      (_tl5489954920_
                       (let () (declare (not safe)) (##cdr _rest5489354901_))))
                  (let* ((_hd54923_ _hd5489854918_) (_tl54925_ _tl5489954920_))
                    (declare (not safe))
                    (_K5489754915_ _tl54925_ _hd54923_)))
                (let () (declare (not safe)) (_else5489554909_)))))))
    (define remove1
      (lambda (_el54840_ _lst54842_)
        (let _lp54845_ ((_rest54848_ _lst54842_) (_r54850_ '()))
          (let* ((_rest5485254860_ _rest54848_)
                 (_else5485454868_ (lambda () _lst54842_))
                 (_K5485654875_
                  (lambda (_rest54871_ _hd54872_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el54840_ _hd54872_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest54871_ _r54850_))
                        (let ((__tmp56665
                               (let ()
                                 (declare (not safe))
                                 (cons _hd54872_ _r54850_))))
                          (declare (not safe))
                          (_lp54845_ _rest54871_ __tmp56665))))))
            (if (let () (declare (not safe)) (##pair? _rest5485254860_))
                (let ((_hd5485754878_
                       (let () (declare (not safe)) (##car _rest5485254860_)))
                      (_tl5485854880_
                       (let () (declare (not safe)) (##cdr _rest5485254860_))))
                  (let* ((_hd54883_ _hd5485754878_)
                         (_rest54885_ _tl5485854880_))
                    (declare (not safe))
                    (_K5485654875_ _rest54885_ _hd54883_)))
                (let () (declare (not safe)) (_else5485454868_)))))))
    (define remv
      (lambda (_el54793_ _lst54795_)
        (let _lp54798_ ((_rest54801_ _lst54795_) (_r54803_ '()))
          (let* ((_rest5480554813_ _rest54801_)
                 (_else5480754821_ (lambda () _lst54795_))
                 (_K5480954828_
                  (lambda (_rest54824_ _hd54825_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el54793_ _hd54825_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest54824_ _r54803_))
                        (let ((__tmp56666
                               (let ()
                                 (declare (not safe))
                                 (cons _hd54825_ _r54803_))))
                          (declare (not safe))
                          (_lp54798_ _rest54824_ __tmp56666))))))
            (if (let () (declare (not safe)) (##pair? _rest5480554813_))
                (let ((_hd5481054831_
                       (let () (declare (not safe)) (##car _rest5480554813_)))
                      (_tl5481154833_
                       (let () (declare (not safe)) (##cdr _rest5480554813_))))
                  (let* ((_hd54836_ _hd5481054831_)
                         (_rest54838_ _tl5481154833_))
                    (declare (not safe))
                    (_K5480954828_ _rest54838_ _hd54836_)))
                (let () (declare (not safe)) (_else5480754821_)))))))
    (define remq
      (lambda (_el54746_ _lst54748_)
        (let _lp54751_ ((_rest54754_ _lst54748_) (_r54756_ '()))
          (let* ((_rest5475854766_ _rest54754_)
                 (_else5476054774_ (lambda () _lst54748_))
                 (_K5476254781_
                  (lambda (_rest54777_ _hd54778_)
                    (if (let () (declare (not safe)) (eq? _el54746_ _hd54778_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest54777_ _r54756_))
                        (let ((__tmp56667
                               (let ()
                                 (declare (not safe))
                                 (cons _hd54778_ _r54756_))))
                          (declare (not safe))
                          (_lp54751_ _rest54777_ __tmp56667))))))
            (if (let () (declare (not safe)) (##pair? _rest5475854766_))
                (let ((_hd5476354784_
                       (let () (declare (not safe)) (##car _rest5475854766_)))
                      (_tl5476454786_
                       (let () (declare (not safe)) (##cdr _rest5475854766_))))
                  (let* ((_hd54789_ _hd5476354784_)
                         (_rest54791_ _tl5476454786_))
                    (declare (not safe))
                    (_K5476254781_ _rest54791_ _hd54789_)))
                (let () (declare (not safe)) (_else5476054774_)))))))
    (define remf
      (lambda (_proc54705_ _lst54706_)
        (let _lp54708_ ((_rest54710_ _lst54706_) (_r54711_ '()))
          (let* ((_rest5471254720_ _rest54710_)
                 (_else5471454728_ (lambda () _lst54706_))
                 (_K5471654734_
                  (lambda (_rest54731_ _hd54732_)
                    (if (_proc54705_ _hd54732_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest54731_ _r54711_))
                        (let ((__tmp56668
                               (let ()
                                 (declare (not safe))
                                 (cons _hd54732_ _r54711_))))
                          (declare (not safe))
                          (_lp54708_ _rest54731_ __tmp56668))))))
            (if (let () (declare (not safe)) (##pair? _rest5471254720_))
                (let ((_hd5471754737_
                       (let () (declare (not safe)) (##car _rest5471254720_)))
                      (_tl5471854739_
                       (let () (declare (not safe)) (##cdr _rest5471254720_))))
                  (let* ((_hd54742_ _hd5471754737_)
                         (_rest54744_ _tl5471854739_))
                    (declare (not safe))
                    (_K5471654734_ _rest54744_ _hd54742_)))
                (let () (declare (not safe)) (_else5471454728_)))))))
    (define 1+ (lambda (_x54703_) (+ _x54703_ '1)))
    (define 1- (lambda (_x54701_) (- _x54701_ '1)))
    (define fx1+ (lambda (_x54699_) (fx+ _x54699_ '1)))
    (define fx1- (lambda (_x54697_) (fx- _x54697_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x54695_)
        (if (let () (declare (not safe)) (fixnum? _x54695_))
            (let () (declare (not safe)) (##fx>= _x54695_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x54693_)
        (if (let () (declare (not safe)) (fixnum? _x54693_))
            (let () (declare (not safe)) (##fx> _x54693_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x54691_) (let () (declare (not safe)) (eq? _x54691_ '0))))
    (define fx<0?
      (lambda (_x54689_)
        (if (let () (declare (not safe)) (fixnum? _x54689_))
            (let () (declare (not safe)) (##fx< _x54689_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x54687_)
        (if (let () (declare (not safe)) (fixnum? _x54687_))
            (let () (declare (not safe)) (##fx<= _x54687_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x54685_)
        (if (let () (declare (not safe)) (symbol? _x54685_))
            (let ((__tmp56669 (uninterned-symbol? _x54685_)))
              (declare (not safe))
              (not __tmp56669))
            '#f)))
    (define display-as-string
      (lambda (_x54657_ _port54658_)
        (if (or (let () (declare (not safe)) (string? _x54657_))
                (let () (declare (not safe)) (symbol? _x54657_))
                (keyword? _x54657_)
                (let () (declare (not safe)) (number? _x54657_))
                (let () (declare (not safe)) (char? _x54657_)))
            (display _x54657_ _port54658_)
            (if (let () (declare (not safe)) (pair? _x54657_))
                (begin
                  (let ((__tmp56670 (car _x54657_)))
                    (declare (not safe))
                    (display-as-string __tmp56670 _port54658_))
                  (let ((__tmp56671 (cdr _x54657_)))
                    (declare (not safe))
                    (display-as-string __tmp56671 _port54658_)))
                (if (let () (declare (not safe)) (vector? _x54657_))
                    (vector-for-each
                     (lambda (_g5467154673_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5467154673_ _port54658_)))
                     _x54657_)
                    (if (or (let () (declare (not safe)) (null? _x54657_))
                            (let ()
                              (declare (not safe))
                              (eq? _x54657_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x54657_))
                            (let () (declare (not safe)) (boolean? _x54657_)))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot convert as string" _x54657_))))))))
    (define as-string__0
      (lambda (_x54645_)
        (if (let () (declare (not safe)) (string? _x54645_))
            _x54645_
            (if (let () (declare (not safe)) (symbol? _x54645_))
                (symbol->string _x54645_)
                (if (keyword? _x54645_)
                    (keyword->string _x54645_)
                    (call-with-output-string
                     '()
                     (lambda (_g5464654648_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x54645_ _g5464654648_)))))))))
    (define as-string__1
      (lambda _args54651_
        (call-with-output-string
         '()
         (lambda (_g5465254654_)
           (let ()
             (declare (not safe))
             (display-as-string _args54651_ _g5465254654_))))))
    (define as-string
      (lambda _g56673_
        (let ((_g56672_ (let () (declare (not safe)) (##length _g56673_))))
          (cond ((let () (declare (not safe)) (##fx= _g56672_ 1))
                 (apply (lambda (_x54645_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x54645_)))
                        _g56673_))
                (#t (apply as-string__1 _g56673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g56673_))))))
    (define make-symbol__0
      (lambda (_x54641_)
        (if (let () (declare (not safe)) (interned-symbol? _x54641_))
            _x54641_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x54641_))))))
    (define make-symbol__1
      (lambda _args54643_ (string->symbol (apply as-string _args54643_))))
    (define make-symbol
      (lambda _g56675_
        (let ((_g56674_ (let () (declare (not safe)) (##length _g56675_))))
          (cond ((let () (declare (not safe)) (##fx= _g56674_ 1))
                 (apply (lambda (_x54641_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x54641_)))
                        _g56675_))
                (#t (apply make-symbol__1 _g56675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g56675_))))))
    (define make-keyword__0
      (lambda (_x54637_)
        (if (let () (declare (not safe)) (interned-keyword? _x54637_))
            _x54637_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x54637_))))))
    (define make-keyword__1
      (lambda _args54639_ (string->keyword (apply as-string _args54639_))))
    (define make-keyword
      (lambda _g56677_
        (let ((_g56676_ (let () (declare (not safe)) (##length _g56677_))))
          (cond ((let () (declare (not safe)) (##fx= _g56676_ 1))
                 (apply (lambda (_x54637_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x54637_)))
                        _g56677_))
                (#t (apply make-keyword__1 _g56677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g56677_))))))
    (define interned-keyword?
      (lambda (_x54635_)
        (if (keyword? _x54635_)
            (let ((__tmp56678 (uninterned-keyword? _x54635_)))
              (declare (not safe))
              (not __tmp56678))
            '#f)))
    (define symbol->keyword
      (lambda (_sym54633_)
        ((if (uninterned-symbol? _sym54633_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym54633_))))
    (define keyword->symbol
      (lambda (_kw54631_)
        ((if (uninterned-keyword? _kw54631_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw54631_))))
    (define bytes->string__%
      (lambda (_bstr54609_ _enc54610_)
        (if (let () (declare (not safe)) (eq? _enc54610_ 'UTF-8))
            (utf8->string _bstr54609_)
            (let* ((_in54612_
                    (open-input-u8vector
                     (let ((__tmp56679
                            (let ((__tmp56680
                                   (let ((__tmp56681
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr54609_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp56681))))
                              (declare (not safe))
                              (cons _enc54610_ __tmp56680))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp56679))))
                   (_len54614_ (u8vector-length _bstr54609_))
                   (_out54616_ (make-string _len54614_))
                   (_n54618_
                    (read-substring _out54616_ '0 _len54614_ _in54612_)))
              (string-shrink! _out54616_ _n54618_)
              _out54616_))))
    (define bytes->string__0
      (lambda (_bstr54624_)
        (let ((_enc54626_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr54624_ _enc54626_))))
    (define bytes->string
      (lambda _g56683_
        (let ((_g56682_ (let () (declare (not safe)) (##length _g56683_))))
          (cond ((let () (declare (not safe)) (##fx= _g56682_ 1))
                 (apply (lambda (_bstr54624_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr54624_)))
                        _g56683_))
                ((let () (declare (not safe)) (##fx= _g56682_ 2))
                 (apply (lambda (_bstr54628_ _enc54629_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr54628_ _enc54629_)))
                        _g56683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g56683_))))))
    (define string->bytes__%
      (lambda (_str54595_ _enc54596_)
        (if (let () (declare (not safe)) (eq? _enc54596_ 'UTF-8))
            (string->utf8 _str54595_)
            (let ((__tmp56684 (string-length _str54595_)))
              (declare (not safe))
              (substring->bytes _str54595_ '0 __tmp56684 _enc54596_)))))
    (define string->bytes__0
      (lambda (_str54601_)
        (let ((_enc54603_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str54601_ _enc54603_))))
    (define string->bytes
      (lambda _g56686_
        (let ((_g56685_ (let () (declare (not safe)) (##length _g56686_))))
          (cond ((let () (declare (not safe)) (##fx= _g56685_ 1))
                 (apply (lambda (_str54601_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str54601_)))
                        _g56686_))
                ((let () (declare (not safe)) (##fx= _g56685_ 2))
                 (apply (lambda (_str54605_ _enc54606_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str54605_ _enc54606_)))
                        _g56686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g56686_))))))
    (define substring->bytes__%
      (lambda (_str54573_ _start54574_ _end54575_ _enc54576_)
        (if (let () (declare (not safe)) (eq? _enc54576_ 'UTF-8))
            (string->utf8 _str54573_ _start54574_ _end54575_)
            (let ((_out54578_
                   (open-output-u8vector
                    (let ((__tmp56687
                           (let ()
                             (declare (not safe))
                             (cons _enc54576_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp56687)))))
              (write-substring _str54573_ _start54574_ _end54575_ _out54578_)
              (get-output-u8vector _out54578_)))))
    (define substring->bytes__0
      (lambda (_str54583_ _start54584_ _end54585_)
        (let ((_enc54587_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str54583_
           _start54584_
           _end54585_
           _enc54587_))))
    (define substring->bytes
      (lambda _g56689_
        (let ((_g56688_ (let () (declare (not safe)) (##length _g56689_))))
          (cond ((let () (declare (not safe)) (##fx= _g56688_ 3))
                 (apply (lambda (_str54583_ _start54584_ _end54585_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str54583_
                             _start54584_
                             _end54585_)))
                        _g56689_))
                ((let () (declare (not safe)) (##fx= _g56688_ 4))
                 (apply (lambda (_str54589_ _start54590_ _end54591_ _enc54592_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str54589_
                             _start54590_
                             _end54591_
                             _enc54592_)))
                        _g56689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g56689_))))))
    (define string-empty?
      (lambda (_str54570_)
        (let ((__tmp56690 (string-length _str54570_)))
          (declare (not safe))
          (##fxzero? __tmp56690))))
    (define string-prefix?
      (lambda (_prefix54560_ _str54561_)
        (let ((_str-len54563_ (string-length _str54561_))
              (_prefix-len54564_ (string-length _prefix54560_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len54564_ _str-len54563_))
              (let _lp54566_ ((_i54568_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i54568_ _prefix-len54564_))
                    (if (let ((__tmp56693
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str54561_ _i54568_)))
                              (__tmp56692
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix54560_ _i54568_))))
                          (declare (not safe))
                          (eq? __tmp56693 __tmp56692))
                        (let ((__tmp56691
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i54568_ '1))))
                          (declare (not safe))
                          (_lp54566_ __tmp56691))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str54538_ _char54539_ _start54540_)
        (let ((_len54542_ (string-length _str54538_)))
          (let _lp54544_ ((_k54546_ _start54540_))
            (if (let () (declare (not safe)) (##fx< _k54546_ _len54542_))
                (if (let ((__tmp56695
                           (let ()
                             (declare (not safe))
                             (##string-ref _str54538_ _k54546_))))
                      (declare (not safe))
                      (eq? _char54539_ __tmp56695))
                    _k54546_
                    (let ((__tmp56694
                           (let () (declare (not safe)) (##fx+ _k54546_ '1))))
                      (declare (not safe))
                      (_lp54544_ __tmp56694)))
                '#f)))))
    (define string-index__0
      (lambda (_str54551_ _char54552_)
        (let ((_start54554_ '0))
          (declare (not safe))
          (string-index__% _str54551_ _char54552_ _start54554_))))
    (define string-index
      (lambda _g56697_
        (let ((_g56696_ (let () (declare (not safe)) (##length _g56697_))))
          (cond ((let () (declare (not safe)) (##fx= _g56696_ 2))
                 (apply (lambda (_str54551_ _char54552_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str54551_ _char54552_)))
                        _g56697_))
                ((let () (declare (not safe)) (##fx= _g56696_ 3))
                 (apply (lambda (_str54556_ _char54557_ _start54558_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str54556_
                             _char54557_
                             _start54558_)))
                        _g56697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g56697_))))))
    (define string-rindex__%
      (lambda (_str54509_ _char54510_ _start54511_)
        (let* ((_len54513_ (string-length _str54509_))
               (_start54518_
                (let ((_$e54515_ _start54511_))
                  (if _$e54515_
                      _$e54515_
                      (let () (declare (not safe)) (##fx- _len54513_ '1))))))
          (let _lp54521_ ((_k54523_ _start54518_))
            (if (let () (declare (not safe)) (##fx>= _k54523_ '0))
                (if (let ((__tmp56699
                           (let ()
                             (declare (not safe))
                             (##string-ref _str54509_ _k54523_))))
                      (declare (not safe))
                      (eq? _char54510_ __tmp56699))
                    _k54523_
                    (let ((__tmp56698
                           (let () (declare (not safe)) (##fx- _k54523_ '1))))
                      (declare (not safe))
                      (_lp54521_ __tmp56698)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str54528_ _char54529_)
        (let ((_start54531_ '#f))
          (declare (not safe))
          (string-rindex__% _str54528_ _char54529_ _start54531_))))
    (define string-rindex
      (lambda _g56701_
        (let ((_g56700_ (let () (declare (not safe)) (##length _g56701_))))
          (cond ((let () (declare (not safe)) (##fx= _g56700_ 2))
                 (apply (lambda (_str54528_ _char54529_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str54528_ _char54529_)))
                        _g56701_))
                ((let () (declare (not safe)) (##fx= _g56700_ 3))
                 (apply (lambda (_str54533_ _char54534_ _start54535_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str54533_
                             _char54534_
                             _start54535_)))
                        _g56701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g56701_))))))
    (define string-split
      (lambda (_str54493_ _char54494_)
        (let ((_len54496_ (string-length _str54493_)))
          (let _lp54498_ ((_start54500_ '0) (_r54501_ '()))
            (let ((_$e54503_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str54493_ _char54494_ _start54500_))))
              (if _$e54503_
                  ((lambda (_end54506_)
                     (let ((__tmp56705
                            (let ()
                              (declare (not safe))
                              (##fx+ _end54506_ '1)))
                           (__tmp56703
                            (let ((__tmp56704
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str54493_
                                      _start54500_
                                      _end54506_))))
                              (declare (not safe))
                              (cons __tmp56704 _r54501_))))
                       (declare (not safe))
                       (_lp54498_ __tmp56705 __tmp56703)))
                   _$e54503_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start54500_ _len54496_))
                      (let ((__tmp56702
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str54493_
                                      _start54500_
                                      _len54496_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp56702 _r54501_))
                      (reverse _r54501_))))))))
    (define string-join
      (lambda (_strs54398_ _join54399_)
        (letrec ((_join-length54401_
                  (lambda (_strs54452_ _jlen54453_)
                    (let _lp54455_ ((_rest54457_ _strs54452_) (_len54458_ '0))
                      (let* ((_rest5445954467_ _rest54457_)
                             (_else5446154475_ (lambda () '0))
                             (_K5446354481_
                              (lambda (_rest54478_ _hd54479_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd54479_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest54478_))
                                        (let ((__tmp56707
                                               (let ((__tmp56708
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd54479_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp56708
                                                        _jlen54453_
                                                        _len54458_))))
                                          (declare (not safe))
                                          (_lp54455_ _rest54478_ __tmp56707))
                                        (let ((__tmp56706
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd54479_))))
                                          (declare (not safe))
                                          (##fx+ __tmp56706 _len54458_)))
                                    (let ()
                                      (declare (not safe))
                                      (error '"expected string" _hd54479_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5445954467_))
                            (let ((_hd5446454484_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5445954467_)))
                                  (_tl5446554486_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5445954467_))))
                              (let* ((_hd54489_ _hd5446454484_)
                                     (_rest54491_ _tl5446554486_))
                                (declare (not safe))
                                (_K5446354481_ _rest54491_ _hd54489_)))
                            (let ()
                              (declare (not safe))
                              (_else5446154475_))))))))
          (let* ((_join54403_
                  (if (let () (declare (not safe)) (char? _join54399_))
                      (string _join54399_)
                      (if (let () (declare (not safe)) (string? _join54399_))
                          _join54399_
                          (let ()
                            (declare (not safe))
                            (error '"expected string or char" _join54399_)))))
                 (_jlen54405_
                  (let () (declare (not safe)) (##string-length _join54403_)))
                 (_olen54407_
                  (let ()
                    (declare (not safe))
                    (_join-length54401_ _strs54398_ _jlen54405_)))
                 (_ostr54409_ (make-string _olen54407_)))
            (let _lp54412_ ((_rest54414_ _strs54398_) (_k54415_ '0))
              (let* ((_rest5441654424_ _rest54414_)
                     (_else5441854432_ (lambda () '""))
                     (_K5442054440_
                      (lambda (_rest54435_ _hd54436_)
                        (let ((_hdlen54438_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd54436_))))
                          (if (let () (declare (not safe)) (pair? _rest54435_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54436_
                                   '0
                                   _hdlen54438_
                                   _ostr54409_
                                   _k54415_))
                                (let ((__tmp56709
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54415_ _hdlen54438_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join54403_
                                   '0
                                   _jlen54405_
                                   _ostr54409_
                                   __tmp56709))
                                (let ((__tmp56710
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54415_
                                                _hdlen54438_
                                                _jlen54405_))))
                                  (declare (not safe))
                                  (_lp54412_ _rest54435_ __tmp56710)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54436_
                                   '0
                                   _hdlen54438_
                                   _ostr54409_
                                   _k54415_))
                                _ostr54409_))))))
                (if (let () (declare (not safe)) (##pair? _rest5441654424_))
                    (let ((_hd5442154443_
                           (let ()
                             (declare (not safe))
                             (##car _rest5441654424_)))
                          (_tl5442254445_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5441654424_))))
                      (let* ((_hd54448_ _hd5442154443_)
                             (_rest54450_ _tl5442254445_))
                        (declare (not safe))
                        (_K5442054440_ _rest54450_ _hd54448_)))
                    (let () (declare (not safe)) (_else5441854432_)))))))))
    (define read-u8vector
      (lambda (_bytes54395_ _port54396_)
        (read-subu8vector
         _bytes54395_
         '0
         (u8vector-length _bytes54395_)
         _port54396_)))
    (define write-u8vector
      (lambda (_bytes54392_ _port54393_)
        (write-subu8vector
         _bytes54392_
         '0
         (u8vector-length _bytes54392_)
         _port54393_)))
    (define read-string
      (lambda (_str54389_ _port54390_)
        (read-substring _str54389_ '0 (string-length _str54389_) _port54390_)))
    (define write-string
      (lambda (_str54386_ _port54387_)
        (write-substring
         _str54386_
         '0
         (string-length _str54386_)
         _port54387_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag54355_
               _dbg-exprs54356_
               _dbg-thunks54357_
               _expr54358_
               _thunk54359_)
        (letrec ((_o54361_ (current-output-port))
                 (_e54362_ (current-error-port))
                 (_p54363_ (DBG-printer))
                 (_f54364_
                  (lambda () (force-output _o54361_) (force-output _e54362_)))
                 (_d54365_ (lambda (_x54372_) (display _x54372_ _e54362_)))
                 (_w54366_ (lambda (_x54374_) (_p54363_ _x54374_ _e54362_)))
                 (_n54367_ (lambda () (newline _e54362_)))
                 (_v54368_
                  (lambda (_l54377_)
                    (for-each
                     (lambda (_x54379_)
                       (let () (declare (not safe)) (_d54365_ '" "))
                       (let () (declare (not safe)) (_w54366_ _x54379_)))
                     _l54377_)
                    (let () (declare (not safe)) (_n54367_))))
                 (_x54369_
                  (lambda (_expr54381_ _thunk54382_)
                    (let () (declare (not safe)) (_f54364_))
                    (let () (declare (not safe)) (_d54365_ '"  "))
                    (let () (declare (not safe)) (_w54366_ _expr54381_))
                    (let () (declare (not safe)) (_d54365_ '" =>"))
                    (call-with-values
                     _thunk54382_
                     (lambda _x54384_
                       (let () (declare (not safe)) (_v54368_ _x54384_))
                       (let () (declare (not safe)) (_f54364_))
                       (apply values _x54384_))))))
          (if _tag54355_
              (begin
                (if (let () (declare (not safe)) (eq? _tag54355_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f54364_))
                      (let () (declare (not safe)) (_d54365_ _tag54355_))
                      (let () (declare (not safe)) (_n54367_))))
                (for-each _x54369_ _dbg-exprs54356_ _dbg-thunks54357_)
                (if _thunk54359_
                    (let ()
                      (declare (not safe))
                      (_x54369_ _expr54358_ _thunk54359_))
                    '#!void))
              (if _thunk54359_ (_thunk54359_) '#!void)))))))
