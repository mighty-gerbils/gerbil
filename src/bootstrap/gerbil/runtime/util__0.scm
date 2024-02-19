(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1708343715)
  (begin
    (define displayln
      (lambda _args56422_
        (let _lp56424_ ((_rest56426_ _args56422_))
          (let* ((_rest5642756435_ _rest56426_)
                 (_else5642956443_ (lambda () (newline)))
                 (_K5643156449_
                  (lambda (_rest56446_ _hd56447_)
                    (display _hd56447_)
                    (let () (declare (not safe)) (_lp56424_ _rest56446_)))))
            (if (let () (declare (not safe)) (##pair? _rest5642756435_))
                (let ((_hd5643256452_
                       (let () (declare (not safe)) (##car _rest5642756435_)))
                      (_tl5643356454_
                       (let () (declare (not safe)) (##cdr _rest5642756435_))))
                  (let* ((_hd56457_ _hd5643256452_)
                         (_rest56459_ _tl5643356454_))
                    (declare (not safe))
                    (_K5643156449_ _rest56459_ _hd56457_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args56420_ (for-each display _args56420_)))
    (define file-newer?
      (lambda (_file156413_ _file256414_)
        (letrec ((_modification-time56416_
                  (lambda (_file56418_)
                    (let ((__tmp56843
                           (file-info-last-modification-time
                            (file-info _file56418_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp56843)))))
          (let ((__tmp56845
                 (let ()
                   (declare (not safe))
                   (_modification-time56416_ _file156413_)))
                (__tmp56844
                 (let ()
                   (declare (not safe))
                   (_modification-time56416_ _file256414_))))
            (declare (not safe))
            (##fl> __tmp56845 __tmp56844)))))
    (define create-directory*__%
      (lambda (_dir56387_ _perms56388_)
        (letrec ((_create156390_
                  (lambda (_path56401_)
                    (if (file-exists? _path56401_)
                        (if (let ((__tmp56846 (file-type _path56401_)))
                              (declare (not safe))
                              (eq? __tmp56846 'directory))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"Path component is not a directory"
                                     _path56401_)))
                        (if _perms56388_
                            (create-directory
                             (list 'path:
                                   _path56401_
                                   'permissions:
                                   _perms56388_))
                            (create-directory _path56401_))))))
          (if (file-exists? _dir56387_)
              '#!void
              (let _lp56392_ ((_start56394_ '0))
                (let ((_$e56396_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir56387_ '#\/ _start56394_))))
                  (if _$e56396_
                      ((lambda (_x56399_)
                         (if (let () (declare (not safe)) (##fx> _x56399_ '0))
                             (let ((__tmp56847
                                    (substring _dir56387_ '0 _x56399_)))
                               (declare (not safe))
                               (_create156390_ __tmp56847))
                             '#!void)
                         (let ((__tmp56848
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x56399_ '1))))
                           (declare (not safe))
                           (_lp56392_ __tmp56848)))
                       _$e56396_)
                      (let ()
                        (declare (not safe))
                        (_create156390_ _dir56387_)))))))))
    (define create-directory*__0
      (lambda (_dir56406_)
        (let ((_perms56408_ '493))
          (declare (not safe))
          (create-directory*__% _dir56406_ _perms56408_))))
    (define create-directory*
      (lambda _g56850_
        (let ((_g56849_ (let () (declare (not safe)) (##length _g56850_))))
          (cond ((let () (declare (not safe)) (##fx= _g56849_ 1))
                 (apply (lambda (_dir56406_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir56406_)))
                        _g56850_))
                ((let () (declare (not safe)) (##fx= _g56849_ 2))
                 (apply (lambda (_dir56410_ _perms56411_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir56410_ _perms56411_)))
                        _g56850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g56850_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g56851_ '#t))
    (define true?
      (lambda (_obj56383_) (let () (declare (not safe)) (eq? _obj56383_ '#t))))
    (define false (lambda _g56852_ '#f))
    (define void (lambda _g56853_ '#!void))
    (define void?
      (lambda (_obj56379_)
        (let () (declare (not safe)) (eq? _obj56379_ '#!void))))
    (define eof-object (lambda _g56854_ '#!eof))
    (define identity (lambda (_obj56376_) _obj56376_))
    (define dssl-object?
      (lambda (_obj56374_)
        (if (memq _obj56374_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj56372_)
        (let () (declare (not safe)) (eq? _obj56372_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj56370_)
        (let () (declare (not safe)) (eq? _obj56370_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj56368_)
        (let () (declare (not safe)) (eq? _obj56368_ '#!optional))))
    (define immediate?
      (lambda (_obj56364_)
        (let* ((_t56366_ (let () (declare (not safe)) (##type _obj56364_)))
               (__tmp56855
                (let () (declare (not safe)) (##fxand _t56366_ '1))))
          (declare (not safe))
          (##fxzero? __tmp56855))))
    (define nonnegative-fixnum?
      (lambda (_obj56362_)
        (if (let () (declare (not safe)) (fixnum? _obj56362_))
            (let ((__tmp56856 (fxnegative? _obj56362_)))
              (declare (not safe))
              (not __tmp56856))
            '#f)))
    (define values-count
      (lambda (_obj56360_)
        (if (let () (declare (not safe)) (##values? _obj56360_))
            (let () (declare (not safe)) (##vector-length _obj56360_))
            '1)))
    (define values-ref
      (lambda (_obj56357_ _k56358_)
        (if (let () (declare (not safe)) (##values? _obj56357_))
            (let () (declare (not safe)) (##vector-ref _obj56357_ _k56358_))
            _obj56357_)))
    (define values->list
      (lambda (_obj56355_)
        (if (let () (declare (not safe)) (##values? _obj56355_))
            (let () (declare (not safe)) (##vector->list _obj56355_))
            (list _obj56355_))))
    (define subvector->list__%
      (lambda (_obj56340_ _start56341_)
        (let ((_lst56343_
               (let () (declare (not safe)) (##vector->list _obj56340_))))
          (list-tail _lst56343_ _start56341_))))
    (define subvector->list__0
      (lambda (_obj56348_)
        (let ((_start56350_ '0))
          (declare (not safe))
          (subvector->list__% _obj56348_ _start56350_))))
    (define subvector->list
      (lambda _g56858_
        (let ((_g56857_ (let () (declare (not safe)) (##length _g56858_))))
          (cond ((let () (declare (not safe)) (##fx= _g56857_ 1))
                 (apply (lambda (_obj56348_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj56348_)))
                        _g56858_))
                ((let () (declare (not safe)) (##fx= _g56857_ 2))
                 (apply (lambda (_obj56352_ _start56353_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj56352_ _start56353_)))
                        _g56858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g56858_))))))
    (define make-list__%
      (lambda (_k56321_ _val56322_)
        (if (let () (declare (not safe)) (fixnum? _k56321_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected argument 1 to be fixnum" _k56321_)))
        (let _lp56324_ ((_n56326_ '0) (_r56327_ '()))
          (if (let () (declare (not safe)) (##fx< _n56326_ _k56321_))
              (let ((__tmp56860
                     (let () (declare (not safe)) (##fx+ _n56326_ '1)))
                    (__tmp56859
                     (let () (declare (not safe)) (cons _val56322_ _r56327_))))
                (declare (not safe))
                (_lp56324_ __tmp56860 __tmp56859))
              _r56327_))))
    (define make-list__0
      (lambda (_k56332_)
        (let ((_val56334_ '#f))
          (declare (not safe))
          (make-list__% _k56332_ _val56334_))))
    (define make-list
      (lambda _g56862_
        (let ((_g56861_ (let () (declare (not safe)) (##length _g56862_))))
          (cond ((let () (declare (not safe)) (##fx= _g56861_ 1))
                 (apply (lambda (_k56332_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k56332_)))
                        _g56862_))
                ((let () (declare (not safe)) (##fx= _g56861_ 2))
                 (apply (lambda (_k56336_ _val56337_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k56336_ _val56337_)))
                        _g56862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g56862_))))))
    (define cons*
      (lambda (_x56311_ _y56312_ . _rest56313_)
        (letrec ((_recur56315_
                  (lambda (_x56317_ _rest56318_)
                    (if (let () (declare (not safe)) (pair? _rest56318_))
                        (let ((__tmp56863
                               (let ((__tmp56865
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest56318_)))
                                     (__tmp56864
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest56318_))))
                                 (declare (not safe))
                                 (_recur56315_ __tmp56865 __tmp56864))))
                          (declare (not safe))
                          (cons _x56317_ __tmp56863))
                        _x56317_))))
          (let ((__tmp56866
                 (let ()
                   (declare (not safe))
                   (_recur56315_ _y56312_ _rest56313_))))
            (declare (not safe))
            (cons _x56311_ __tmp56866)))))
    (define foldl1
      (lambda (_f56269_ _iv56270_ _lst56271_)
        (let _lp56273_ ((_rest56275_ _lst56271_) (_r56276_ _iv56270_))
          (let* ((_rest5627756285_ _rest56275_)
                 (_else5627956293_ (lambda () _r56276_))
                 (_K5628156299_
                  (lambda (_rest56296_ _x56297_)
                    (let ((__tmp56867 (_f56269_ _x56297_ _r56276_)))
                      (declare (not safe))
                      (_lp56273_ _rest56296_ __tmp56867)))))
            (if (let () (declare (not safe)) (##pair? _rest5627756285_))
                (let ((_hd5628256302_
                       (let () (declare (not safe)) (##car _rest5627756285_)))
                      (_tl5628356304_
                       (let () (declare (not safe)) (##cdr _rest5627756285_))))
                  (let* ((_x56307_ _hd5628256302_)
                         (_rest56309_ _tl5628356304_))
                    (declare (not safe))
                    (_K5628156299_ _rest56309_ _x56307_)))
                (let () (declare (not safe)) (_else5627956293_)))))))
    (define foldl2
      (lambda (_f56192_ _iv56193_ _lst156194_ _lst256195_)
        (let _lp56197_ ((_rest156199_ _lst156194_)
                        (_rest256200_ _lst256195_)
                        (_r56201_ _iv56193_))
          (let* ((_rest15620256210_ _rest156199_)
                 (_else5620456218_ (lambda () _r56201_))
                 (_K5620656257_
                  (lambda (_rest156221_ _x156222_)
                    (let* ((_rest25622356231_ _rest256200_)
                           (_else5622556239_ (lambda () _r56201_))
                           (_K5622756245_
                            (lambda (_rest256242_ _x256243_)
                              (let ((__tmp56868
                                     (_f56192_ _x156222_ _x256243_ _r56201_)))
                                (declare (not safe))
                                (_lp56197_
                                 _rest156221_
                                 _rest256242_
                                 __tmp56868)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25622356231_))
                          (let ((_hd5622856248_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25622356231_)))
                                (_tl5622956250_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25622356231_))))
                            (let* ((_x256253_ _hd5622856248_)
                                   (_rest256255_ _tl5622956250_))
                              (declare (not safe))
                              (_K5622756245_ _rest256255_ _x256253_)))
                          (let () (declare (not safe)) (_else5622556239_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15620256210_))
                (let ((_hd5620756260_
                       (let () (declare (not safe)) (##car _rest15620256210_)))
                      (_tl5620856262_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15620256210_))))
                  (let* ((_x156265_ _hd5620756260_)
                         (_rest156267_ _tl5620856262_))
                    (declare (not safe))
                    (_K5620656257_ _rest156267_ _x156265_)))
                (let () (declare (not safe)) (_else5620456218_)))))))
    (define foldl
      (lambda _g56870_
        (let ((_g56869_ (let () (declare (not safe)) (##length _g56870_))))
          (cond ((let () (declare (not safe)) (##fx= _g56869_ 3))
                 (apply (lambda (_f56177_ _iv56178_ _lst56179_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f56177_ _iv56178_ _lst56179_)))
                        _g56870_))
                ((let () (declare (not safe)) (##fx= _g56869_ 4))
                 (apply (lambda (_f56181_ _iv56182_ _lst156183_ _lst256184_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f56181_
                                    _iv56182_
                                    _lst156183_
                                    _lst256184_)))
                        _g56870_))
                ((let () (declare (not safe)) (##fx>= _g56869_ 4))
                 (apply foldl* _g56870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g56870_))))))
    (define foldl*
      (lambda (_f56165_ _iv56166_ . _rest56167_)
        (let _recur56169_ ((_iv56171_ _iv56166_) (_rest56172_ _rest56167_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56172_))
              (let ((__tmp56872
                     (apply _f56165_
                            (let ((__tmp56874
                                   (lambda (_xs56174_ _r56175_)
                                     (let ((__tmp56875 (car _xs56174_)))
                                       (declare (not safe))
                                       (cons __tmp56875 _r56175_))))
                                  (__tmp56873 (list _iv56171_)))
                              (declare (not safe))
                              (foldr1 __tmp56874 __tmp56873 _rest56172_))))
                    (__tmp56871 (map cdr _rest56172_)))
                (declare (not safe))
                (_recur56169_ __tmp56872 __tmp56871))
              _iv56171_))))
    (define foldr1
      (lambda (_f56124_ _iv56125_ _lst56126_)
        (let _recur56128_ ((_rest56130_ _lst56126_))
          (let* ((_rest5613156139_ _rest56130_)
                 (_else5613356147_ (lambda () _iv56125_))
                 (_K5613556153_
                  (lambda (_rest56150_ _x56151_)
                    (_f56124_
                     _x56151_
                     (let ()
                       (declare (not safe))
                       (_recur56128_ _rest56150_))))))
            (if (let () (declare (not safe)) (##pair? _rest5613156139_))
                (let ((_hd5613656156_
                       (let () (declare (not safe)) (##car _rest5613156139_)))
                      (_tl5613756158_
                       (let () (declare (not safe)) (##cdr _rest5613156139_))))
                  (let* ((_x56161_ _hd5613656156_)
                         (_rest56163_ _tl5613756158_))
                    (declare (not safe))
                    (_K5613556153_ _rest56163_ _x56161_)))
                (let () (declare (not safe)) (_else5613356147_)))))))
    (define foldr2
      (lambda (_f56048_ _iv56049_ _lst156050_ _lst256051_)
        (let _recur56053_ ((_rest156055_ _lst156050_)
                           (_rest256056_ _lst256051_))
          (let* ((_rest15605756065_ _rest156055_)
                 (_else5605956073_ (lambda () _iv56049_))
                 (_K5606156112_
                  (lambda (_rest156076_ _x156077_)
                    (let* ((_rest25607856086_ _rest256056_)
                           (_else5608056094_ (lambda () _iv56049_))
                           (_K5608256100_
                            (lambda (_rest256097_ _x256098_)
                              (_f56048_
                               _x156077_
                               _x256098_
                               (let ()
                                 (declare (not safe))
                                 (_recur56053_ _rest156076_ _rest256097_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25607856086_))
                          (let ((_hd5608356103_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25607856086_)))
                                (_tl5608456105_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25607856086_))))
                            (let* ((_x256108_ _hd5608356103_)
                                   (_rest256110_ _tl5608456105_))
                              (declare (not safe))
                              (_K5608256100_ _rest256110_ _x256108_)))
                          (let () (declare (not safe)) (_else5608056094_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15605756065_))
                (let ((_hd5606256115_
                       (let () (declare (not safe)) (##car _rest15605756065_)))
                      (_tl5606356117_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15605756065_))))
                  (let* ((_x156120_ _hd5606256115_)
                         (_rest156122_ _tl5606356117_))
                    (declare (not safe))
                    (_K5606156112_ _rest156122_ _x156120_)))
                (let () (declare (not safe)) (_else5605956073_)))))))
    (define foldr
      (lambda _g56877_
        (let ((_g56876_ (let () (declare (not safe)) (##length _g56877_))))
          (cond ((let () (declare (not safe)) (##fx= _g56876_ 3))
                 (apply (lambda (_f56033_ _iv56034_ _lst56035_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f56033_ _iv56034_ _lst56035_)))
                        _g56877_))
                ((let () (declare (not safe)) (##fx= _g56876_ 4))
                 (apply (lambda (_f56037_ _iv56038_ _lst156039_ _lst256040_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f56037_
                                    _iv56038_
                                    _lst156039_
                                    _lst256040_)))
                        _g56877_))
                ((let () (declare (not safe)) (##fx>= _g56876_ 4))
                 (apply foldr* _g56877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g56877_))))))
    (define foldr*
      (lambda (_f56022_ _iv56023_ . _rest56024_)
        (let _recur56026_ ((_rest56028_ _rest56024_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56028_))
              (apply _f56022_
                     (let ((__tmp56880
                            (lambda (_xs56030_ _r56031_)
                              (let ((__tmp56881 (car _xs56030_)))
                                (declare (not safe))
                                (cons __tmp56881 _r56031_))))
                           (__tmp56878
                            (list (let ((__tmp56879 (map cdr _rest56028_)))
                                    (declare (not safe))
                                    (_recur56026_ __tmp56879)))))
                       (declare (not safe))
                       (foldr1 __tmp56880 __tmp56878 _rest56028_)))
              _iv56023_))))
    (define drop
      (lambda (_l56019_ _k56020_)
        (if (let () (declare (not safe)) (##fxpositive? _k56020_))
            (let ((__tmp56883 (let () (declare (not safe)) (##cdr _l56019_)))
                  (__tmp56882
                   (let () (declare (not safe)) (##fx- _k56020_ '1))))
              (declare (not safe))
              (drop __tmp56883 __tmp56882))
            _l56019_)))
    (define remove-nulls!
      (lambda (_l55906_)
        (let* ((_l5590755920_ _l55906_)
               (_E5591155924_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _l5590755920_)))))
          (let ((_K5591656009_
                 (lambda (_r56007_)
                   (let () (declare (not safe)) (remove-nulls! _r56007_))))
                (_K5591355996_
                 (lambda (_r55936_)
                   (let _loop55938_ ((_l55940_ _l55906_) (_r55941_ _r55936_))
                     (let* ((_r5594255955_ _r55941_)
                            (_E5594655959_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _r5594255955_)))))
                       (let ((_K5595155986_
                              (lambda (_rr55984_)
                                (set-cdr!
                                 _l55940_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr55984_)))))
                             (_K5594855973_
                              (lambda (_rr55971_)
                                (let ()
                                  (declare (not safe))
                                  (_loop55938_ _r55941_ _rr55971_))))
                             (_K5594755964_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5594255955_))
                             (let ((_tl5595355991_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5594255955_)))
                                   (_hd5595255989_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5594255955_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5595255989_))
                                   (let ((_rr55994_ _tl5595355991_))
                                     (declare (not safe))
                                     (_K5595155986_ _rr55994_))
                                   (let ((_rr55979_ _tl5595355991_))
                                     (declare (not safe))
                                     (_K5594855973_ _rr55979_))))
                             '#!void))))
                   _l55906_))
                (_K5591255929_ (lambda () _l55906_)))
            (if (let () (declare (not safe)) (##pair? _l5590755920_))
                (let ((_tl5591856014_
                       (let () (declare (not safe)) (##cdr _l5590755920_)))
                      (_hd5591756012_
                       (let () (declare (not safe)) (##car _l5590755920_))))
                  (if (let () (declare (not safe)) (##null? _hd5591756012_))
                      (let ((_r56017_ _tl5591856014_))
                        (declare (not safe))
                        (remove-nulls! _r56017_))
                      (let ((_r56002_ _tl5591856014_))
                        (declare (not safe))
                        (_K5591355996_ _r56002_))))
                (let () (declare (not safe)) (_K5591255929_)))))))
    (define append1!
      (lambda (_l55901_ _x55902_)
        (let ((_l255904_ (let () (declare (not safe)) (cons _x55902_ '()))))
          (if (let () (declare (not safe)) (pair? _l55901_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l55901_))
               _l255904_)
              _l255904_))))
    (define append-reverse
      (lambda (_rev-head55898_ _tail55899_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail55899_ _rev-head55898_))))
    (define append-reverse-until
      (lambda (_pred55851_ _rhead55852_ _tail55853_)
        (let _loop55855_ ((_rhead55857_ _rhead55852_)
                          (_tail55858_ _tail55853_))
          (let* ((_rhead5585955868_ _rhead55857_)
                 (_E5586255872_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rhead5585955868_)))))
            (let ((_K5586655895_ (lambda () (values '() _tail55858_)))
                  (_K5586355879_
                   (lambda (_r55876_ _a55877_)
                     (if (_pred55851_ _a55877_)
                         (values _rhead55857_ _tail55858_)
                         (let ((__tmp56884
                                (let ()
                                  (declare (not safe))
                                  (cons _a55877_ _tail55858_))))
                           (declare (not safe))
                           (_loop55855_ _r55876_ __tmp56884))))))
              (let ((_try-match5586155891_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5585955868_))
                           (let ((_tl5586555884_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5585955868_)))
                                 (_hd5586455882_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5585955868_))))
                             (let ((_a55887_ _hd5586455882_)
                                   (_r55889_ _tl5586555884_))
                               (let ()
                                 (declare (not safe))
                                 (_K5586355879_ _r55889_ _a55887_))))
                           (let () (declare (not safe)) (_E5586255872_))))))
                (if (let () (declare (not safe)) (##null? _rhead5585955868_))
                    (let () (declare (not safe)) (_K5586655895_))
                    (let ()
                      (declare (not safe))
                      (_try-match5586155891_)))))))))
    (define andmap1
      (lambda (_f55811_ _lst55812_)
        (let _lp55814_ ((_rest55816_ _lst55812_))
          (let* ((_rest5581755825_ _rest55816_)
                 (_else5581955833_ (lambda () '#t))
                 (_K5582155839_
                  (lambda (_rest55836_ _x55837_)
                    (if (_f55811_ _x55837_)
                        (let () (declare (not safe)) (_lp55814_ _rest55836_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5581755825_))
                (let ((_hd5582255842_
                       (let () (declare (not safe)) (##car _rest5581755825_)))
                      (_tl5582355844_
                       (let () (declare (not safe)) (##cdr _rest5581755825_))))
                  (let* ((_x55847_ _hd5582255842_)
                         (_rest55849_ _tl5582355844_))
                    (declare (not safe))
                    (_K5582155839_ _rest55849_ _x55847_)))
                (let () (declare (not safe)) (_else5581955833_)))))))
    (define andmap2
      (lambda (_f55736_ _lst155737_ _lst255738_)
        (let _lp55740_ ((_rest155742_ _lst155737_) (_rest255743_ _lst255738_))
          (let* ((_rest15574455752_ _rest155742_)
                 (_else5574655760_ (lambda () '#t))
                 (_K5574855799_
                  (lambda (_rest155763_ _x155764_)
                    (let* ((_rest25576555773_ _rest255743_)
                           (_else5576755781_ (lambda () '#t))
                           (_K5576955787_
                            (lambda (_rest255784_ _x255785_)
                              (if (_f55736_ _x155764_ _x255785_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp55740_ _rest155763_ _rest255784_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25576555773_))
                          (let ((_hd5577055790_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25576555773_)))
                                (_tl5577155792_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25576555773_))))
                            (let* ((_x255795_ _hd5577055790_)
                                   (_rest255797_ _tl5577155792_))
                              (declare (not safe))
                              (_K5576955787_ _rest255797_ _x255795_)))
                          (let () (declare (not safe)) (_else5576755781_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15574455752_))
                (let ((_hd5574955802_
                       (let () (declare (not safe)) (##car _rest15574455752_)))
                      (_tl5575055804_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15574455752_))))
                  (let* ((_x155807_ _hd5574955802_)
                         (_rest155809_ _tl5575055804_))
                    (declare (not safe))
                    (_K5574855799_ _rest155809_ _x155807_)))
                (let () (declare (not safe)) (_else5574655760_)))))))
    (define andmap
      (lambda _g56886_
        (let ((_g56885_ (let () (declare (not safe)) (##length _g56886_))))
          (cond ((let () (declare (not safe)) (##fx= _g56885_ 2))
                 (apply (lambda (_f55724_ _lst55725_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f55724_ _lst55725_)))
                        _g56886_))
                ((let () (declare (not safe)) (##fx= _g56885_ 3))
                 (apply (lambda (_f55727_ _lst155728_ _lst255729_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f55727_ _lst155728_ _lst255729_)))
                        _g56886_))
                ((let () (declare (not safe)) (##fx>= _g56885_ 3))
                 (apply andmap* _g56886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g56886_))))))
    (define andmap*
      (lambda (_f55717_ . _rest55718_)
        (let _recur55720_ ((_rest55722_ _rest55718_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55722_))
              (if (apply _f55717_ (map car _rest55722_))
                  (let ((__tmp56887 (map cdr _rest55722_)))
                    (declare (not safe))
                    (_recur55720_ __tmp56887))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f55674_ _lst55675_)
        (let _lp55677_ ((_rest55679_ _lst55675_))
          (let* ((_rest5568055688_ _rest55679_)
                 (_else5568255696_ (lambda () '#f))
                 (_K5568455705_
                  (lambda (_rest55699_ _x55700_)
                    (let ((_$e55702_ (_f55674_ _x55700_)))
                      (if _$e55702_
                          _$e55702_
                          (let ()
                            (declare (not safe))
                            (_lp55677_ _rest55699_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5568055688_))
                (let ((_hd5568555708_
                       (let () (declare (not safe)) (##car _rest5568055688_)))
                      (_tl5568655710_
                       (let () (declare (not safe)) (##cdr _rest5568055688_))))
                  (let* ((_x55713_ _hd5568555708_)
                         (_rest55715_ _tl5568655710_))
                    (declare (not safe))
                    (_K5568455705_ _rest55715_ _x55713_)))
                (let () (declare (not safe)) (_else5568255696_)))))))
    (define ormap2
      (lambda (_f55596_ _lst155597_ _lst255598_)
        (let _lp55600_ ((_rest155602_ _lst155597_) (_rest255603_ _lst255598_))
          (let* ((_rest15560455612_ _rest155602_)
                 (_else5560655620_ (lambda () '#f))
                 (_K5560855662_
                  (lambda (_rest155623_ _x155624_)
                    (let* ((_rest25562555633_ _rest255603_)
                           (_else5562755641_ (lambda () '#f))
                           (_K5562955650_
                            (lambda (_rest255644_ _x255645_)
                              (let ((_$e55647_ (_f55596_ _x155624_ _x255645_)))
                                (if _$e55647_
                                    _$e55647_
                                    (let ()
                                      (declare (not safe))
                                      (_lp55600_
                                       _rest155623_
                                       _rest255644_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25562555633_))
                          (let ((_hd5563055653_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25562555633_)))
                                (_tl5563155655_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25562555633_))))
                            (let* ((_x255658_ _hd5563055653_)
                                   (_rest255660_ _tl5563155655_))
                              (declare (not safe))
                              (_K5562955650_ _rest255660_ _x255658_)))
                          (let () (declare (not safe)) (_else5562755641_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15560455612_))
                (let ((_hd5560955665_
                       (let () (declare (not safe)) (##car _rest15560455612_)))
                      (_tl5561055667_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15560455612_))))
                  (let* ((_x155670_ _hd5560955665_)
                         (_rest155672_ _tl5561055667_))
                    (declare (not safe))
                    (_K5560855662_ _rest155672_ _x155670_)))
                (let () (declare (not safe)) (_else5560655620_)))))))
    (define ormap
      (lambda _g56889_
        (let ((_g56888_ (let () (declare (not safe)) (##length _g56889_))))
          (cond ((let () (declare (not safe)) (##fx= _g56888_ 2))
                 (apply (lambda (_f55584_ _lst55585_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f55584_ _lst55585_)))
                        _g56889_))
                ((let () (declare (not safe)) (##fx= _g56888_ 3))
                 (apply (lambda (_f55587_ _lst155588_ _lst255589_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f55587_ _lst155588_ _lst255589_)))
                        _g56889_))
                ((let () (declare (not safe)) (##fx>= _g56888_ 3))
                 (apply ormap* _g56889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g56889_))))))
    (define ormap*
      (lambda (_f55574_ . _rest55575_)
        (let _recur55577_ ((_rest55579_ _rest55575_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55579_))
              (let ((_$e55581_ (apply _f55574_ (map car _rest55579_))))
                (if _$e55581_
                    _$e55581_
                    (let ((__tmp56890 (map cdr _rest55579_)))
                      (declare (not safe))
                      (_recur55577_ __tmp56890))))
              '#f))))
    (define filter
      (lambda (_f55532_ _lst55533_)
        (let _recur55535_ ((_lst55537_ _lst55533_))
          (let* ((_lst5553855546_ _lst55537_)
                 (_else5554055554_ (lambda () '()))
                 (_K5554255562_
                  (lambda (_rest55557_ _hd55558_)
                    (if (_f55532_ _hd55558_)
                        (let ((_tail55560_
                               (let ()
                                 (declare (not safe))
                                 (_recur55535_ _rest55557_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail55560_ _rest55557_))
                              _lst55537_
                              (let ()
                                (declare (not safe))
                                (cons _hd55558_ _tail55560_))))
                        (let ()
                          (declare (not safe))
                          (_recur55535_ _rest55557_))))))
            (if (let () (declare (not safe)) (##pair? _lst5553855546_))
                (let ((_hd5554355565_
                       (let () (declare (not safe)) (##car _lst5553855546_)))
                      (_tl5554455567_
                       (let () (declare (not safe)) (##cdr _lst5553855546_))))
                  (let* ((_hd55570_ _hd5554355565_)
                         (_rest55572_ _tl5554455567_))
                    (declare (not safe))
                    (_K5554255562_ _rest55572_ _hd55570_)))
                (let () (declare (not safe)) (_else5554055554_)))))))
    (define filter-map1
      (lambda (_f55487_ _lst55488_)
        (let _recur55490_ ((_rest55492_ _lst55488_))
          (let* ((_rest5549355501_ _rest55492_)
                 (_else5549555509_ (lambda () '()))
                 (_K5549755520_
                  (lambda (_rest55512_ _x55513_)
                    (let ((_$e55515_ (_f55487_ _x55513_)))
                      (if _$e55515_
                          ((lambda (_r55518_)
                             (let ((__tmp56891
                                    (let ()
                                      (declare (not safe))
                                      (_recur55490_ _rest55512_))))
                               (declare (not safe))
                               (cons _r55518_ __tmp56891)))
                           _$e55515_)
                          (let ()
                            (declare (not safe))
                            (_recur55490_ _rest55512_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5549355501_))
                (let ((_hd5549855523_
                       (let () (declare (not safe)) (##car _rest5549355501_)))
                      (_tl5549955525_
                       (let () (declare (not safe)) (##cdr _rest5549355501_))))
                  (let* ((_x55528_ _hd5549855523_)
                         (_rest55530_ _tl5549955525_))
                    (declare (not safe))
                    (_K5549755520_ _rest55530_ _x55528_)))
                (let () (declare (not safe)) (_else5549555509_)))))))
    (define filter-map2
      (lambda (_f55407_ _lst155408_ _lst255409_)
        (let _recur55411_ ((_rest155413_ _lst155408_)
                           (_rest255414_ _lst255409_))
          (let* ((_rest15541555423_ _rest155413_)
                 (_else5541755431_ (lambda () '()))
                 (_K5541955475_
                  (lambda (_rest155434_ _x155435_)
                    (let* ((_rest25543655444_ _rest255414_)
                           (_else5543855452_ (lambda () '()))
                           (_K5544055463_
                            (lambda (_rest255455_ _x255456_)
                              (let ((_$e55458_ (_f55407_ _x155435_ _x255456_)))
                                (if _$e55458_
                                    ((lambda (_r55461_)
                                       (let ((__tmp56892
                                              (let ()
                                                (declare (not safe))
                                                (_recur55411_
                                                 _rest155434_
                                                 _rest255455_))))
                                         (declare (not safe))
                                         (cons _r55461_ __tmp56892)))
                                     _$e55458_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur55411_
                                       _rest155434_
                                       _rest255455_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25543655444_))
                          (let ((_hd5544155466_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25543655444_)))
                                (_tl5544255468_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25543655444_))))
                            (let* ((_x255471_ _hd5544155466_)
                                   (_rest255473_ _tl5544255468_))
                              (declare (not safe))
                              (_K5544055463_ _rest255473_ _x255471_)))
                          (let () (declare (not safe)) (_else5543855452_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15541555423_))
                (let ((_hd5542055478_
                       (let () (declare (not safe)) (##car _rest15541555423_)))
                      (_tl5542155480_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15541555423_))))
                  (let* ((_x155483_ _hd5542055478_)
                         (_rest155485_ _tl5542155480_))
                    (declare (not safe))
                    (_K5541955475_ _rest155485_ _x155483_)))
                (let () (declare (not safe)) (_else5541755431_)))))))
    (define filter-map
      (lambda _g56894_
        (let ((_g56893_ (let () (declare (not safe)) (##length _g56894_))))
          (cond ((let () (declare (not safe)) (##fx= _g56893_ 2))
                 (apply (lambda (_f55395_ _lst55396_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f55395_ _lst55396_)))
                        _g56894_))
                ((let () (declare (not safe)) (##fx= _g56893_ 3))
                 (apply (lambda (_f55398_ _lst155399_ _lst255400_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f55398_ _lst155399_ _lst255400_)))
                        _g56894_))
                ((let () (declare (not safe)) (##fx>= _g56893_ 3))
                 (apply filter-map* _g56894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g56894_))))))
    (define filter-map*
      (lambda (_f55383_ . _rest55384_)
        (let _recur55386_ ((_rest55388_ _rest55384_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest55388_))
              (let ((_$e55390_ (apply _f55383_ (map car _rest55388_))))
                (if _$e55390_
                    ((lambda (_r55393_)
                       (let ((__tmp56896
                              (let ((__tmp56897 (map cdr _rest55388_)))
                                (declare (not safe))
                                (_recur55386_ __tmp56897))))
                         (declare (not safe))
                         (cons _r55393_ __tmp56896)))
                     _$e55390_)
                    (let ((__tmp56895 (map cdr _rest55388_)))
                      (declare (not safe))
                      (_recur55386_ __tmp56895))))
              '()))))
    (define iota__%
      (lambda (_count55351_ _start55352_ _step55353_)
        (if (let () (declare (not safe)) (fixnum? _count55351_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected fixnum" _count55351_)))
        (if (let () (declare (not safe)) (number? _start55352_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected number" _start55352_)))
        (if (let () (declare (not safe)) (number? _step55353_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected number" _step55353_)))
        (let ((_root55355_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp55357_ ((_i55359_ '0)
                          (_x55360_ _start55352_)
                          (_tl55361_ _root55355_))
            (if (let () (declare (not safe)) (##fx< _i55359_ _count55351_))
                (let ((_tl*55363_
                       (let () (declare (not safe)) (cons _x55360_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl55361_ _tl*55363_))
                  (let ((__tmp56899
                         (let () (declare (not safe)) (##fx+ _i55359_ '1)))
                        (__tmp56898 (+ _x55360_ _step55353_)))
                    (declare (not safe))
                    (_lp55357_ __tmp56899 __tmp56898 _tl*55363_)))
                (let () (declare (not safe)) (##cdr _root55355_)))))))
    (define iota__0
      (lambda (_count55368_)
        (let* ((_start55370_ '0) (_step55372_ '1))
          (declare (not safe))
          (iota__% _count55368_ _start55370_ _step55372_))))
    (define iota__1
      (lambda (_count55374_ _start55375_)
        (let ((_step55377_ '1))
          (declare (not safe))
          (iota__% _count55374_ _start55375_ _step55377_))))
    (define iota
      (lambda _g56901_
        (let ((_g56900_ (let () (declare (not safe)) (##length _g56901_))))
          (cond ((let () (declare (not safe)) (##fx= _g56900_ 1))
                 (apply (lambda (_count55368_)
                          (let () (declare (not safe)) (iota__0 _count55368_)))
                        _g56901_))
                ((let () (declare (not safe)) (##fx= _g56900_ 2))
                 (apply (lambda (_count55374_ _start55375_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count55374_ _start55375_)))
                        _g56901_))
                ((let () (declare (not safe)) (##fx= _g56900_ 3))
                 (apply (lambda (_count55379_ _start55380_ _step55381_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count55379_ _start55380_ _step55381_)))
                        _g56901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g56901_))))))
    (define last-pair
      (lambda (_lst55325_)
        (let* ((_lst5532655333_ _lst55325_)
               (_E5532855337_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _lst5532655333_))))
               (_K5532955342_
                (lambda (_rest55340_)
                  (if (let () (declare (not safe)) (pair? _rest55340_))
                      (let () (declare (not safe)) (last-pair _rest55340_))
                      _lst55325_))))
          (if (let () (declare (not safe)) (##pair? _lst5532655333_))
              (let* ((_tl5533155345_
                      (let () (declare (not safe)) (##cdr _lst5532655333_)))
                     (_rest55348_ _tl5533155345_))
                (declare (not safe))
                (_K5532955342_ _rest55348_))
              (let () (declare (not safe)) (_E5532855337_))))))
    (define last
      (lambda (_lst55323_)
        (car (let () (declare (not safe)) (last-pair _lst55323_)))))
    (define assgetq__%
      (lambda (_key55301_ _lst55303_ _default55305_)
        (let ((_$e55308_
               (if (let () (declare (not safe)) (pair? _lst55303_))
                   (assq _key55301_ _lst55303_)
                   '#f)))
          (if _$e55308_
              (cdr _$e55308_)
              (if (let () (declare (not safe)) (procedure? _default55305_))
                  (_default55305_ _key55301_)
                  _default55305_)))))
    (define assgetq__0
      (lambda (_key55314_ _lst55315_)
        (let ((_default55317_ '#f))
          (declare (not safe))
          (assgetq__% _key55314_ _lst55315_ _default55317_))))
    (define assgetq
      (lambda _g56903_
        (let ((_g56902_ (let () (declare (not safe)) (##length _g56903_))))
          (cond ((let () (declare (not safe)) (##fx= _g56902_ 2))
                 (apply (lambda (_key55314_ _lst55315_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key55314_ _lst55315_)))
                        _g56903_))
                ((let () (declare (not safe)) (##fx= _g56902_ 3))
                 (apply (lambda (_key55319_ _lst55320_ _default55321_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key55319_ _lst55320_ _default55321_)))
                        _g56903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g56903_))))))
    (define assgetv__%
      (lambda (_key55278_ _lst55280_ _default55282_)
        (let ((_$e55285_
               (if (let () (declare (not safe)) (pair? _lst55280_))
                   (assv _key55278_ _lst55280_)
                   '#f)))
          (if _$e55285_
              (cdr _$e55285_)
              (if (let () (declare (not safe)) (procedure? _default55282_))
                  (_default55282_ _key55278_)
                  _default55282_)))))
    (define assgetv__0
      (lambda (_key55291_ _lst55292_)
        (let ((_default55294_ '#f))
          (declare (not safe))
          (assgetv__% _key55291_ _lst55292_ _default55294_))))
    (define assgetv
      (lambda _g56905_
        (let ((_g56904_ (let () (declare (not safe)) (##length _g56905_))))
          (cond ((let () (declare (not safe)) (##fx= _g56904_ 2))
                 (apply (lambda (_key55291_ _lst55292_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key55291_ _lst55292_)))
                        _g56905_))
                ((let () (declare (not safe)) (##fx= _g56904_ 3))
                 (apply (lambda (_key55296_ _lst55297_ _default55298_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key55296_ _lst55297_ _default55298_)))
                        _g56905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g56905_))))))
    (define assget__%
      (lambda (_key55255_ _lst55257_ _default55259_)
        (let ((_$e55262_
               (if (let () (declare (not safe)) (pair? _lst55257_))
                   (assoc _key55255_ _lst55257_)
                   '#f)))
          (if _$e55262_
              (cdr _$e55262_)
              (if (let () (declare (not safe)) (procedure? _default55259_))
                  (_default55259_ _key55255_)
                  _default55259_)))))
    (define assget__0
      (lambda (_key55268_ _lst55269_)
        (let ((_default55271_ '#f))
          (declare (not safe))
          (assget__% _key55268_ _lst55269_ _default55271_))))
    (define assget
      (lambda _g56907_
        (let ((_g56906_ (let () (declare (not safe)) (##length _g56907_))))
          (cond ((let () (declare (not safe)) (##fx= _g56906_ 2))
                 (apply (lambda (_key55268_ _lst55269_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key55268_ _lst55269_)))
                        _g56907_))
                ((let () (declare (not safe)) (##fx= _g56906_ 3))
                 (apply (lambda (_key55273_ _lst55274_ _default55275_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key55273_ _lst55274_ _default55275_)))
                        _g56907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g56907_))))))
    (define pgetq__%
      (lambda (_key55184_ _lst55186_ _default55188_)
        (let _lp55191_ ((_rest55194_ _lst55186_))
          (let* ((_rest5519655206_ _rest55194_)
                 (_else5519855214_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55188_))
                        (_default55188_ _key55184_)
                        _default55188_)))
                 (_K5520055223_
                  (lambda (_rest55217_ _v55218_ _k55220_)
                    (if (let () (declare (not safe)) (eq? _k55220_ _key55184_))
                        _v55218_
                        (let ()
                          (declare (not safe))
                          (_lp55191_ _rest55217_))))))
            (if (let () (declare (not safe)) (##pair? _rest5519655206_))
                (let ((_hd5520155226_
                       (let () (declare (not safe)) (##car _rest5519655206_)))
                      (_tl5520255228_
                       (let () (declare (not safe)) (##cdr _rest5519655206_))))
                  (let ((_k55231_ _hd5520155226_))
                    (if (let () (declare (not safe)) (##pair? _tl5520255228_))
                        (let ((_hd5520355233_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5520255228_)))
                              (_tl5520455235_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5520255228_))))
                          (let* ((_v55238_ _hd5520355233_)
                                 (_rest55240_ _tl5520455235_))
                            (declare (not safe))
                            (_K5520055223_ _rest55240_ _v55238_ _k55231_)))
                        (let () (declare (not safe)) (_else5519855214_)))))
                (let () (declare (not safe)) (_else5519855214_)))))))
    (define pgetq__0
      (lambda (_key55245_ _lst55246_)
        (let ((_default55248_ '#f))
          (declare (not safe))
          (pgetq__% _key55245_ _lst55246_ _default55248_))))
    (define pgetq
      (lambda _g56909_
        (let ((_g56908_ (let () (declare (not safe)) (##length _g56909_))))
          (cond ((let () (declare (not safe)) (##fx= _g56908_ 2))
                 (apply (lambda (_key55245_ _lst55246_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key55245_ _lst55246_)))
                        _g56909_))
                ((let () (declare (not safe)) (##fx= _g56908_ 3))
                 (apply (lambda (_key55250_ _lst55251_ _default55252_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key55250_ _lst55251_ _default55252_)))
                        _g56909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g56909_))))))
    (define pgetv__%
      (lambda (_key55113_ _lst55115_ _default55117_)
        (let _lp55120_ ((_rest55123_ _lst55115_))
          (let* ((_rest5512555135_ _rest55123_)
                 (_else5512755143_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55117_))
                        (_default55117_ _key55113_)
                        _default55117_)))
                 (_K5512955152_
                  (lambda (_rest55146_ _v55147_ _k55149_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k55149_ _key55113_))
                        _v55147_
                        (let ()
                          (declare (not safe))
                          (_lp55120_ _rest55146_))))))
            (if (let () (declare (not safe)) (##pair? _rest5512555135_))
                (let ((_hd5513055155_
                       (let () (declare (not safe)) (##car _rest5512555135_)))
                      (_tl5513155157_
                       (let () (declare (not safe)) (##cdr _rest5512555135_))))
                  (let ((_k55160_ _hd5513055155_))
                    (if (let () (declare (not safe)) (##pair? _tl5513155157_))
                        (let ((_hd5513255162_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5513155157_)))
                              (_tl5513355164_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5513155157_))))
                          (let* ((_v55167_ _hd5513255162_)
                                 (_rest55169_ _tl5513355164_))
                            (declare (not safe))
                            (_K5512955152_ _rest55169_ _v55167_ _k55160_)))
                        (let () (declare (not safe)) (_else5512755143_)))))
                (let () (declare (not safe)) (_else5512755143_)))))))
    (define pgetv__0
      (lambda (_key55174_ _lst55175_)
        (let ((_default55177_ '#f))
          (declare (not safe))
          (pgetv__% _key55174_ _lst55175_ _default55177_))))
    (define pgetv
      (lambda _g56911_
        (let ((_g56910_ (let () (declare (not safe)) (##length _g56911_))))
          (cond ((let () (declare (not safe)) (##fx= _g56910_ 2))
                 (apply (lambda (_key55174_ _lst55175_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key55174_ _lst55175_)))
                        _g56911_))
                ((let () (declare (not safe)) (##fx= _g56910_ 3))
                 (apply (lambda (_key55179_ _lst55180_ _default55181_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key55179_ _lst55180_ _default55181_)))
                        _g56911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g56911_))))))
    (define pget__%
      (lambda (_key55042_ _lst55044_ _default55046_)
        (let _lp55049_ ((_rest55052_ _lst55044_))
          (let* ((_rest5505455064_ _rest55052_)
                 (_else5505655072_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55046_))
                        (_default55046_ _key55042_)
                        _default55046_)))
                 (_K5505855081_
                  (lambda (_rest55075_ _v55076_ _k55078_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k55078_ _key55042_))
                        _v55076_
                        (let ()
                          (declare (not safe))
                          (_lp55049_ _rest55075_))))))
            (if (let () (declare (not safe)) (##pair? _rest5505455064_))
                (let ((_hd5505955084_
                       (let () (declare (not safe)) (##car _rest5505455064_)))
                      (_tl5506055086_
                       (let () (declare (not safe)) (##cdr _rest5505455064_))))
                  (let ((_k55089_ _hd5505955084_))
                    (if (let () (declare (not safe)) (##pair? _tl5506055086_))
                        (let ((_hd5506155091_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5506055086_)))
                              (_tl5506255093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5506055086_))))
                          (let* ((_v55096_ _hd5506155091_)
                                 (_rest55098_ _tl5506255093_))
                            (declare (not safe))
                            (_K5505855081_ _rest55098_ _v55096_ _k55089_)))
                        (let () (declare (not safe)) (_else5505655072_)))))
                (let () (declare (not safe)) (_else5505655072_)))))))
    (define pget__0
      (lambda (_key55103_ _lst55104_)
        (let ((_default55106_ '#f))
          (declare (not safe))
          (pget__% _key55103_ _lst55104_ _default55106_))))
    (define pget
      (lambda _g56913_
        (let ((_g56912_ (let () (declare (not safe)) (##length _g56913_))))
          (cond ((let () (declare (not safe)) (##fx= _g56912_ 2))
                 (apply (lambda (_key55103_ _lst55104_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key55103_ _lst55104_)))
                        _g56913_))
                ((let () (declare (not safe)) (##fx= _g56912_ 3))
                 (apply (lambda (_key55108_ _lst55109_ _default55110_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key55108_ _lst55109_ _default55110_)))
                        _g56913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g56913_))))))
    (define find
      (lambda (_pred55035_ _lst55036_)
        (let ((_$e55038_
               (let () (declare (not safe)) (memf _pred55035_ _lst55036_))))
          (if _$e55038_ (car _$e55038_) '#f))))
    (define memf
      (lambda (_proc54995_ _lst54996_)
        (let _lp54998_ ((_rest55000_ _lst54996_))
          (let* ((_rest5500155009_ _rest55000_)
                 (_else5500355017_ (lambda () '#f))
                 (_K5500555023_
                  (lambda (_tl55020_ _hd55021_)
                    (if (_proc54995_ _hd55021_)
                        _rest55000_
                        (let () (declare (not safe)) (_lp54998_ _tl55020_))))))
            (if (let () (declare (not safe)) (##pair? _rest5500155009_))
                (let ((_hd5500655026_
                       (let () (declare (not safe)) (##car _rest5500155009_)))
                      (_tl5500755028_
                       (let () (declare (not safe)) (##cdr _rest5500155009_))))
                  (let* ((_hd55031_ _hd5500655026_) (_tl55033_ _tl5500755028_))
                    (declare (not safe))
                    (_K5500555023_ _tl55033_ _hd55031_)))
                (let () (declare (not safe)) (_else5500355017_)))))))
    (define remove1
      (lambda (_el54948_ _lst54950_)
        (let _lp54953_ ((_rest54956_ _lst54950_) (_r54958_ '()))
          (let* ((_rest5496054968_ _rest54956_)
                 (_else5496254976_ (lambda () _lst54950_))
                 (_K5496454983_
                  (lambda (_rest54979_ _hd54980_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el54948_ _hd54980_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest54979_ _r54958_))
                        (let ((__tmp56914
                               (let ()
                                 (declare (not safe))
                                 (cons _hd54980_ _r54958_))))
                          (declare (not safe))
                          (_lp54953_ _rest54979_ __tmp56914))))))
            (if (let () (declare (not safe)) (##pair? _rest5496054968_))
                (let ((_hd5496554986_
                       (let () (declare (not safe)) (##car _rest5496054968_)))
                      (_tl5496654988_
                       (let () (declare (not safe)) (##cdr _rest5496054968_))))
                  (let* ((_hd54991_ _hd5496554986_)
                         (_rest54993_ _tl5496654988_))
                    (declare (not safe))
                    (_K5496454983_ _rest54993_ _hd54991_)))
                (let () (declare (not safe)) (_else5496254976_)))))))
    (define remv
      (lambda (_el54901_ _lst54903_)
        (let _lp54906_ ((_rest54909_ _lst54903_) (_r54911_ '()))
          (let* ((_rest5491354921_ _rest54909_)
                 (_else5491554929_ (lambda () _lst54903_))
                 (_K5491754936_
                  (lambda (_rest54932_ _hd54933_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el54901_ _hd54933_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest54932_ _r54911_))
                        (let ((__tmp56915
                               (let ()
                                 (declare (not safe))
                                 (cons _hd54933_ _r54911_))))
                          (declare (not safe))
                          (_lp54906_ _rest54932_ __tmp56915))))))
            (if (let () (declare (not safe)) (##pair? _rest5491354921_))
                (let ((_hd5491854939_
                       (let () (declare (not safe)) (##car _rest5491354921_)))
                      (_tl5491954941_
                       (let () (declare (not safe)) (##cdr _rest5491354921_))))
                  (let* ((_hd54944_ _hd5491854939_)
                         (_rest54946_ _tl5491954941_))
                    (declare (not safe))
                    (_K5491754936_ _rest54946_ _hd54944_)))
                (let () (declare (not safe)) (_else5491554929_)))))))
    (define remq
      (lambda (_el54854_ _lst54856_)
        (let _lp54859_ ((_rest54862_ _lst54856_) (_r54864_ '()))
          (let* ((_rest5486654874_ _rest54862_)
                 (_else5486854882_ (lambda () _lst54856_))
                 (_K5487054889_
                  (lambda (_rest54885_ _hd54886_)
                    (if (let () (declare (not safe)) (eq? _el54854_ _hd54886_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest54885_ _r54864_))
                        (let ((__tmp56916
                               (let ()
                                 (declare (not safe))
                                 (cons _hd54886_ _r54864_))))
                          (declare (not safe))
                          (_lp54859_ _rest54885_ __tmp56916))))))
            (if (let () (declare (not safe)) (##pair? _rest5486654874_))
                (let ((_hd5487154892_
                       (let () (declare (not safe)) (##car _rest5486654874_)))
                      (_tl5487254894_
                       (let () (declare (not safe)) (##cdr _rest5486654874_))))
                  (let* ((_hd54897_ _hd5487154892_)
                         (_rest54899_ _tl5487254894_))
                    (declare (not safe))
                    (_K5487054889_ _rest54899_ _hd54897_)))
                (let () (declare (not safe)) (_else5486854882_)))))))
    (define remf
      (lambda (_proc54813_ _lst54814_)
        (let _lp54816_ ((_rest54818_ _lst54814_) (_r54819_ '()))
          (let* ((_rest5482054828_ _rest54818_)
                 (_else5482254836_ (lambda () _lst54814_))
                 (_K5482454842_
                  (lambda (_rest54839_ _hd54840_)
                    (if (_proc54813_ _hd54840_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest54839_ _r54819_))
                        (let ((__tmp56917
                               (let ()
                                 (declare (not safe))
                                 (cons _hd54840_ _r54819_))))
                          (declare (not safe))
                          (_lp54816_ _rest54839_ __tmp56917))))))
            (if (let () (declare (not safe)) (##pair? _rest5482054828_))
                (let ((_hd5482554845_
                       (let () (declare (not safe)) (##car _rest5482054828_)))
                      (_tl5482654847_
                       (let () (declare (not safe)) (##cdr _rest5482054828_))))
                  (let* ((_hd54850_ _hd5482554845_)
                         (_rest54852_ _tl5482654847_))
                    (declare (not safe))
                    (_K5482454842_ _rest54852_ _hd54850_)))
                (let () (declare (not safe)) (_else5482254836_)))))))
    (define 1+ (lambda (_x54811_) (+ _x54811_ '1)))
    (define 1- (lambda (_x54809_) (- _x54809_ '1)))
    (define fx1+ (lambda (_x54807_) (fx+ _x54807_ '1)))
    (define fx1- (lambda (_x54805_) (fx- _x54805_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x54803_)
        (if (let () (declare (not safe)) (fixnum? _x54803_))
            (let () (declare (not safe)) (##fx>= _x54803_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x54801_)
        (if (let () (declare (not safe)) (fixnum? _x54801_))
            (let () (declare (not safe)) (##fx> _x54801_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x54799_) (let () (declare (not safe)) (eq? _x54799_ '0))))
    (define fx<0?
      (lambda (_x54797_)
        (if (let () (declare (not safe)) (fixnum? _x54797_))
            (let () (declare (not safe)) (##fx< _x54797_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x54795_)
        (if (let () (declare (not safe)) (fixnum? _x54795_))
            (let () (declare (not safe)) (##fx<= _x54795_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x54793_)
        (if (let () (declare (not safe)) (symbol? _x54793_))
            (let ((__tmp56918 (uninterned-symbol? _x54793_)))
              (declare (not safe))
              (not __tmp56918))
            '#f)))
    (define display-as-string
      (lambda (_x54765_ _port54766_)
        (if (or (let () (declare (not safe)) (string? _x54765_))
                (let () (declare (not safe)) (symbol? _x54765_))
                (keyword? _x54765_)
                (let () (declare (not safe)) (number? _x54765_))
                (let () (declare (not safe)) (char? _x54765_)))
            (display _x54765_ _port54766_)
            (if (let () (declare (not safe)) (pair? _x54765_))
                (begin
                  (let ((__tmp56919 (car _x54765_)))
                    (declare (not safe))
                    (display-as-string __tmp56919 _port54766_))
                  (let ((__tmp56920 (cdr _x54765_)))
                    (declare (not safe))
                    (display-as-string __tmp56920 _port54766_)))
                (if (let () (declare (not safe)) (vector? _x54765_))
                    (vector-for-each
                     (lambda (_g5477954781_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5477954781_ _port54766_)))
                     _x54765_)
                    (if (or (let () (declare (not safe)) (null? _x54765_))
                            (let ()
                              (declare (not safe))
                              (eq? _x54765_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x54765_))
                            (let () (declare (not safe)) (boolean? _x54765_)))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot convert as string" _x54765_))))))))
    (define as-string__0
      (lambda (_x54753_)
        (if (let () (declare (not safe)) (string? _x54753_))
            _x54753_
            (if (let () (declare (not safe)) (symbol? _x54753_))
                (symbol->string _x54753_)
                (if (keyword? _x54753_)
                    (keyword->string _x54753_)
                    (call-with-output-string
                     '()
                     (lambda (_g5475454756_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x54753_ _g5475454756_)))))))))
    (define as-string__1
      (lambda _args54759_
        (call-with-output-string
         '()
         (lambda (_g5476054762_)
           (let ()
             (declare (not safe))
             (display-as-string _args54759_ _g5476054762_))))))
    (define as-string
      (lambda _g56922_
        (let ((_g56921_ (let () (declare (not safe)) (##length _g56922_))))
          (cond ((let () (declare (not safe)) (##fx= _g56921_ 1))
                 (apply (lambda (_x54753_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x54753_)))
                        _g56922_))
                (#t (apply as-string__1 _g56922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g56922_))))))
    (define make-symbol__0
      (lambda (_x54749_)
        (if (interned-symbol? _x54749_)
            _x54749_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x54749_))))))
    (define make-symbol__1
      (lambda _args54751_ (string->symbol (apply as-string _args54751_))))
    (define make-symbol
      (lambda _g56924_
        (let ((_g56923_ (let () (declare (not safe)) (##length _g56924_))))
          (cond ((let () (declare (not safe)) (##fx= _g56923_ 1))
                 (apply (lambda (_x54749_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x54749_)))
                        _g56924_))
                (#t (apply make-symbol__1 _g56924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g56924_))))))
    (define make-keyword__0
      (lambda (_x54745_)
        (if (interned-keyword? _x54745_)
            _x54745_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x54745_))))))
    (define make-keyword__1
      (lambda _args54747_ (string->keyword (apply as-string _args54747_))))
    (define make-keyword
      (lambda _g56926_
        (let ((_g56925_ (let () (declare (not safe)) (##length _g56926_))))
          (cond ((let () (declare (not safe)) (##fx= _g56925_ 1))
                 (apply (lambda (_x54745_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x54745_)))
                        _g56926_))
                (#t (apply make-keyword__1 _g56926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g56926_))))))
    (define interned-keyword?
      (lambda (_x54743_)
        (if (keyword? _x54743_)
            (let ((__tmp56927 (uninterned-keyword? _x54743_)))
              (declare (not safe))
              (not __tmp56927))
            '#f)))
    (define symbol->keyword
      (lambda (_sym54741_)
        ((if (uninterned-symbol? _sym54741_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym54741_))))
    (define keyword->symbol
      (lambda (_kw54739_)
        ((if (uninterned-keyword? _kw54739_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw54739_))))
    (define bytes->string__%
      (lambda (_bstr54717_ _enc54718_)
        (if (let () (declare (not safe)) (eq? _enc54718_ 'UTF-8))
            (utf8->string _bstr54717_)
            (let* ((_in54720_
                    (open-input-u8vector
                     (let ((__tmp56928
                            (let ((__tmp56929
                                   (let ((__tmp56930
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr54717_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp56930))))
                              (declare (not safe))
                              (cons _enc54718_ __tmp56929))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp56928))))
                   (_len54722_ (u8vector-length _bstr54717_))
                   (_out54724_ (make-string _len54722_))
                   (_n54726_
                    (read-substring _out54724_ '0 _len54722_ _in54720_)))
              (string-shrink! _out54724_ _n54726_)
              _out54724_))))
    (define bytes->string__0
      (lambda (_bstr54732_)
        (let ((_enc54734_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr54732_ _enc54734_))))
    (define bytes->string
      (lambda _g56932_
        (let ((_g56931_ (let () (declare (not safe)) (##length _g56932_))))
          (cond ((let () (declare (not safe)) (##fx= _g56931_ 1))
                 (apply (lambda (_bstr54732_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr54732_)))
                        _g56932_))
                ((let () (declare (not safe)) (##fx= _g56931_ 2))
                 (apply (lambda (_bstr54736_ _enc54737_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr54736_ _enc54737_)))
                        _g56932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g56932_))))))
    (define string->bytes__%
      (lambda (_str54703_ _enc54704_)
        (if (let () (declare (not safe)) (eq? _enc54704_ 'UTF-8))
            (string->utf8 _str54703_)
            (substring->bytes
             _str54703_
             '0
             (string-length _str54703_)
             _enc54704_))))
    (define string->bytes__0
      (lambda (_str54709_)
        (let ((_enc54711_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str54709_ _enc54711_))))
    (define string->bytes
      (lambda _g56934_
        (let ((_g56933_ (let () (declare (not safe)) (##length _g56934_))))
          (cond ((let () (declare (not safe)) (##fx= _g56933_ 1))
                 (apply (lambda (_str54709_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str54709_)))
                        _g56934_))
                ((let () (declare (not safe)) (##fx= _g56933_ 2))
                 (apply (lambda (_str54713_ _enc54714_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str54713_ _enc54714_)))
                        _g56934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g56934_))))))
    (define substring->bytes__%
      (lambda (_str54681_ _start54682_ _end54683_ _enc54684_)
        (if (let () (declare (not safe)) (eq? _enc54684_ 'UTF-8))
            (string->utf8 _str54681_ _start54682_ _end54683_)
            (let ((_out54686_
                   (open-output-u8vector
                    (let ((__tmp56935
                           (let ()
                             (declare (not safe))
                             (cons _enc54684_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp56935)))))
              (write-substring _str54681_ _start54682_ _end54683_ _out54686_)
              (get-output-u8vector _out54686_)))))
    (define substring->bytes__0
      (lambda (_str54691_ _start54692_ _end54693_)
        (let ((_enc54695_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str54691_
           _start54692_
           _end54693_
           _enc54695_))))
    (define substring->bytes
      (lambda _g56937_
        (let ((_g56936_ (let () (declare (not safe)) (##length _g56937_))))
          (cond ((let () (declare (not safe)) (##fx= _g56936_ 3))
                 (apply (lambda (_str54691_ _start54692_ _end54693_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str54691_
                             _start54692_
                             _end54693_)))
                        _g56937_))
                ((let () (declare (not safe)) (##fx= _g56936_ 4))
                 (apply (lambda (_str54697_ _start54698_ _end54699_ _enc54700_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str54697_
                             _start54698_
                             _end54699_
                             _enc54700_)))
                        _g56937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g56937_))))))
    (define string-empty?
      (lambda (_str54678_)
        (let ((__tmp56938 (string-length _str54678_)))
          (declare (not safe))
          (##fxzero? __tmp56938))))
    (define string-prefix?
      (lambda (_prefix54668_ _str54669_)
        (let ((_str-len54671_ (string-length _str54669_))
              (_prefix-len54672_ (string-length _prefix54668_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len54672_ _str-len54671_))
              (let _lp54674_ ((_i54676_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i54676_ _prefix-len54672_))
                    (if (let ((__tmp56941
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str54669_ _i54676_)))
                              (__tmp56940
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix54668_ _i54676_))))
                          (declare (not safe))
                          (eq? __tmp56941 __tmp56940))
                        (let ((__tmp56939
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i54676_ '1))))
                          (declare (not safe))
                          (_lp54674_ __tmp56939))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str54646_ _char54647_ _start54648_)
        (let ((_len54650_ (string-length _str54646_)))
          (let _lp54652_ ((_k54654_ _start54648_))
            (if (let () (declare (not safe)) (##fx< _k54654_ _len54650_))
                (if (let ((__tmp56943
                           (let ()
                             (declare (not safe))
                             (##string-ref _str54646_ _k54654_))))
                      (declare (not safe))
                      (eq? _char54647_ __tmp56943))
                    _k54654_
                    (let ((__tmp56942
                           (let () (declare (not safe)) (##fx+ _k54654_ '1))))
                      (declare (not safe))
                      (_lp54652_ __tmp56942)))
                '#f)))))
    (define string-index__0
      (lambda (_str54659_ _char54660_)
        (let ((_start54662_ '0))
          (declare (not safe))
          (string-index__% _str54659_ _char54660_ _start54662_))))
    (define string-index
      (lambda _g56945_
        (let ((_g56944_ (let () (declare (not safe)) (##length _g56945_))))
          (cond ((let () (declare (not safe)) (##fx= _g56944_ 2))
                 (apply (lambda (_str54659_ _char54660_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str54659_ _char54660_)))
                        _g56945_))
                ((let () (declare (not safe)) (##fx= _g56944_ 3))
                 (apply (lambda (_str54664_ _char54665_ _start54666_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str54664_
                             _char54665_
                             _start54666_)))
                        _g56945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g56945_))))))
    (define string-rindex__%
      (lambda (_str54617_ _char54618_ _start54619_)
        (let* ((_len54621_ (string-length _str54617_))
               (_start54626_
                (let ((_$e54623_ _start54619_))
                  (if _$e54623_
                      _$e54623_
                      (let () (declare (not safe)) (##fx- _len54621_ '1))))))
          (let _lp54629_ ((_k54631_ _start54626_))
            (if (let () (declare (not safe)) (##fx>= _k54631_ '0))
                (if (let ((__tmp56947
                           (let ()
                             (declare (not safe))
                             (##string-ref _str54617_ _k54631_))))
                      (declare (not safe))
                      (eq? _char54618_ __tmp56947))
                    _k54631_
                    (let ((__tmp56946
                           (let () (declare (not safe)) (##fx- _k54631_ '1))))
                      (declare (not safe))
                      (_lp54629_ __tmp56946)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str54636_ _char54637_)
        (let ((_start54639_ '#f))
          (declare (not safe))
          (string-rindex__% _str54636_ _char54637_ _start54639_))))
    (define string-rindex
      (lambda _g56949_
        (let ((_g56948_ (let () (declare (not safe)) (##length _g56949_))))
          (cond ((let () (declare (not safe)) (##fx= _g56948_ 2))
                 (apply (lambda (_str54636_ _char54637_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str54636_ _char54637_)))
                        _g56949_))
                ((let () (declare (not safe)) (##fx= _g56948_ 3))
                 (apply (lambda (_str54641_ _char54642_ _start54643_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str54641_
                             _char54642_
                             _start54643_)))
                        _g56949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g56949_))))))
    (define string-split
      (lambda (_str54601_ _char54602_)
        (let ((_len54604_ (string-length _str54601_)))
          (let _lp54606_ ((_start54608_ '0) (_r54609_ '()))
            (let ((_$e54611_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str54601_ _char54602_ _start54608_))))
              (if _$e54611_
                  ((lambda (_end54614_)
                     (let ((__tmp56953
                            (let ()
                              (declare (not safe))
                              (##fx+ _end54614_ '1)))
                           (__tmp56951
                            (let ((__tmp56952
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str54601_
                                      _start54608_
                                      _end54614_))))
                              (declare (not safe))
                              (cons __tmp56952 _r54609_))))
                       (declare (not safe))
                       (_lp54606_ __tmp56953 __tmp56951)))
                   _$e54611_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start54608_ _len54604_))
                      (let ((__tmp56950
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str54601_
                                      _start54608_
                                      _len54604_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp56950 _r54609_))
                      (reverse _r54609_))))))))
    (define string-join
      (lambda (_strs54506_ _join54507_)
        (letrec ((_join-length54509_
                  (lambda (_strs54560_ _jlen54561_)
                    (let _lp54563_ ((_rest54565_ _strs54560_) (_len54566_ '0))
                      (let* ((_rest5456754575_ _rest54565_)
                             (_else5456954583_ (lambda () '0))
                             (_K5457154589_
                              (lambda (_rest54586_ _hd54587_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd54587_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest54586_))
                                        (let ((__tmp56955
                                               (let ((__tmp56956
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd54587_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp56956
                                                        _jlen54561_
                                                        _len54566_))))
                                          (declare (not safe))
                                          (_lp54563_ _rest54586_ __tmp56955))
                                        (let ((__tmp56954
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd54587_))))
                                          (declare (not safe))
                                          (##fx+ __tmp56954 _len54566_)))
                                    (let ()
                                      (declare (not safe))
                                      (error '"expected string" _hd54587_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5456754575_))
                            (let ((_hd5457254592_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5456754575_)))
                                  (_tl5457354594_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5456754575_))))
                              (let* ((_hd54597_ _hd5457254592_)
                                     (_rest54599_ _tl5457354594_))
                                (declare (not safe))
                                (_K5457154589_ _rest54599_ _hd54597_)))
                            (let ()
                              (declare (not safe))
                              (_else5456954583_))))))))
          (let* ((_join54511_
                  (if (let () (declare (not safe)) (char? _join54507_))
                      (string _join54507_)
                      (if (let () (declare (not safe)) (string? _join54507_))
                          _join54507_
                          (let ()
                            (declare (not safe))
                            (error '"expected string or char" _join54507_)))))
                 (_jlen54513_
                  (let () (declare (not safe)) (##string-length _join54511_)))
                 (_olen54515_
                  (let ()
                    (declare (not safe))
                    (_join-length54509_ _strs54506_ _jlen54513_)))
                 (_ostr54517_ (make-string _olen54515_)))
            (let _lp54520_ ((_rest54522_ _strs54506_) (_k54523_ '0))
              (let* ((_rest5452454532_ _rest54522_)
                     (_else5452654540_ (lambda () '""))
                     (_K5452854548_
                      (lambda (_rest54543_ _hd54544_)
                        (let ((_hdlen54546_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd54544_))))
                          (if (let () (declare (not safe)) (pair? _rest54543_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54544_
                                   '0
                                   _hdlen54546_
                                   _ostr54517_
                                   _k54523_))
                                (let ((__tmp56957
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54523_ _hdlen54546_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join54511_
                                   '0
                                   _jlen54513_
                                   _ostr54517_
                                   __tmp56957))
                                (let ((__tmp56958
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k54523_
                                                _hdlen54546_
                                                _jlen54513_))))
                                  (declare (not safe))
                                  (_lp54520_ _rest54543_ __tmp56958)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd54544_
                                   '0
                                   _hdlen54546_
                                   _ostr54517_
                                   _k54523_))
                                _ostr54517_))))))
                (if (let () (declare (not safe)) (##pair? _rest5452454532_))
                    (let ((_hd5452954551_
                           (let ()
                             (declare (not safe))
                             (##car _rest5452454532_)))
                          (_tl5453054553_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5452454532_))))
                      (let* ((_hd54556_ _hd5452954551_)
                             (_rest54558_ _tl5453054553_))
                        (declare (not safe))
                        (_K5452854548_ _rest54558_ _hd54556_)))
                    (let () (declare (not safe)) (_else5452654540_)))))))))
    (define read-u8vector
      (lambda (_bytes54503_ _port54504_)
        (read-subu8vector
         _bytes54503_
         '0
         (u8vector-length _bytes54503_)
         _port54504_)))
    (define write-u8vector
      (lambda (_bytes54500_ _port54501_)
        (write-subu8vector
         _bytes54500_
         '0
         (u8vector-length _bytes54500_)
         _port54501_)))
    (define read-string
      (lambda (_str54497_ _port54498_)
        (read-substring _str54497_ '0 (string-length _str54497_) _port54498_)))
    (define write-string
      (lambda (_str54494_ _port54495_)
        (write-substring
         _str54494_
         '0
         (string-length _str54494_)
         _port54495_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag54463_
               _dbg-exprs54464_
               _dbg-thunks54465_
               _expr54466_
               _thunk54467_)
        (letrec ((_o54469_ (current-output-port))
                 (_e54470_ (current-error-port))
                 (_p54471_ (DBG-printer))
                 (_f54472_
                  (lambda () (force-output _o54469_) (force-output _e54470_)))
                 (_d54473_ (lambda (_x54480_) (display _x54480_ _e54470_)))
                 (_w54474_ (lambda (_x54482_) (_p54471_ _x54482_ _e54470_)))
                 (_n54475_ (lambda () (newline _e54470_)))
                 (_v54476_
                  (lambda (_l54485_)
                    (for-each
                     (lambda (_x54487_)
                       (let () (declare (not safe)) (_d54473_ '" "))
                       (let () (declare (not safe)) (_w54474_ _x54487_)))
                     _l54485_)
                    (let () (declare (not safe)) (_n54475_))))
                 (_x54477_
                  (lambda (_expr54489_ _thunk54490_)
                    (let () (declare (not safe)) (_f54472_))
                    (let () (declare (not safe)) (_d54473_ '"  "))
                    (let () (declare (not safe)) (_w54474_ _expr54489_))
                    (let () (declare (not safe)) (_d54473_ '" =>"))
                    (call-with-values
                     _thunk54490_
                     (lambda _x54492_
                       (let () (declare (not safe)) (_v54476_ _x54492_))
                       (let () (declare (not safe)) (_f54472_))
                       (apply values _x54492_))))))
          (if _tag54463_
              (begin
                (if (let () (declare (not safe)) (eq? _tag54463_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f54472_))
                      (let () (declare (not safe)) (_d54473_ _tag54463_))
                      (let () (declare (not safe)) (_n54475_))))
                (for-each _x54477_ _dbg-exprs54464_ _dbg-thunks54465_)
                (if _thunk54467_
                    (let ()
                      (declare (not safe))
                      (_x54477_ _expr54466_ _thunk54467_))
                    '#!void))
              (if _thunk54467_ (_thunk54467_) '#!void)))))))
