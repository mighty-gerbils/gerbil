(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1709128370)
  (begin
    (define displayln
      (lambda _args56588_
        (let _lp56590_ ((_rest56592_ _args56588_))
          (let* ((_rest5659356601_ _rest56592_)
                 (_else5659556609_ (lambda () (newline)))
                 (_K5659756615_
                  (lambda (_rest56612_ _hd56613_)
                    (display _hd56613_)
                    (let () (declare (not safe)) (_lp56590_ _rest56612_)))))
            (if (let () (declare (not safe)) (##pair? _rest5659356601_))
                (let ((_hd5659856618_
                       (let () (declare (not safe)) (##car _rest5659356601_)))
                      (_tl5659956620_
                       (let () (declare (not safe)) (##cdr _rest5659356601_))))
                  (let* ((_hd56623_ _hd5659856618_)
                         (_rest56625_ _tl5659956620_))
                    (declare (not safe))
                    (_K5659756615_ _rest56625_ _hd56623_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args56586_ (for-each display _args56586_)))
    (define file-newer?
      (lambda (_file156579_ _file256580_)
        (letrec ((_modification-time56582_
                  (lambda (_file56584_)
                    (let ((__tmp57009
                           (file-info-last-modification-time
                            (file-info _file56584_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp57009)))))
          (let ((__tmp57011
                 (let ()
                   (declare (not safe))
                   (_modification-time56582_ _file156579_)))
                (__tmp57010
                 (let ()
                   (declare (not safe))
                   (_modification-time56582_ _file256580_))))
            (declare (not safe))
            (##fl> __tmp57011 __tmp57010)))))
    (define create-directory*__%
      (lambda (_dir56553_ _perms56554_)
        (letrec ((_create156556_
                  (lambda (_path56567_)
                    (if (file-exists? _path56567_)
                        (if (let ((__tmp57012 (file-type _path56567_)))
                              (declare (not safe))
                              (eq? __tmp57012 'directory))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"Path component is not a directory"
                                     _path56567_)))
                        (if _perms56554_
                            (create-directory
                             (list 'path:
                                   _path56567_
                                   'permissions:
                                   _perms56554_))
                            (create-directory _path56567_))))))
          (if (file-exists? _dir56553_)
              '#!void
              (let _lp56558_ ((_start56560_ '0))
                (let ((_$e56562_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir56553_ '#\/ _start56560_))))
                  (if _$e56562_
                      ((lambda (_x56565_)
                         (if (let () (declare (not safe)) (##fx> _x56565_ '0))
                             (let ((__tmp57013
                                    (substring _dir56553_ '0 _x56565_)))
                               (declare (not safe))
                               (_create156556_ __tmp57013))
                             '#!void)
                         (let ((__tmp57014
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x56565_ '1))))
                           (declare (not safe))
                           (_lp56558_ __tmp57014)))
                       _$e56562_)
                      (let ()
                        (declare (not safe))
                        (_create156556_ _dir56553_)))))))))
    (define create-directory*__0
      (lambda (_dir56572_)
        (let ((_perms56574_ '493))
          (declare (not safe))
          (create-directory*__% _dir56572_ _perms56574_))))
    (define create-directory*
      (lambda _g57016_
        (let ((_g57015_ (let () (declare (not safe)) (##length _g57016_))))
          (cond ((let () (declare (not safe)) (##fx= _g57015_ 1))
                 (apply (lambda (_dir56572_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir56572_)))
                        _g57016_))
                ((let () (declare (not safe)) (##fx= _g57015_ 2))
                 (apply (lambda (_dir56576_ _perms56577_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir56576_ _perms56577_)))
                        _g57016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g57016_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g57017_ '#t))
    (define true?
      (lambda (_obj56549_) (let () (declare (not safe)) (eq? _obj56549_ '#t))))
    (define false (lambda _g57018_ '#f))
    (define void (lambda _g57019_ '#!void))
    (define void?
      (lambda (_obj56545_)
        (let () (declare (not safe)) (eq? _obj56545_ '#!void))))
    (define eof-object (lambda _g57020_ '#!eof))
    (define identity (lambda (_obj56542_) _obj56542_))
    (define dssl-object?
      (lambda (_obj56540_)
        (if (memq _obj56540_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj56538_)
        (let () (declare (not safe)) (eq? _obj56538_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj56536_)
        (let () (declare (not safe)) (eq? _obj56536_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj56534_)
        (let () (declare (not safe)) (eq? _obj56534_ '#!optional))))
    (define immediate?
      (lambda (_obj56530_)
        (let* ((_t56532_ (let () (declare (not safe)) (##type _obj56530_)))
               (__tmp57021
                (let () (declare (not safe)) (##fxand _t56532_ '1))))
          (declare (not safe))
          (##fxzero? __tmp57021))))
    (define nonnegative-fixnum?
      (lambda (_obj56528_)
        (if (let () (declare (not safe)) (fixnum? _obj56528_))
            (let ((__tmp57022 (fxnegative? _obj56528_)))
              (declare (not safe))
              (not __tmp57022))
            '#f)))
    (define values-count
      (lambda (_obj56526_)
        (if (let () (declare (not safe)) (##values? _obj56526_))
            (let () (declare (not safe)) (##vector-length _obj56526_))
            '1)))
    (define values-ref
      (lambda (_obj56523_ _k56524_)
        (if (let () (declare (not safe)) (##values? _obj56523_))
            (let () (declare (not safe)) (##vector-ref _obj56523_ _k56524_))
            _obj56523_)))
    (define values->list
      (lambda (_obj56521_)
        (if (let () (declare (not safe)) (##values? _obj56521_))
            (let () (declare (not safe)) (##vector->list _obj56521_))
            (list _obj56521_))))
    (define subvector->list__%
      (lambda (_obj56506_ _start56507_)
        (let ((_lst56509_
               (let () (declare (not safe)) (##vector->list _obj56506_))))
          (list-tail _lst56509_ _start56507_))))
    (define subvector->list__0
      (lambda (_obj56514_)
        (let ((_start56516_ '0))
          (declare (not safe))
          (subvector->list__% _obj56514_ _start56516_))))
    (define subvector->list
      (lambda _g57024_
        (let ((_g57023_ (let () (declare (not safe)) (##length _g57024_))))
          (cond ((let () (declare (not safe)) (##fx= _g57023_ 1))
                 (apply (lambda (_obj56514_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj56514_)))
                        _g57024_))
                ((let () (declare (not safe)) (##fx= _g57023_ 2))
                 (apply (lambda (_obj56518_ _start56519_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj56518_ _start56519_)))
                        _g57024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g57024_))))))
    (define make-list__%
      (lambda (_k56487_ _val56488_)
        (if (let () (declare (not safe)) (fixnum? _k56487_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected argument 1 to be fixnum" _k56487_)))
        (let _lp56490_ ((_n56492_ '0) (_r56493_ '()))
          (if (let () (declare (not safe)) (##fx< _n56492_ _k56487_))
              (let ((__tmp57026
                     (let () (declare (not safe)) (##fx+ _n56492_ '1)))
                    (__tmp57025
                     (let () (declare (not safe)) (cons _val56488_ _r56493_))))
                (declare (not safe))
                (_lp56490_ __tmp57026 __tmp57025))
              _r56493_))))
    (define make-list__0
      (lambda (_k56498_)
        (let ((_val56500_ '#f))
          (declare (not safe))
          (make-list__% _k56498_ _val56500_))))
    (define make-list
      (lambda _g57028_
        (let ((_g57027_ (let () (declare (not safe)) (##length _g57028_))))
          (cond ((let () (declare (not safe)) (##fx= _g57027_ 1))
                 (apply (lambda (_k56498_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k56498_)))
                        _g57028_))
                ((let () (declare (not safe)) (##fx= _g57027_ 2))
                 (apply (lambda (_k56502_ _val56503_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k56502_ _val56503_)))
                        _g57028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g57028_))))))
    (define cons*
      (lambda (_x56477_ _y56478_ . _rest56479_)
        (letrec ((_recur56481_
                  (lambda (_x56483_ _rest56484_)
                    (if (let () (declare (not safe)) (pair? _rest56484_))
                        (let ((__tmp57029
                               (let ((__tmp57031
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest56484_)))
                                     (__tmp57030
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest56484_))))
                                 (declare (not safe))
                                 (_recur56481_ __tmp57031 __tmp57030))))
                          (declare (not safe))
                          (cons _x56483_ __tmp57029))
                        _x56483_))))
          (let ((__tmp57032
                 (let ()
                   (declare (not safe))
                   (_recur56481_ _y56478_ _rest56479_))))
            (declare (not safe))
            (cons _x56477_ __tmp57032)))))
    (define foldl1
      (lambda (_f56435_ _iv56436_ _lst56437_)
        (let _lp56439_ ((_rest56441_ _lst56437_) (_r56442_ _iv56436_))
          (let* ((_rest5644356451_ _rest56441_)
                 (_else5644556459_ (lambda () _r56442_))
                 (_K5644756465_
                  (lambda (_rest56462_ _x56463_)
                    (let ((__tmp57033 (_f56435_ _x56463_ _r56442_)))
                      (declare (not safe))
                      (_lp56439_ _rest56462_ __tmp57033)))))
            (if (let () (declare (not safe)) (##pair? _rest5644356451_))
                (let ((_hd5644856468_
                       (let () (declare (not safe)) (##car _rest5644356451_)))
                      (_tl5644956470_
                       (let () (declare (not safe)) (##cdr _rest5644356451_))))
                  (let* ((_x56473_ _hd5644856468_)
                         (_rest56475_ _tl5644956470_))
                    (declare (not safe))
                    (_K5644756465_ _rest56475_ _x56473_)))
                (let () (declare (not safe)) (_else5644556459_)))))))
    (define foldl2
      (lambda (_f56358_ _iv56359_ _lst156360_ _lst256361_)
        (let _lp56363_ ((_rest156365_ _lst156360_)
                        (_rest256366_ _lst256361_)
                        (_r56367_ _iv56359_))
          (let* ((_rest15636856376_ _rest156365_)
                 (_else5637056384_ (lambda () _r56367_))
                 (_K5637256423_
                  (lambda (_rest156387_ _x156388_)
                    (let* ((_rest25638956397_ _rest256366_)
                           (_else5639156405_ (lambda () _r56367_))
                           (_K5639356411_
                            (lambda (_rest256408_ _x256409_)
                              (let ((__tmp57034
                                     (_f56358_ _x156388_ _x256409_ _r56367_)))
                                (declare (not safe))
                                (_lp56363_
                                 _rest156387_
                                 _rest256408_
                                 __tmp57034)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25638956397_))
                          (let ((_hd5639456414_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25638956397_)))
                                (_tl5639556416_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25638956397_))))
                            (let* ((_x256419_ _hd5639456414_)
                                   (_rest256421_ _tl5639556416_))
                              (declare (not safe))
                              (_K5639356411_ _rest256421_ _x256419_)))
                          (let () (declare (not safe)) (_else5639156405_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15636856376_))
                (let ((_hd5637356426_
                       (let () (declare (not safe)) (##car _rest15636856376_)))
                      (_tl5637456428_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15636856376_))))
                  (let* ((_x156431_ _hd5637356426_)
                         (_rest156433_ _tl5637456428_))
                    (declare (not safe))
                    (_K5637256423_ _rest156433_ _x156431_)))
                (let () (declare (not safe)) (_else5637056384_)))))))
    (define foldl
      (lambda _g57036_
        (let ((_g57035_ (let () (declare (not safe)) (##length _g57036_))))
          (cond ((let () (declare (not safe)) (##fx= _g57035_ 3))
                 (apply (lambda (_f56343_ _iv56344_ _lst56345_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f56343_ _iv56344_ _lst56345_)))
                        _g57036_))
                ((let () (declare (not safe)) (##fx= _g57035_ 4))
                 (apply (lambda (_f56347_ _iv56348_ _lst156349_ _lst256350_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f56347_
                                    _iv56348_
                                    _lst156349_
                                    _lst256350_)))
                        _g57036_))
                ((let () (declare (not safe)) (##fx>= _g57035_ 4))
                 (apply foldl* _g57036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g57036_))))))
    (define foldl*
      (lambda (_f56331_ _iv56332_ . _rest56333_)
        (let _recur56335_ ((_iv56337_ _iv56332_) (_rest56338_ _rest56333_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56338_))
              (let ((__tmp57038
                     (apply _f56331_
                            (let ((__tmp57040
                                   (lambda (_xs56340_ _r56341_)
                                     (let ((__tmp57041 (car _xs56340_)))
                                       (declare (not safe))
                                       (cons __tmp57041 _r56341_))))
                                  (__tmp57039 (list _iv56337_)))
                              (declare (not safe))
                              (foldr1 __tmp57040 __tmp57039 _rest56338_))))
                    (__tmp57037 (map cdr _rest56338_)))
                (declare (not safe))
                (_recur56335_ __tmp57038 __tmp57037))
              _iv56337_))))
    (define foldr1
      (lambda (_f56290_ _iv56291_ _lst56292_)
        (let _recur56294_ ((_rest56296_ _lst56292_))
          (let* ((_rest5629756305_ _rest56296_)
                 (_else5629956313_ (lambda () _iv56291_))
                 (_K5630156319_
                  (lambda (_rest56316_ _x56317_)
                    (_f56290_
                     _x56317_
                     (let ()
                       (declare (not safe))
                       (_recur56294_ _rest56316_))))))
            (if (let () (declare (not safe)) (##pair? _rest5629756305_))
                (let ((_hd5630256322_
                       (let () (declare (not safe)) (##car _rest5629756305_)))
                      (_tl5630356324_
                       (let () (declare (not safe)) (##cdr _rest5629756305_))))
                  (let* ((_x56327_ _hd5630256322_)
                         (_rest56329_ _tl5630356324_))
                    (declare (not safe))
                    (_K5630156319_ _rest56329_ _x56327_)))
                (let () (declare (not safe)) (_else5629956313_)))))))
    (define foldr2
      (lambda (_f56214_ _iv56215_ _lst156216_ _lst256217_)
        (let _recur56219_ ((_rest156221_ _lst156216_)
                           (_rest256222_ _lst256217_))
          (let* ((_rest15622356231_ _rest156221_)
                 (_else5622556239_ (lambda () _iv56215_))
                 (_K5622756278_
                  (lambda (_rest156242_ _x156243_)
                    (let* ((_rest25624456252_ _rest256222_)
                           (_else5624656260_ (lambda () _iv56215_))
                           (_K5624856266_
                            (lambda (_rest256263_ _x256264_)
                              (_f56214_
                               _x156243_
                               _x256264_
                               (let ()
                                 (declare (not safe))
                                 (_recur56219_ _rest156242_ _rest256263_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25624456252_))
                          (let ((_hd5624956269_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25624456252_)))
                                (_tl5625056271_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25624456252_))))
                            (let* ((_x256274_ _hd5624956269_)
                                   (_rest256276_ _tl5625056271_))
                              (declare (not safe))
                              (_K5624856266_ _rest256276_ _x256274_)))
                          (let () (declare (not safe)) (_else5624656260_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15622356231_))
                (let ((_hd5622856281_
                       (let () (declare (not safe)) (##car _rest15622356231_)))
                      (_tl5622956283_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15622356231_))))
                  (let* ((_x156286_ _hd5622856281_)
                         (_rest156288_ _tl5622956283_))
                    (declare (not safe))
                    (_K5622756278_ _rest156288_ _x156286_)))
                (let () (declare (not safe)) (_else5622556239_)))))))
    (define foldr
      (lambda _g57043_
        (let ((_g57042_ (let () (declare (not safe)) (##length _g57043_))))
          (cond ((let () (declare (not safe)) (##fx= _g57042_ 3))
                 (apply (lambda (_f56199_ _iv56200_ _lst56201_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f56199_ _iv56200_ _lst56201_)))
                        _g57043_))
                ((let () (declare (not safe)) (##fx= _g57042_ 4))
                 (apply (lambda (_f56203_ _iv56204_ _lst156205_ _lst256206_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f56203_
                                    _iv56204_
                                    _lst156205_
                                    _lst256206_)))
                        _g57043_))
                ((let () (declare (not safe)) (##fx>= _g57042_ 4))
                 (apply foldr* _g57043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g57043_))))))
    (define foldr*
      (lambda (_f56188_ _iv56189_ . _rest56190_)
        (let _recur56192_ ((_rest56194_ _rest56190_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56194_))
              (apply _f56188_
                     (let ((__tmp57046
                            (lambda (_xs56196_ _r56197_)
                              (let ((__tmp57047 (car _xs56196_)))
                                (declare (not safe))
                                (cons __tmp57047 _r56197_))))
                           (__tmp57044
                            (list (let ((__tmp57045 (map cdr _rest56194_)))
                                    (declare (not safe))
                                    (_recur56192_ __tmp57045)))))
                       (declare (not safe))
                       (foldr1 __tmp57046 __tmp57044 _rest56194_)))
              _iv56189_))))
    (define drop
      (lambda (_l56185_ _k56186_)
        (if (let () (declare (not safe)) (##fxpositive? _k56186_))
            (let ((__tmp57049 (let () (declare (not safe)) (##cdr _l56185_)))
                  (__tmp57048
                   (let () (declare (not safe)) (##fx- _k56186_ '1))))
              (declare (not safe))
              (drop __tmp57049 __tmp57048))
            _l56185_)))
    (define remove-nulls!
      (lambda (_l56072_)
        (let* ((_l5607356086_ _l56072_)
               (_E5607756090_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _l5607356086_)))))
          (let ((_K5608256175_
                 (lambda (_r56173_)
                   (let () (declare (not safe)) (remove-nulls! _r56173_))))
                (_K5607956162_
                 (lambda (_r56102_)
                   (let _loop56104_ ((_l56106_ _l56072_) (_r56107_ _r56102_))
                     (let* ((_r5610856121_ _r56107_)
                            (_E5611256125_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _r5610856121_)))))
                       (let ((_K5611756152_
                              (lambda (_rr56150_)
                                (set-cdr!
                                 _l56106_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr56150_)))))
                             (_K5611456139_
                              (lambda (_rr56137_)
                                (let ()
                                  (declare (not safe))
                                  (_loop56104_ _r56107_ _rr56137_))))
                             (_K5611356130_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5610856121_))
                             (let ((_tl5611956157_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5610856121_)))
                                   (_hd5611856155_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5610856121_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5611856155_))
                                   (let ((_rr56160_ _tl5611956157_))
                                     (declare (not safe))
                                     (_K5611756152_ _rr56160_))
                                   (let ((_rr56145_ _tl5611956157_))
                                     (declare (not safe))
                                     (_K5611456139_ _rr56145_))))
                             '#!void))))
                   _l56072_))
                (_K5607856095_ (lambda () _l56072_)))
            (if (let () (declare (not safe)) (##pair? _l5607356086_))
                (let ((_tl5608456180_
                       (let () (declare (not safe)) (##cdr _l5607356086_)))
                      (_hd5608356178_
                       (let () (declare (not safe)) (##car _l5607356086_))))
                  (if (let () (declare (not safe)) (##null? _hd5608356178_))
                      (let ((_r56183_ _tl5608456180_))
                        (declare (not safe))
                        (remove-nulls! _r56183_))
                      (let ((_r56168_ _tl5608456180_))
                        (declare (not safe))
                        (_K5607956162_ _r56168_))))
                (let () (declare (not safe)) (_K5607856095_)))))))
    (define append1!
      (lambda (_l56067_ _x56068_)
        (let ((_l256070_ (let () (declare (not safe)) (cons _x56068_ '()))))
          (if (let () (declare (not safe)) (pair? _l56067_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l56067_))
               _l256070_)
              _l256070_))))
    (define append-reverse
      (lambda (_rev-head56064_ _tail56065_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail56065_ _rev-head56064_))))
    (define append-reverse-until
      (lambda (_pred56017_ _rhead56018_ _tail56019_)
        (let _loop56021_ ((_rhead56023_ _rhead56018_)
                          (_tail56024_ _tail56019_))
          (let* ((_rhead5602556034_ _rhead56023_)
                 (_E5602856038_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rhead5602556034_)))))
            (let ((_K5603256061_ (lambda () (values '() _tail56024_)))
                  (_K5602956045_
                   (lambda (_r56042_ _a56043_)
                     (if (_pred56017_ _a56043_)
                         (values _rhead56023_ _tail56024_)
                         (let ((__tmp57050
                                (let ()
                                  (declare (not safe))
                                  (cons _a56043_ _tail56024_))))
                           (declare (not safe))
                           (_loop56021_ _r56042_ __tmp57050))))))
              (let ((_try-match5602756057_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5602556034_))
                           (let ((_tl5603156050_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5602556034_)))
                                 (_hd5603056048_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5602556034_))))
                             (let ((_a56053_ _hd5603056048_)
                                   (_r56055_ _tl5603156050_))
                               (let ()
                                 (declare (not safe))
                                 (_K5602956045_ _r56055_ _a56053_))))
                           (let () (declare (not safe)) (_E5602856038_))))))
                (if (let () (declare (not safe)) (##null? _rhead5602556034_))
                    (let () (declare (not safe)) (_K5603256061_))
                    (let ()
                      (declare (not safe))
                      (_try-match5602756057_)))))))))
    (define andmap1
      (lambda (_f55977_ _lst55978_)
        (let _lp55980_ ((_rest55982_ _lst55978_))
          (let* ((_rest5598355991_ _rest55982_)
                 (_else5598555999_ (lambda () '#t))
                 (_K5598756005_
                  (lambda (_rest56002_ _x56003_)
                    (if (_f55977_ _x56003_)
                        (let () (declare (not safe)) (_lp55980_ _rest56002_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5598355991_))
                (let ((_hd5598856008_
                       (let () (declare (not safe)) (##car _rest5598355991_)))
                      (_tl5598956010_
                       (let () (declare (not safe)) (##cdr _rest5598355991_))))
                  (let* ((_x56013_ _hd5598856008_)
                         (_rest56015_ _tl5598956010_))
                    (declare (not safe))
                    (_K5598756005_ _rest56015_ _x56013_)))
                (let () (declare (not safe)) (_else5598555999_)))))))
    (define andmap2
      (lambda (_f55902_ _lst155903_ _lst255904_)
        (let _lp55906_ ((_rest155908_ _lst155903_) (_rest255909_ _lst255904_))
          (let* ((_rest15591055918_ _rest155908_)
                 (_else5591255926_ (lambda () '#t))
                 (_K5591455965_
                  (lambda (_rest155929_ _x155930_)
                    (let* ((_rest25593155939_ _rest255909_)
                           (_else5593355947_ (lambda () '#t))
                           (_K5593555953_
                            (lambda (_rest255950_ _x255951_)
                              (if (_f55902_ _x155930_ _x255951_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp55906_ _rest155929_ _rest255950_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25593155939_))
                          (let ((_hd5593655956_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25593155939_)))
                                (_tl5593755958_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25593155939_))))
                            (let* ((_x255961_ _hd5593655956_)
                                   (_rest255963_ _tl5593755958_))
                              (declare (not safe))
                              (_K5593555953_ _rest255963_ _x255961_)))
                          (let () (declare (not safe)) (_else5593355947_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15591055918_))
                (let ((_hd5591555968_
                       (let () (declare (not safe)) (##car _rest15591055918_)))
                      (_tl5591655970_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15591055918_))))
                  (let* ((_x155973_ _hd5591555968_)
                         (_rest155975_ _tl5591655970_))
                    (declare (not safe))
                    (_K5591455965_ _rest155975_ _x155973_)))
                (let () (declare (not safe)) (_else5591255926_)))))))
    (define andmap
      (lambda _g57052_
        (let ((_g57051_ (let () (declare (not safe)) (##length _g57052_))))
          (cond ((let () (declare (not safe)) (##fx= _g57051_ 2))
                 (apply (lambda (_f55890_ _lst55891_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f55890_ _lst55891_)))
                        _g57052_))
                ((let () (declare (not safe)) (##fx= _g57051_ 3))
                 (apply (lambda (_f55893_ _lst155894_ _lst255895_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f55893_ _lst155894_ _lst255895_)))
                        _g57052_))
                ((let () (declare (not safe)) (##fx>= _g57051_ 3))
                 (apply andmap* _g57052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g57052_))))))
    (define andmap*
      (lambda (_f55883_ . _rest55884_)
        (let _recur55886_ ((_rest55888_ _rest55884_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55888_))
              (if (apply _f55883_ (map car _rest55888_))
                  (let ((__tmp57053 (map cdr _rest55888_)))
                    (declare (not safe))
                    (_recur55886_ __tmp57053))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f55840_ _lst55841_)
        (let _lp55843_ ((_rest55845_ _lst55841_))
          (let* ((_rest5584655854_ _rest55845_)
                 (_else5584855862_ (lambda () '#f))
                 (_K5585055871_
                  (lambda (_rest55865_ _x55866_)
                    (let ((_$e55868_ (_f55840_ _x55866_)))
                      (if _$e55868_
                          _$e55868_
                          (let ()
                            (declare (not safe))
                            (_lp55843_ _rest55865_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5584655854_))
                (let ((_hd5585155874_
                       (let () (declare (not safe)) (##car _rest5584655854_)))
                      (_tl5585255876_
                       (let () (declare (not safe)) (##cdr _rest5584655854_))))
                  (let* ((_x55879_ _hd5585155874_)
                         (_rest55881_ _tl5585255876_))
                    (declare (not safe))
                    (_K5585055871_ _rest55881_ _x55879_)))
                (let () (declare (not safe)) (_else5584855862_)))))))
    (define ormap2
      (lambda (_f55762_ _lst155763_ _lst255764_)
        (let _lp55766_ ((_rest155768_ _lst155763_) (_rest255769_ _lst255764_))
          (let* ((_rest15577055778_ _rest155768_)
                 (_else5577255786_ (lambda () '#f))
                 (_K5577455828_
                  (lambda (_rest155789_ _x155790_)
                    (let* ((_rest25579155799_ _rest255769_)
                           (_else5579355807_ (lambda () '#f))
                           (_K5579555816_
                            (lambda (_rest255810_ _x255811_)
                              (let ((_$e55813_ (_f55762_ _x155790_ _x255811_)))
                                (if _$e55813_
                                    _$e55813_
                                    (let ()
                                      (declare (not safe))
                                      (_lp55766_
                                       _rest155789_
                                       _rest255810_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25579155799_))
                          (let ((_hd5579655819_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25579155799_)))
                                (_tl5579755821_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25579155799_))))
                            (let* ((_x255824_ _hd5579655819_)
                                   (_rest255826_ _tl5579755821_))
                              (declare (not safe))
                              (_K5579555816_ _rest255826_ _x255824_)))
                          (let () (declare (not safe)) (_else5579355807_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15577055778_))
                (let ((_hd5577555831_
                       (let () (declare (not safe)) (##car _rest15577055778_)))
                      (_tl5577655833_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15577055778_))))
                  (let* ((_x155836_ _hd5577555831_)
                         (_rest155838_ _tl5577655833_))
                    (declare (not safe))
                    (_K5577455828_ _rest155838_ _x155836_)))
                (let () (declare (not safe)) (_else5577255786_)))))))
    (define ormap
      (lambda _g57055_
        (let ((_g57054_ (let () (declare (not safe)) (##length _g57055_))))
          (cond ((let () (declare (not safe)) (##fx= _g57054_ 2))
                 (apply (lambda (_f55750_ _lst55751_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f55750_ _lst55751_)))
                        _g57055_))
                ((let () (declare (not safe)) (##fx= _g57054_ 3))
                 (apply (lambda (_f55753_ _lst155754_ _lst255755_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f55753_ _lst155754_ _lst255755_)))
                        _g57055_))
                ((let () (declare (not safe)) (##fx>= _g57054_ 3))
                 (apply ormap* _g57055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g57055_))))))
    (define ormap*
      (lambda (_f55740_ . _rest55741_)
        (let _recur55743_ ((_rest55745_ _rest55741_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55745_))
              (let ((_$e55747_ (apply _f55740_ (map car _rest55745_))))
                (if _$e55747_
                    _$e55747_
                    (let ((__tmp57056 (map cdr _rest55745_)))
                      (declare (not safe))
                      (_recur55743_ __tmp57056))))
              '#f))))
    (define filter
      (lambda (_f55698_ _lst55699_)
        (let _recur55701_ ((_lst55703_ _lst55699_))
          (let* ((_lst5570455712_ _lst55703_)
                 (_else5570655720_ (lambda () '()))
                 (_K5570855728_
                  (lambda (_rest55723_ _hd55724_)
                    (if (_f55698_ _hd55724_)
                        (let ((_tail55726_
                               (let ()
                                 (declare (not safe))
                                 (_recur55701_ _rest55723_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail55726_ _rest55723_))
                              _lst55703_
                              (let ()
                                (declare (not safe))
                                (cons _hd55724_ _tail55726_))))
                        (let ()
                          (declare (not safe))
                          (_recur55701_ _rest55723_))))))
            (if (let () (declare (not safe)) (##pair? _lst5570455712_))
                (let ((_hd5570955731_
                       (let () (declare (not safe)) (##car _lst5570455712_)))
                      (_tl5571055733_
                       (let () (declare (not safe)) (##cdr _lst5570455712_))))
                  (let* ((_hd55736_ _hd5570955731_)
                         (_rest55738_ _tl5571055733_))
                    (declare (not safe))
                    (_K5570855728_ _rest55738_ _hd55736_)))
                (let () (declare (not safe)) (_else5570655720_)))))))
    (define filter-map1
      (lambda (_f55653_ _lst55654_)
        (let _recur55656_ ((_rest55658_ _lst55654_))
          (let* ((_rest5565955667_ _rest55658_)
                 (_else5566155675_ (lambda () '()))
                 (_K5566355686_
                  (lambda (_rest55678_ _x55679_)
                    (let ((_$e55681_ (_f55653_ _x55679_)))
                      (if _$e55681_
                          ((lambda (_r55684_)
                             (let ((__tmp57057
                                    (let ()
                                      (declare (not safe))
                                      (_recur55656_ _rest55678_))))
                               (declare (not safe))
                               (cons _r55684_ __tmp57057)))
                           _$e55681_)
                          (let ()
                            (declare (not safe))
                            (_recur55656_ _rest55678_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5565955667_))
                (let ((_hd5566455689_
                       (let () (declare (not safe)) (##car _rest5565955667_)))
                      (_tl5566555691_
                       (let () (declare (not safe)) (##cdr _rest5565955667_))))
                  (let* ((_x55694_ _hd5566455689_)
                         (_rest55696_ _tl5566555691_))
                    (declare (not safe))
                    (_K5566355686_ _rest55696_ _x55694_)))
                (let () (declare (not safe)) (_else5566155675_)))))))
    (define filter-map2
      (lambda (_f55573_ _lst155574_ _lst255575_)
        (let _recur55577_ ((_rest155579_ _lst155574_)
                           (_rest255580_ _lst255575_))
          (let* ((_rest15558155589_ _rest155579_)
                 (_else5558355597_ (lambda () '()))
                 (_K5558555641_
                  (lambda (_rest155600_ _x155601_)
                    (let* ((_rest25560255610_ _rest255580_)
                           (_else5560455618_ (lambda () '()))
                           (_K5560655629_
                            (lambda (_rest255621_ _x255622_)
                              (let ((_$e55624_ (_f55573_ _x155601_ _x255622_)))
                                (if _$e55624_
                                    ((lambda (_r55627_)
                                       (let ((__tmp57058
                                              (let ()
                                                (declare (not safe))
                                                (_recur55577_
                                                 _rest155600_
                                                 _rest255621_))))
                                         (declare (not safe))
                                         (cons _r55627_ __tmp57058)))
                                     _$e55624_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur55577_
                                       _rest155600_
                                       _rest255621_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25560255610_))
                          (let ((_hd5560755632_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25560255610_)))
                                (_tl5560855634_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25560255610_))))
                            (let* ((_x255637_ _hd5560755632_)
                                   (_rest255639_ _tl5560855634_))
                              (declare (not safe))
                              (_K5560655629_ _rest255639_ _x255637_)))
                          (let () (declare (not safe)) (_else5560455618_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15558155589_))
                (let ((_hd5558655644_
                       (let () (declare (not safe)) (##car _rest15558155589_)))
                      (_tl5558755646_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15558155589_))))
                  (let* ((_x155649_ _hd5558655644_)
                         (_rest155651_ _tl5558755646_))
                    (declare (not safe))
                    (_K5558555641_ _rest155651_ _x155649_)))
                (let () (declare (not safe)) (_else5558355597_)))))))
    (define filter-map
      (lambda _g57060_
        (let ((_g57059_ (let () (declare (not safe)) (##length _g57060_))))
          (cond ((let () (declare (not safe)) (##fx= _g57059_ 2))
                 (apply (lambda (_f55561_ _lst55562_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f55561_ _lst55562_)))
                        _g57060_))
                ((let () (declare (not safe)) (##fx= _g57059_ 3))
                 (apply (lambda (_f55564_ _lst155565_ _lst255566_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f55564_ _lst155565_ _lst255566_)))
                        _g57060_))
                ((let () (declare (not safe)) (##fx>= _g57059_ 3))
                 (apply filter-map* _g57060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g57060_))))))
    (define filter-map*
      (lambda (_f55549_ . _rest55550_)
        (let _recur55552_ ((_rest55554_ _rest55550_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55554_))
              (let ((_$e55556_ (apply _f55549_ (map car _rest55554_))))
                (if _$e55556_
                    ((lambda (_r55559_)
                       (let ((__tmp57062
                              (let ((__tmp57063 (map cdr _rest55554_)))
                                (declare (not safe))
                                (_recur55552_ __tmp57063))))
                         (declare (not safe))
                         (cons _r55559_ __tmp57062)))
                     _$e55556_)
                    (let ((__tmp57061 (map cdr _rest55554_)))
                      (declare (not safe))
                      (_recur55552_ __tmp57061))))
              '()))))
    (define iota__%
      (lambda (_count55517_ _start55518_ _step55519_)
        (if (let () (declare (not safe)) (fixnum? _count55517_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected fixnum" _count55517_)))
        (if (let () (declare (not safe)) (number? _start55518_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected number" _start55518_)))
        (if (let () (declare (not safe)) (number? _step55519_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected number" _step55519_)))
        (let ((_root55521_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp55523_ ((_i55525_ '0)
                          (_x55526_ _start55518_)
                          (_tl55527_ _root55521_))
            (if (let () (declare (not safe)) (##fx< _i55525_ _count55517_))
                (let ((_tl*55529_
                       (let () (declare (not safe)) (cons _x55526_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl55527_ _tl*55529_))
                  (let ((__tmp57065
                         (let () (declare (not safe)) (##fx+ _i55525_ '1)))
                        (__tmp57064 (+ _x55526_ _step55519_)))
                    (declare (not safe))
                    (_lp55523_ __tmp57065 __tmp57064 _tl*55529_)))
                (let () (declare (not safe)) (##cdr _root55521_)))))))
    (define iota__0
      (lambda (_count55534_)
        (let* ((_start55536_ '0) (_step55538_ '1))
          (declare (not safe))
          (iota__% _count55534_ _start55536_ _step55538_))))
    (define iota__1
      (lambda (_count55540_ _start55541_)
        (let ((_step55543_ '1))
          (declare (not safe))
          (iota__% _count55540_ _start55541_ _step55543_))))
    (define iota
      (lambda _g57067_
        (let ((_g57066_ (let () (declare (not safe)) (##length _g57067_))))
          (cond ((let () (declare (not safe)) (##fx= _g57066_ 1))
                 (apply (lambda (_count55534_)
                          (let () (declare (not safe)) (iota__0 _count55534_)))
                        _g57067_))
                ((let () (declare (not safe)) (##fx= _g57066_ 2))
                 (apply (lambda (_count55540_ _start55541_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count55540_ _start55541_)))
                        _g57067_))
                ((let () (declare (not safe)) (##fx= _g57066_ 3))
                 (apply (lambda (_count55545_ _start55546_ _step55547_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count55545_ _start55546_ _step55547_)))
                        _g57067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g57067_))))))
    (define last-pair
      (lambda (_lst55491_)
        (let* ((_lst5549255499_ _lst55491_)
               (_E5549455503_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _lst5549255499_))))
               (_K5549555508_
                (lambda (_rest55506_)
                  (if (let () (declare (not safe)) (pair? _rest55506_))
                      (let () (declare (not safe)) (last-pair _rest55506_))
                      _lst55491_))))
          (if (let () (declare (not safe)) (##pair? _lst5549255499_))
              (let* ((_tl5549755511_
                      (let () (declare (not safe)) (##cdr _lst5549255499_)))
                     (_rest55514_ _tl5549755511_))
                (declare (not safe))
                (_K5549555508_ _rest55514_))
              (let () (declare (not safe)) (_E5549455503_))))))
    (define last
      (lambda (_lst55489_)
        (car (let () (declare (not safe)) (last-pair _lst55489_)))))
    (define assgetq__%
      (lambda (_key55467_ _lst55469_ _default55471_)
        (let ((_$e55474_
               (if (let () (declare (not safe)) (pair? _lst55469_))
                   (assq _key55467_ _lst55469_)
                   '#f)))
          (if _$e55474_
              (cdr _$e55474_)
              (if (let () (declare (not safe)) (procedure? _default55471_))
                  (_default55471_ _key55467_)
                  _default55471_)))))
    (define assgetq__0
      (lambda (_key55480_ _lst55481_)
        (let ((_default55483_ '#f))
          (declare (not safe))
          (assgetq__% _key55480_ _lst55481_ _default55483_))))
    (define assgetq
      (lambda _g57069_
        (let ((_g57068_ (let () (declare (not safe)) (##length _g57069_))))
          (cond ((let () (declare (not safe)) (##fx= _g57068_ 2))
                 (apply (lambda (_key55480_ _lst55481_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key55480_ _lst55481_)))
                        _g57069_))
                ((let () (declare (not safe)) (##fx= _g57068_ 3))
                 (apply (lambda (_key55485_ _lst55486_ _default55487_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key55485_ _lst55486_ _default55487_)))
                        _g57069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g57069_))))))
    (define assgetv__%
      (lambda (_key55444_ _lst55446_ _default55448_)
        (let ((_$e55451_
               (if (let () (declare (not safe)) (pair? _lst55446_))
                   (assv _key55444_ _lst55446_)
                   '#f)))
          (if _$e55451_
              (cdr _$e55451_)
              (if (let () (declare (not safe)) (procedure? _default55448_))
                  (_default55448_ _key55444_)
                  _default55448_)))))
    (define assgetv__0
      (lambda (_key55457_ _lst55458_)
        (let ((_default55460_ '#f))
          (declare (not safe))
          (assgetv__% _key55457_ _lst55458_ _default55460_))))
    (define assgetv
      (lambda _g57071_
        (let ((_g57070_ (let () (declare (not safe)) (##length _g57071_))))
          (cond ((let () (declare (not safe)) (##fx= _g57070_ 2))
                 (apply (lambda (_key55457_ _lst55458_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key55457_ _lst55458_)))
                        _g57071_))
                ((let () (declare (not safe)) (##fx= _g57070_ 3))
                 (apply (lambda (_key55462_ _lst55463_ _default55464_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key55462_ _lst55463_ _default55464_)))
                        _g57071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g57071_))))))
    (define assget__%
      (lambda (_key55421_ _lst55423_ _default55425_)
        (let ((_$e55428_
               (if (let () (declare (not safe)) (pair? _lst55423_))
                   (assoc _key55421_ _lst55423_)
                   '#f)))
          (if _$e55428_
              (cdr _$e55428_)
              (if (let () (declare (not safe)) (procedure? _default55425_))
                  (_default55425_ _key55421_)
                  _default55425_)))))
    (define assget__0
      (lambda (_key55434_ _lst55435_)
        (let ((_default55437_ '#f))
          (declare (not safe))
          (assget__% _key55434_ _lst55435_ _default55437_))))
    (define assget
      (lambda _g57073_
        (let ((_g57072_ (let () (declare (not safe)) (##length _g57073_))))
          (cond ((let () (declare (not safe)) (##fx= _g57072_ 2))
                 (apply (lambda (_key55434_ _lst55435_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key55434_ _lst55435_)))
                        _g57073_))
                ((let () (declare (not safe)) (##fx= _g57072_ 3))
                 (apply (lambda (_key55439_ _lst55440_ _default55441_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key55439_ _lst55440_ _default55441_)))
                        _g57073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g57073_))))))
    (define pgetq__%
      (lambda (_key55350_ _lst55352_ _default55354_)
        (let _lp55357_ ((_rest55360_ _lst55352_))
          (let* ((_rest5536255372_ _rest55360_)
                 (_else5536455380_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55354_))
                        (_default55354_ _key55350_)
                        _default55354_)))
                 (_K5536655389_
                  (lambda (_rest55383_ _v55384_ _k55386_)
                    (if (let () (declare (not safe)) (eq? _k55386_ _key55350_))
                        _v55384_
                        (let ()
                          (declare (not safe))
                          (_lp55357_ _rest55383_))))))
            (if (let () (declare (not safe)) (##pair? _rest5536255372_))
                (let ((_hd5536755392_
                       (let () (declare (not safe)) (##car _rest5536255372_)))
                      (_tl5536855394_
                       (let () (declare (not safe)) (##cdr _rest5536255372_))))
                  (let ((_k55397_ _hd5536755392_))
                    (if (let () (declare (not safe)) (##pair? _tl5536855394_))
                        (let ((_hd5536955399_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5536855394_)))
                              (_tl5537055401_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5536855394_))))
                          (let* ((_v55404_ _hd5536955399_)
                                 (_rest55406_ _tl5537055401_))
                            (declare (not safe))
                            (_K5536655389_ _rest55406_ _v55404_ _k55397_)))
                        (let () (declare (not safe)) (_else5536455380_)))))
                (let () (declare (not safe)) (_else5536455380_)))))))
    (define pgetq__0
      (lambda (_key55411_ _lst55412_)
        (let ((_default55414_ '#f))
          (declare (not safe))
          (pgetq__% _key55411_ _lst55412_ _default55414_))))
    (define pgetq
      (lambda _g57075_
        (let ((_g57074_ (let () (declare (not safe)) (##length _g57075_))))
          (cond ((let () (declare (not safe)) (##fx= _g57074_ 2))
                 (apply (lambda (_key55411_ _lst55412_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key55411_ _lst55412_)))
                        _g57075_))
                ((let () (declare (not safe)) (##fx= _g57074_ 3))
                 (apply (lambda (_key55416_ _lst55417_ _default55418_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key55416_ _lst55417_ _default55418_)))
                        _g57075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g57075_))))))
    (define pgetv__%
      (lambda (_key55279_ _lst55281_ _default55283_)
        (let _lp55286_ ((_rest55289_ _lst55281_))
          (let* ((_rest5529155301_ _rest55289_)
                 (_else5529355309_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55283_))
                        (_default55283_ _key55279_)
                        _default55283_)))
                 (_K5529555318_
                  (lambda (_rest55312_ _v55313_ _k55315_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k55315_ _key55279_))
                        _v55313_
                        (let ()
                          (declare (not safe))
                          (_lp55286_ _rest55312_))))))
            (if (let () (declare (not safe)) (##pair? _rest5529155301_))
                (let ((_hd5529655321_
                       (let () (declare (not safe)) (##car _rest5529155301_)))
                      (_tl5529755323_
                       (let () (declare (not safe)) (##cdr _rest5529155301_))))
                  (let ((_k55326_ _hd5529655321_))
                    (if (let () (declare (not safe)) (##pair? _tl5529755323_))
                        (let ((_hd5529855328_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5529755323_)))
                              (_tl5529955330_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5529755323_))))
                          (let* ((_v55333_ _hd5529855328_)
                                 (_rest55335_ _tl5529955330_))
                            (declare (not safe))
                            (_K5529555318_ _rest55335_ _v55333_ _k55326_)))
                        (let () (declare (not safe)) (_else5529355309_)))))
                (let () (declare (not safe)) (_else5529355309_)))))))
    (define pgetv__0
      (lambda (_key55340_ _lst55341_)
        (let ((_default55343_ '#f))
          (declare (not safe))
          (pgetv__% _key55340_ _lst55341_ _default55343_))))
    (define pgetv
      (lambda _g57077_
        (let ((_g57076_ (let () (declare (not safe)) (##length _g57077_))))
          (cond ((let () (declare (not safe)) (##fx= _g57076_ 2))
                 (apply (lambda (_key55340_ _lst55341_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key55340_ _lst55341_)))
                        _g57077_))
                ((let () (declare (not safe)) (##fx= _g57076_ 3))
                 (apply (lambda (_key55345_ _lst55346_ _default55347_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key55345_ _lst55346_ _default55347_)))
                        _g57077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g57077_))))))
    (define pget__%
      (lambda (_key55208_ _lst55210_ _default55212_)
        (let _lp55215_ ((_rest55218_ _lst55210_))
          (let* ((_rest5522055230_ _rest55218_)
                 (_else5522255238_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55212_))
                        (_default55212_ _key55208_)
                        _default55212_)))
                 (_K5522455247_
                  (lambda (_rest55241_ _v55242_ _k55244_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k55244_ _key55208_))
                        _v55242_
                        (let ()
                          (declare (not safe))
                          (_lp55215_ _rest55241_))))))
            (if (let () (declare (not safe)) (##pair? _rest5522055230_))
                (let ((_hd5522555250_
                       (let () (declare (not safe)) (##car _rest5522055230_)))
                      (_tl5522655252_
                       (let () (declare (not safe)) (##cdr _rest5522055230_))))
                  (let ((_k55255_ _hd5522555250_))
                    (if (let () (declare (not safe)) (##pair? _tl5522655252_))
                        (let ((_hd5522755257_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5522655252_)))
                              (_tl5522855259_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5522655252_))))
                          (let* ((_v55262_ _hd5522755257_)
                                 (_rest55264_ _tl5522855259_))
                            (declare (not safe))
                            (_K5522455247_ _rest55264_ _v55262_ _k55255_)))
                        (let () (declare (not safe)) (_else5522255238_)))))
                (let () (declare (not safe)) (_else5522255238_)))))))
    (define pget__0
      (lambda (_key55269_ _lst55270_)
        (let ((_default55272_ '#f))
          (declare (not safe))
          (pget__% _key55269_ _lst55270_ _default55272_))))
    (define pget
      (lambda _g57079_
        (let ((_g57078_ (let () (declare (not safe)) (##length _g57079_))))
          (cond ((let () (declare (not safe)) (##fx= _g57078_ 2))
                 (apply (lambda (_key55269_ _lst55270_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key55269_ _lst55270_)))
                        _g57079_))
                ((let () (declare (not safe)) (##fx= _g57078_ 3))
                 (apply (lambda (_key55274_ _lst55275_ _default55276_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key55274_ _lst55275_ _default55276_)))
                        _g57079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g57079_))))))
    (define find
      (lambda (_pred55201_ _lst55202_)
        (let ((_$e55204_
               (let () (declare (not safe)) (memf _pred55201_ _lst55202_))))
          (if _$e55204_ (car _$e55204_) '#f))))
    (define memf
      (lambda (_proc55161_ _lst55162_)
        (let _lp55164_ ((_rest55166_ _lst55162_))
          (let* ((_rest5516755175_ _rest55166_)
                 (_else5516955183_ (lambda () '#f))
                 (_K5517155189_
                  (lambda (_tl55186_ _hd55187_)
                    (if (_proc55161_ _hd55187_)
                        _rest55166_
                        (let () (declare (not safe)) (_lp55164_ _tl55186_))))))
            (if (let () (declare (not safe)) (##pair? _rest5516755175_))
                (let ((_hd5517255192_
                       (let () (declare (not safe)) (##car _rest5516755175_)))
                      (_tl5517355194_
                       (let () (declare (not safe)) (##cdr _rest5516755175_))))
                  (let* ((_hd55197_ _hd5517255192_) (_tl55199_ _tl5517355194_))
                    (declare (not safe))
                    (_K5517155189_ _tl55199_ _hd55197_)))
                (let () (declare (not safe)) (_else5516955183_)))))))
    (define remove1
      (lambda (_el55114_ _lst55116_)
        (let _lp55119_ ((_rest55122_ _lst55116_) (_r55124_ '()))
          (let* ((_rest5512655134_ _rest55122_)
                 (_else5512855142_ (lambda () _lst55116_))
                 (_K5513055149_
                  (lambda (_rest55145_ _hd55146_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el55114_ _hd55146_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55145_ _r55124_))
                        (let ((__tmp57080
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55146_ _r55124_))))
                          (declare (not safe))
                          (_lp55119_ _rest55145_ __tmp57080))))))
            (if (let () (declare (not safe)) (##pair? _rest5512655134_))
                (let ((_hd5513155152_
                       (let () (declare (not safe)) (##car _rest5512655134_)))
                      (_tl5513255154_
                       (let () (declare (not safe)) (##cdr _rest5512655134_))))
                  (let* ((_hd55157_ _hd5513155152_)
                         (_rest55159_ _tl5513255154_))
                    (declare (not safe))
                    (_K5513055149_ _rest55159_ _hd55157_)))
                (let () (declare (not safe)) (_else5512855142_)))))))
    (define remv
      (lambda (_el55067_ _lst55069_)
        (let _lp55072_ ((_rest55075_ _lst55069_) (_r55077_ '()))
          (let* ((_rest5507955087_ _rest55075_)
                 (_else5508155095_ (lambda () _lst55069_))
                 (_K5508355102_
                  (lambda (_rest55098_ _hd55099_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el55067_ _hd55099_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55098_ _r55077_))
                        (let ((__tmp57081
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55099_ _r55077_))))
                          (declare (not safe))
                          (_lp55072_ _rest55098_ __tmp57081))))))
            (if (let () (declare (not safe)) (##pair? _rest5507955087_))
                (let ((_hd5508455105_
                       (let () (declare (not safe)) (##car _rest5507955087_)))
                      (_tl5508555107_
                       (let () (declare (not safe)) (##cdr _rest5507955087_))))
                  (let* ((_hd55110_ _hd5508455105_)
                         (_rest55112_ _tl5508555107_))
                    (declare (not safe))
                    (_K5508355102_ _rest55112_ _hd55110_)))
                (let () (declare (not safe)) (_else5508155095_)))))))
    (define remq
      (lambda (_el55020_ _lst55022_)
        (let _lp55025_ ((_rest55028_ _lst55022_) (_r55030_ '()))
          (let* ((_rest5503255040_ _rest55028_)
                 (_else5503455048_ (lambda () _lst55022_))
                 (_K5503655055_
                  (lambda (_rest55051_ _hd55052_)
                    (if (let () (declare (not safe)) (eq? _el55020_ _hd55052_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55051_ _r55030_))
                        (let ((__tmp57082
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55052_ _r55030_))))
                          (declare (not safe))
                          (_lp55025_ _rest55051_ __tmp57082))))))
            (if (let () (declare (not safe)) (##pair? _rest5503255040_))
                (let ((_hd5503755058_
                       (let () (declare (not safe)) (##car _rest5503255040_)))
                      (_tl5503855060_
                       (let () (declare (not safe)) (##cdr _rest5503255040_))))
                  (let* ((_hd55063_ _hd5503755058_)
                         (_rest55065_ _tl5503855060_))
                    (declare (not safe))
                    (_K5503655055_ _rest55065_ _hd55063_)))
                (let () (declare (not safe)) (_else5503455048_)))))))
    (define remf
      (lambda (_proc54979_ _lst54980_)
        (let _lp54982_ ((_rest54984_ _lst54980_) (_r54985_ '()))
          (let* ((_rest5498654994_ _rest54984_)
                 (_else5498855002_ (lambda () _lst54980_))
                 (_K5499055008_
                  (lambda (_rest55005_ _hd55006_)
                    (if (_proc54979_ _hd55006_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55005_ _r54985_))
                        (let ((__tmp57083
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55006_ _r54985_))))
                          (declare (not safe))
                          (_lp54982_ _rest55005_ __tmp57083))))))
            (if (let () (declare (not safe)) (##pair? _rest5498654994_))
                (let ((_hd5499155011_
                       (let () (declare (not safe)) (##car _rest5498654994_)))
                      (_tl5499255013_
                       (let () (declare (not safe)) (##cdr _rest5498654994_))))
                  (let* ((_hd55016_ _hd5499155011_)
                         (_rest55018_ _tl5499255013_))
                    (declare (not safe))
                    (_K5499055008_ _rest55018_ _hd55016_)))
                (let () (declare (not safe)) (_else5498855002_)))))))
    (define 1+ (lambda (_x54977_) (+ _x54977_ '1)))
    (define 1- (lambda (_x54975_) (- _x54975_ '1)))
    (define fx1+ (lambda (_x54973_) (fx+ _x54973_ '1)))
    (define fx1- (lambda (_x54971_) (fx- _x54971_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x54969_)
        (if (let () (declare (not safe)) (fixnum? _x54969_))
            (let () (declare (not safe)) (##fx>= _x54969_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x54967_)
        (if (let () (declare (not safe)) (fixnum? _x54967_))
            (let () (declare (not safe)) (##fx> _x54967_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x54965_) (let () (declare (not safe)) (eq? _x54965_ '0))))
    (define fx<0?
      (lambda (_x54963_)
        (if (let () (declare (not safe)) (fixnum? _x54963_))
            (let () (declare (not safe)) (##fx< _x54963_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x54961_)
        (if (let () (declare (not safe)) (fixnum? _x54961_))
            (let () (declare (not safe)) (##fx<= _x54961_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x54959_)
        (if (let () (declare (not safe)) (symbol? _x54959_))
            (let ((__tmp57084 (uninterned-symbol? _x54959_)))
              (declare (not safe))
              (not __tmp57084))
            '#f)))
    (define display-as-string
      (lambda (_x54931_ _port54932_)
        (if (or (let () (declare (not safe)) (string? _x54931_))
                (let () (declare (not safe)) (symbol? _x54931_))
                (keyword? _x54931_)
                (let () (declare (not safe)) (number? _x54931_))
                (let () (declare (not safe)) (char? _x54931_)))
            (display _x54931_ _port54932_)
            (if (let () (declare (not safe)) (pair? _x54931_))
                (begin
                  (let ((__tmp57085 (car _x54931_)))
                    (declare (not safe))
                    (display-as-string __tmp57085 _port54932_))
                  (let ((__tmp57086 (cdr _x54931_)))
                    (declare (not safe))
                    (display-as-string __tmp57086 _port54932_)))
                (if (let () (declare (not safe)) (vector? _x54931_))
                    (vector-for-each
                     (lambda (_g5494554947_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5494554947_ _port54932_)))
                     _x54931_)
                    (if (or (let () (declare (not safe)) (null? _x54931_))
                            (let ()
                              (declare (not safe))
                              (eq? _x54931_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x54931_))
                            (let () (declare (not safe)) (boolean? _x54931_)))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot convert as string" _x54931_))))))))
    (define as-string__0
      (lambda (_x54919_)
        (if (let () (declare (not safe)) (string? _x54919_))
            _x54919_
            (if (let () (declare (not safe)) (symbol? _x54919_))
                (symbol->string _x54919_)
                (if (keyword? _x54919_)
                    (keyword->string _x54919_)
                    (call-with-output-string
                     '()
                     (lambda (_g5492054922_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x54919_ _g5492054922_)))))))))
    (define as-string__1
      (lambda _args54925_
        (call-with-output-string
         '()
         (lambda (_g5492654928_)
           (let ()
             (declare (not safe))
             (display-as-string _args54925_ _g5492654928_))))))
    (define as-string
      (lambda _g57088_
        (let ((_g57087_ (let () (declare (not safe)) (##length _g57088_))))
          (cond ((let () (declare (not safe)) (##fx= _g57087_ 1))
                 (apply (lambda (_x54919_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x54919_)))
                        _g57088_))
                (#t (apply as-string__1 _g57088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g57088_))))))
    (define make-symbol__0
      (lambda (_x54915_)
        (if (interned-symbol? _x54915_)
            _x54915_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x54915_))))))
    (define make-symbol__1
      (lambda _args54917_ (string->symbol (apply as-string _args54917_))))
    (define make-symbol
      (lambda _g57090_
        (let ((_g57089_ (let () (declare (not safe)) (##length _g57090_))))
          (cond ((let () (declare (not safe)) (##fx= _g57089_ 1))
                 (apply (lambda (_x54915_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x54915_)))
                        _g57090_))
                (#t (apply make-symbol__1 _g57090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g57090_))))))
    (define make-keyword__0
      (lambda (_x54911_)
        (if (interned-keyword? _x54911_)
            _x54911_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x54911_))))))
    (define make-keyword__1
      (lambda _args54913_ (string->keyword (apply as-string _args54913_))))
    (define make-keyword
      (lambda _g57092_
        (let ((_g57091_ (let () (declare (not safe)) (##length _g57092_))))
          (cond ((let () (declare (not safe)) (##fx= _g57091_ 1))
                 (apply (lambda (_x54911_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x54911_)))
                        _g57092_))
                (#t (apply make-keyword__1 _g57092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g57092_))))))
    (define interned-keyword?
      (lambda (_x54909_)
        (if (keyword? _x54909_)
            (let ((__tmp57093 (uninterned-keyword? _x54909_)))
              (declare (not safe))
              (not __tmp57093))
            '#f)))
    (define symbol->keyword
      (lambda (_sym54907_)
        ((if (uninterned-symbol? _sym54907_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym54907_))))
    (define keyword->symbol
      (lambda (_kw54905_)
        ((if (uninterned-keyword? _kw54905_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw54905_))))
    (define bytes->string__%
      (lambda (_bstr54883_ _enc54884_)
        (if (let () (declare (not safe)) (eq? _enc54884_ 'UTF-8))
            (utf8->string _bstr54883_)
            (let* ((_in54886_
                    (open-input-u8vector
                     (let ((__tmp57094
                            (let ((__tmp57095
                                   (let ((__tmp57096
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr54883_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp57096))))
                              (declare (not safe))
                              (cons _enc54884_ __tmp57095))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp57094))))
                   (_len54888_ (u8vector-length _bstr54883_))
                   (_out54890_ (make-string _len54888_))
                   (_n54892_
                    (read-substring _out54890_ '0 _len54888_ _in54886_)))
              (string-shrink! _out54890_ _n54892_)
              _out54890_))))
    (define bytes->string__0
      (lambda (_bstr54898_)
        (let ((_enc54900_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr54898_ _enc54900_))))
    (define bytes->string
      (lambda _g57098_
        (let ((_g57097_ (let () (declare (not safe)) (##length _g57098_))))
          (cond ((let () (declare (not safe)) (##fx= _g57097_ 1))
                 (apply (lambda (_bstr54898_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr54898_)))
                        _g57098_))
                ((let () (declare (not safe)) (##fx= _g57097_ 2))
                 (apply (lambda (_bstr54902_ _enc54903_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr54902_ _enc54903_)))
                        _g57098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g57098_))))))
    (define string->bytes__%
      (lambda (_str54869_ _enc54870_)
        (if (let () (declare (not safe)) (eq? _enc54870_ 'UTF-8))
            (string->utf8 _str54869_)
            (substring->bytes
             _str54869_
             '0
             (string-length _str54869_)
             _enc54870_))))
    (define string->bytes__0
      (lambda (_str54875_)
        (let ((_enc54877_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str54875_ _enc54877_))))
    (define string->bytes
      (lambda _g57100_
        (let ((_g57099_ (let () (declare (not safe)) (##length _g57100_))))
          (cond ((let () (declare (not safe)) (##fx= _g57099_ 1))
                 (apply (lambda (_str54875_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str54875_)))
                        _g57100_))
                ((let () (declare (not safe)) (##fx= _g57099_ 2))
                 (apply (lambda (_str54879_ _enc54880_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str54879_ _enc54880_)))
                        _g57100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g57100_))))))
    (define substring->bytes__%
      (lambda (_str54847_ _start54848_ _end54849_ _enc54850_)
        (if (let () (declare (not safe)) (eq? _enc54850_ 'UTF-8))
            (string->utf8 _str54847_ _start54848_ _end54849_)
            (let ((_out54852_
                   (open-output-u8vector
                    (let ((__tmp57101
                           (let ()
                             (declare (not safe))
                             (cons _enc54850_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp57101)))))
              (write-substring _str54847_ _start54848_ _end54849_ _out54852_)
              (get-output-u8vector _out54852_)))))
    (define substring->bytes__0
      (lambda (_str54857_ _start54858_ _end54859_)
        (let ((_enc54861_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str54857_
           _start54858_
           _end54859_
           _enc54861_))))
    (define substring->bytes
      (lambda _g57103_
        (let ((_g57102_ (let () (declare (not safe)) (##length _g57103_))))
          (cond ((let () (declare (not safe)) (##fx= _g57102_ 3))
                 (apply (lambda (_str54857_ _start54858_ _end54859_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str54857_
                             _start54858_
                             _end54859_)))
                        _g57103_))
                ((let () (declare (not safe)) (##fx= _g57102_ 4))
                 (apply (lambda (_str54863_ _start54864_ _end54865_ _enc54866_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str54863_
                             _start54864_
                             _end54865_
                             _enc54866_)))
                        _g57103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g57103_))))))
    (define string-empty?
      (lambda (_str54844_)
        (let ((__tmp57104 (string-length _str54844_)))
          (declare (not safe))
          (##fxzero? __tmp57104))))
    (define string-prefix?
      (lambda (_prefix54834_ _str54835_)
        (let ((_str-len54837_ (string-length _str54835_))
              (_prefix-len54838_ (string-length _prefix54834_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len54838_ _str-len54837_))
              (let _lp54840_ ((_i54842_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i54842_ _prefix-len54838_))
                    (if (let ((__tmp57107
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str54835_ _i54842_)))
                              (__tmp57106
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix54834_ _i54842_))))
                          (declare (not safe))
                          (eq? __tmp57107 __tmp57106))
                        (let ((__tmp57105
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i54842_ '1))))
                          (declare (not safe))
                          (_lp54840_ __tmp57105))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str54812_ _char54813_ _start54814_)
        (let ((_len54816_ (string-length _str54812_)))
          (let _lp54818_ ((_k54820_ _start54814_))
            (if (let () (declare (not safe)) (##fx< _k54820_ _len54816_))
                (if (let ((__tmp57109
                           (let ()
                             (declare (not safe))
                             (##string-ref _str54812_ _k54820_))))
                      (declare (not safe))
                      (eq? _char54813_ __tmp57109))
                    _k54820_
                    (let ((__tmp57108
                           (let () (declare (not safe)) (##fx+ _k54820_ '1))))
                      (declare (not safe))
                      (_lp54818_ __tmp57108)))
                '#f)))))
    (define string-index__0
      (lambda (_str54825_ _char54826_)
        (let ((_start54828_ '0))
          (declare (not safe))
          (string-index__% _str54825_ _char54826_ _start54828_))))
    (define string-index
      (lambda _g57111_
        (let ((_g57110_ (let () (declare (not safe)) (##length _g57111_))))
          (cond ((let () (declare (not safe)) (##fx= _g57110_ 2))
                 (apply (lambda (_str54825_ _char54826_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str54825_ _char54826_)))
                        _g57111_))
                ((let () (declare (not safe)) (##fx= _g57110_ 3))
                 (apply (lambda (_str54830_ _char54831_ _start54832_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str54830_
                             _char54831_
                             _start54832_)))
                        _g57111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g57111_))))))
    (define string-rindex__%
      (lambda (_str54783_ _char54784_ _start54785_)
        (let* ((_len54787_ (string-length _str54783_))
               (_start54792_
                (let ((_$e54789_ _start54785_))
                  (if _$e54789_
                      _$e54789_
                      (let () (declare (not safe)) (##fx- _len54787_ '1))))))
          (let _lp54795_ ((_k54797_ _start54792_))
            (if (let () (declare (not safe)) (##fx>= _k54797_ '0))
                (if (let ((__tmp57113
                           (let ()
                             (declare (not safe))
                             (##string-ref _str54783_ _k54797_))))
                      (declare (not safe))
                      (eq? _char54784_ __tmp57113))
                    _k54797_
                    (let ((__tmp57112
                           (let () (declare (not safe)) (##fx- _k54797_ '1))))
                      (declare (not safe))
                      (_lp54795_ __tmp57112)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str54802_ _char54803_)
        (let ((_start54805_ '#f))
          (declare (not safe))
          (string-rindex__% _str54802_ _char54803_ _start54805_))))
    (define string-rindex
      (lambda _g57115_
        (let ((_g57114_ (let () (declare (not safe)) (##length _g57115_))))
          (cond ((let () (declare (not safe)) (##fx= _g57114_ 2))
                 (apply (lambda (_str54802_ _char54803_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str54802_ _char54803_)))
                        _g57115_))
                ((let () (declare (not safe)) (##fx= _g57114_ 3))
                 (apply (lambda (_str54807_ _char54808_ _start54809_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str54807_
                             _char54808_
                             _start54809_)))
                        _g57115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g57115_))))))
    (define string-split
      (lambda (_str54767_ _char54768_)
        (let ((_len54770_ (string-length _str54767_)))
          (let _lp54772_ ((_start54774_ '0) (_r54775_ '()))
            (let ((_$e54777_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str54767_ _char54768_ _start54774_))))
              (if _$e54777_
                  ((lambda (_end54780_)
                     (let ((__tmp57119
                            (let ()
                              (declare (not safe))
                              (##fx+ _end54780_ '1)))
                           (__tmp57117
                            (let ((__tmp57118
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str54767_
                                      _start54774_
                                      _end54780_))))
                              (declare (not safe))
                              (cons __tmp57118 _r54775_))))
                       (declare (not safe))
                       (_lp54772_ __tmp57119 __tmp57117)))
                   _$e54777_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start54774_ _len54770_))
                      (let ((__tmp57116
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str54767_
                                      _start54774_
                                      _len54770_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp57116 _r54775_))
                      (reverse _r54775_))))))))
    (define string-join
      (lambda (_strs54672_ _join54673_)
        (letrec ((_join-length54675_
                  (lambda (_strs54726_ _jlen54727_)
                    (let _lp54729_ ((_rest54731_ _strs54726_) (_len54732_ '0))
                      (let* ((_rest5473354741_ _rest54731_)
                             (_else5473554749_ (lambda () '0))
                             (_K5473754755_
                              (lambda (_rest54752_ _hd54753_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd54753_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest54752_))
                                        (let ((__tmp57121
                                               (let ((__tmp57122
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd54753_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp57122
                                                        _jlen54727_
                                                        _len54732_))))
                                          (declare (not safe))
                                          (_lp54729_ _rest54752_ __tmp57121))
                                        (let ((__tmp57120
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd54753_))))
                                          (declare (not safe))
                                          (##fx+ __tmp57120 _len54732_)))
                                    (let ()
                                      (declare (not safe))
                                      (error '"expected string" _hd54753_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5473354741_))
                            (let ((_hd5473854758_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5473354741_)))
                                  (_tl5473954760_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5473354741_))))
                              (let* ((_hd54763_ _hd5473854758_)
                                     (_rest54765_ _tl5473954760_))
                                (declare (not safe))
                                (_K5473754755_ _rest54765_ _hd54763_)))
                            (let ()
                              (declare (not safe))
                              (_else5473554749_))))))))
          (let* ((_join54677_
                  (if (let () (declare (not safe)) (char? _join54673_))
                      (string _join54673_)
                      (if (let () (declare (not safe)) (string? _join54673_))
                          _join54673_
                          (let ()
                            (declare (not safe))
                            (error '"expected string or char" _join54673_)))))
                 (_jlen54679_
                  (let () (declare (not safe)) (##string-length _join54677_)))
                 (_olen54681_
                  (let ()
                    (declare (not safe))
                    (_join-length54675_ _strs54672_ _jlen54679_)))
                 (_ostr54683_ (make-string _olen54681_)))
            (let _lp54686_ ((_rest54688_ _strs54672_) (_k54689_ '0))
              (let* ((_rest5469054698_ _rest54688_)
                     (_else5469254706_ (lambda () '""))
                     (_K5469454714_
                      (lambda (_rest54709_ _hd54710_)
                        (let ((_hdlen54712_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd54710_))))
                          (if (let () (declare (not safe)) (pair? _rest54709_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54710_
                                   '0
                                   _hdlen54712_
                                   _ostr54683_
                                   _k54689_))
                                (let ((__tmp57123
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54689_ _hdlen54712_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join54677_
                                   '0
                                   _jlen54679_
                                   _ostr54683_
                                   __tmp57123))
                                (let ((__tmp57124
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54689_
                                                _hdlen54712_
                                                _jlen54679_))))
                                  (declare (not safe))
                                  (_lp54686_ _rest54709_ __tmp57124)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54710_
                                   '0
                                   _hdlen54712_
                                   _ostr54683_
                                   _k54689_))
                                _ostr54683_))))))
                (if (let () (declare (not safe)) (##pair? _rest5469054698_))
                    (let ((_hd5469554717_
                           (let ()
                             (declare (not safe))
                             (##car _rest5469054698_)))
                          (_tl5469654719_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5469054698_))))
                      (let* ((_hd54722_ _hd5469554717_)
                             (_rest54724_ _tl5469654719_))
                        (declare (not safe))
                        (_K5469454714_ _rest54724_ _hd54722_)))
                    (let () (declare (not safe)) (_else5469254706_)))))))))
    (define read-u8vector
      (lambda (_bytes54669_ _port54670_)
        (read-subu8vector
         _bytes54669_
         '0
         (u8vector-length _bytes54669_)
         _port54670_)))
    (define write-u8vector
      (lambda (_bytes54666_ _port54667_)
        (write-subu8vector
         _bytes54666_
         '0
         (u8vector-length _bytes54666_)
         _port54667_)))
    (define read-string
      (lambda (_str54663_ _port54664_)
        (read-substring _str54663_ '0 (string-length _str54663_) _port54664_)))
    (define write-string
      (lambda (_str54660_ _port54661_)
        (write-substring
         _str54660_
         '0
         (string-length _str54660_)
         _port54661_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag54629_
               _dbg-exprs54630_
               _dbg-thunks54631_
               _expr54632_
               _thunk54633_)
        (letrec ((_o54635_ (current-output-port))
                 (_e54636_ (current-error-port))
                 (_p54637_ (DBG-printer))
                 (_f54638_
                  (lambda () (force-output _o54635_) (force-output _e54636_)))
                 (_d54639_ (lambda (_x54646_) (display _x54646_ _e54636_)))
                 (_w54640_ (lambda (_x54648_) (_p54637_ _x54648_ _e54636_)))
                 (_n54641_ (lambda () (newline _e54636_)))
                 (_v54642_
                  (lambda (_l54651_)
                    (for-each
                     (lambda (_x54653_)
                       (let () (declare (not safe)) (_d54639_ '" "))
                       (let () (declare (not safe)) (_w54640_ _x54653_)))
                     _l54651_)
                    (let () (declare (not safe)) (_n54641_))))
                 (_x54643_
                  (lambda (_expr54655_ _thunk54656_)
                    (let () (declare (not safe)) (_f54638_))
                    (let () (declare (not safe)) (_d54639_ '"  "))
                    (let () (declare (not safe)) (_w54640_ _expr54655_))
                    (let () (declare (not safe)) (_d54639_ '" =>"))
                    (call-with-values
                     _thunk54656_
                     (lambda _x54658_
                       (let () (declare (not safe)) (_v54642_ _x54658_))
                       (let () (declare (not safe)) (_f54638_))
                       (apply values _x54658_))))))
          (if _tag54629_
              (begin
                (if (let () (declare (not safe)) (eq? _tag54629_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f54638_))
                      (let () (declare (not safe)) (_d54639_ _tag54629_))
                      (let () (declare (not safe)) (_n54641_))))
                (for-each _x54643_ _dbg-exprs54630_ _dbg-thunks54631_)
                (if _thunk54633_
                    (let ()
                      (declare (not safe))
                      (_x54643_ _expr54632_ _thunk54633_))
                    '#!void))
              (if _thunk54633_ (_thunk54633_) '#!void)))))))
