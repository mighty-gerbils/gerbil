(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1710781148)
  (begin
    (define displayln
      (lambda _args57303_
        (let _lp57305_ ((_rest57307_ _args57303_))
          (let* ((_rest5730857316_ _rest57307_)
                 (_else5731057324_ (lambda () (newline)))
                 (_K5731257330_
                  (lambda (_rest57327_ _hd57328_)
                    (display _hd57328_)
                    (let () (declare (not safe)) (_lp57305_ _rest57327_)))))
            (if (let () (declare (not safe)) (##pair? _rest5730857316_))
                (let ((_hd5731357333_
                       (let () (declare (not safe)) (##car _rest5730857316_)))
                      (_tl5731457335_
                       (let () (declare (not safe)) (##cdr _rest5730857316_))))
                  (let* ((_hd57338_ _hd5731357333_)
                         (_rest57340_ _tl5731457335_))
                    (declare (not safe))
                    (_K5731257330_ _rest57340_ _hd57338_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args57301_ (for-each display _args57301_)))
    (define file-newer?
      (lambda (_file157294_ _file257295_)
        (letrec ((_modification-time57297_
                  (lambda (_file57299_)
                    (let ((__tmp57724
                           (file-info-last-modification-time
                            (file-info _file57299_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp57724)))))
          (let ((__tmp57726
                 (let ()
                   (declare (not safe))
                   (_modification-time57297_ _file157294_)))
                (__tmp57725
                 (let ()
                   (declare (not safe))
                   (_modification-time57297_ _file257295_))))
            (declare (not safe))
            (##fl> __tmp57726 __tmp57725)))))
    (define create-directory*__%
      (lambda (_dir57268_ _perms57269_)
        (letrec ((_create157271_
                  (lambda (_path57282_)
                    (if (file-exists? _path57282_)
                        (if (let ((__tmp57727 (file-type _path57282_)))
                              (declare (not safe))
                              (eq? __tmp57727 'directory))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"Path component is not a directory"
                                     _path57282_)))
                        (if _perms57269_
                            (create-directory
                             (list 'path:
                                   _path57282_
                                   'permissions:
                                   _perms57269_))
                            (create-directory _path57282_))))))
          (if (file-exists? _dir57268_)
              '#!void
              (let _lp57273_ ((_start57275_ '0))
                (let ((_$e57277_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir57268_ '#\/ _start57275_))))
                  (if _$e57277_
                      ((lambda (_x57280_)
                         (if (let () (declare (not safe)) (##fx> _x57280_ '0))
                             (let ((__tmp57728
                                    (substring _dir57268_ '0 _x57280_)))
                               (declare (not safe))
                               (_create157271_ __tmp57728))
                             '#!void)
                         (let ((__tmp57729
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x57280_ '1))))
                           (declare (not safe))
                           (_lp57273_ __tmp57729)))
                       _$e57277_)
                      (let ()
                        (declare (not safe))
                        (_create157271_ _dir57268_)))))))))
    (define create-directory*__0
      (lambda (_dir57287_)
        (let ((_perms57289_ '493))
          (declare (not safe))
          (create-directory*__% _dir57287_ _perms57289_))))
    (define create-directory*
      (lambda _g57731_
        (let ((_g57730_ (let () (declare (not safe)) (##length _g57731_))))
          (cond ((let () (declare (not safe)) (##fx= _g57730_ 1))
                 (apply (lambda (_dir57287_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir57287_)))
                        _g57731_))
                ((let () (declare (not safe)) (##fx= _g57730_ 2))
                 (apply (lambda (_dir57291_ _perms57292_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir57291_ _perms57292_)))
                        _g57731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g57731_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g57732_ '#t))
    (define true?
      (lambda (_obj57264_) (let () (declare (not safe)) (eq? _obj57264_ '#t))))
    (define false (lambda _g57733_ '#f))
    (define void (lambda _g57734_ '#!void))
    (define void?
      (lambda (_obj57260_)
        (let () (declare (not safe)) (eq? _obj57260_ '#!void))))
    (define dssl-object?
      (lambda (_obj57258_)
        (if (memq _obj57258_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj57256_)
        (let () (declare (not safe)) (eq? _obj57256_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj57254_)
        (let () (declare (not safe)) (eq? _obj57254_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj57252_)
        (let () (declare (not safe)) (eq? _obj57252_ '#!optional))))
    (define immediate?
      (lambda (_obj57248_)
        (let* ((_t57250_ (let () (declare (not safe)) (##type _obj57248_)))
               (__tmp57735
                (let () (declare (not safe)) (##fxand _t57250_ '1))))
          (declare (not safe))
          (##fxzero? __tmp57735))))
    (define nonnegative-fixnum?
      (lambda (_obj57246_)
        (if (let () (declare (not safe)) (fixnum? _obj57246_))
            (let ((__tmp57736 (fxnegative? _obj57246_)))
              (declare (not safe))
              (not __tmp57736))
            '#f)))
    (define values-count
      (lambda (_obj57244_)
        (if (let () (declare (not safe)) (##values? _obj57244_))
            (let () (declare (not safe)) (##vector-length _obj57244_))
            '1)))
    (define values-ref
      (lambda (_obj57241_ _k57242_)
        (if (let () (declare (not safe)) (##values? _obj57241_))
            (let () (declare (not safe)) (##vector-ref _obj57241_ _k57242_))
            _obj57241_)))
    (define values->list
      (lambda (_obj57239_)
        (if (let () (declare (not safe)) (##values? _obj57239_))
            (let () (declare (not safe)) (##vector->list _obj57239_))
            (list _obj57239_))))
    (define subvector->list__%
      (lambda (_obj57224_ _start57225_)
        (let ((_lst57227_
               (let () (declare (not safe)) (##vector->list _obj57224_))))
          (list-tail _lst57227_ _start57225_))))
    (define subvector->list__0
      (lambda (_obj57232_)
        (let ((_start57234_ '0))
          (declare (not safe))
          (subvector->list__% _obj57232_ _start57234_))))
    (define subvector->list
      (lambda _g57738_
        (let ((_g57737_ (let () (declare (not safe)) (##length _g57738_))))
          (cond ((let () (declare (not safe)) (##fx= _g57737_ 1))
                 (apply (lambda (_obj57232_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj57232_)))
                        _g57738_))
                ((let () (declare (not safe)) (##fx= _g57737_ 2))
                 (apply (lambda (_obj57236_ _start57237_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj57236_ _start57237_)))
                        _g57738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g57738_))))))
    (define cons*
      (lambda (_x57214_ _y57215_ . _rest57216_)
        (letrec ((_recur57218_
                  (lambda (_x57220_ _rest57221_)
                    (if (let () (declare (not safe)) (pair? _rest57221_))
                        (let ((__tmp57739
                               (let ((__tmp57741
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest57221_)))
                                     (__tmp57740
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest57221_))))
                                 (declare (not safe))
                                 (_recur57218_ __tmp57741 __tmp57740))))
                          (declare (not safe))
                          (cons _x57220_ __tmp57739))
                        _x57220_))))
          (let ((__tmp57742
                 (let ()
                   (declare (not safe))
                   (_recur57218_ _y57215_ _rest57216_))))
            (declare (not safe))
            (cons _x57214_ __tmp57742)))))
    (define foldl1
      (lambda (_f57172_ _iv57173_ _lst57174_)
        (let _lp57176_ ((_rest57178_ _lst57174_) (_r57179_ _iv57173_))
          (let* ((_rest5718057188_ _rest57178_)
                 (_else5718257196_ (lambda () _r57179_))
                 (_K5718457202_
                  (lambda (_rest57199_ _x57200_)
                    (let ((__tmp57743 (_f57172_ _x57200_ _r57179_)))
                      (declare (not safe))
                      (_lp57176_ _rest57199_ __tmp57743)))))
            (if (let () (declare (not safe)) (##pair? _rest5718057188_))
                (let ((_hd5718557205_
                       (let () (declare (not safe)) (##car _rest5718057188_)))
                      (_tl5718657207_
                       (let () (declare (not safe)) (##cdr _rest5718057188_))))
                  (let* ((_x57210_ _hd5718557205_)
                         (_rest57212_ _tl5718657207_))
                    (declare (not safe))
                    (_K5718457202_ _rest57212_ _x57210_)))
                (let () (declare (not safe)) (_else5718257196_)))))))
    (define foldl2
      (lambda (_f57095_ _iv57096_ _lst157097_ _lst257098_)
        (let _lp57100_ ((_rest157102_ _lst157097_)
                        (_rest257103_ _lst257098_)
                        (_r57104_ _iv57096_))
          (let* ((_rest15710557113_ _rest157102_)
                 (_else5710757121_ (lambda () _r57104_))
                 (_K5710957160_
                  (lambda (_rest157124_ _x157125_)
                    (let* ((_rest25712657134_ _rest257103_)
                           (_else5712857142_ (lambda () _r57104_))
                           (_K5713057148_
                            (lambda (_rest257145_ _x257146_)
                              (let ((__tmp57744
                                     (_f57095_ _x157125_ _x257146_ _r57104_)))
                                (declare (not safe))
                                (_lp57100_
                                 _rest157124_
                                 _rest257145_
                                 __tmp57744)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25712657134_))
                          (let ((_hd5713157151_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25712657134_)))
                                (_tl5713257153_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25712657134_))))
                            (let* ((_x257156_ _hd5713157151_)
                                   (_rest257158_ _tl5713257153_))
                              (declare (not safe))
                              (_K5713057148_ _rest257158_ _x257156_)))
                          (let () (declare (not safe)) (_else5712857142_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15710557113_))
                (let ((_hd5711057163_
                       (let () (declare (not safe)) (##car _rest15710557113_)))
                      (_tl5711157165_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15710557113_))))
                  (let* ((_x157168_ _hd5711057163_)
                         (_rest157170_ _tl5711157165_))
                    (declare (not safe))
                    (_K5710957160_ _rest157170_ _x157168_)))
                (let () (declare (not safe)) (_else5710757121_)))))))
    (define foldl
      (lambda _g57746_
        (let ((_g57745_ (let () (declare (not safe)) (##length _g57746_))))
          (cond ((let () (declare (not safe)) (##fx= _g57745_ 3))
                 (apply (lambda (_f57080_ _iv57081_ _lst57082_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f57080_ _iv57081_ _lst57082_)))
                        _g57746_))
                ((let () (declare (not safe)) (##fx= _g57745_ 4))
                 (apply (lambda (_f57084_ _iv57085_ _lst157086_ _lst257087_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f57084_
                                    _iv57085_
                                    _lst157086_
                                    _lst257087_)))
                        _g57746_))
                ((let () (declare (not safe)) (##fx>= _g57745_ 4))
                 (apply foldl* _g57746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g57746_))))))
    (define foldl*
      (lambda (_f57068_ _iv57069_ . _rest57070_)
        (let _recur57072_ ((_iv57074_ _iv57069_) (_rest57075_ _rest57070_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57075_))
              (let ((__tmp57748
                     (apply _f57068_
                            (let ((__tmp57750
                                   (lambda (_xs57077_ _r57078_)
                                     (let ((__tmp57751 (car _xs57077_)))
                                       (declare (not safe))
                                       (cons __tmp57751 _r57078_))))
                                  (__tmp57749 (list _iv57074_)))
                              (declare (not safe))
                              (foldr1 __tmp57750 __tmp57749 _rest57075_))))
                    (__tmp57747 (map cdr _rest57075_)))
                (declare (not safe))
                (_recur57072_ __tmp57748 __tmp57747))
              _iv57074_))))
    (define foldr1
      (lambda (_f57027_ _iv57028_ _lst57029_)
        (let _recur57031_ ((_rest57033_ _lst57029_))
          (let* ((_rest5703457042_ _rest57033_)
                 (_else5703657050_ (lambda () _iv57028_))
                 (_K5703857056_
                  (lambda (_rest57053_ _x57054_)
                    (_f57027_
                     _x57054_
                     (let ()
                       (declare (not safe))
                       (_recur57031_ _rest57053_))))))
            (if (let () (declare (not safe)) (##pair? _rest5703457042_))
                (let ((_hd5703957059_
                       (let () (declare (not safe)) (##car _rest5703457042_)))
                      (_tl5704057061_
                       (let () (declare (not safe)) (##cdr _rest5703457042_))))
                  (let* ((_x57064_ _hd5703957059_)
                         (_rest57066_ _tl5704057061_))
                    (declare (not safe))
                    (_K5703857056_ _rest57066_ _x57064_)))
                (let () (declare (not safe)) (_else5703657050_)))))))
    (define foldr2
      (lambda (_f56951_ _iv56952_ _lst156953_ _lst256954_)
        (let _recur56956_ ((_rest156958_ _lst156953_)
                           (_rest256959_ _lst256954_))
          (let* ((_rest15696056968_ _rest156958_)
                 (_else5696256976_ (lambda () _iv56952_))
                 (_K5696457015_
                  (lambda (_rest156979_ _x156980_)
                    (let* ((_rest25698156989_ _rest256959_)
                           (_else5698356997_ (lambda () _iv56952_))
                           (_K5698557003_
                            (lambda (_rest257000_ _x257001_)
                              (_f56951_
                               _x156980_
                               _x257001_
                               (let ()
                                 (declare (not safe))
                                 (_recur56956_ _rest156979_ _rest257000_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25698156989_))
                          (let ((_hd5698657006_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25698156989_)))
                                (_tl5698757008_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25698156989_))))
                            (let* ((_x257011_ _hd5698657006_)
                                   (_rest257013_ _tl5698757008_))
                              (declare (not safe))
                              (_K5698557003_ _rest257013_ _x257011_)))
                          (let () (declare (not safe)) (_else5698356997_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15696056968_))
                (let ((_hd5696557018_
                       (let () (declare (not safe)) (##car _rest15696056968_)))
                      (_tl5696657020_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15696056968_))))
                  (let* ((_x157023_ _hd5696557018_)
                         (_rest157025_ _tl5696657020_))
                    (declare (not safe))
                    (_K5696457015_ _rest157025_ _x157023_)))
                (let () (declare (not safe)) (_else5696256976_)))))))
    (define foldr
      (lambda _g57753_
        (let ((_g57752_ (let () (declare (not safe)) (##length _g57753_))))
          (cond ((let () (declare (not safe)) (##fx= _g57752_ 3))
                 (apply (lambda (_f56936_ _iv56937_ _lst56938_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f56936_ _iv56937_ _lst56938_)))
                        _g57753_))
                ((let () (declare (not safe)) (##fx= _g57752_ 4))
                 (apply (lambda (_f56940_ _iv56941_ _lst156942_ _lst256943_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f56940_
                                    _iv56941_
                                    _lst156942_
                                    _lst256943_)))
                        _g57753_))
                ((let () (declare (not safe)) (##fx>= _g57752_ 4))
                 (apply foldr* _g57753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g57753_))))))
    (define foldr*
      (lambda (_f56925_ _iv56926_ . _rest56927_)
        (let _recur56929_ ((_rest56931_ _rest56927_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56931_))
              (apply _f56925_
                     (let ((__tmp57756
                            (lambda (_xs56933_ _r56934_)
                              (let ((__tmp57757 (car _xs56933_)))
                                (declare (not safe))
                                (cons __tmp57757 _r56934_))))
                           (__tmp57754
                            (list (let ((__tmp57755 (map cdr _rest56931_)))
                                    (declare (not safe))
                                    (_recur56929_ __tmp57755)))))
                       (declare (not safe))
                       (foldr1 __tmp57756 __tmp57754 _rest56931_)))
              _iv56926_))))
    (define remove-nulls!
      (lambda (_l56812_)
        (let* ((_l5681356826_ _l56812_)
               (_E5681756830_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _l5681356826_)))))
          (let ((_K5682256915_
                 (lambda (_r56913_)
                   (let () (declare (not safe)) (remove-nulls! _r56913_))))
                (_K5681956902_
                 (lambda (_r56842_)
                   (let _loop56844_ ((_l56846_ _l56812_) (_r56847_ _r56842_))
                     (let* ((_r5684856861_ _r56847_)
                            (_E5685256865_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _r5684856861_)))))
                       (let ((_K5685756892_
                              (lambda (_rr56890_)
                                (set-cdr!
                                 _l56846_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr56890_)))))
                             (_K5685456879_
                              (lambda (_rr56877_)
                                (let ()
                                  (declare (not safe))
                                  (_loop56844_ _r56847_ _rr56877_))))
                             (_K5685356870_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5684856861_))
                             (let ((_tl5685956897_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5684856861_)))
                                   (_hd5685856895_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5684856861_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5685856895_))
                                   (let ((_rr56900_ _tl5685956897_))
                                     (declare (not safe))
                                     (_K5685756892_ _rr56900_))
                                   (let ((_rr56885_ _tl5685956897_))
                                     (declare (not safe))
                                     (_K5685456879_ _rr56885_))))
                             '#!void))))
                   _l56812_))
                (_K5681856835_ (lambda () _l56812_)))
            (if (let () (declare (not safe)) (##pair? _l5681356826_))
                (let ((_tl5682456920_
                       (let () (declare (not safe)) (##cdr _l5681356826_)))
                      (_hd5682356918_
                       (let () (declare (not safe)) (##car _l5681356826_))))
                  (if (let () (declare (not safe)) (##null? _hd5682356918_))
                      (let ((_r56923_ _tl5682456920_))
                        (declare (not safe))
                        (remove-nulls! _r56923_))
                      (let ((_r56908_ _tl5682456920_))
                        (declare (not safe))
                        (_K5681956902_ _r56908_))))
                (let () (declare (not safe)) (_K5681856835_)))))))
    (define append1!
      (lambda (_l56807_ _x56808_)
        (let ((_l256810_ (let () (declare (not safe)) (cons _x56808_ '()))))
          (if (let () (declare (not safe)) (pair? _l56807_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l56807_))
               _l256810_)
              _l256810_))))
    (define append-reverse-until
      (lambda (_pred56760_ _rhead56761_ _tail56762_)
        (let _loop56764_ ((_rhead56766_ _rhead56761_)
                          (_tail56767_ _tail56762_))
          (let* ((_rhead5676856777_ _rhead56766_)
                 (_E5677156781_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rhead5676856777_)))))
            (let ((_K5677556804_ (lambda () (values '() _tail56767_)))
                  (_K5677256788_
                   (lambda (_r56785_ _a56786_)
                     (if (_pred56760_ _a56786_)
                         (values _rhead56766_ _tail56767_)
                         (let ((__tmp57758
                                (let ()
                                  (declare (not safe))
                                  (cons _a56786_ _tail56767_))))
                           (declare (not safe))
                           (_loop56764_ _r56785_ __tmp57758))))))
              (let ((_try-match5677056800_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5676856777_))
                           (let ((_tl5677456793_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5676856777_)))
                                 (_hd5677356791_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5676856777_))))
                             (let ((_a56796_ _hd5677356791_)
                                   (_r56798_ _tl5677456793_))
                               (let ()
                                 (declare (not safe))
                                 (_K5677256788_ _r56798_ _a56796_))))
                           (let () (declare (not safe)) (_E5677156781_))))))
                (if (let () (declare (not safe)) (##null? _rhead5676856777_))
                    (let () (declare (not safe)) (_K5677556804_))
                    (let ()
                      (declare (not safe))
                      (_try-match5677056800_)))))))))
    (define andmap1
      (lambda (_f56720_ _lst56721_)
        (let _lp56723_ ((_rest56725_ _lst56721_))
          (let* ((_rest5672656734_ _rest56725_)
                 (_else5672856742_ (lambda () '#t))
                 (_K5673056748_
                  (lambda (_rest56745_ _x56746_)
                    (if (_f56720_ _x56746_)
                        (let () (declare (not safe)) (_lp56723_ _rest56745_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5672656734_))
                (let ((_hd5673156751_
                       (let () (declare (not safe)) (##car _rest5672656734_)))
                      (_tl5673256753_
                       (let () (declare (not safe)) (##cdr _rest5672656734_))))
                  (let* ((_x56756_ _hd5673156751_)
                         (_rest56758_ _tl5673256753_))
                    (declare (not safe))
                    (_K5673056748_ _rest56758_ _x56756_)))
                (let () (declare (not safe)) (_else5672856742_)))))))
    (define andmap2
      (lambda (_f56645_ _lst156646_ _lst256647_)
        (let _lp56649_ ((_rest156651_ _lst156646_) (_rest256652_ _lst256647_))
          (let* ((_rest15665356661_ _rest156651_)
                 (_else5665556669_ (lambda () '#t))
                 (_K5665756708_
                  (lambda (_rest156672_ _x156673_)
                    (let* ((_rest25667456682_ _rest256652_)
                           (_else5667656690_ (lambda () '#t))
                           (_K5667856696_
                            (lambda (_rest256693_ _x256694_)
                              (if (_f56645_ _x156673_ _x256694_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp56649_ _rest156672_ _rest256693_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25667456682_))
                          (let ((_hd5667956699_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25667456682_)))
                                (_tl5668056701_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25667456682_))))
                            (let* ((_x256704_ _hd5667956699_)
                                   (_rest256706_ _tl5668056701_))
                              (declare (not safe))
                              (_K5667856696_ _rest256706_ _x256704_)))
                          (let () (declare (not safe)) (_else5667656690_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15665356661_))
                (let ((_hd5665856711_
                       (let () (declare (not safe)) (##car _rest15665356661_)))
                      (_tl5665956713_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15665356661_))))
                  (let* ((_x156716_ _hd5665856711_)
                         (_rest156718_ _tl5665956713_))
                    (declare (not safe))
                    (_K5665756708_ _rest156718_ _x156716_)))
                (let () (declare (not safe)) (_else5665556669_)))))))
    (define andmap
      (lambda _g57760_
        (let ((_g57759_ (let () (declare (not safe)) (##length _g57760_))))
          (cond ((let () (declare (not safe)) (##fx= _g57759_ 2))
                 (apply (lambda (_f56633_ _lst56634_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f56633_ _lst56634_)))
                        _g57760_))
                ((let () (declare (not safe)) (##fx= _g57759_ 3))
                 (apply (lambda (_f56636_ _lst156637_ _lst256638_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f56636_ _lst156637_ _lst256638_)))
                        _g57760_))
                ((let () (declare (not safe)) (##fx>= _g57759_ 3))
                 (apply andmap* _g57760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g57760_))))))
    (define andmap*
      (lambda (_f56626_ . _rest56627_)
        (let _recur56629_ ((_rest56631_ _rest56627_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56631_))
              (if (apply _f56626_ (map car _rest56631_))
                  (let ((__tmp57761 (map cdr _rest56631_)))
                    (declare (not safe))
                    (_recur56629_ __tmp57761))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f56583_ _lst56584_)
        (let _lp56586_ ((_rest56588_ _lst56584_))
          (let* ((_rest5658956597_ _rest56588_)
                 (_else5659156605_ (lambda () '#f))
                 (_K5659356614_
                  (lambda (_rest56608_ _x56609_)
                    (let ((_$e56611_ (_f56583_ _x56609_)))
                      (if _$e56611_
                          _$e56611_
                          (let ()
                            (declare (not safe))
                            (_lp56586_ _rest56608_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5658956597_))
                (let ((_hd5659456617_
                       (let () (declare (not safe)) (##car _rest5658956597_)))
                      (_tl5659556619_
                       (let () (declare (not safe)) (##cdr _rest5658956597_))))
                  (let* ((_x56622_ _hd5659456617_)
                         (_rest56624_ _tl5659556619_))
                    (declare (not safe))
                    (_K5659356614_ _rest56624_ _x56622_)))
                (let () (declare (not safe)) (_else5659156605_)))))))
    (define ormap2
      (lambda (_f56505_ _lst156506_ _lst256507_)
        (let _lp56509_ ((_rest156511_ _lst156506_) (_rest256512_ _lst256507_))
          (let* ((_rest15651356521_ _rest156511_)
                 (_else5651556529_ (lambda () '#f))
                 (_K5651756571_
                  (lambda (_rest156532_ _x156533_)
                    (let* ((_rest25653456542_ _rest256512_)
                           (_else5653656550_ (lambda () '#f))
                           (_K5653856559_
                            (lambda (_rest256553_ _x256554_)
                              (let ((_$e56556_ (_f56505_ _x156533_ _x256554_)))
                                (if _$e56556_
                                    _$e56556_
                                    (let ()
                                      (declare (not safe))
                                      (_lp56509_
                                       _rest156532_
                                       _rest256553_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25653456542_))
                          (let ((_hd5653956562_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25653456542_)))
                                (_tl5654056564_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25653456542_))))
                            (let* ((_x256567_ _hd5653956562_)
                                   (_rest256569_ _tl5654056564_))
                              (declare (not safe))
                              (_K5653856559_ _rest256569_ _x256567_)))
                          (let () (declare (not safe)) (_else5653656550_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15651356521_))
                (let ((_hd5651856574_
                       (let () (declare (not safe)) (##car _rest15651356521_)))
                      (_tl5651956576_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15651356521_))))
                  (let* ((_x156579_ _hd5651856574_)
                         (_rest156581_ _tl5651956576_))
                    (declare (not safe))
                    (_K5651756571_ _rest156581_ _x156579_)))
                (let () (declare (not safe)) (_else5651556529_)))))))
    (define ormap
      (lambda _g57763_
        (let ((_g57762_ (let () (declare (not safe)) (##length _g57763_))))
          (cond ((let () (declare (not safe)) (##fx= _g57762_ 2))
                 (apply (lambda (_f56493_ _lst56494_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f56493_ _lst56494_)))
                        _g57763_))
                ((let () (declare (not safe)) (##fx= _g57762_ 3))
                 (apply (lambda (_f56496_ _lst156497_ _lst256498_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f56496_ _lst156497_ _lst256498_)))
                        _g57763_))
                ((let () (declare (not safe)) (##fx>= _g57762_ 3))
                 (apply ormap* _g57763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g57763_))))))
    (define ormap*
      (lambda (_f56483_ . _rest56484_)
        (let _recur56486_ ((_rest56488_ _rest56484_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56488_))
              (let ((_$e56490_ (apply _f56483_ (map car _rest56488_))))
                (if _$e56490_
                    _$e56490_
                    (let ((__tmp57764 (map cdr _rest56488_)))
                      (declare (not safe))
                      (_recur56486_ __tmp57764))))
              '#f))))
    (define filter-map1
      (lambda (_f56438_ _lst56439_)
        (let _recur56441_ ((_rest56443_ _lst56439_))
          (let* ((_rest5644456452_ _rest56443_)
                 (_else5644656460_ (lambda () '()))
                 (_K5644856471_
                  (lambda (_rest56463_ _x56464_)
                    (let ((_$e56466_ (_f56438_ _x56464_)))
                      (if _$e56466_
                          ((lambda (_r56469_)
                             (let ((__tmp57765
                                    (let ()
                                      (declare (not safe))
                                      (_recur56441_ _rest56463_))))
                               (declare (not safe))
                               (cons _r56469_ __tmp57765)))
                           _$e56466_)
                          (let ()
                            (declare (not safe))
                            (_recur56441_ _rest56463_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5644456452_))
                (let ((_hd5644956474_
                       (let () (declare (not safe)) (##car _rest5644456452_)))
                      (_tl5645056476_
                       (let () (declare (not safe)) (##cdr _rest5644456452_))))
                  (let* ((_x56479_ _hd5644956474_)
                         (_rest56481_ _tl5645056476_))
                    (declare (not safe))
                    (_K5644856471_ _rest56481_ _x56479_)))
                (let () (declare (not safe)) (_else5644656460_)))))))
    (define filter-map2
      (lambda (_f56358_ _lst156359_ _lst256360_)
        (let _recur56362_ ((_rest156364_ _lst156359_)
                           (_rest256365_ _lst256360_))
          (let* ((_rest15636656374_ _rest156364_)
                 (_else5636856382_ (lambda () '()))
                 (_K5637056426_
                  (lambda (_rest156385_ _x156386_)
                    (let* ((_rest25638756395_ _rest256365_)
                           (_else5638956403_ (lambda () '()))
                           (_K5639156414_
                            (lambda (_rest256406_ _x256407_)
                              (let ((_$e56409_ (_f56358_ _x156386_ _x256407_)))
                                (if _$e56409_
                                    ((lambda (_r56412_)
                                       (let ((__tmp57766
                                              (let ()
                                                (declare (not safe))
                                                (_recur56362_
                                                 _rest156385_
                                                 _rest256406_))))
                                         (declare (not safe))
                                         (cons _r56412_ __tmp57766)))
                                     _$e56409_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur56362_
                                       _rest156385_
                                       _rest256406_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25638756395_))
                          (let ((_hd5639256417_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25638756395_)))
                                (_tl5639356419_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25638756395_))))
                            (let* ((_x256422_ _hd5639256417_)
                                   (_rest256424_ _tl5639356419_))
                              (declare (not safe))
                              (_K5639156414_ _rest256424_ _x256422_)))
                          (let () (declare (not safe)) (_else5638956403_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15636656374_))
                (let ((_hd5637156429_
                       (let () (declare (not safe)) (##car _rest15636656374_)))
                      (_tl5637256431_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15636656374_))))
                  (let* ((_x156434_ _hd5637156429_)
                         (_rest156436_ _tl5637256431_))
                    (declare (not safe))
                    (_K5637056426_ _rest156436_ _x156434_)))
                (let () (declare (not safe)) (_else5636856382_)))))))
    (define filter-map
      (lambda _g57768_
        (let ((_g57767_ (let () (declare (not safe)) (##length _g57768_))))
          (cond ((let () (declare (not safe)) (##fx= _g57767_ 2))
                 (apply (lambda (_f56346_ _lst56347_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f56346_ _lst56347_)))
                        _g57768_))
                ((let () (declare (not safe)) (##fx= _g57767_ 3))
                 (apply (lambda (_f56349_ _lst156350_ _lst256351_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f56349_ _lst156350_ _lst256351_)))
                        _g57768_))
                ((let () (declare (not safe)) (##fx>= _g57767_ 3))
                 (apply filter-map* _g57768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g57768_))))))
    (define filter-map*
      (lambda (_f56334_ . _rest56335_)
        (let _recur56337_ ((_rest56339_ _rest56335_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56339_))
              (let ((_$e56341_ (apply _f56334_ (map car _rest56339_))))
                (if _$e56341_
                    ((lambda (_r56344_)
                       (let ((__tmp57770
                              (let ((__tmp57771 (map cdr _rest56339_)))
                                (declare (not safe))
                                (_recur56337_ __tmp57771))))
                         (declare (not safe))
                         (cons _r56344_ __tmp57770)))
                     _$e56341_)
                    (let ((__tmp57769 (map cdr _rest56339_)))
                      (declare (not safe))
                      (_recur56337_ __tmp57769))))
              '()))))
    (define assgetq__%
      (lambda (_key56312_ _lst56314_ _default56316_)
        (let ((_$e56319_
               (if (let () (declare (not safe)) (pair? _lst56314_))
                   (assq _key56312_ _lst56314_)
                   '#f)))
          (if _$e56319_
              (cdr _$e56319_)
              (if (let () (declare (not safe)) (procedure? _default56316_))
                  (_default56316_ _key56312_)
                  _default56316_)))))
    (define assgetq__0
      (lambda (_key56325_ _lst56326_)
        (let ((_default56328_ '#f))
          (declare (not safe))
          (assgetq__% _key56325_ _lst56326_ _default56328_))))
    (define assgetq
      (lambda _g57773_
        (let ((_g57772_ (let () (declare (not safe)) (##length _g57773_))))
          (cond ((let () (declare (not safe)) (##fx= _g57772_ 2))
                 (apply (lambda (_key56325_ _lst56326_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key56325_ _lst56326_)))
                        _g57773_))
                ((let () (declare (not safe)) (##fx= _g57772_ 3))
                 (apply (lambda (_key56330_ _lst56331_ _default56332_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key56330_ _lst56331_ _default56332_)))
                        _g57773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g57773_))))))
    (define assgetv__%
      (lambda (_key56289_ _lst56291_ _default56293_)
        (let ((_$e56296_
               (if (let () (declare (not safe)) (pair? _lst56291_))
                   (assv _key56289_ _lst56291_)
                   '#f)))
          (if _$e56296_
              (cdr _$e56296_)
              (if (let () (declare (not safe)) (procedure? _default56293_))
                  (_default56293_ _key56289_)
                  _default56293_)))))
    (define assgetv__0
      (lambda (_key56302_ _lst56303_)
        (let ((_default56305_ '#f))
          (declare (not safe))
          (assgetv__% _key56302_ _lst56303_ _default56305_))))
    (define assgetv
      (lambda _g57775_
        (let ((_g57774_ (let () (declare (not safe)) (##length _g57775_))))
          (cond ((let () (declare (not safe)) (##fx= _g57774_ 2))
                 (apply (lambda (_key56302_ _lst56303_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key56302_ _lst56303_)))
                        _g57775_))
                ((let () (declare (not safe)) (##fx= _g57774_ 3))
                 (apply (lambda (_key56307_ _lst56308_ _default56309_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key56307_ _lst56308_ _default56309_)))
                        _g57775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g57775_))))))
    (define assget__%
      (lambda (_key56266_ _lst56268_ _default56270_)
        (let ((_$e56273_
               (if (let () (declare (not safe)) (pair? _lst56268_))
                   (assoc _key56266_ _lst56268_)
                   '#f)))
          (if _$e56273_
              (cdr _$e56273_)
              (if (let () (declare (not safe)) (procedure? _default56270_))
                  (_default56270_ _key56266_)
                  _default56270_)))))
    (define assget__0
      (lambda (_key56279_ _lst56280_)
        (let ((_default56282_ '#f))
          (declare (not safe))
          (assget__% _key56279_ _lst56280_ _default56282_))))
    (define assget
      (lambda _g57777_
        (let ((_g57776_ (let () (declare (not safe)) (##length _g57777_))))
          (cond ((let () (declare (not safe)) (##fx= _g57776_ 2))
                 (apply (lambda (_key56279_ _lst56280_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key56279_ _lst56280_)))
                        _g57777_))
                ((let () (declare (not safe)) (##fx= _g57776_ 3))
                 (apply (lambda (_key56284_ _lst56285_ _default56286_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key56284_ _lst56285_ _default56286_)))
                        _g57777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g57777_))))))
    (define pgetq__%
      (lambda (_key56195_ _lst56197_ _default56199_)
        (let _lp56202_ ((_rest56205_ _lst56197_))
          (let* ((_rest5620756217_ _rest56205_)
                 (_else5620956225_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56199_))
                        (_default56199_ _key56195_)
                        _default56199_)))
                 (_K5621156234_
                  (lambda (_rest56228_ _v56229_ _k56231_)
                    (if (let () (declare (not safe)) (eq? _k56231_ _key56195_))
                        _v56229_
                        (let ()
                          (declare (not safe))
                          (_lp56202_ _rest56228_))))))
            (if (let () (declare (not safe)) (##pair? _rest5620756217_))
                (let ((_hd5621256237_
                       (let () (declare (not safe)) (##car _rest5620756217_)))
                      (_tl5621356239_
                       (let () (declare (not safe)) (##cdr _rest5620756217_))))
                  (let ((_k56242_ _hd5621256237_))
                    (if (let () (declare (not safe)) (##pair? _tl5621356239_))
                        (let ((_hd5621456244_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5621356239_)))
                              (_tl5621556246_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5621356239_))))
                          (let* ((_v56249_ _hd5621456244_)
                                 (_rest56251_ _tl5621556246_))
                            (declare (not safe))
                            (_K5621156234_ _rest56251_ _v56249_ _k56242_)))
                        (let () (declare (not safe)) (_else5620956225_)))))
                (let () (declare (not safe)) (_else5620956225_)))))))
    (define pgetq__0
      (lambda (_key56256_ _lst56257_)
        (let ((_default56259_ '#f))
          (declare (not safe))
          (pgetq__% _key56256_ _lst56257_ _default56259_))))
    (define pgetq
      (lambda _g57779_
        (let ((_g57778_ (let () (declare (not safe)) (##length _g57779_))))
          (cond ((let () (declare (not safe)) (##fx= _g57778_ 2))
                 (apply (lambda (_key56256_ _lst56257_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key56256_ _lst56257_)))
                        _g57779_))
                ((let () (declare (not safe)) (##fx= _g57778_ 3))
                 (apply (lambda (_key56261_ _lst56262_ _default56263_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key56261_ _lst56262_ _default56263_)))
                        _g57779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g57779_))))))
    (define pgetv__%
      (lambda (_key56124_ _lst56126_ _default56128_)
        (let _lp56131_ ((_rest56134_ _lst56126_))
          (let* ((_rest5613656146_ _rest56134_)
                 (_else5613856154_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56128_))
                        (_default56128_ _key56124_)
                        _default56128_)))
                 (_K5614056163_
                  (lambda (_rest56157_ _v56158_ _k56160_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k56160_ _key56124_))
                        _v56158_
                        (let ()
                          (declare (not safe))
                          (_lp56131_ _rest56157_))))))
            (if (let () (declare (not safe)) (##pair? _rest5613656146_))
                (let ((_hd5614156166_
                       (let () (declare (not safe)) (##car _rest5613656146_)))
                      (_tl5614256168_
                       (let () (declare (not safe)) (##cdr _rest5613656146_))))
                  (let ((_k56171_ _hd5614156166_))
                    (if (let () (declare (not safe)) (##pair? _tl5614256168_))
                        (let ((_hd5614356173_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5614256168_)))
                              (_tl5614456175_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5614256168_))))
                          (let* ((_v56178_ _hd5614356173_)
                                 (_rest56180_ _tl5614456175_))
                            (declare (not safe))
                            (_K5614056163_ _rest56180_ _v56178_ _k56171_)))
                        (let () (declare (not safe)) (_else5613856154_)))))
                (let () (declare (not safe)) (_else5613856154_)))))))
    (define pgetv__0
      (lambda (_key56185_ _lst56186_)
        (let ((_default56188_ '#f))
          (declare (not safe))
          (pgetv__% _key56185_ _lst56186_ _default56188_))))
    (define pgetv
      (lambda _g57781_
        (let ((_g57780_ (let () (declare (not safe)) (##length _g57781_))))
          (cond ((let () (declare (not safe)) (##fx= _g57780_ 2))
                 (apply (lambda (_key56185_ _lst56186_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key56185_ _lst56186_)))
                        _g57781_))
                ((let () (declare (not safe)) (##fx= _g57780_ 3))
                 (apply (lambda (_key56190_ _lst56191_ _default56192_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key56190_ _lst56191_ _default56192_)))
                        _g57781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g57781_))))))
    (define pget__%
      (lambda (_key56053_ _lst56055_ _default56057_)
        (let _lp56060_ ((_rest56063_ _lst56055_))
          (let* ((_rest5606556075_ _rest56063_)
                 (_else5606756083_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56057_))
                        (_default56057_ _key56053_)
                        _default56057_)))
                 (_K5606956092_
                  (lambda (_rest56086_ _v56087_ _k56089_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k56089_ _key56053_))
                        _v56087_
                        (let ()
                          (declare (not safe))
                          (_lp56060_ _rest56086_))))))
            (if (let () (declare (not safe)) (##pair? _rest5606556075_))
                (let ((_hd5607056095_
                       (let () (declare (not safe)) (##car _rest5606556075_)))
                      (_tl5607156097_
                       (let () (declare (not safe)) (##cdr _rest5606556075_))))
                  (let ((_k56100_ _hd5607056095_))
                    (if (let () (declare (not safe)) (##pair? _tl5607156097_))
                        (let ((_hd5607256102_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5607156097_)))
                              (_tl5607356104_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5607156097_))))
                          (let* ((_v56107_ _hd5607256102_)
                                 (_rest56109_ _tl5607356104_))
                            (declare (not safe))
                            (_K5606956092_ _rest56109_ _v56107_ _k56100_)))
                        (let () (declare (not safe)) (_else5606756083_)))))
                (let () (declare (not safe)) (_else5606756083_)))))))
    (define pget__0
      (lambda (_key56114_ _lst56115_)
        (let ((_default56117_ '#f))
          (declare (not safe))
          (pget__% _key56114_ _lst56115_ _default56117_))))
    (define pget
      (lambda _g57783_
        (let ((_g57782_ (let () (declare (not safe)) (##length _g57783_))))
          (cond ((let () (declare (not safe)) (##fx= _g57782_ 2))
                 (apply (lambda (_key56114_ _lst56115_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key56114_ _lst56115_)))
                        _g57783_))
                ((let () (declare (not safe)) (##fx= _g57782_ 3))
                 (apply (lambda (_key56119_ _lst56120_ _default56121_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key56119_ _lst56120_ _default56121_)))
                        _g57783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g57783_))))))
    (define find
      (lambda (_pred56046_ _lst56047_)
        (let ((_$e56049_
               (let () (declare (not safe)) (memf _pred56046_ _lst56047_))))
          (if _$e56049_ (car _$e56049_) '#f))))
    (define memf
      (lambda (_proc56006_ _lst56007_)
        (let _lp56009_ ((_rest56011_ _lst56007_))
          (let* ((_rest5601256020_ _rest56011_)
                 (_else5601456028_ (lambda () '#f))
                 (_K5601656034_
                  (lambda (_tl56031_ _hd56032_)
                    (if (_proc56006_ _hd56032_)
                        _rest56011_
                        (let () (declare (not safe)) (_lp56009_ _tl56031_))))))
            (if (let () (declare (not safe)) (##pair? _rest5601256020_))
                (let ((_hd5601756037_
                       (let () (declare (not safe)) (##car _rest5601256020_)))
                      (_tl5601856039_
                       (let () (declare (not safe)) (##cdr _rest5601256020_))))
                  (let* ((_hd56042_ _hd5601756037_) (_tl56044_ _tl5601856039_))
                    (declare (not safe))
                    (_K5601656034_ _tl56044_ _hd56042_)))
                (let () (declare (not safe)) (_else5601456028_)))))))
    (define remove1
      (lambda (_el55959_ _lst55961_)
        (let _lp55964_ ((_rest55967_ _lst55961_) (_r55969_ '()))
          (let* ((_rest5597155979_ _rest55967_)
                 (_else5597355987_ (lambda () _lst55961_))
                 (_K5597555994_
                  (lambda (_rest55990_ _hd55991_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el55959_ _hd55991_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55990_ _r55969_))
                        (let ((__tmp57784
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55991_ _r55969_))))
                          (declare (not safe))
                          (_lp55964_ _rest55990_ __tmp57784))))))
            (if (let () (declare (not safe)) (##pair? _rest5597155979_))
                (let ((_hd5597655997_
                       (let () (declare (not safe)) (##car _rest5597155979_)))
                      (_tl5597755999_
                       (let () (declare (not safe)) (##cdr _rest5597155979_))))
                  (let* ((_hd56002_ _hd5597655997_)
                         (_rest56004_ _tl5597755999_))
                    (declare (not safe))
                    (_K5597555994_ _rest56004_ _hd56002_)))
                (let () (declare (not safe)) (_else5597355987_)))))))
    (define remv
      (lambda (_el55912_ _lst55914_)
        (let _lp55917_ ((_rest55920_ _lst55914_) (_r55922_ '()))
          (let* ((_rest5592455932_ _rest55920_)
                 (_else5592655940_ (lambda () _lst55914_))
                 (_K5592855947_
                  (lambda (_rest55943_ _hd55944_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el55912_ _hd55944_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55943_ _r55922_))
                        (let ((__tmp57785
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55944_ _r55922_))))
                          (declare (not safe))
                          (_lp55917_ _rest55943_ __tmp57785))))))
            (if (let () (declare (not safe)) (##pair? _rest5592455932_))
                (let ((_hd5592955950_
                       (let () (declare (not safe)) (##car _rest5592455932_)))
                      (_tl5593055952_
                       (let () (declare (not safe)) (##cdr _rest5592455932_))))
                  (let* ((_hd55955_ _hd5592955950_)
                         (_rest55957_ _tl5593055952_))
                    (declare (not safe))
                    (_K5592855947_ _rest55957_ _hd55955_)))
                (let () (declare (not safe)) (_else5592655940_)))))))
    (define remq
      (lambda (_el55865_ _lst55867_)
        (let _lp55870_ ((_rest55873_ _lst55867_) (_r55875_ '()))
          (let* ((_rest5587755885_ _rest55873_)
                 (_else5587955893_ (lambda () _lst55867_))
                 (_K5588155900_
                  (lambda (_rest55896_ _hd55897_)
                    (if (let () (declare (not safe)) (eq? _el55865_ _hd55897_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55896_ _r55875_))
                        (let ((__tmp57786
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55897_ _r55875_))))
                          (declare (not safe))
                          (_lp55870_ _rest55896_ __tmp57786))))))
            (if (let () (declare (not safe)) (##pair? _rest5587755885_))
                (let ((_hd5588255903_
                       (let () (declare (not safe)) (##car _rest5587755885_)))
                      (_tl5588355905_
                       (let () (declare (not safe)) (##cdr _rest5587755885_))))
                  (let* ((_hd55908_ _hd5588255903_)
                         (_rest55910_ _tl5588355905_))
                    (declare (not safe))
                    (_K5588155900_ _rest55910_ _hd55908_)))
                (let () (declare (not safe)) (_else5587955893_)))))))
    (define remf
      (lambda (_proc55824_ _lst55825_)
        (let _lp55827_ ((_rest55829_ _lst55825_) (_r55830_ '()))
          (let* ((_rest5583155839_ _rest55829_)
                 (_else5583355847_ (lambda () _lst55825_))
                 (_K5583555853_
                  (lambda (_rest55850_ _hd55851_)
                    (if (_proc55824_ _hd55851_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55850_ _r55830_))
                        (let ((__tmp57787
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55851_ _r55830_))))
                          (declare (not safe))
                          (_lp55827_ _rest55850_ __tmp57787))))))
            (if (let () (declare (not safe)) (##pair? _rest5583155839_))
                (let ((_hd5583655856_
                       (let () (declare (not safe)) (##car _rest5583155839_)))
                      (_tl5583755858_
                       (let () (declare (not safe)) (##cdr _rest5583155839_))))
                  (let* ((_hd55861_ _hd5583655856_)
                         (_rest55863_ _tl5583755858_))
                    (declare (not safe))
                    (_K5583555853_ _rest55863_ _hd55861_)))
                (let () (declare (not safe)) (_else5583355847_)))))))
    (define 1+ (lambda (_x55822_) (+ _x55822_ '1)))
    (define 1- (lambda (_x55820_) (- _x55820_ '1)))
    (define fx1+ (lambda (_x55818_) (fx+ _x55818_ '1)))
    (define fx1- (lambda (_x55816_) (fx- _x55816_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x55814_)
        (if (let () (declare (not safe)) (fixnum? _x55814_))
            (let () (declare (not safe)) (##fx>= _x55814_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x55812_)
        (if (let () (declare (not safe)) (fixnum? _x55812_))
            (let () (declare (not safe)) (##fx> _x55812_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x55810_) (let () (declare (not safe)) (eq? _x55810_ '0))))
    (define fx<0?
      (lambda (_x55808_)
        (if (let () (declare (not safe)) (fixnum? _x55808_))
            (let () (declare (not safe)) (##fx< _x55808_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x55806_)
        (if (let () (declare (not safe)) (fixnum? _x55806_))
            (let () (declare (not safe)) (##fx<= _x55806_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x55804_)
        (if (let () (declare (not safe)) (symbol? _x55804_))
            (let ((__tmp57788 (uninterned-symbol? _x55804_)))
              (declare (not safe))
              (not __tmp57788))
            '#f)))
    (define display-as-string
      (lambda (_x55776_ _port55777_)
        (if (or (let () (declare (not safe)) (string? _x55776_))
                (let () (declare (not safe)) (symbol? _x55776_))
                (keyword? _x55776_)
                (let () (declare (not safe)) (number? _x55776_))
                (let () (declare (not safe)) (char? _x55776_)))
            (display _x55776_ _port55777_)
            (if (let () (declare (not safe)) (pair? _x55776_))
                (begin
                  (let ((__tmp57789 (car _x55776_)))
                    (declare (not safe))
                    (display-as-string __tmp57789 _port55777_))
                  (let ((__tmp57790 (cdr _x55776_)))
                    (declare (not safe))
                    (display-as-string __tmp57790 _port55777_)))
                (if (let () (declare (not safe)) (vector? _x55776_))
                    (vector-for-each
                     (lambda (_g5579055792_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5579055792_ _port55777_)))
                     _x55776_)
                    (if (or (let () (declare (not safe)) (null? _x55776_))
                            (let ()
                              (declare (not safe))
                              (eq? _x55776_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x55776_))
                            (let () (declare (not safe)) (boolean? _x55776_)))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot convert as string" _x55776_))))))))
    (define as-string__0
      (lambda (_x55764_)
        (if (let () (declare (not safe)) (string? _x55764_))
            _x55764_
            (if (let () (declare (not safe)) (symbol? _x55764_))
                (symbol->string _x55764_)
                (if (keyword? _x55764_)
                    (keyword->string _x55764_)
                    (if (let () (declare (not safe)) (number? _x55764_))
                        (number->string _x55764_)
                        (call-with-output-string
                         '()
                         (lambda (_g5576555767_)
                           (let ()
                             (declare (not safe))
                             (display-as-string
                              _x55764_
                              _g5576555767_))))))))))
    (define as-string__1
      (lambda _args55770_
        (call-with-output-string
         '()
         (lambda (_g5577155773_)
           (let ()
             (declare (not safe))
             (display-as-string _args55770_ _g5577155773_))))))
    (define as-string
      (lambda _g57792_
        (let ((_g57791_ (let () (declare (not safe)) (##length _g57792_))))
          (cond ((let () (declare (not safe)) (##fx= _g57791_ 1))
                 (apply (lambda (_x55764_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x55764_)))
                        _g57792_))
                (#t (apply as-string__1 _g57792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g57792_))))))
    (define make-symbol__0
      (lambda (_x55760_)
        (if (interned-symbol? _x55760_)
            _x55760_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x55760_))))))
    (define make-symbol__1
      (lambda _args55762_ (string->symbol (apply as-string _args55762_))))
    (define make-symbol
      (lambda _g57794_
        (let ((_g57793_ (let () (declare (not safe)) (##length _g57794_))))
          (cond ((let () (declare (not safe)) (##fx= _g57793_ 1))
                 (apply (lambda (_x55760_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x55760_)))
                        _g57794_))
                (#t (apply make-symbol__1 _g57794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g57794_))))))
    (define make-keyword__0
      (lambda (_x55756_)
        (if (interned-keyword? _x55756_)
            _x55756_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x55756_))))))
    (define make-keyword__1
      (lambda _args55758_ (string->keyword (apply as-string _args55758_))))
    (define make-keyword
      (lambda _g57796_
        (let ((_g57795_ (let () (declare (not safe)) (##length _g57796_))))
          (cond ((let () (declare (not safe)) (##fx= _g57795_ 1))
                 (apply (lambda (_x55756_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x55756_)))
                        _g57796_))
                (#t (apply make-keyword__1 _g57796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g57796_))))))
    (define interned-keyword?
      (lambda (_x55754_)
        (if (keyword? _x55754_)
            (let ((__tmp57797 (uninterned-keyword? _x55754_)))
              (declare (not safe))
              (not __tmp57797))
            '#f)))
    (define symbol->keyword
      (lambda (_sym55752_)
        ((if (uninterned-symbol? _sym55752_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym55752_))))
    (define keyword->symbol
      (lambda (_kw55750_)
        ((if (uninterned-keyword? _kw55750_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw55750_))))
    (define bytes->string__%
      (lambda (_bstr55728_ _enc55729_)
        (if (let () (declare (not safe)) (eq? _enc55729_ 'UTF-8))
            (utf8->string _bstr55728_)
            (let* ((_in55731_
                    (open-input-u8vector
                     (let ((__tmp57798
                            (let ((__tmp57799
                                   (let ((__tmp57800
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr55728_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp57800))))
                              (declare (not safe))
                              (cons _enc55729_ __tmp57799))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp57798))))
                   (_len55733_ (u8vector-length _bstr55728_))
                   (_out55735_ (make-string _len55733_))
                   (_n55737_
                    (read-substring _out55735_ '0 _len55733_ _in55731_)))
              (string-shrink! _out55735_ _n55737_)
              _out55735_))))
    (define bytes->string__0
      (lambda (_bstr55743_)
        (let ((_enc55745_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr55743_ _enc55745_))))
    (define bytes->string
      (lambda _g57802_
        (let ((_g57801_ (let () (declare (not safe)) (##length _g57802_))))
          (cond ((let () (declare (not safe)) (##fx= _g57801_ 1))
                 (apply (lambda (_bstr55743_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr55743_)))
                        _g57802_))
                ((let () (declare (not safe)) (##fx= _g57801_ 2))
                 (apply (lambda (_bstr55747_ _enc55748_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr55747_ _enc55748_)))
                        _g57802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g57802_))))))
    (define string->bytes__%
      (lambda (_str55714_ _enc55715_)
        (if (let () (declare (not safe)) (eq? _enc55715_ 'UTF-8))
            (string->utf8 _str55714_)
            (substring->bytes
             _str55714_
             '0
             (string-length _str55714_)
             _enc55715_))))
    (define string->bytes__0
      (lambda (_str55720_)
        (let ((_enc55722_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str55720_ _enc55722_))))
    (define string->bytes
      (lambda _g57804_
        (let ((_g57803_ (let () (declare (not safe)) (##length _g57804_))))
          (cond ((let () (declare (not safe)) (##fx= _g57803_ 1))
                 (apply (lambda (_str55720_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str55720_)))
                        _g57804_))
                ((let () (declare (not safe)) (##fx= _g57803_ 2))
                 (apply (lambda (_str55724_ _enc55725_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str55724_ _enc55725_)))
                        _g57804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g57804_))))))
    (define substring->bytes__%
      (lambda (_str55692_ _start55693_ _end55694_ _enc55695_)
        (if (let () (declare (not safe)) (eq? _enc55695_ 'UTF-8))
            (string->utf8 _str55692_ _start55693_ _end55694_)
            (let ((_out55697_
                   (open-output-u8vector
                    (let ((__tmp57805
                           (let ()
                             (declare (not safe))
                             (cons _enc55695_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp57805)))))
              (write-substring _str55692_ _start55693_ _end55694_ _out55697_)
              (get-output-u8vector _out55697_)))))
    (define substring->bytes__0
      (lambda (_str55702_ _start55703_ _end55704_)
        (let ((_enc55706_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str55702_
           _start55703_
           _end55704_
           _enc55706_))))
    (define substring->bytes
      (lambda _g57807_
        (let ((_g57806_ (let () (declare (not safe)) (##length _g57807_))))
          (cond ((let () (declare (not safe)) (##fx= _g57806_ 3))
                 (apply (lambda (_str55702_ _start55703_ _end55704_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str55702_
                             _start55703_
                             _end55704_)))
                        _g57807_))
                ((let () (declare (not safe)) (##fx= _g57806_ 4))
                 (apply (lambda (_str55708_ _start55709_ _end55710_ _enc55711_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str55708_
                             _start55709_
                             _end55710_
                             _enc55711_)))
                        _g57807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g57807_))))))
    (define string-empty?
      (lambda (_str55689_)
        (let ((__tmp57808 (string-length _str55689_)))
          (declare (not safe))
          (##fxzero? __tmp57808))))
    (define string-prefix?
      (lambda (_prefix55679_ _str55680_)
        (let ((_str-len55682_ (string-length _str55680_))
              (_prefix-len55683_ (string-length _prefix55679_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len55683_ _str-len55682_))
              (let _lp55685_ ((_i55687_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i55687_ _prefix-len55683_))
                    (if (let ((__tmp57811
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str55680_ _i55687_)))
                              (__tmp57810
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix55679_ _i55687_))))
                          (declare (not safe))
                          (eq? __tmp57811 __tmp57810))
                        (let ((__tmp57809
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i55687_ '1))))
                          (declare (not safe))
                          (_lp55685_ __tmp57809))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str55657_ _char55658_ _start55659_)
        (let ((_len55661_ (string-length _str55657_)))
          (let _lp55663_ ((_k55665_ _start55659_))
            (if (let () (declare (not safe)) (##fx< _k55665_ _len55661_))
                (if (let ((__tmp57813
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55657_ _k55665_))))
                      (declare (not safe))
                      (eq? _char55658_ __tmp57813))
                    _k55665_
                    (let ((__tmp57812
                           (let () (declare (not safe)) (##fx+ _k55665_ '1))))
                      (declare (not safe))
                      (_lp55663_ __tmp57812)))
                '#f)))))
    (define string-index__0
      (lambda (_str55670_ _char55671_)
        (let ((_start55673_ '0))
          (declare (not safe))
          (string-index__% _str55670_ _char55671_ _start55673_))))
    (define string-index
      (lambda _g57815_
        (let ((_g57814_ (let () (declare (not safe)) (##length _g57815_))))
          (cond ((let () (declare (not safe)) (##fx= _g57814_ 2))
                 (apply (lambda (_str55670_ _char55671_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str55670_ _char55671_)))
                        _g57815_))
                ((let () (declare (not safe)) (##fx= _g57814_ 3))
                 (apply (lambda (_str55675_ _char55676_ _start55677_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str55675_
                             _char55676_
                             _start55677_)))
                        _g57815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g57815_))))))
    (define string-rindex__%
      (lambda (_str55628_ _char55629_ _start55630_)
        (let* ((_len55632_ (string-length _str55628_))
               (_start55637_
                (let ((_$e55634_ _start55630_))
                  (if _$e55634_
                      _$e55634_
                      (let () (declare (not safe)) (##fx- _len55632_ '1))))))
          (let _lp55640_ ((_k55642_ _start55637_))
            (if (let () (declare (not safe)) (##fx>= _k55642_ '0))
                (if (let ((__tmp57817
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55628_ _k55642_))))
                      (declare (not safe))
                      (eq? _char55629_ __tmp57817))
                    _k55642_
                    (let ((__tmp57816
                           (let () (declare (not safe)) (##fx- _k55642_ '1))))
                      (declare (not safe))
                      (_lp55640_ __tmp57816)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str55647_ _char55648_)
        (let ((_start55650_ '#f))
          (declare (not safe))
          (string-rindex__% _str55647_ _char55648_ _start55650_))))
    (define string-rindex
      (lambda _g57819_
        (let ((_g57818_ (let () (declare (not safe)) (##length _g57819_))))
          (cond ((let () (declare (not safe)) (##fx= _g57818_ 2))
                 (apply (lambda (_str55647_ _char55648_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str55647_ _char55648_)))
                        _g57819_))
                ((let () (declare (not safe)) (##fx= _g57818_ 3))
                 (apply (lambda (_str55652_ _char55653_ _start55654_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str55652_
                             _char55653_
                             _start55654_)))
                        _g57819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g57819_))))))
    (define string-split
      (lambda (_str55612_ _char55613_)
        (let ((_len55615_ (string-length _str55612_)))
          (let _lp55617_ ((_start55619_ '0) (_r55620_ '()))
            (let ((_$e55622_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str55612_ _char55613_ _start55619_))))
              (if _$e55622_
                  ((lambda (_end55625_)
                     (let ((__tmp57823
                            (let ()
                              (declare (not safe))
                              (##fx+ _end55625_ '1)))
                           (__tmp57821
                            (let ((__tmp57822
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55612_
                                      _start55619_
                                      _end55625_))))
                              (declare (not safe))
                              (cons __tmp57822 _r55620_))))
                       (declare (not safe))
                       (_lp55617_ __tmp57823 __tmp57821)))
                   _$e55622_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start55619_ _len55615_))
                      (let ((__tmp57820
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55612_
                                      _start55619_
                                      _len55615_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp57820 _r55620_))
                      (reverse _r55620_))))))))
    (define string-join
      (lambda (_strs55517_ _join55518_)
        (letrec ((_join-length55520_
                  (lambda (_strs55571_ _jlen55572_)
                    (let _lp55574_ ((_rest55576_ _strs55571_) (_len55577_ '0))
                      (let* ((_rest5557855586_ _rest55576_)
                             (_else5558055594_ (lambda () '0))
                             (_K5558255600_
                              (lambda (_rest55597_ _hd55598_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd55598_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest55597_))
                                        (let ((__tmp57825
                                               (let ((__tmp57826
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd55598_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp57826
                                                        _jlen55572_
                                                        _len55577_))))
                                          (declare (not safe))
                                          (_lp55574_ _rest55597_ __tmp57825))
                                        (let ((__tmp57824
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd55598_))))
                                          (declare (not safe))
                                          (##fx+ __tmp57824 _len55577_)))
                                    (let ()
                                      (declare (not safe))
                                      (error '"expected string" _hd55598_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5557855586_))
                            (let ((_hd5558355603_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5557855586_)))
                                  (_tl5558455605_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5557855586_))))
                              (let* ((_hd55608_ _hd5558355603_)
                                     (_rest55610_ _tl5558455605_))
                                (declare (not safe))
                                (_K5558255600_ _rest55610_ _hd55608_)))
                            (let ()
                              (declare (not safe))
                              (_else5558055594_))))))))
          (let* ((_join55522_
                  (if (let () (declare (not safe)) (char? _join55518_))
                      (string _join55518_)
                      (if (let () (declare (not safe)) (string? _join55518_))
                          _join55518_
                          (let ()
                            (declare (not safe))
                            (error '"expected string or char" _join55518_)))))
                 (_jlen55524_
                  (let () (declare (not safe)) (##string-length _join55522_)))
                 (_olen55526_
                  (let ()
                    (declare (not safe))
                    (_join-length55520_ _strs55517_ _jlen55524_)))
                 (_ostr55528_ (make-string _olen55526_)))
            (let _lp55531_ ((_rest55533_ _strs55517_) (_k55534_ '0))
              (let* ((_rest5553555543_ _rest55533_)
                     (_else5553755551_ (lambda () '""))
                     (_K5553955559_
                      (lambda (_rest55554_ _hd55555_)
                        (let ((_hdlen55557_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd55555_))))
                          (if (let () (declare (not safe)) (pair? _rest55554_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd55555_
                                   '0
                                   _hdlen55557_
                                   _ostr55528_
                                   _k55534_))
                                (let ((__tmp57827
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k55534_ _hdlen55557_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join55522_
                                   '0
                                   _jlen55524_
                                   _ostr55528_
                                   __tmp57827))
                                (let ((__tmp57828
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k55534_
                                                _hdlen55557_
                                                _jlen55524_))))
                                  (declare (not safe))
                                  (_lp55531_ _rest55554_ __tmp57828)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd55555_
                                   '0
                                   _hdlen55557_
                                   _ostr55528_
                                   _k55534_))
                                _ostr55528_))))))
                (if (let () (declare (not safe)) (##pair? _rest5553555543_))
                    (let ((_hd5554055562_
                           (let ()
                             (declare (not safe))
                             (##car _rest5553555543_)))
                          (_tl5554155564_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5553555543_))))
                      (let* ((_hd55567_ _hd5554055562_)
                             (_rest55569_ _tl5554155564_))
                        (declare (not safe))
                        (_K5553955559_ _rest55569_ _hd55567_)))
                    (let () (declare (not safe)) (_else5553755551_)))))))))
    (define read-u8vector
      (lambda (_bytes55514_ _port55515_)
        (read-subu8vector
         _bytes55514_
         '0
         (u8vector-length _bytes55514_)
         _port55515_)))
    (define write-u8vector
      (lambda (_bytes55511_ _port55512_)
        (write-subu8vector
         _bytes55511_
         '0
         (u8vector-length _bytes55511_)
         _port55512_)))
    (define read-string
      (lambda (_str55508_ _port55509_)
        (read-substring _str55508_ '0 (string-length _str55508_) _port55509_)))
    (define write-string
      (lambda (_str55505_ _port55506_)
        (write-substring
         _str55505_
         '0
         (string-length _str55505_)
         _port55506_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag55474_
               _dbg-exprs55475_
               _dbg-thunks55476_
               _expr55477_
               _thunk55478_)
        (letrec ((_o55480_ (current-output-port))
                 (_e55481_ (current-error-port))
                 (_p55482_ (DBG-printer))
                 (_f55483_
                  (lambda () (force-output _o55480_) (force-output _e55481_)))
                 (_d55484_ (lambda (_x55491_) (display _x55491_ _e55481_)))
                 (_w55485_ (lambda (_x55493_) (_p55482_ _x55493_ _e55481_)))
                 (_n55486_ (lambda () (newline _e55481_)))
                 (_v55487_
                  (lambda (_l55496_)
                    (for-each
                     (lambda (_x55498_)
                       (let () (declare (not safe)) (_d55484_ '" "))
                       (let () (declare (not safe)) (_w55485_ _x55498_)))
                     _l55496_)
                    (let () (declare (not safe)) (_n55486_))))
                 (_x55488_
                  (lambda (_expr55500_ _thunk55501_)
                    (let () (declare (not safe)) (_f55483_))
                    (let () (declare (not safe)) (_d55484_ '"  "))
                    (let () (declare (not safe)) (_w55485_ _expr55500_))
                    (let () (declare (not safe)) (_d55484_ '" =>"))
                    (call-with-values
                     _thunk55501_
                     (lambda _x55503_
                       (let () (declare (not safe)) (_v55487_ _x55503_))
                       (let () (declare (not safe)) (_f55483_))
                       (apply values _x55503_))))))
          (if _tag55474_
              (begin
                (if (let () (declare (not safe)) (eq? _tag55474_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f55483_))
                      (let () (declare (not safe)) (_d55484_ _tag55474_))
                      (let () (declare (not safe)) (_n55486_))))
                (for-each _x55488_ _dbg-exprs55475_ _dbg-thunks55476_)
                (if _thunk55478_
                    (let ()
                      (declare (not safe))
                      (_x55488_ _expr55477_ _thunk55478_))
                    '#!void))
              (if _thunk55478_ (_thunk55478_) '#!void)))))))
