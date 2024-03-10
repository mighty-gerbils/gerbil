(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1710064745)
  (begin
    (define displayln
      (lambda _args53563_
        (let _lp53565_ ((_rest53567_ _args53563_))
          (let* ((_rest5356853576_ _rest53567_)
                 (_else5357053584_ (lambda () (newline)))
                 (_K5357253590_
                  (lambda (_rest53587_ _hd53588_)
                    (display _hd53588_)
                    (let () (declare (not safe)) (_lp53565_ _rest53587_)))))
            (if (let () (declare (not safe)) (##pair? _rest5356853576_))
                (let ((_hd5357353593_
                       (let () (declare (not safe)) (##car _rest5356853576_)))
                      (_tl5357453595_
                       (let () (declare (not safe)) (##cdr _rest5356853576_))))
                  (let* ((_hd53598_ _hd5357353593_)
                         (_rest53600_ _tl5357453595_))
                    (declare (not safe))
                    (_K5357253590_ _rest53600_ _hd53598_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args53561_ (for-each display _args53561_)))
    (define file-newer?
      (lambda (_file153554_ _file253555_)
        (letrec ((_modification-time53557_
                  (lambda (_file53559_)
                    (let ((__tmp53984
                           (file-info-last-modification-time
                            (file-info _file53559_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp53984)))))
          (let ((__tmp53986
                 (let ()
                   (declare (not safe))
                   (_modification-time53557_ _file153554_)))
                (__tmp53985
                 (let ()
                   (declare (not safe))
                   (_modification-time53557_ _file253555_))))
            (declare (not safe))
            (##fl> __tmp53986 __tmp53985)))))
    (define create-directory*__%
      (lambda (_dir53528_ _perms53529_)
        (letrec ((_create153531_
                  (lambda (_path53542_)
                    (if (file-exists? _path53542_)
                        (if (let ((__tmp53987 (file-type _path53542_)))
                              (declare (not safe))
                              (eq? __tmp53987 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path53542_))
                        (if _perms53529_
                            (create-directory
                             (list 'path:
                                   _path53542_
                                   'permissions:
                                   _perms53529_))
                            (create-directory _path53542_))))))
          (if (file-exists? _dir53528_)
              '#!void
              (let _lp53533_ ((_start53535_ '0))
                (let ((_$e53537_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir53528_ '#\/ _start53535_))))
                  (if _$e53537_
                      ((lambda (_x53540_)
                         (if (let () (declare (not safe)) (##fx> _x53540_ '0))
                             (let ((__tmp53988
                                    (substring _dir53528_ '0 _x53540_)))
                               (declare (not safe))
                               (_create153531_ __tmp53988))
                             '#!void)
                         (let ((__tmp53989
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x53540_ '1))))
                           (declare (not safe))
                           (_lp53533_ __tmp53989)))
                       _$e53537_)
                      (let ()
                        (declare (not safe))
                        (_create153531_ _dir53528_)))))))))
    (define create-directory*__0
      (lambda (_dir53547_)
        (let ((_perms53549_ '493))
          (declare (not safe))
          (create-directory*__% _dir53547_ _perms53549_))))
    (define create-directory*
      (lambda _g53991_
        (let ((_g53990_ (let () (declare (not safe)) (##length _g53991_))))
          (cond ((let () (declare (not safe)) (##fx= _g53990_ 1))
                 (apply (lambda (_dir53547_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir53547_)))
                        _g53991_))
                ((let () (declare (not safe)) (##fx= _g53990_ 2))
                 (apply (lambda (_dir53551_ _perms53552_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir53551_ _perms53552_)))
                        _g53991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g53991_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g53992_ '#t))
    (define true?
      (lambda (_obj53524_) (let () (declare (not safe)) (eq? _obj53524_ '#t))))
    (define false (lambda _g53993_ '#f))
    (define void (lambda _g53994_ '#!void))
    (define void?
      (lambda (_obj53520_)
        (let () (declare (not safe)) (eq? _obj53520_ '#!void))))
    (define dssl-object?
      (lambda (_obj53518_)
        (if (memq _obj53518_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj53516_)
        (let () (declare (not safe)) (eq? _obj53516_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj53514_)
        (let () (declare (not safe)) (eq? _obj53514_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj53512_)
        (let () (declare (not safe)) (eq? _obj53512_ '#!optional))))
    (define immediate?
      (lambda (_obj53508_)
        (let* ((_t53510_ (let () (declare (not safe)) (##type _obj53508_)))
               (__tmp53995
                (let () (declare (not safe)) (##fxand _t53510_ '1))))
          (declare (not safe))
          (##fxzero? __tmp53995))))
    (define nonnegative-fixnum?
      (lambda (_obj53506_)
        (if (let () (declare (not safe)) (fixnum? _obj53506_))
            (let ((__tmp53996 (fxnegative? _obj53506_)))
              (declare (not safe))
              (not __tmp53996))
            '#f)))
    (define values-count
      (lambda (_obj53504_)
        (if (let () (declare (not safe)) (##values? _obj53504_))
            (let () (declare (not safe)) (##vector-length _obj53504_))
            '1)))
    (define values-ref
      (lambda (_obj53501_ _k53502_)
        (if (let () (declare (not safe)) (##values? _obj53501_))
            (let () (declare (not safe)) (##vector-ref _obj53501_ _k53502_))
            _obj53501_)))
    (define values->list
      (lambda (_obj53499_)
        (if (let () (declare (not safe)) (##values? _obj53499_))
            (let () (declare (not safe)) (##vector->list _obj53499_))
            (list _obj53499_))))
    (define subvector->list__%
      (lambda (_obj53484_ _start53485_)
        (let ((_lst53487_
               (let () (declare (not safe)) (##vector->list _obj53484_))))
          (list-tail _lst53487_ _start53485_))))
    (define subvector->list__0
      (lambda (_obj53492_)
        (let ((_start53494_ '0))
          (declare (not safe))
          (subvector->list__% _obj53492_ _start53494_))))
    (define subvector->list
      (lambda _g53998_
        (let ((_g53997_ (let () (declare (not safe)) (##length _g53998_))))
          (cond ((let () (declare (not safe)) (##fx= _g53997_ 1))
                 (apply (lambda (_obj53492_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj53492_)))
                        _g53998_))
                ((let () (declare (not safe)) (##fx= _g53997_ 2))
                 (apply (lambda (_obj53496_ _start53497_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj53496_ _start53497_)))
                        _g53998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g53998_))))))
    (define cons*
      (lambda (_x53474_ _y53475_ . _rest53476_)
        (letrec ((_recur53478_
                  (lambda (_x53480_ _rest53481_)
                    (if (let () (declare (not safe)) (pair? _rest53481_))
                        (let ((__tmp53999
                               (let ((__tmp54001
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest53481_)))
                                     (__tmp54000
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest53481_))))
                                 (declare (not safe))
                                 (_recur53478_ __tmp54001 __tmp54000))))
                          (declare (not safe))
                          (cons _x53480_ __tmp53999))
                        _x53480_))))
          (let ((__tmp54002
                 (let ()
                   (declare (not safe))
                   (_recur53478_ _y53475_ _rest53476_))))
            (declare (not safe))
            (cons _x53474_ __tmp54002)))))
    (define foldl1
      (lambda (_f53432_ _iv53433_ _lst53434_)
        (let _lp53436_ ((_rest53438_ _lst53434_) (_r53439_ _iv53433_))
          (let* ((_rest5344053448_ _rest53438_)
                 (_else5344253456_ (lambda () _r53439_))
                 (_K5344453462_
                  (lambda (_rest53459_ _x53460_)
                    (let ((__tmp54003 (_f53432_ _x53460_ _r53439_)))
                      (declare (not safe))
                      (_lp53436_ _rest53459_ __tmp54003)))))
            (if (let () (declare (not safe)) (##pair? _rest5344053448_))
                (let ((_hd5344553465_
                       (let () (declare (not safe)) (##car _rest5344053448_)))
                      (_tl5344653467_
                       (let () (declare (not safe)) (##cdr _rest5344053448_))))
                  (let* ((_x53470_ _hd5344553465_)
                         (_rest53472_ _tl5344653467_))
                    (declare (not safe))
                    (_K5344453462_ _rest53472_ _x53470_)))
                (let () (declare (not safe)) (_else5344253456_)))))))
    (define foldl2
      (lambda (_f53355_ _iv53356_ _lst153357_ _lst253358_)
        (let _lp53360_ ((_rest153362_ _lst153357_)
                        (_rest253363_ _lst253358_)
                        (_r53364_ _iv53356_))
          (let* ((_rest15336553373_ _rest153362_)
                 (_else5336753381_ (lambda () _r53364_))
                 (_K5336953420_
                  (lambda (_rest153384_ _x153385_)
                    (let* ((_rest25338653394_ _rest253363_)
                           (_else5338853402_ (lambda () _r53364_))
                           (_K5339053408_
                            (lambda (_rest253405_ _x253406_)
                              (let ((__tmp54004
                                     (_f53355_ _x153385_ _x253406_ _r53364_)))
                                (declare (not safe))
                                (_lp53360_
                                 _rest153384_
                                 _rest253405_
                                 __tmp54004)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25338653394_))
                          (let ((_hd5339153411_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25338653394_)))
                                (_tl5339253413_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25338653394_))))
                            (let* ((_x253416_ _hd5339153411_)
                                   (_rest253418_ _tl5339253413_))
                              (declare (not safe))
                              (_K5339053408_ _rest253418_ _x253416_)))
                          (let () (declare (not safe)) (_else5338853402_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15336553373_))
                (let ((_hd5337053423_
                       (let () (declare (not safe)) (##car _rest15336553373_)))
                      (_tl5337153425_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15336553373_))))
                  (let* ((_x153428_ _hd5337053423_)
                         (_rest153430_ _tl5337153425_))
                    (declare (not safe))
                    (_K5336953420_ _rest153430_ _x153428_)))
                (let () (declare (not safe)) (_else5336753381_)))))))
    (define foldl
      (lambda _g54006_
        (let ((_g54005_ (let () (declare (not safe)) (##length _g54006_))))
          (cond ((let () (declare (not safe)) (##fx= _g54005_ 3))
                 (apply (lambda (_f53340_ _iv53341_ _lst53342_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f53340_ _iv53341_ _lst53342_)))
                        _g54006_))
                ((let () (declare (not safe)) (##fx= _g54005_ 4))
                 (apply (lambda (_f53344_ _iv53345_ _lst153346_ _lst253347_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f53344_
                                    _iv53345_
                                    _lst153346_
                                    _lst253347_)))
                        _g54006_))
                ((let () (declare (not safe)) (##fx>= _g54005_ 4))
                 (apply foldl* _g54006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g54006_))))))
    (define foldl*
      (lambda (_f53328_ _iv53329_ . _rest53330_)
        (let _recur53332_ ((_iv53334_ _iv53329_) (_rest53335_ _rest53330_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53335_))
              (let ((__tmp54008
                     (apply _f53328_
                            (let ((__tmp54010
                                   (lambda (_xs53337_ _r53338_)
                                     (let ((__tmp54011 (car _xs53337_)))
                                       (declare (not safe))
                                       (cons __tmp54011 _r53338_))))
                                  (__tmp54009 (list _iv53334_)))
                              (declare (not safe))
                              (foldr1 __tmp54010 __tmp54009 _rest53335_))))
                    (__tmp54007 (map cdr _rest53335_)))
                (declare (not safe))
                (_recur53332_ __tmp54008 __tmp54007))
              _iv53334_))))
    (define foldr1
      (lambda (_f53287_ _iv53288_ _lst53289_)
        (let _recur53291_ ((_rest53293_ _lst53289_))
          (let* ((_rest5329453302_ _rest53293_)
                 (_else5329653310_ (lambda () _iv53288_))
                 (_K5329853316_
                  (lambda (_rest53313_ _x53314_)
                    (_f53287_
                     _x53314_
                     (let ()
                       (declare (not safe))
                       (_recur53291_ _rest53313_))))))
            (if (let () (declare (not safe)) (##pair? _rest5329453302_))
                (let ((_hd5329953319_
                       (let () (declare (not safe)) (##car _rest5329453302_)))
                      (_tl5330053321_
                       (let () (declare (not safe)) (##cdr _rest5329453302_))))
                  (let* ((_x53324_ _hd5329953319_)
                         (_rest53326_ _tl5330053321_))
                    (declare (not safe))
                    (_K5329853316_ _rest53326_ _x53324_)))
                (let () (declare (not safe)) (_else5329653310_)))))))
    (define foldr2
      (lambda (_f53211_ _iv53212_ _lst153213_ _lst253214_)
        (let _recur53216_ ((_rest153218_ _lst153213_)
                           (_rest253219_ _lst253214_))
          (let* ((_rest15322053228_ _rest153218_)
                 (_else5322253236_ (lambda () _iv53212_))
                 (_K5322453275_
                  (lambda (_rest153239_ _x153240_)
                    (let* ((_rest25324153249_ _rest253219_)
                           (_else5324353257_ (lambda () _iv53212_))
                           (_K5324553263_
                            (lambda (_rest253260_ _x253261_)
                              (_f53211_
                               _x153240_
                               _x253261_
                               (let ()
                                 (declare (not safe))
                                 (_recur53216_ _rest153239_ _rest253260_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25324153249_))
                          (let ((_hd5324653266_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25324153249_)))
                                (_tl5324753268_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25324153249_))))
                            (let* ((_x253271_ _hd5324653266_)
                                   (_rest253273_ _tl5324753268_))
                              (declare (not safe))
                              (_K5324553263_ _rest253273_ _x253271_)))
                          (let () (declare (not safe)) (_else5324353257_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15322053228_))
                (let ((_hd5322553278_
                       (let () (declare (not safe)) (##car _rest15322053228_)))
                      (_tl5322653280_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15322053228_))))
                  (let* ((_x153283_ _hd5322553278_)
                         (_rest153285_ _tl5322653280_))
                    (declare (not safe))
                    (_K5322453275_ _rest153285_ _x153283_)))
                (let () (declare (not safe)) (_else5322253236_)))))))
    (define foldr
      (lambda _g54013_
        (let ((_g54012_ (let () (declare (not safe)) (##length _g54013_))))
          (cond ((let () (declare (not safe)) (##fx= _g54012_ 3))
                 (apply (lambda (_f53196_ _iv53197_ _lst53198_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f53196_ _iv53197_ _lst53198_)))
                        _g54013_))
                ((let () (declare (not safe)) (##fx= _g54012_ 4))
                 (apply (lambda (_f53200_ _iv53201_ _lst153202_ _lst253203_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f53200_
                                    _iv53201_
                                    _lst153202_
                                    _lst253203_)))
                        _g54013_))
                ((let () (declare (not safe)) (##fx>= _g54012_ 4))
                 (apply foldr* _g54013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g54013_))))))
    (define foldr*
      (lambda (_f53185_ _iv53186_ . _rest53187_)
        (let _recur53189_ ((_rest53191_ _rest53187_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53191_))
              (apply _f53185_
                     (let ((__tmp54016
                            (lambda (_xs53193_ _r53194_)
                              (let ((__tmp54017 (car _xs53193_)))
                                (declare (not safe))
                                (cons __tmp54017 _r53194_))))
                           (__tmp54014
                            (list (let ((__tmp54015 (map cdr _rest53191_)))
                                    (declare (not safe))
                                    (_recur53189_ __tmp54015)))))
                       (declare (not safe))
                       (foldr1 __tmp54016 __tmp54014 _rest53191_)))
              _iv53186_))))
    (define remove-nulls!
      (lambda (_l53072_)
        (let* ((_l5307353086_ _l53072_)
               (_E5307753090_
                (lambda () (error '"No clause matching" _l5307353086_))))
          (let ((_K5308253175_
                 (lambda (_r53173_)
                   (let () (declare (not safe)) (remove-nulls! _r53173_))))
                (_K5307953162_
                 (lambda (_r53102_)
                   (let _loop53104_ ((_l53106_ _l53072_) (_r53107_ _r53102_))
                     (let* ((_r5310853121_ _r53107_)
                            (_E5311253125_
                             (lambda ()
                               (error '"No clause matching" _r5310853121_))))
                       (let ((_K5311753152_
                              (lambda (_rr53150_)
                                (set-cdr!
                                 _l53106_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr53150_)))))
                             (_K5311453139_
                              (lambda (_rr53137_)
                                (let ()
                                  (declare (not safe))
                                  (_loop53104_ _r53107_ _rr53137_))))
                             (_K5311353130_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5310853121_))
                             (let ((_tl5311953157_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5310853121_)))
                                   (_hd5311853155_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5310853121_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5311853155_))
                                   (let ((_rr53160_ _tl5311953157_))
                                     (declare (not safe))
                                     (_K5311753152_ _rr53160_))
                                   (let ((_rr53145_ _tl5311953157_))
                                     (declare (not safe))
                                     (_K5311453139_ _rr53145_))))
                             '#!void))))
                   _l53072_))
                (_K5307853095_ (lambda () _l53072_)))
            (if (let () (declare (not safe)) (##pair? _l5307353086_))
                (let ((_tl5308453180_
                       (let () (declare (not safe)) (##cdr _l5307353086_)))
                      (_hd5308353178_
                       (let () (declare (not safe)) (##car _l5307353086_))))
                  (if (let () (declare (not safe)) (##null? _hd5308353178_))
                      (let ((_r53183_ _tl5308453180_))
                        (declare (not safe))
                        (remove-nulls! _r53183_))
                      (let ((_r53168_ _tl5308453180_))
                        (declare (not safe))
                        (_K5307953162_ _r53168_))))
                (let () (declare (not safe)) (_K5307853095_)))))))
    (define append1!
      (lambda (_l53067_ _x53068_)
        (let ((_l253070_ (let () (declare (not safe)) (cons _x53068_ '()))))
          (if (let () (declare (not safe)) (pair? _l53067_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l53067_))
               _l253070_)
              _l253070_))))
    (define append-reverse-until
      (lambda (_pred53020_ _rhead53021_ _tail53022_)
        (let _loop53024_ ((_rhead53026_ _rhead53021_)
                          (_tail53027_ _tail53022_))
          (let* ((_rhead5302853037_ _rhead53026_)
                 (_E5303153041_
                  (lambda () (error '"No clause matching" _rhead5302853037_))))
            (let ((_K5303553064_ (lambda () (values '() _tail53027_)))
                  (_K5303253048_
                   (lambda (_r53045_ _a53046_)
                     (if (_pred53020_ _a53046_)
                         (values _rhead53026_ _tail53027_)
                         (let ((__tmp54018
                                (let ()
                                  (declare (not safe))
                                  (cons _a53046_ _tail53027_))))
                           (declare (not safe))
                           (_loop53024_ _r53045_ __tmp54018))))))
              (let ((_try-match5303053060_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5302853037_))
                           (let ((_tl5303453053_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5302853037_)))
                                 (_hd5303353051_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5302853037_))))
                             (let ((_a53056_ _hd5303353051_)
                                   (_r53058_ _tl5303453053_))
                               (let ()
                                 (declare (not safe))
                                 (_K5303253048_ _r53058_ _a53056_))))
                           (let () (declare (not safe)) (_E5303153041_))))))
                (if (let () (declare (not safe)) (##null? _rhead5302853037_))
                    (let () (declare (not safe)) (_K5303553064_))
                    (let ()
                      (declare (not safe))
                      (_try-match5303053060_)))))))))
    (define andmap1
      (lambda (_f52980_ _lst52981_)
        (let _lp52983_ ((_rest52985_ _lst52981_))
          (let* ((_rest5298652994_ _rest52985_)
                 (_else5298853002_ (lambda () '#t))
                 (_K5299053008_
                  (lambda (_rest53005_ _x53006_)
                    (if (_f52980_ _x53006_)
                        (let () (declare (not safe)) (_lp52983_ _rest53005_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5298652994_))
                (let ((_hd5299153011_
                       (let () (declare (not safe)) (##car _rest5298652994_)))
                      (_tl5299253013_
                       (let () (declare (not safe)) (##cdr _rest5298652994_))))
                  (let* ((_x53016_ _hd5299153011_)
                         (_rest53018_ _tl5299253013_))
                    (declare (not safe))
                    (_K5299053008_ _rest53018_ _x53016_)))
                (let () (declare (not safe)) (_else5298853002_)))))))
    (define andmap2
      (lambda (_f52905_ _lst152906_ _lst252907_)
        (let _lp52909_ ((_rest152911_ _lst152906_) (_rest252912_ _lst252907_))
          (let* ((_rest15291352921_ _rest152911_)
                 (_else5291552929_ (lambda () '#t))
                 (_K5291752968_
                  (lambda (_rest152932_ _x152933_)
                    (let* ((_rest25293452942_ _rest252912_)
                           (_else5293652950_ (lambda () '#t))
                           (_K5293852956_
                            (lambda (_rest252953_ _x252954_)
                              (if (_f52905_ _x152933_ _x252954_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp52909_ _rest152932_ _rest252953_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25293452942_))
                          (let ((_hd5293952959_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25293452942_)))
                                (_tl5294052961_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25293452942_))))
                            (let* ((_x252964_ _hd5293952959_)
                                   (_rest252966_ _tl5294052961_))
                              (declare (not safe))
                              (_K5293852956_ _rest252966_ _x252964_)))
                          (let () (declare (not safe)) (_else5293652950_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15291352921_))
                (let ((_hd5291852971_
                       (let () (declare (not safe)) (##car _rest15291352921_)))
                      (_tl5291952973_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15291352921_))))
                  (let* ((_x152976_ _hd5291852971_)
                         (_rest152978_ _tl5291952973_))
                    (declare (not safe))
                    (_K5291752968_ _rest152978_ _x152976_)))
                (let () (declare (not safe)) (_else5291552929_)))))))
    (define andmap
      (lambda _g54020_
        (let ((_g54019_ (let () (declare (not safe)) (##length _g54020_))))
          (cond ((let () (declare (not safe)) (##fx= _g54019_ 2))
                 (apply (lambda (_f52893_ _lst52894_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f52893_ _lst52894_)))
                        _g54020_))
                ((let () (declare (not safe)) (##fx= _g54019_ 3))
                 (apply (lambda (_f52896_ _lst152897_ _lst252898_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f52896_ _lst152897_ _lst252898_)))
                        _g54020_))
                ((let () (declare (not safe)) (##fx>= _g54019_ 3))
                 (apply andmap* _g54020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g54020_))))))
    (define andmap*
      (lambda (_f52886_ . _rest52887_)
        (let _recur52889_ ((_rest52891_ _rest52887_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest52891_))
              (if (apply _f52886_ (map car _rest52891_))
                  (let ((__tmp54021 (map cdr _rest52891_)))
                    (declare (not safe))
                    (_recur52889_ __tmp54021))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f52843_ _lst52844_)
        (let _lp52846_ ((_rest52848_ _lst52844_))
          (let* ((_rest5284952857_ _rest52848_)
                 (_else5285152865_ (lambda () '#f))
                 (_K5285352874_
                  (lambda (_rest52868_ _x52869_)
                    (let ((_$e52871_ (_f52843_ _x52869_)))
                      (if _$e52871_
                          _$e52871_
                          (let ()
                            (declare (not safe))
                            (_lp52846_ _rest52868_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5284952857_))
                (let ((_hd5285452877_
                       (let () (declare (not safe)) (##car _rest5284952857_)))
                      (_tl5285552879_
                       (let () (declare (not safe)) (##cdr _rest5284952857_))))
                  (let* ((_x52882_ _hd5285452877_)
                         (_rest52884_ _tl5285552879_))
                    (declare (not safe))
                    (_K5285352874_ _rest52884_ _x52882_)))
                (let () (declare (not safe)) (_else5285152865_)))))))
    (define ormap2
      (lambda (_f52765_ _lst152766_ _lst252767_)
        (let _lp52769_ ((_rest152771_ _lst152766_) (_rest252772_ _lst252767_))
          (let* ((_rest15277352781_ _rest152771_)
                 (_else5277552789_ (lambda () '#f))
                 (_K5277752831_
                  (lambda (_rest152792_ _x152793_)
                    (let* ((_rest25279452802_ _rest252772_)
                           (_else5279652810_ (lambda () '#f))
                           (_K5279852819_
                            (lambda (_rest252813_ _x252814_)
                              (let ((_$e52816_ (_f52765_ _x152793_ _x252814_)))
                                (if _$e52816_
                                    _$e52816_
                                    (let ()
                                      (declare (not safe))
                                      (_lp52769_
                                       _rest152792_
                                       _rest252813_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25279452802_))
                          (let ((_hd5279952822_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25279452802_)))
                                (_tl5280052824_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25279452802_))))
                            (let* ((_x252827_ _hd5279952822_)
                                   (_rest252829_ _tl5280052824_))
                              (declare (not safe))
                              (_K5279852819_ _rest252829_ _x252827_)))
                          (let () (declare (not safe)) (_else5279652810_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15277352781_))
                (let ((_hd5277852834_
                       (let () (declare (not safe)) (##car _rest15277352781_)))
                      (_tl5277952836_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15277352781_))))
                  (let* ((_x152839_ _hd5277852834_)
                         (_rest152841_ _tl5277952836_))
                    (declare (not safe))
                    (_K5277752831_ _rest152841_ _x152839_)))
                (let () (declare (not safe)) (_else5277552789_)))))))
    (define ormap
      (lambda _g54023_
        (let ((_g54022_ (let () (declare (not safe)) (##length _g54023_))))
          (cond ((let () (declare (not safe)) (##fx= _g54022_ 2))
                 (apply (lambda (_f52753_ _lst52754_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f52753_ _lst52754_)))
                        _g54023_))
                ((let () (declare (not safe)) (##fx= _g54022_ 3))
                 (apply (lambda (_f52756_ _lst152757_ _lst252758_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f52756_ _lst152757_ _lst252758_)))
                        _g54023_))
                ((let () (declare (not safe)) (##fx>= _g54022_ 3))
                 (apply ormap* _g54023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g54023_))))))
    (define ormap*
      (lambda (_f52743_ . _rest52744_)
        (let _recur52746_ ((_rest52748_ _rest52744_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest52748_))
              (let ((_$e52750_ (apply _f52743_ (map car _rest52748_))))
                (if _$e52750_
                    _$e52750_
                    (let ((__tmp54024 (map cdr _rest52748_)))
                      (declare (not safe))
                      (_recur52746_ __tmp54024))))
              '#f))))
    (define filter-map1
      (lambda (_f52698_ _lst52699_)
        (let _recur52701_ ((_rest52703_ _lst52699_))
          (let* ((_rest5270452712_ _rest52703_)
                 (_else5270652720_ (lambda () '()))
                 (_K5270852731_
                  (lambda (_rest52723_ _x52724_)
                    (let ((_$e52726_ (_f52698_ _x52724_)))
                      (if _$e52726_
                          ((lambda (_r52729_)
                             (let ((__tmp54025
                                    (let ()
                                      (declare (not safe))
                                      (_recur52701_ _rest52723_))))
                               (declare (not safe))
                               (cons _r52729_ __tmp54025)))
                           _$e52726_)
                          (let ()
                            (declare (not safe))
                            (_recur52701_ _rest52723_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5270452712_))
                (let ((_hd5270952734_
                       (let () (declare (not safe)) (##car _rest5270452712_)))
                      (_tl5271052736_
                       (let () (declare (not safe)) (##cdr _rest5270452712_))))
                  (let* ((_x52739_ _hd5270952734_)
                         (_rest52741_ _tl5271052736_))
                    (declare (not safe))
                    (_K5270852731_ _rest52741_ _x52739_)))
                (let () (declare (not safe)) (_else5270652720_)))))))
    (define filter-map2
      (lambda (_f52618_ _lst152619_ _lst252620_)
        (let _recur52622_ ((_rest152624_ _lst152619_)
                           (_rest252625_ _lst252620_))
          (let* ((_rest15262652634_ _rest152624_)
                 (_else5262852642_ (lambda () '()))
                 (_K5263052686_
                  (lambda (_rest152645_ _x152646_)
                    (let* ((_rest25264752655_ _rest252625_)
                           (_else5264952663_ (lambda () '()))
                           (_K5265152674_
                            (lambda (_rest252666_ _x252667_)
                              (let ((_$e52669_ (_f52618_ _x152646_ _x252667_)))
                                (if _$e52669_
                                    ((lambda (_r52672_)
                                       (let ((__tmp54026
                                              (let ()
                                                (declare (not safe))
                                                (_recur52622_
                                                 _rest152645_
                                                 _rest252666_))))
                                         (declare (not safe))
                                         (cons _r52672_ __tmp54026)))
                                     _$e52669_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur52622_
                                       _rest152645_
                                       _rest252666_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25264752655_))
                          (let ((_hd5265252677_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25264752655_)))
                                (_tl5265352679_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25264752655_))))
                            (let* ((_x252682_ _hd5265252677_)
                                   (_rest252684_ _tl5265352679_))
                              (declare (not safe))
                              (_K5265152674_ _rest252684_ _x252682_)))
                          (let () (declare (not safe)) (_else5264952663_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15262652634_))
                (let ((_hd5263152689_
                       (let () (declare (not safe)) (##car _rest15262652634_)))
                      (_tl5263252691_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15262652634_))))
                  (let* ((_x152694_ _hd5263152689_)
                         (_rest152696_ _tl5263252691_))
                    (declare (not safe))
                    (_K5263052686_ _rest152696_ _x152694_)))
                (let () (declare (not safe)) (_else5262852642_)))))))
    (define filter-map
      (lambda _g54028_
        (let ((_g54027_ (let () (declare (not safe)) (##length _g54028_))))
          (cond ((let () (declare (not safe)) (##fx= _g54027_ 2))
                 (apply (lambda (_f52606_ _lst52607_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f52606_ _lst52607_)))
                        _g54028_))
                ((let () (declare (not safe)) (##fx= _g54027_ 3))
                 (apply (lambda (_f52609_ _lst152610_ _lst252611_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f52609_ _lst152610_ _lst252611_)))
                        _g54028_))
                ((let () (declare (not safe)) (##fx>= _g54027_ 3))
                 (apply filter-map* _g54028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g54028_))))))
    (define filter-map*
      (lambda (_f52594_ . _rest52595_)
        (let _recur52597_ ((_rest52599_ _rest52595_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest52599_))
              (let ((_$e52601_ (apply _f52594_ (map car _rest52599_))))
                (if _$e52601_
                    ((lambda (_r52604_)
                       (let ((__tmp54029
                              (let ((__tmp54030 (map cdr _rest52599_)))
                                (declare (not safe))
                                (_recur52597_ __tmp54030))))
                         (declare (not safe))
                         (cons _r52604_ __tmp54029)))
                     _$e52601_)
                    (let ((__tmp54031 (map cdr _rest52599_)))
                      (declare (not safe))
                      (_recur52597_ __tmp54031))))
              '()))))
    (define assgetq__%
      (lambda (_key52572_ _lst52574_ _default52576_)
        (let ((_$e52579_
               (if (let () (declare (not safe)) (pair? _lst52574_))
                   (assq _key52572_ _lst52574_)
                   '#f)))
          (if _$e52579_
              (cdr _$e52579_)
              (if (let () (declare (not safe)) (procedure? _default52576_))
                  (_default52576_ _key52572_)
                  _default52576_)))))
    (define assgetq__0
      (lambda (_key52585_ _lst52586_)
        (let ((_default52588_ '#f))
          (declare (not safe))
          (assgetq__% _key52585_ _lst52586_ _default52588_))))
    (define assgetq
      (lambda _g54033_
        (let ((_g54032_ (let () (declare (not safe)) (##length _g54033_))))
          (cond ((let () (declare (not safe)) (##fx= _g54032_ 2))
                 (apply (lambda (_key52585_ _lst52586_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key52585_ _lst52586_)))
                        _g54033_))
                ((let () (declare (not safe)) (##fx= _g54032_ 3))
                 (apply (lambda (_key52590_ _lst52591_ _default52592_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key52590_ _lst52591_ _default52592_)))
                        _g54033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g54033_))))))
    (define assgetv__%
      (lambda (_key52549_ _lst52551_ _default52553_)
        (let ((_$e52556_
               (if (let () (declare (not safe)) (pair? _lst52551_))
                   (assv _key52549_ _lst52551_)
                   '#f)))
          (if _$e52556_
              (cdr _$e52556_)
              (if (let () (declare (not safe)) (procedure? _default52553_))
                  (_default52553_ _key52549_)
                  _default52553_)))))
    (define assgetv__0
      (lambda (_key52562_ _lst52563_)
        (let ((_default52565_ '#f))
          (declare (not safe))
          (assgetv__% _key52562_ _lst52563_ _default52565_))))
    (define assgetv
      (lambda _g54035_
        (let ((_g54034_ (let () (declare (not safe)) (##length _g54035_))))
          (cond ((let () (declare (not safe)) (##fx= _g54034_ 2))
                 (apply (lambda (_key52562_ _lst52563_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key52562_ _lst52563_)))
                        _g54035_))
                ((let () (declare (not safe)) (##fx= _g54034_ 3))
                 (apply (lambda (_key52567_ _lst52568_ _default52569_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key52567_ _lst52568_ _default52569_)))
                        _g54035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g54035_))))))
    (define assget__%
      (lambda (_key52526_ _lst52528_ _default52530_)
        (let ((_$e52533_
               (if (let () (declare (not safe)) (pair? _lst52528_))
                   (assoc _key52526_ _lst52528_)
                   '#f)))
          (if _$e52533_
              (cdr _$e52533_)
              (if (let () (declare (not safe)) (procedure? _default52530_))
                  (_default52530_ _key52526_)
                  _default52530_)))))
    (define assget__0
      (lambda (_key52539_ _lst52540_)
        (let ((_default52542_ '#f))
          (declare (not safe))
          (assget__% _key52539_ _lst52540_ _default52542_))))
    (define assget
      (lambda _g54037_
        (let ((_g54036_ (let () (declare (not safe)) (##length _g54037_))))
          (cond ((let () (declare (not safe)) (##fx= _g54036_ 2))
                 (apply (lambda (_key52539_ _lst52540_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key52539_ _lst52540_)))
                        _g54037_))
                ((let () (declare (not safe)) (##fx= _g54036_ 3))
                 (apply (lambda (_key52544_ _lst52545_ _default52546_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key52544_ _lst52545_ _default52546_)))
                        _g54037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g54037_))))))
    (define pgetq__%
      (lambda (_key52455_ _lst52457_ _default52459_)
        (let _lp52462_ ((_rest52465_ _lst52457_))
          (let* ((_rest5246752477_ _rest52465_)
                 (_else5246952485_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default52459_))
                        (_default52459_ _key52455_)
                        _default52459_)))
                 (_K5247152494_
                  (lambda (_rest52488_ _v52489_ _k52491_)
                    (if (let () (declare (not safe)) (eq? _k52491_ _key52455_))
                        _v52489_
                        (let ()
                          (declare (not safe))
                          (_lp52462_ _rest52488_))))))
            (if (let () (declare (not safe)) (##pair? _rest5246752477_))
                (let ((_hd5247252497_
                       (let () (declare (not safe)) (##car _rest5246752477_)))
                      (_tl5247352499_
                       (let () (declare (not safe)) (##cdr _rest5246752477_))))
                  (let ((_k52502_ _hd5247252497_))
                    (if (let () (declare (not safe)) (##pair? _tl5247352499_))
                        (let ((_hd5247452504_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5247352499_)))
                              (_tl5247552506_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5247352499_))))
                          (let* ((_v52509_ _hd5247452504_)
                                 (_rest52511_ _tl5247552506_))
                            (declare (not safe))
                            (_K5247152494_ _rest52511_ _v52509_ _k52502_)))
                        (let () (declare (not safe)) (_else5246952485_)))))
                (let () (declare (not safe)) (_else5246952485_)))))))
    (define pgetq__0
      (lambda (_key52516_ _lst52517_)
        (let ((_default52519_ '#f))
          (declare (not safe))
          (pgetq__% _key52516_ _lst52517_ _default52519_))))
    (define pgetq
      (lambda _g54039_
        (let ((_g54038_ (let () (declare (not safe)) (##length _g54039_))))
          (cond ((let () (declare (not safe)) (##fx= _g54038_ 2))
                 (apply (lambda (_key52516_ _lst52517_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key52516_ _lst52517_)))
                        _g54039_))
                ((let () (declare (not safe)) (##fx= _g54038_ 3))
                 (apply (lambda (_key52521_ _lst52522_ _default52523_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key52521_ _lst52522_ _default52523_)))
                        _g54039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g54039_))))))
    (define pgetv__%
      (lambda (_key52384_ _lst52386_ _default52388_)
        (let _lp52391_ ((_rest52394_ _lst52386_))
          (let* ((_rest5239652406_ _rest52394_)
                 (_else5239852414_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default52388_))
                        (_default52388_ _key52384_)
                        _default52388_)))
                 (_K5240052423_
                  (lambda (_rest52417_ _v52418_ _k52420_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k52420_ _key52384_))
                        _v52418_
                        (let ()
                          (declare (not safe))
                          (_lp52391_ _rest52417_))))))
            (if (let () (declare (not safe)) (##pair? _rest5239652406_))
                (let ((_hd5240152426_
                       (let () (declare (not safe)) (##car _rest5239652406_)))
                      (_tl5240252428_
                       (let () (declare (not safe)) (##cdr _rest5239652406_))))
                  (let ((_k52431_ _hd5240152426_))
                    (if (let () (declare (not safe)) (##pair? _tl5240252428_))
                        (let ((_hd5240352433_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5240252428_)))
                              (_tl5240452435_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5240252428_))))
                          (let* ((_v52438_ _hd5240352433_)
                                 (_rest52440_ _tl5240452435_))
                            (declare (not safe))
                            (_K5240052423_ _rest52440_ _v52438_ _k52431_)))
                        (let () (declare (not safe)) (_else5239852414_)))))
                (let () (declare (not safe)) (_else5239852414_)))))))
    (define pgetv__0
      (lambda (_key52445_ _lst52446_)
        (let ((_default52448_ '#f))
          (declare (not safe))
          (pgetv__% _key52445_ _lst52446_ _default52448_))))
    (define pgetv
      (lambda _g54041_
        (let ((_g54040_ (let () (declare (not safe)) (##length _g54041_))))
          (cond ((let () (declare (not safe)) (##fx= _g54040_ 2))
                 (apply (lambda (_key52445_ _lst52446_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key52445_ _lst52446_)))
                        _g54041_))
                ((let () (declare (not safe)) (##fx= _g54040_ 3))
                 (apply (lambda (_key52450_ _lst52451_ _default52452_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key52450_ _lst52451_ _default52452_)))
                        _g54041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g54041_))))))
    (define pget__%
      (lambda (_key52313_ _lst52315_ _default52317_)
        (let _lp52320_ ((_rest52323_ _lst52315_))
          (let* ((_rest5232552335_ _rest52323_)
                 (_else5232752343_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default52317_))
                        (_default52317_ _key52313_)
                        _default52317_)))
                 (_K5232952352_
                  (lambda (_rest52346_ _v52347_ _k52349_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k52349_ _key52313_))
                        _v52347_
                        (let ()
                          (declare (not safe))
                          (_lp52320_ _rest52346_))))))
            (if (let () (declare (not safe)) (##pair? _rest5232552335_))
                (let ((_hd5233052355_
                       (let () (declare (not safe)) (##car _rest5232552335_)))
                      (_tl5233152357_
                       (let () (declare (not safe)) (##cdr _rest5232552335_))))
                  (let ((_k52360_ _hd5233052355_))
                    (if (let () (declare (not safe)) (##pair? _tl5233152357_))
                        (let ((_hd5233252362_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5233152357_)))
                              (_tl5233352364_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5233152357_))))
                          (let* ((_v52367_ _hd5233252362_)
                                 (_rest52369_ _tl5233352364_))
                            (declare (not safe))
                            (_K5232952352_ _rest52369_ _v52367_ _k52360_)))
                        (let () (declare (not safe)) (_else5232752343_)))))
                (let () (declare (not safe)) (_else5232752343_)))))))
    (define pget__0
      (lambda (_key52374_ _lst52375_)
        (let ((_default52377_ '#f))
          (declare (not safe))
          (pget__% _key52374_ _lst52375_ _default52377_))))
    (define pget
      (lambda _g54043_
        (let ((_g54042_ (let () (declare (not safe)) (##length _g54043_))))
          (cond ((let () (declare (not safe)) (##fx= _g54042_ 2))
                 (apply (lambda (_key52374_ _lst52375_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key52374_ _lst52375_)))
                        _g54043_))
                ((let () (declare (not safe)) (##fx= _g54042_ 3))
                 (apply (lambda (_key52379_ _lst52380_ _default52381_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key52379_ _lst52380_ _default52381_)))
                        _g54043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g54043_))))))
    (define find
      (lambda (_pred52306_ _lst52307_)
        (let ((_$e52309_
               (let () (declare (not safe)) (memf _pred52306_ _lst52307_))))
          (if _$e52309_ (car _$e52309_) '#f))))
    (define memf
      (lambda (_proc52266_ _lst52267_)
        (let _lp52269_ ((_rest52271_ _lst52267_))
          (let* ((_rest5227252280_ _rest52271_)
                 (_else5227452288_ (lambda () '#f))
                 (_K5227652294_
                  (lambda (_tl52291_ _hd52292_)
                    (if (_proc52266_ _hd52292_)
                        _rest52271_
                        (let () (declare (not safe)) (_lp52269_ _tl52291_))))))
            (if (let () (declare (not safe)) (##pair? _rest5227252280_))
                (let ((_hd5227752297_
                       (let () (declare (not safe)) (##car _rest5227252280_)))
                      (_tl5227852299_
                       (let () (declare (not safe)) (##cdr _rest5227252280_))))
                  (let* ((_hd52302_ _hd5227752297_) (_tl52304_ _tl5227852299_))
                    (declare (not safe))
                    (_K5227652294_ _tl52304_ _hd52302_)))
                (let () (declare (not safe)) (_else5227452288_)))))))
    (define remove1
      (lambda (_el52219_ _lst52221_)
        (let _lp52224_ ((_rest52227_ _lst52221_) (_r52229_ '()))
          (let* ((_rest5223152239_ _rest52227_)
                 (_else5223352247_ (lambda () _lst52221_))
                 (_K5223552254_
                  (lambda (_rest52250_ _hd52251_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el52219_ _hd52251_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52250_ _r52229_))
                        (let ((__tmp54044
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52251_ _r52229_))))
                          (declare (not safe))
                          (_lp52224_ _rest52250_ __tmp54044))))))
            (if (let () (declare (not safe)) (##pair? _rest5223152239_))
                (let ((_hd5223652257_
                       (let () (declare (not safe)) (##car _rest5223152239_)))
                      (_tl5223752259_
                       (let () (declare (not safe)) (##cdr _rest5223152239_))))
                  (let* ((_hd52262_ _hd5223652257_)
                         (_rest52264_ _tl5223752259_))
                    (declare (not safe))
                    (_K5223552254_ _rest52264_ _hd52262_)))
                (let () (declare (not safe)) (_else5223352247_)))))))
    (define remv
      (lambda (_el52172_ _lst52174_)
        (let _lp52177_ ((_rest52180_ _lst52174_) (_r52182_ '()))
          (let* ((_rest5218452192_ _rest52180_)
                 (_else5218652200_ (lambda () _lst52174_))
                 (_K5218852207_
                  (lambda (_rest52203_ _hd52204_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el52172_ _hd52204_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52203_ _r52182_))
                        (let ((__tmp54045
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52204_ _r52182_))))
                          (declare (not safe))
                          (_lp52177_ _rest52203_ __tmp54045))))))
            (if (let () (declare (not safe)) (##pair? _rest5218452192_))
                (let ((_hd5218952210_
                       (let () (declare (not safe)) (##car _rest5218452192_)))
                      (_tl5219052212_
                       (let () (declare (not safe)) (##cdr _rest5218452192_))))
                  (let* ((_hd52215_ _hd5218952210_)
                         (_rest52217_ _tl5219052212_))
                    (declare (not safe))
                    (_K5218852207_ _rest52217_ _hd52215_)))
                (let () (declare (not safe)) (_else5218652200_)))))))
    (define remq
      (lambda (_el52125_ _lst52127_)
        (let _lp52130_ ((_rest52133_ _lst52127_) (_r52135_ '()))
          (let* ((_rest5213752145_ _rest52133_)
                 (_else5213952153_ (lambda () _lst52127_))
                 (_K5214152160_
                  (lambda (_rest52156_ _hd52157_)
                    (if (let () (declare (not safe)) (eq? _el52125_ _hd52157_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52156_ _r52135_))
                        (let ((__tmp54046
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52157_ _r52135_))))
                          (declare (not safe))
                          (_lp52130_ _rest52156_ __tmp54046))))))
            (if (let () (declare (not safe)) (##pair? _rest5213752145_))
                (let ((_hd5214252163_
                       (let () (declare (not safe)) (##car _rest5213752145_)))
                      (_tl5214352165_
                       (let () (declare (not safe)) (##cdr _rest5213752145_))))
                  (let* ((_hd52168_ _hd5214252163_)
                         (_rest52170_ _tl5214352165_))
                    (declare (not safe))
                    (_K5214152160_ _rest52170_ _hd52168_)))
                (let () (declare (not safe)) (_else5213952153_)))))))
    (define remf
      (lambda (_proc52084_ _lst52085_)
        (let _lp52087_ ((_rest52089_ _lst52085_) (_r52090_ '()))
          (let* ((_rest5209152099_ _rest52089_)
                 (_else5209352107_ (lambda () _lst52085_))
                 (_K5209552113_
                  (lambda (_rest52110_ _hd52111_)
                    (if (_proc52084_ _hd52111_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52110_ _r52090_))
                        (let ((__tmp54047
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52111_ _r52090_))))
                          (declare (not safe))
                          (_lp52087_ _rest52110_ __tmp54047))))))
            (if (let () (declare (not safe)) (##pair? _rest5209152099_))
                (let ((_hd5209652116_
                       (let () (declare (not safe)) (##car _rest5209152099_)))
                      (_tl5209752118_
                       (let () (declare (not safe)) (##cdr _rest5209152099_))))
                  (let* ((_hd52121_ _hd5209652116_)
                         (_rest52123_ _tl5209752118_))
                    (declare (not safe))
                    (_K5209552113_ _rest52123_ _hd52121_)))
                (let () (declare (not safe)) (_else5209352107_)))))))
    (define 1+ (lambda (_x52082_) (+ _x52082_ '1)))
    (define 1- (lambda (_x52080_) (- _x52080_ '1)))
    (define fx1+ (lambda (_x52078_) (fx+ _x52078_ '1)))
    (define fx1- (lambda (_x52076_) (fx- _x52076_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x52074_)
        (if (let () (declare (not safe)) (fixnum? _x52074_))
            (let () (declare (not safe)) (##fx>= _x52074_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x52072_)
        (if (let () (declare (not safe)) (fixnum? _x52072_))
            (let () (declare (not safe)) (##fx> _x52072_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x52070_) (let () (declare (not safe)) (eq? _x52070_ '0))))
    (define fx<0?
      (lambda (_x52068_)
        (if (let () (declare (not safe)) (fixnum? _x52068_))
            (let () (declare (not safe)) (##fx< _x52068_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x52066_)
        (if (let () (declare (not safe)) (fixnum? _x52066_))
            (let () (declare (not safe)) (##fx<= _x52066_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x52064_)
        (if (let () (declare (not safe)) (symbol? _x52064_))
            (let ((__tmp54048 (uninterned-symbol? _x52064_)))
              (declare (not safe))
              (not __tmp54048))
            '#f)))
    (define display-as-string
      (lambda (_x52036_ _port52037_)
        (if (or (let () (declare (not safe)) (string? _x52036_))
                (let () (declare (not safe)) (symbol? _x52036_))
                (keyword? _x52036_)
                (let () (declare (not safe)) (number? _x52036_))
                (let () (declare (not safe)) (char? _x52036_)))
            (display _x52036_ _port52037_)
            (if (let () (declare (not safe)) (pair? _x52036_))
                (begin
                  (let ((__tmp54049 (car _x52036_)))
                    (declare (not safe))
                    (display-as-string __tmp54049 _port52037_))
                  (let ((__tmp54050 (cdr _x52036_)))
                    (declare (not safe))
                    (display-as-string __tmp54050 _port52037_)))
                (if (let () (declare (not safe)) (vector? _x52036_))
                    (vector-for-each
                     (lambda (_g5205052052_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5205052052_ _port52037_)))
                     _x52036_)
                    (if (or (let () (declare (not safe)) (null? _x52036_))
                            (let ()
                              (declare (not safe))
                              (eq? _x52036_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x52036_))
                            (let () (declare (not safe)) (boolean? _x52036_)))
                        '#!void
                        (error '"cannot convert as string" _x52036_)))))))
    (define as-string__0
      (lambda (_x52024_)
        (if (let () (declare (not safe)) (string? _x52024_))
            _x52024_
            (if (let () (declare (not safe)) (symbol? _x52024_))
                (symbol->string _x52024_)
                (if (keyword? _x52024_)
                    (keyword->string _x52024_)
                    (call-with-output-string
                     '()
                     (lambda (_g5202552027_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x52024_ _g5202552027_)))))))))
    (define as-string__1
      (lambda _args52030_
        (call-with-output-string
         '()
         (lambda (_g5203152033_)
           (let ()
             (declare (not safe))
             (display-as-string _args52030_ _g5203152033_))))))
    (define as-string
      (lambda _g54052_
        (let ((_g54051_ (let () (declare (not safe)) (##length _g54052_))))
          (cond ((let () (declare (not safe)) (##fx= _g54051_ 1))
                 (apply (lambda (_x52024_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x52024_)))
                        _g54052_))
                (#t (apply as-string__1 _g54052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g54052_))))))
    (define make-symbol__0
      (lambda (_x52020_)
        (if (interned-symbol? _x52020_)
            _x52020_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x52020_))))))
    (define make-symbol__1
      (lambda _args52022_ (string->symbol (apply as-string _args52022_))))
    (define make-symbol
      (lambda _g54054_
        (let ((_g54053_ (let () (declare (not safe)) (##length _g54054_))))
          (cond ((let () (declare (not safe)) (##fx= _g54053_ 1))
                 (apply (lambda (_x52020_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x52020_)))
                        _g54054_))
                (#t (apply make-symbol__1 _g54054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g54054_))))))
    (define make-keyword__0
      (lambda (_x52016_)
        (if (interned-keyword? _x52016_)
            _x52016_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x52016_))))))
    (define make-keyword__1
      (lambda _args52018_ (string->keyword (apply as-string _args52018_))))
    (define make-keyword
      (lambda _g54056_
        (let ((_g54055_ (let () (declare (not safe)) (##length _g54056_))))
          (cond ((let () (declare (not safe)) (##fx= _g54055_ 1))
                 (apply (lambda (_x52016_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x52016_)))
                        _g54056_))
                (#t (apply make-keyword__1 _g54056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g54056_))))))
    (define interned-keyword?
      (lambda (_x52014_)
        (if (keyword? _x52014_)
            (let ((__tmp54057 (uninterned-keyword? _x52014_)))
              (declare (not safe))
              (not __tmp54057))
            '#f)))
    (define symbol->keyword
      (lambda (_sym52012_)
        ((if (uninterned-symbol? _sym52012_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym52012_))))
    (define keyword->symbol
      (lambda (_kw52010_)
        ((if (uninterned-keyword? _kw52010_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw52010_))))
    (define bytes->string__%
      (lambda (_bstr51988_ _enc51989_)
        (if (let () (declare (not safe)) (eq? _enc51989_ 'UTF-8))
            (utf8->string _bstr51988_)
            (let* ((_in51991_
                    (open-input-u8vector
                     (let ((__tmp54058
                            (let ((__tmp54059
                                   (let ((__tmp54060
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr51988_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp54060))))
                              (declare (not safe))
                              (cons _enc51989_ __tmp54059))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp54058))))
                   (_len51993_ (u8vector-length _bstr51988_))
                   (_out51995_ (make-string _len51993_))
                   (_n51997_
                    (read-substring _out51995_ '0 _len51993_ _in51991_)))
              (string-shrink! _out51995_ _n51997_)
              _out51995_))))
    (define bytes->string__0
      (lambda (_bstr52003_)
        (let ((_enc52005_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr52003_ _enc52005_))))
    (define bytes->string
      (lambda _g54062_
        (let ((_g54061_ (let () (declare (not safe)) (##length _g54062_))))
          (cond ((let () (declare (not safe)) (##fx= _g54061_ 1))
                 (apply (lambda (_bstr52003_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr52003_)))
                        _g54062_))
                ((let () (declare (not safe)) (##fx= _g54061_ 2))
                 (apply (lambda (_bstr52007_ _enc52008_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr52007_ _enc52008_)))
                        _g54062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g54062_))))))
    (define string->bytes__%
      (lambda (_str51974_ _enc51975_)
        (if (let () (declare (not safe)) (eq? _enc51975_ 'UTF-8))
            (string->utf8 _str51974_)
            (substring->bytes
             _str51974_
             '0
             (string-length _str51974_)
             _enc51975_))))
    (define string->bytes__0
      (lambda (_str51980_)
        (let ((_enc51982_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str51980_ _enc51982_))))
    (define string->bytes
      (lambda _g54064_
        (let ((_g54063_ (let () (declare (not safe)) (##length _g54064_))))
          (cond ((let () (declare (not safe)) (##fx= _g54063_ 1))
                 (apply (lambda (_str51980_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str51980_)))
                        _g54064_))
                ((let () (declare (not safe)) (##fx= _g54063_ 2))
                 (apply (lambda (_str51984_ _enc51985_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str51984_ _enc51985_)))
                        _g54064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g54064_))))))
    (define substring->bytes__%
      (lambda (_str51952_ _start51953_ _end51954_ _enc51955_)
        (if (let () (declare (not safe)) (eq? _enc51955_ 'UTF-8))
            (string->utf8 _str51952_ _start51953_ _end51954_)
            (let ((_out51957_
                   (open-output-u8vector
                    (let ((__tmp54065
                           (let ()
                             (declare (not safe))
                             (cons _enc51955_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp54065)))))
              (write-substring _str51952_ _start51953_ _end51954_ _out51957_)
              (get-output-u8vector _out51957_)))))
    (define substring->bytes__0
      (lambda (_str51962_ _start51963_ _end51964_)
        (let ((_enc51966_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str51962_
           _start51963_
           _end51964_
           _enc51966_))))
    (define substring->bytes
      (lambda _g54067_
        (let ((_g54066_ (let () (declare (not safe)) (##length _g54067_))))
          (cond ((let () (declare (not safe)) (##fx= _g54066_ 3))
                 (apply (lambda (_str51962_ _start51963_ _end51964_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str51962_
                             _start51963_
                             _end51964_)))
                        _g54067_))
                ((let () (declare (not safe)) (##fx= _g54066_ 4))
                 (apply (lambda (_str51968_ _start51969_ _end51970_ _enc51971_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str51968_
                             _start51969_
                             _end51970_
                             _enc51971_)))
                        _g54067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g54067_))))))
    (define string-empty?
      (lambda (_str51949_)
        (let ((__tmp54068 (string-length _str51949_)))
          (declare (not safe))
          (##fxzero? __tmp54068))))
    (define string-prefix?
      (lambda (_prefix51939_ _str51940_)
        (let ((_str-len51942_ (string-length _str51940_))
              (_prefix-len51943_ (string-length _prefix51939_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len51943_ _str-len51942_))
              (let _lp51945_ ((_i51947_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i51947_ _prefix-len51943_))
                    (if (let ((__tmp54070
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str51940_ _i51947_)))
                              (__tmp54069
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix51939_ _i51947_))))
                          (declare (not safe))
                          (eq? __tmp54070 __tmp54069))
                        (let ((__tmp54071
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i51947_ '1))))
                          (declare (not safe))
                          (_lp51945_ __tmp54071))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str51917_ _char51918_ _start51919_)
        (let ((_len51921_ (string-length _str51917_)))
          (let _lp51923_ ((_k51925_ _start51919_))
            (if (let () (declare (not safe)) (##fx< _k51925_ _len51921_))
                (if (let ((__tmp54072
                           (let ()
                             (declare (not safe))
                             (##string-ref _str51917_ _k51925_))))
                      (declare (not safe))
                      (eq? _char51918_ __tmp54072))
                    _k51925_
                    (let ((__tmp54073
                           (let () (declare (not safe)) (##fx+ _k51925_ '1))))
                      (declare (not safe))
                      (_lp51923_ __tmp54073)))
                '#f)))))
    (define string-index__0
      (lambda (_str51930_ _char51931_)
        (let ((_start51933_ '0))
          (declare (not safe))
          (string-index__% _str51930_ _char51931_ _start51933_))))
    (define string-index
      (lambda _g54075_
        (let ((_g54074_ (let () (declare (not safe)) (##length _g54075_))))
          (cond ((let () (declare (not safe)) (##fx= _g54074_ 2))
                 (apply (lambda (_str51930_ _char51931_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str51930_ _char51931_)))
                        _g54075_))
                ((let () (declare (not safe)) (##fx= _g54074_ 3))
                 (apply (lambda (_str51935_ _char51936_ _start51937_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str51935_
                             _char51936_
                             _start51937_)))
                        _g54075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g54075_))))))
    (define string-rindex__%
      (lambda (_str51888_ _char51889_ _start51890_)
        (let* ((_len51892_ (string-length _str51888_))
               (_start51897_
                (let ((_$e51894_ _start51890_))
                  (if _$e51894_
                      _$e51894_
                      (let () (declare (not safe)) (##fx- _len51892_ '1))))))
          (let _lp51900_ ((_k51902_ _start51897_))
            (if (let () (declare (not safe)) (##fx>= _k51902_ '0))
                (if (let ((__tmp54076
                           (let ()
                             (declare (not safe))
                             (##string-ref _str51888_ _k51902_))))
                      (declare (not safe))
                      (eq? _char51889_ __tmp54076))
                    _k51902_
                    (let ((__tmp54077
                           (let () (declare (not safe)) (##fx- _k51902_ '1))))
                      (declare (not safe))
                      (_lp51900_ __tmp54077)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str51907_ _char51908_)
        (let ((_start51910_ '#f))
          (declare (not safe))
          (string-rindex__% _str51907_ _char51908_ _start51910_))))
    (define string-rindex
      (lambda _g54079_
        (let ((_g54078_ (let () (declare (not safe)) (##length _g54079_))))
          (cond ((let () (declare (not safe)) (##fx= _g54078_ 2))
                 (apply (lambda (_str51907_ _char51908_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str51907_ _char51908_)))
                        _g54079_))
                ((let () (declare (not safe)) (##fx= _g54078_ 3))
                 (apply (lambda (_str51912_ _char51913_ _start51914_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str51912_
                             _char51913_
                             _start51914_)))
                        _g54079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g54079_))))))
    (define string-split
      (lambda (_str51872_ _char51873_)
        (let ((_len51875_ (string-length _str51872_)))
          (let _lp51877_ ((_start51879_ '0) (_r51880_ '()))
            (let ((_$e51882_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str51872_ _char51873_ _start51879_))))
              (if _$e51882_
                  ((lambda (_end51885_)
                     (let ((__tmp54082
                            (let ()
                              (declare (not safe))
                              (##fx+ _end51885_ '1)))
                           (__tmp54080
                            (let ((__tmp54081
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str51872_
                                      _start51879_
                                      _end51885_))))
                              (declare (not safe))
                              (cons __tmp54081 _r51880_))))
                       (declare (not safe))
                       (_lp51877_ __tmp54082 __tmp54080)))
                   _$e51882_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start51879_ _len51875_))
                      (let ((__tmp54083
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str51872_
                                      _start51879_
                                      _len51875_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp54083 _r51880_))
                      (reverse _r51880_))))))))
    (define string-join
      (lambda (_strs51777_ _join51778_)
        (letrec ((_join-length51780_
                  (lambda (_strs51831_ _jlen51832_)
                    (let _lp51834_ ((_rest51836_ _strs51831_) (_len51837_ '0))
                      (let* ((_rest5183851846_ _rest51836_)
                             (_else5184051854_ (lambda () '0))
                             (_K5184251860_
                              (lambda (_rest51857_ _hd51858_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd51858_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest51857_))
                                        (let ((__tmp54084
                                               (let ((__tmp54085
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd51858_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp54085
                                                        _jlen51832_
                                                        _len51837_))))
                                          (declare (not safe))
                                          (_lp51834_ _rest51857_ __tmp54084))
                                        (let ((__tmp54086
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd51858_))))
                                          (declare (not safe))
                                          (##fx+ __tmp54086 _len51837_)))
                                    (error '"expected string" _hd51858_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5183851846_))
                            (let ((_hd5184351863_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5183851846_)))
                                  (_tl5184451865_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5183851846_))))
                              (let* ((_hd51868_ _hd5184351863_)
                                     (_rest51870_ _tl5184451865_))
                                (declare (not safe))
                                (_K5184251860_ _rest51870_ _hd51868_)))
                            (let ()
                              (declare (not safe))
                              (_else5184051854_))))))))
          (let* ((_join51782_
                  (if (let () (declare (not safe)) (char? _join51778_))
                      (string _join51778_)
                      (if (let () (declare (not safe)) (string? _join51778_))
                          _join51778_
                          (error '"expected string or char" _join51778_))))
                 (_jlen51784_
                  (let () (declare (not safe)) (##string-length _join51782_)))
                 (_olen51786_
                  (let ()
                    (declare (not safe))
                    (_join-length51780_ _strs51777_ _jlen51784_)))
                 (_ostr51788_ (make-string _olen51786_)))
            (let _lp51791_ ((_rest51793_ _strs51777_) (_k51794_ '0))
              (let* ((_rest5179551803_ _rest51793_)
                     (_else5179751811_ (lambda () '""))
                     (_K5179951819_
                      (lambda (_rest51814_ _hd51815_)
                        (let ((_hdlen51817_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd51815_))))
                          (if (let () (declare (not safe)) (pair? _rest51814_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd51815_
                                   '0
                                   _hdlen51817_
                                   _ostr51788_
                                   _k51794_))
                                (let ((__tmp54087
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k51794_ _hdlen51817_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join51782_
                                   '0
                                   _jlen51784_
                                   _ostr51788_
                                   __tmp54087))
                                (let ((__tmp54088
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k51794_
                                                _hdlen51817_
                                                _jlen51784_))))
                                  (declare (not safe))
                                  (_lp51791_ _rest51814_ __tmp54088)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd51815_
                                   '0
                                   _hdlen51817_
                                   _ostr51788_
                                   _k51794_))
                                _ostr51788_))))))
                (if (let () (declare (not safe)) (##pair? _rest5179551803_))
                    (let ((_hd5180051822_
                           (let ()
                             (declare (not safe))
                             (##car _rest5179551803_)))
                          (_tl5180151824_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5179551803_))))
                      (let* ((_hd51827_ _hd5180051822_)
                             (_rest51829_ _tl5180151824_))
                        (declare (not safe))
                        (_K5179951819_ _rest51829_ _hd51827_)))
                    (let () (declare (not safe)) (_else5179751811_)))))))))
    (define read-u8vector
      (lambda (_bytes51774_ _port51775_)
        (read-subu8vector
         _bytes51774_
         '0
         (u8vector-length _bytes51774_)
         _port51775_)))
    (define write-u8vector
      (lambda (_bytes51771_ _port51772_)
        (write-subu8vector
         _bytes51771_
         '0
         (u8vector-length _bytes51771_)
         _port51772_)))
    (define read-string
      (lambda (_str51768_ _port51769_)
        (read-substring _str51768_ '0 (string-length _str51768_) _port51769_)))
    (define write-string
      (lambda (_str51765_ _port51766_)
        (write-substring
         _str51765_
         '0
         (string-length _str51765_)
         _port51766_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag51734_
               _dbg-exprs51735_
               _dbg-thunks51736_
               _expr51737_
               _thunk51738_)
        (letrec ((_o51740_ (current-output-port))
                 (_e51741_ (current-error-port))
                 (_p51742_ (DBG-printer))
                 (_f51743_
                  (lambda () (force-output _o51740_) (force-output _e51741_)))
                 (_d51744_ (lambda (_x51751_) (display _x51751_ _e51741_)))
                 (_w51745_ (lambda (_x51753_) (_p51742_ _x51753_ _e51741_)))
                 (_n51746_ (lambda () (newline _e51741_)))
                 (_v51747_
                  (lambda (_l51756_)
                    (for-each
                     (lambda (_x51758_)
                       (let () (declare (not safe)) (_d51744_ '" "))
                       (let () (declare (not safe)) (_w51745_ _x51758_)))
                     _l51756_)
                    (let () (declare (not safe)) (_n51746_))))
                 (_x51748_
                  (lambda (_expr51760_ _thunk51761_)
                    (let () (declare (not safe)) (_f51743_))
                    (let () (declare (not safe)) (_d51744_ '"  "))
                    (let () (declare (not safe)) (_w51745_ _expr51760_))
                    (let () (declare (not safe)) (_d51744_ '" =>"))
                    (call-with-values
                     _thunk51761_
                     (lambda _x51763_
                       (let () (declare (not safe)) (_v51747_ _x51763_))
                       (let () (declare (not safe)) (_f51743_))
                       (apply values _x51763_))))))
          (if _tag51734_
              (begin
                (if (let () (declare (not safe)) (eq? _tag51734_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f51743_))
                      (let () (declare (not safe)) (_d51744_ _tag51734_))
                      (let () (declare (not safe)) (_n51746_))))
                (for-each _x51748_ _dbg-exprs51735_ _dbg-thunks51736_)
                (if _thunk51738_
                    (let ()
                      (declare (not safe))
                      (_x51748_ _expr51737_ _thunk51738_))
                    '#!void))
              (if _thunk51738_ (_thunk51738_) '#!void)))))))
