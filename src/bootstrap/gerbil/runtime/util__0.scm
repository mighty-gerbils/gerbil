(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1708271947)
  (begin
    (define displayln
      (lambda _args58133_
        (let _lp58135_ ((_rest58137_ _args58133_))
          (let* ((_rest5813858146_ _rest58137_)
                 (_else5814058154_ (lambda () (newline)))
                 (_K5814258160_
                  (lambda (_rest58157_ _hd58158_)
                    (display _hd58158_)
                    (let () (declare (not safe)) (_lp58135_ _rest58157_)))))
            (if (let () (declare (not safe)) (##pair? _rest5813858146_))
                (let ((_hd5814358163_
                       (let () (declare (not safe)) (##car _rest5813858146_)))
                      (_tl5814458165_
                       (let () (declare (not safe)) (##cdr _rest5813858146_))))
                  (let* ((_hd58168_ _hd5814358163_)
                         (_rest58170_ _tl5814458165_))
                    (declare (not safe))
                    (_K5814258160_ _rest58170_ _hd58168_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args58131_ (for-each display _args58131_)))
    (define file-newer?
      (lambda (_file158124_ _file258125_)
        (letrec ((_modification-time58127_
                  (lambda (_file58129_)
                    (let ((__tmp62621
                           (file-info-last-modification-time
                            (file-info _file58129_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp62621)))))
          (let ((__tmp62623
                 (let ()
                   (declare (not safe))
                   (_modification-time58127_ _file158124_)))
                (__tmp62622
                 (let ()
                   (declare (not safe))
                   (_modification-time58127_ _file258125_))))
            (declare (not safe))
            (##fl> __tmp62623 __tmp62622)))))
    (define create-directory*__%
      (lambda (_dir58098_ _perms58099_)
        (letrec ((_create158101_
                  (lambda (_path58112_)
                    (if (file-exists? _path58112_)
                        (if (let ((__tmp62624 (file-type _path58112_)))
                              (declare (not safe))
                              (eq? __tmp62624 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path58112_))
                        (if _perms58099_
                            (create-directory
                             (list 'path:
                                   _path58112_
                                   'permissions:
                                   _perms58099_))
                            (create-directory _path58112_))))))
          (if (file-exists? _dir58098_)
              '#!void
              (let _lp58103_ ((_start58105_ '0))
                (let ((_$e58107_
                       (let ()
                         (declare (not safe))
                         (string-index _dir58098_ '#\/ _start58105_))))
                  (if _$e58107_
                      ((lambda (_x58110_)
                         (if (let () (declare (not safe)) (##fx> _x58110_ '0))
                             (let ((__tmp62625
                                    (substring _dir58098_ '0 _x58110_)))
                               (declare (not safe))
                               (_create158101_ __tmp62625))
                             '#!void)
                         (let ((__tmp62626
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x58110_ '1))))
                           (declare (not safe))
                           (_lp58103_ __tmp62626)))
                       _$e58107_)
                      (let ()
                        (declare (not safe))
                        (_create158101_ _dir58098_)))))))))
    (define create-directory*__0
      (lambda (_dir58117_)
        (let ((_perms58119_ '493))
          (declare (not safe))
          (create-directory*__% _dir58117_ _perms58119_))))
    (define create-directory*
      (lambda _g62628_
        (let ((_g62627_ (let () (declare (not safe)) (##length _g62628_))))
          (cond ((let () (declare (not safe)) (##fx= _g62627_ 1))
                 (apply (lambda (_dir58117_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir58117_)))
                        _g62628_))
                ((let () (declare (not safe)) (##fx= _g62627_ 2))
                 (apply (lambda (_dir58121_ _perms58122_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir58121_ _perms58122_)))
                        _g62628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g62628_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g62629_ '#t))
    (define true?
      (lambda (_obj58094_) (let () (declare (not safe)) (eq? _obj58094_ '#t))))
    (define false (lambda _g62630_ '#f))
    (define void (lambda _g62631_ '#!void))
    (define void?
      (lambda (_obj58090_)
        (let () (declare (not safe)) (eq? _obj58090_ '#!void))))
    (define eof-object (lambda _g62632_ '#!eof))
    (define identity (lambda (_obj58087_) _obj58087_))
    (define dssl-object?
      (lambda (_obj58085_)
        (if (memq _obj58085_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj58083_)
        (let () (declare (not safe)) (eq? _obj58083_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj58081_)
        (let () (declare (not safe)) (eq? _obj58081_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj58079_)
        (let () (declare (not safe)) (eq? _obj58079_ '#!optional))))
    (define immediate?
      (lambda (_obj58075_)
        (let* ((_t58077_ (let () (declare (not safe)) (##type _obj58075_)))
               (__tmp62633
                (let () (declare (not safe)) (##fxand _t58077_ '1))))
          (declare (not safe))
          (##fxzero? __tmp62633))))
    (define nonnegative-fixnum?
      (lambda (_obj58073_)
        (if (fixnum? _obj58073_)
            (let ((__tmp62634 (fxnegative? _obj58073_)))
              (declare (not safe))
              (not __tmp62634))
            '#f)))
    (define values-count
      (lambda (_obj58071_)
        (if (let () (declare (not safe)) (##values? _obj58071_))
            (let () (declare (not safe)) (##vector-length _obj58071_))
            '1)))
    (define values-ref
      (lambda (_obj58068_ _k58069_)
        (if (let () (declare (not safe)) (##values? _obj58068_))
            (let () (declare (not safe)) (##vector-ref _obj58068_ _k58069_))
            _obj58068_)))
    (define values->list
      (lambda (_obj58066_)
        (if (let () (declare (not safe)) (##values? _obj58066_))
            (let () (declare (not safe)) (##vector->list _obj58066_))
            (list _obj58066_))))
    (define subvector->list__%
      (lambda (_obj58051_ _start58052_)
        (let ((_lst58054_
               (let () (declare (not safe)) (##vector->list _obj58051_))))
          (list-tail _lst58054_ _start58052_))))
    (define subvector->list__0
      (lambda (_obj58059_)
        (let ((_start58061_ '0))
          (declare (not safe))
          (subvector->list__% _obj58059_ _start58061_))))
    (define subvector->list
      (lambda _g62636_
        (let ((_g62635_ (let () (declare (not safe)) (##length _g62636_))))
          (cond ((let () (declare (not safe)) (##fx= _g62635_ 1))
                 (apply (lambda (_obj58059_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj58059_)))
                        _g62636_))
                ((let () (declare (not safe)) (##fx= _g62635_ 2))
                 (apply (lambda (_obj58063_ _start58064_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj58063_ _start58064_)))
                        _g62636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g62636_))))))
    (define make-list__%
      (lambda (_k58032_ _val58033_)
        (if (fixnum? _k58032_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58032_))
        (let _lp58035_ ((_n58037_ '0) (_r58038_ '()))
          (if (let () (declare (not safe)) (##fx< _n58037_ _k58032_))
              (let ((__tmp62638
                     (let () (declare (not safe)) (##fx+ _n58037_ '1)))
                    (__tmp62637
                     (let () (declare (not safe)) (cons _val58033_ _r58038_))))
                (declare (not safe))
                (_lp58035_ __tmp62638 __tmp62637))
              _r58038_))))
    (define make-list__0
      (lambda (_k58043_)
        (let ((_val58045_ '#f))
          (declare (not safe))
          (make-list__% _k58043_ _val58045_))))
    (define make-list
      (lambda _g62640_
        (let ((_g62639_ (let () (declare (not safe)) (##length _g62640_))))
          (cond ((let () (declare (not safe)) (##fx= _g62639_ 1))
                 (apply (lambda (_k58043_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58043_)))
                        _g62640_))
                ((let () (declare (not safe)) (##fx= _g62639_ 2))
                 (apply (lambda (_k58047_ _val58048_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58047_ _val58048_)))
                        _g62640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g62640_))))))
    (define cons*
      (lambda (_x58022_ _y58023_ . _rest58024_)
        (letrec ((_recur58026_
                  (lambda (_x58028_ _rest58029_)
                    (if (let () (declare (not safe)) (pair? _rest58029_))
                        (let ((__tmp62641
                               (let ((__tmp62643
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58029_)))
                                     (__tmp62642
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58029_))))
                                 (declare (not safe))
                                 (_recur58026_ __tmp62643 __tmp62642))))
                          (declare (not safe))
                          (cons _x58028_ __tmp62641))
                        _x58028_))))
          (let ((__tmp62644
                 (let ()
                   (declare (not safe))
                   (_recur58026_ _y58023_ _rest58024_))))
            (declare (not safe))
            (cons _x58022_ __tmp62644)))))
    (define foldl1
      (lambda (_f57980_ _iv57981_ _lst57982_)
        (let _lp57984_ ((_rest57986_ _lst57982_) (_r57987_ _iv57981_))
          (let* ((_rest5798857996_ _rest57986_)
                 (_else5799058004_ (lambda () _r57987_))
                 (_K5799258010_
                  (lambda (_rest58007_ _x58008_)
                    (let ((__tmp62645 (_f57980_ _x58008_ _r57987_)))
                      (declare (not safe))
                      (_lp57984_ _rest58007_ __tmp62645)))))
            (if (let () (declare (not safe)) (##pair? _rest5798857996_))
                (let ((_hd5799358013_
                       (let () (declare (not safe)) (##car _rest5798857996_)))
                      (_tl5799458015_
                       (let () (declare (not safe)) (##cdr _rest5798857996_))))
                  (let* ((_x58018_ _hd5799358013_)
                         (_rest58020_ _tl5799458015_))
                    (declare (not safe))
                    (_K5799258010_ _rest58020_ _x58018_)))
                (let () (declare (not safe)) (_else5799058004_)))))))
    (define foldl2
      (lambda (_f57903_ _iv57904_ _lst157905_ _lst257906_)
        (let _lp57908_ ((_rest157910_ _lst157905_)
                        (_rest257911_ _lst257906_)
                        (_r57912_ _iv57904_))
          (let* ((_rest15791357921_ _rest157910_)
                 (_else5791557929_ (lambda () _r57912_))
                 (_K5791757968_
                  (lambda (_rest157932_ _x157933_)
                    (let* ((_rest25793457942_ _rest257911_)
                           (_else5793657950_ (lambda () _r57912_))
                           (_K5793857956_
                            (lambda (_rest257953_ _x257954_)
                              (let ((__tmp62646
                                     (_f57903_ _x157933_ _x257954_ _r57912_)))
                                (declare (not safe))
                                (_lp57908_
                                 _rest157932_
                                 _rest257953_
                                 __tmp62646)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25793457942_))
                          (let ((_hd5793957959_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25793457942_)))
                                (_tl5794057961_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25793457942_))))
                            (let* ((_x257964_ _hd5793957959_)
                                   (_rest257966_ _tl5794057961_))
                              (declare (not safe))
                              (_K5793857956_ _rest257966_ _x257964_)))
                          (let () (declare (not safe)) (_else5793657950_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15791357921_))
                (let ((_hd5791857971_
                       (let () (declare (not safe)) (##car _rest15791357921_)))
                      (_tl5791957973_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15791357921_))))
                  (let* ((_x157976_ _hd5791857971_)
                         (_rest157978_ _tl5791957973_))
                    (declare (not safe))
                    (_K5791757968_ _rest157978_ _x157976_)))
                (let () (declare (not safe)) (_else5791557929_)))))))
    (define foldl
      (lambda _g62648_
        (let ((_g62647_ (let () (declare (not safe)) (##length _g62648_))))
          (cond ((let () (declare (not safe)) (##fx= _g62647_ 3))
                 (apply (lambda (_f57888_ _iv57889_ _lst57890_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f57888_ _iv57889_ _lst57890_)))
                        _g62648_))
                ((let () (declare (not safe)) (##fx= _g62647_ 4))
                 (apply (lambda (_f57892_ _iv57893_ _lst157894_ _lst257895_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f57892_
                                    _iv57893_
                                    _lst157894_
                                    _lst257895_)))
                        _g62648_))
                ((let () (declare (not safe)) (##fx>= _g62647_ 4))
                 (apply foldl* _g62648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g62648_))))))
    (define foldl*
      (lambda (_f57876_ _iv57877_ . _rest57878_)
        (let _recur57880_ ((_iv57882_ _iv57877_) (_rest57883_ _rest57878_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57883_))
              (let ((__tmp62650
                     (apply _f57876_
                            (let ((__tmp62652
                                   (lambda (_xs57885_ _r57886_)
                                     (let ((__tmp62653 (car _xs57885_)))
                                       (declare (not safe))
                                       (cons __tmp62653 _r57886_))))
                                  (__tmp62651 (list _iv57882_)))
                              (declare (not safe))
                              (foldr1 __tmp62652 __tmp62651 _rest57883_))))
                    (__tmp62649 (map cdr _rest57883_)))
                (declare (not safe))
                (_recur57880_ __tmp62650 __tmp62649))
              _iv57882_))))
    (define foldr1
      (lambda (_f57835_ _iv57836_ _lst57837_)
        (let _recur57839_ ((_rest57841_ _lst57837_))
          (let* ((_rest5784257850_ _rest57841_)
                 (_else5784457858_ (lambda () _iv57836_))
                 (_K5784657864_
                  (lambda (_rest57861_ _x57862_)
                    (_f57835_
                     _x57862_
                     (let ()
                       (declare (not safe))
                       (_recur57839_ _rest57861_))))))
            (if (let () (declare (not safe)) (##pair? _rest5784257850_))
                (let ((_hd5784757867_
                       (let () (declare (not safe)) (##car _rest5784257850_)))
                      (_tl5784857869_
                       (let () (declare (not safe)) (##cdr _rest5784257850_))))
                  (let* ((_x57872_ _hd5784757867_)
                         (_rest57874_ _tl5784857869_))
                    (declare (not safe))
                    (_K5784657864_ _rest57874_ _x57872_)))
                (let () (declare (not safe)) (_else5784457858_)))))))
    (define foldr2
      (lambda (_f57759_ _iv57760_ _lst157761_ _lst257762_)
        (let _recur57764_ ((_rest157766_ _lst157761_)
                           (_rest257767_ _lst257762_))
          (let* ((_rest15776857776_ _rest157766_)
                 (_else5777057784_ (lambda () _iv57760_))
                 (_K5777257823_
                  (lambda (_rest157787_ _x157788_)
                    (let* ((_rest25778957797_ _rest257767_)
                           (_else5779157805_ (lambda () _iv57760_))
                           (_K5779357811_
                            (lambda (_rest257808_ _x257809_)
                              (_f57759_
                               _x157788_
                               _x257809_
                               (let ()
                                 (declare (not safe))
                                 (_recur57764_ _rest157787_ _rest257808_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25778957797_))
                          (let ((_hd5779457814_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25778957797_)))
                                (_tl5779557816_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25778957797_))))
                            (let* ((_x257819_ _hd5779457814_)
                                   (_rest257821_ _tl5779557816_))
                              (declare (not safe))
                              (_K5779357811_ _rest257821_ _x257819_)))
                          (let () (declare (not safe)) (_else5779157805_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15776857776_))
                (let ((_hd5777357826_
                       (let () (declare (not safe)) (##car _rest15776857776_)))
                      (_tl5777457828_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15776857776_))))
                  (let* ((_x157831_ _hd5777357826_)
                         (_rest157833_ _tl5777457828_))
                    (declare (not safe))
                    (_K5777257823_ _rest157833_ _x157831_)))
                (let () (declare (not safe)) (_else5777057784_)))))))
    (define foldr
      (lambda _g62655_
        (let ((_g62654_ (let () (declare (not safe)) (##length _g62655_))))
          (cond ((let () (declare (not safe)) (##fx= _g62654_ 3))
                 (apply (lambda (_f57744_ _iv57745_ _lst57746_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f57744_ _iv57745_ _lst57746_)))
                        _g62655_))
                ((let () (declare (not safe)) (##fx= _g62654_ 4))
                 (apply (lambda (_f57748_ _iv57749_ _lst157750_ _lst257751_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f57748_
                                    _iv57749_
                                    _lst157750_
                                    _lst257751_)))
                        _g62655_))
                ((let () (declare (not safe)) (##fx>= _g62654_ 4))
                 (apply foldr* _g62655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g62655_))))))
    (define foldr*
      (lambda (_f57733_ _iv57734_ . _rest57735_)
        (let _recur57737_ ((_rest57739_ _rest57735_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57739_))
              (apply _f57733_
                     (let ((__tmp62658
                            (lambda (_xs57741_ _r57742_)
                              (let ((__tmp62659 (car _xs57741_)))
                                (declare (not safe))
                                (cons __tmp62659 _r57742_))))
                           (__tmp62656
                            (list (let ((__tmp62657 (map cdr _rest57739_)))
                                    (declare (not safe))
                                    (_recur57737_ __tmp62657)))))
                       (declare (not safe))
                       (foldr1 __tmp62658 __tmp62656 _rest57739_)))
              _iv57734_))))
    (define drop
      (lambda (_l57730_ _k57731_)
        (if (let () (declare (not safe)) (##fxpositive? _k57731_))
            (let ((__tmp62661 (let () (declare (not safe)) (##cdr _l57730_)))
                  (__tmp62660
                   (let () (declare (not safe)) (##fx- _k57731_ '1))))
              (declare (not safe))
              (drop __tmp62661 __tmp62660))
            _l57730_)))
    (define remove-nulls!
      (lambda (_l57617_)
        (let* ((_l5761857631_ _l57617_)
               (_E5762257635_
                (lambda () (error '"No clause matching" _l5761857631_))))
          (let ((_K5762757720_
                 (lambda (_r57718_)
                   (let () (declare (not safe)) (remove-nulls! _r57718_))))
                (_K5762457707_
                 (lambda (_r57647_)
                   (let _loop57649_ ((_l57651_ _l57617_) (_r57652_ _r57647_))
                     (let* ((_r5765357666_ _r57652_)
                            (_E5765757670_
                             (lambda ()
                               (error '"No clause matching" _r5765357666_))))
                       (let ((_K5766257697_
                              (lambda (_rr57695_)
                                (set-cdr!
                                 _l57651_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr57695_)))))
                             (_K5765957684_
                              (lambda (_rr57682_)
                                (let ()
                                  (declare (not safe))
                                  (_loop57649_ _r57652_ _rr57682_))))
                             (_K5765857675_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5765357666_))
                             (let ((_tl5766457702_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5765357666_)))
                                   (_hd5766357700_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5765357666_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5766357700_))
                                   (let ((_rr57705_ _tl5766457702_))
                                     (declare (not safe))
                                     (_K5766257697_ _rr57705_))
                                   (let ((_rr57690_ _tl5766457702_))
                                     (declare (not safe))
                                     (_K5765957684_ _rr57690_))))
                             '#!void))))
                   _l57617_))
                (_K5762357640_ (lambda () _l57617_)))
            (if (let () (declare (not safe)) (##pair? _l5761857631_))
                (let ((_tl5762957725_
                       (let () (declare (not safe)) (##cdr _l5761857631_)))
                      (_hd5762857723_
                       (let () (declare (not safe)) (##car _l5761857631_))))
                  (if (let () (declare (not safe)) (##null? _hd5762857723_))
                      (let ((_r57728_ _tl5762957725_))
                        (declare (not safe))
                        (remove-nulls! _r57728_))
                      (let ((_r57713_ _tl5762957725_))
                        (declare (not safe))
                        (_K5762457707_ _r57713_))))
                (let () (declare (not safe)) (_K5762357640_)))))))
    (define append1!
      (lambda (_l57612_ _x57613_)
        (let ((_l257615_ (let () (declare (not safe)) (cons _x57613_ '()))))
          (if (let () (declare (not safe)) (pair? _l57612_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l57612_))
               _l257615_)
              _l257615_))))
    (define append-reverse
      (lambda (_rev-head57609_ _tail57610_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail57610_ _rev-head57609_))))
    (define append-reverse-until
      (lambda (_pred57562_ _rhead57563_ _tail57564_)
        (let _loop57566_ ((_rhead57568_ _rhead57563_)
                          (_tail57569_ _tail57564_))
          (let* ((_rhead5757057579_ _rhead57568_)
                 (_E5757357583_
                  (lambda () (error '"No clause matching" _rhead5757057579_))))
            (let ((_K5757757606_ (lambda () (values '() _tail57569_)))
                  (_K5757457590_
                   (lambda (_r57587_ _a57588_)
                     (if (_pred57562_ _a57588_)
                         (values _rhead57568_ _tail57569_)
                         (let ((__tmp62662
                                (let ()
                                  (declare (not safe))
                                  (cons _a57588_ _tail57569_))))
                           (declare (not safe))
                           (_loop57566_ _r57587_ __tmp62662))))))
              (let ((_try-match5757257602_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5757057579_))
                           (let ((_tl5757657595_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5757057579_)))
                                 (_hd5757557593_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5757057579_))))
                             (let ((_a57598_ _hd5757557593_)
                                   (_r57600_ _tl5757657595_))
                               (let ()
                                 (declare (not safe))
                                 (_K5757457590_ _r57600_ _a57598_))))
                           (let () (declare (not safe)) (_E5757357583_))))))
                (if (let () (declare (not safe)) (##null? _rhead5757057579_))
                    (let () (declare (not safe)) (_K5757757606_))
                    (let ()
                      (declare (not safe))
                      (_try-match5757257602_)))))))))
    (define andmap1
      (lambda (_f57522_ _lst57523_)
        (let _lp57525_ ((_rest57527_ _lst57523_))
          (let* ((_rest5752857536_ _rest57527_)
                 (_else5753057544_ (lambda () '#t))
                 (_K5753257550_
                  (lambda (_rest57547_ _x57548_)
                    (if (_f57522_ _x57548_)
                        (let () (declare (not safe)) (_lp57525_ _rest57547_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5752857536_))
                (let ((_hd5753357553_
                       (let () (declare (not safe)) (##car _rest5752857536_)))
                      (_tl5753457555_
                       (let () (declare (not safe)) (##cdr _rest5752857536_))))
                  (let* ((_x57558_ _hd5753357553_)
                         (_rest57560_ _tl5753457555_))
                    (declare (not safe))
                    (_K5753257550_ _rest57560_ _x57558_)))
                (let () (declare (not safe)) (_else5753057544_)))))))
    (define andmap2
      (lambda (_f57447_ _lst157448_ _lst257449_)
        (let _lp57451_ ((_rest157453_ _lst157448_) (_rest257454_ _lst257449_))
          (let* ((_rest15745557463_ _rest157453_)
                 (_else5745757471_ (lambda () '#t))
                 (_K5745957510_
                  (lambda (_rest157474_ _x157475_)
                    (let* ((_rest25747657484_ _rest257454_)
                           (_else5747857492_ (lambda () '#t))
                           (_K5748057498_
                            (lambda (_rest257495_ _x257496_)
                              (if (_f57447_ _x157475_ _x257496_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp57451_ _rest157474_ _rest257495_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25747657484_))
                          (let ((_hd5748157501_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25747657484_)))
                                (_tl5748257503_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25747657484_))))
                            (let* ((_x257506_ _hd5748157501_)
                                   (_rest257508_ _tl5748257503_))
                              (declare (not safe))
                              (_K5748057498_ _rest257508_ _x257506_)))
                          (let () (declare (not safe)) (_else5747857492_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15745557463_))
                (let ((_hd5746057513_
                       (let () (declare (not safe)) (##car _rest15745557463_)))
                      (_tl5746157515_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15745557463_))))
                  (let* ((_x157518_ _hd5746057513_)
                         (_rest157520_ _tl5746157515_))
                    (declare (not safe))
                    (_K5745957510_ _rest157520_ _x157518_)))
                (let () (declare (not safe)) (_else5745757471_)))))))
    (define andmap
      (lambda _g62664_
        (let ((_g62663_ (let () (declare (not safe)) (##length _g62664_))))
          (cond ((let () (declare (not safe)) (##fx= _g62663_ 2))
                 (apply (lambda (_f57435_ _lst57436_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f57435_ _lst57436_)))
                        _g62664_))
                ((let () (declare (not safe)) (##fx= _g62663_ 3))
                 (apply (lambda (_f57438_ _lst157439_ _lst257440_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f57438_ _lst157439_ _lst257440_)))
                        _g62664_))
                ((let () (declare (not safe)) (##fx>= _g62663_ 3))
                 (apply andmap* _g62664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g62664_))))))
    (define andmap*
      (lambda (_f57428_ . _rest57429_)
        (let _recur57431_ ((_rest57433_ _rest57429_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57433_))
              (if (apply _f57428_ (map car _rest57433_))
                  (let ((__tmp62665 (map cdr _rest57433_)))
                    (declare (not safe))
                    (_recur57431_ __tmp62665))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f57385_ _lst57386_)
        (let _lp57388_ ((_rest57390_ _lst57386_))
          (let* ((_rest5739157399_ _rest57390_)
                 (_else5739357407_ (lambda () '#f))
                 (_K5739557416_
                  (lambda (_rest57410_ _x57411_)
                    (let ((_$e57413_ (_f57385_ _x57411_)))
                      (if _$e57413_
                          _$e57413_
                          (let ()
                            (declare (not safe))
                            (_lp57388_ _rest57410_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5739157399_))
                (let ((_hd5739657419_
                       (let () (declare (not safe)) (##car _rest5739157399_)))
                      (_tl5739757421_
                       (let () (declare (not safe)) (##cdr _rest5739157399_))))
                  (let* ((_x57424_ _hd5739657419_)
                         (_rest57426_ _tl5739757421_))
                    (declare (not safe))
                    (_K5739557416_ _rest57426_ _x57424_)))
                (let () (declare (not safe)) (_else5739357407_)))))))
    (define ormap2
      (lambda (_f57307_ _lst157308_ _lst257309_)
        (let _lp57311_ ((_rest157313_ _lst157308_) (_rest257314_ _lst257309_))
          (let* ((_rest15731557323_ _rest157313_)
                 (_else5731757331_ (lambda () '#f))
                 (_K5731957373_
                  (lambda (_rest157334_ _x157335_)
                    (let* ((_rest25733657344_ _rest257314_)
                           (_else5733857352_ (lambda () '#f))
                           (_K5734057361_
                            (lambda (_rest257355_ _x257356_)
                              (let ((_$e57358_ (_f57307_ _x157335_ _x257356_)))
                                (if _$e57358_
                                    _$e57358_
                                    (let ()
                                      (declare (not safe))
                                      (_lp57311_
                                       _rest157334_
                                       _rest257355_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25733657344_))
                          (let ((_hd5734157364_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25733657344_)))
                                (_tl5734257366_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25733657344_))))
                            (let* ((_x257369_ _hd5734157364_)
                                   (_rest257371_ _tl5734257366_))
                              (declare (not safe))
                              (_K5734057361_ _rest257371_ _x257369_)))
                          (let () (declare (not safe)) (_else5733857352_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15731557323_))
                (let ((_hd5732057376_
                       (let () (declare (not safe)) (##car _rest15731557323_)))
                      (_tl5732157378_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15731557323_))))
                  (let* ((_x157381_ _hd5732057376_)
                         (_rest157383_ _tl5732157378_))
                    (declare (not safe))
                    (_K5731957373_ _rest157383_ _x157381_)))
                (let () (declare (not safe)) (_else5731757331_)))))))
    (define ormap
      (lambda _g62667_
        (let ((_g62666_ (let () (declare (not safe)) (##length _g62667_))))
          (cond ((let () (declare (not safe)) (##fx= _g62666_ 2))
                 (apply (lambda (_f57295_ _lst57296_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f57295_ _lst57296_)))
                        _g62667_))
                ((let () (declare (not safe)) (##fx= _g62666_ 3))
                 (apply (lambda (_f57298_ _lst157299_ _lst257300_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f57298_ _lst157299_ _lst257300_)))
                        _g62667_))
                ((let () (declare (not safe)) (##fx>= _g62666_ 3))
                 (apply ormap* _g62667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g62667_))))))
    (define ormap*
      (lambda (_f57285_ . _rest57286_)
        (let _recur57288_ ((_rest57290_ _rest57286_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57290_))
              (let ((_$e57292_ (apply _f57285_ (map car _rest57290_))))
                (if _$e57292_
                    _$e57292_
                    (let ((__tmp62668 (map cdr _rest57290_)))
                      (declare (not safe))
                      (_recur57288_ __tmp62668))))
              '#f))))
    (define filter
      (lambda (_f57243_ _lst57244_)
        (let _recur57246_ ((_lst57248_ _lst57244_))
          (let* ((_lst5724957257_ _lst57248_)
                 (_else5725157265_ (lambda () '()))
                 (_K5725357273_
                  (lambda (_rest57268_ _hd57269_)
                    (if (_f57243_ _hd57269_)
                        (let ((_tail57271_
                               (let ()
                                 (declare (not safe))
                                 (_recur57246_ _rest57268_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail57271_ _rest57268_))
                              _lst57248_
                              (let ()
                                (declare (not safe))
                                (cons _hd57269_ _tail57271_))))
                        (let ()
                          (declare (not safe))
                          (_recur57246_ _rest57268_))))))
            (if (let () (declare (not safe)) (##pair? _lst5724957257_))
                (let ((_hd5725457276_
                       (let () (declare (not safe)) (##car _lst5724957257_)))
                      (_tl5725557278_
                       (let () (declare (not safe)) (##cdr _lst5724957257_))))
                  (let* ((_hd57281_ _hd5725457276_)
                         (_rest57283_ _tl5725557278_))
                    (declare (not safe))
                    (_K5725357273_ _rest57283_ _hd57281_)))
                (let () (declare (not safe)) (_else5725157265_)))))))
    (define filter-map1
      (lambda (_f57198_ _lst57199_)
        (let _recur57201_ ((_rest57203_ _lst57199_))
          (let* ((_rest5720457212_ _rest57203_)
                 (_else5720657220_ (lambda () '()))
                 (_K5720857231_
                  (lambda (_rest57223_ _x57224_)
                    (let ((_$e57226_ (_f57198_ _x57224_)))
                      (if _$e57226_
                          ((lambda (_r57229_)
                             (let ((__tmp62669
                                    (let ()
                                      (declare (not safe))
                                      (_recur57201_ _rest57223_))))
                               (declare (not safe))
                               (cons _r57229_ __tmp62669)))
                           _$e57226_)
                          (let ()
                            (declare (not safe))
                            (_recur57201_ _rest57223_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5720457212_))
                (let ((_hd5720957234_
                       (let () (declare (not safe)) (##car _rest5720457212_)))
                      (_tl5721057236_
                       (let () (declare (not safe)) (##cdr _rest5720457212_))))
                  (let* ((_x57239_ _hd5720957234_)
                         (_rest57241_ _tl5721057236_))
                    (declare (not safe))
                    (_K5720857231_ _rest57241_ _x57239_)))
                (let () (declare (not safe)) (_else5720657220_)))))))
    (define filter-map2
      (lambda (_f57118_ _lst157119_ _lst257120_)
        (let _recur57122_ ((_rest157124_ _lst157119_)
                           (_rest257125_ _lst257120_))
          (let* ((_rest15712657134_ _rest157124_)
                 (_else5712857142_ (lambda () '()))
                 (_K5713057186_
                  (lambda (_rest157145_ _x157146_)
                    (let* ((_rest25714757155_ _rest257125_)
                           (_else5714957163_ (lambda () '()))
                           (_K5715157174_
                            (lambda (_rest257166_ _x257167_)
                              (let ((_$e57169_ (_f57118_ _x157146_ _x257167_)))
                                (if _$e57169_
                                    ((lambda (_r57172_)
                                       (let ((__tmp62670
                                              (let ()
                                                (declare (not safe))
                                                (_recur57122_
                                                 _rest157145_
                                                 _rest257166_))))
                                         (declare (not safe))
                                         (cons _r57172_ __tmp62670)))
                                     _$e57169_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur57122_
                                       _rest157145_
                                       _rest257166_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25714757155_))
                          (let ((_hd5715257177_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25714757155_)))
                                (_tl5715357179_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25714757155_))))
                            (let* ((_x257182_ _hd5715257177_)
                                   (_rest257184_ _tl5715357179_))
                              (declare (not safe))
                              (_K5715157174_ _rest257184_ _x257182_)))
                          (let () (declare (not safe)) (_else5714957163_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15712657134_))
                (let ((_hd5713157189_
                       (let () (declare (not safe)) (##car _rest15712657134_)))
                      (_tl5713257191_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15712657134_))))
                  (let* ((_x157194_ _hd5713157189_)
                         (_rest157196_ _tl5713257191_))
                    (declare (not safe))
                    (_K5713057186_ _rest157196_ _x157194_)))
                (let () (declare (not safe)) (_else5712857142_)))))))
    (define filter-map
      (lambda _g62672_
        (let ((_g62671_ (let () (declare (not safe)) (##length _g62672_))))
          (cond ((let () (declare (not safe)) (##fx= _g62671_ 2))
                 (apply (lambda (_f57106_ _lst57107_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f57106_ _lst57107_)))
                        _g62672_))
                ((let () (declare (not safe)) (##fx= _g62671_ 3))
                 (apply (lambda (_f57109_ _lst157110_ _lst257111_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f57109_ _lst157110_ _lst257111_)))
                        _g62672_))
                ((let () (declare (not safe)) (##fx>= _g62671_ 3))
                 (apply filter-map* _g62672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g62672_))))))
    (define filter-map*
      (lambda (_f57094_ . _rest57095_)
        (let _recur57097_ ((_rest57099_ _rest57095_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57099_))
              (let ((_$e57101_ (apply _f57094_ (map car _rest57099_))))
                (if _$e57101_
                    ((lambda (_r57104_)
                       (let ((__tmp62674
                              (let ((__tmp62675 (map cdr _rest57099_)))
                                (declare (not safe))
                                (_recur57097_ __tmp62675))))
                         (declare (not safe))
                         (cons _r57104_ __tmp62674)))
                     _$e57101_)
                    (let ((__tmp62673 (map cdr _rest57099_)))
                      (declare (not safe))
                      (_recur57097_ __tmp62673))))
              '()))))
    (define iota__%
      (lambda (_count57062_ _start57063_ _step57064_)
        (if (fixnum? _count57062_)
            '#!void
            (error '"expected fixnum" _count57062_))
        (if (let () (declare (not safe)) (number? _start57063_))
            '#!void
            (error '"expected number" _start57063_))
        (if (let () (declare (not safe)) (number? _step57064_))
            '#!void
            (error '"expected number" _step57064_))
        (let ((_root57066_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57068_ ((_i57070_ '0)
                          (_x57071_ _start57063_)
                          (_tl57072_ _root57066_))
            (if (let () (declare (not safe)) (##fx< _i57070_ _count57062_))
                (let ((_tl*57074_
                       (let () (declare (not safe)) (cons _x57071_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl57072_ _tl*57074_))
                  (let ((__tmp62677
                         (let () (declare (not safe)) (##fx+ _i57070_ '1)))
                        (__tmp62676 (+ _x57071_ _step57064_)))
                    (declare (not safe))
                    (_lp57068_ __tmp62677 __tmp62676 _tl*57074_)))
                (let () (declare (not safe)) (##cdr _root57066_)))))))
    (define iota__0
      (lambda (_count57079_)
        (let* ((_start57081_ '0) (_step57083_ '1))
          (declare (not safe))
          (iota__% _count57079_ _start57081_ _step57083_))))
    (define iota__1
      (lambda (_count57085_ _start57086_)
        (let ((_step57088_ '1))
          (declare (not safe))
          (iota__% _count57085_ _start57086_ _step57088_))))
    (define iota
      (lambda _g62679_
        (let ((_g62678_ (let () (declare (not safe)) (##length _g62679_))))
          (cond ((let () (declare (not safe)) (##fx= _g62678_ 1))
                 (apply (lambda (_count57079_)
                          (let () (declare (not safe)) (iota__0 _count57079_)))
                        _g62679_))
                ((let () (declare (not safe)) (##fx= _g62678_ 2))
                 (apply (lambda (_count57085_ _start57086_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count57085_ _start57086_)))
                        _g62679_))
                ((let () (declare (not safe)) (##fx= _g62678_ 3))
                 (apply (lambda (_count57090_ _start57091_ _step57092_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count57090_ _start57091_ _step57092_)))
                        _g62679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g62679_))))))
    (define last-pair
      (lambda (_lst57036_)
        (let* ((_lst5703757044_ _lst57036_)
               (_E5703957048_
                (lambda () (error '"No clause matching" _lst5703757044_)))
               (_K5704057053_
                (lambda (_rest57051_)
                  (if (let () (declare (not safe)) (pair? _rest57051_))
                      (let () (declare (not safe)) (last-pair _rest57051_))
                      _lst57036_))))
          (if (let () (declare (not safe)) (##pair? _lst5703757044_))
              (let* ((_tl5704257056_
                      (let () (declare (not safe)) (##cdr _lst5703757044_)))
                     (_rest57059_ _tl5704257056_))
                (declare (not safe))
                (_K5704057053_ _rest57059_))
              (let () (declare (not safe)) (_E5703957048_))))))
    (define last
      (lambda (_lst57034_)
        (car (let () (declare (not safe)) (last-pair _lst57034_)))))
    (define assgetq__%
      (lambda (_key57012_ _lst57014_ _default57016_)
        (let ((_$e57019_
               (if (let () (declare (not safe)) (pair? _lst57014_))
                   (assq _key57012_ _lst57014_)
                   '#f)))
          (if _$e57019_
              (cdr _$e57019_)
              (if (let () (declare (not safe)) (procedure? _default57016_))
                  (_default57016_ _key57012_)
                  _default57016_)))))
    (define assgetq__0
      (lambda (_key57025_ _lst57026_)
        (let ((_default57028_ '#f))
          (declare (not safe))
          (assgetq__% _key57025_ _lst57026_ _default57028_))))
    (define assgetq
      (lambda _g62681_
        (let ((_g62680_ (let () (declare (not safe)) (##length _g62681_))))
          (cond ((let () (declare (not safe)) (##fx= _g62680_ 2))
                 (apply (lambda (_key57025_ _lst57026_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57025_ _lst57026_)))
                        _g62681_))
                ((let () (declare (not safe)) (##fx= _g62680_ 3))
                 (apply (lambda (_key57030_ _lst57031_ _default57032_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57030_ _lst57031_ _default57032_)))
                        _g62681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g62681_))))))
    (define assgetv__%
      (lambda (_key56989_ _lst56991_ _default56993_)
        (let ((_$e56996_
               (if (let () (declare (not safe)) (pair? _lst56991_))
                   (assv _key56989_ _lst56991_)
                   '#f)))
          (if _$e56996_
              (cdr _$e56996_)
              (if (let () (declare (not safe)) (procedure? _default56993_))
                  (_default56993_ _key56989_)
                  _default56993_)))))
    (define assgetv__0
      (lambda (_key57002_ _lst57003_)
        (let ((_default57005_ '#f))
          (declare (not safe))
          (assgetv__% _key57002_ _lst57003_ _default57005_))))
    (define assgetv
      (lambda _g62683_
        (let ((_g62682_ (let () (declare (not safe)) (##length _g62683_))))
          (cond ((let () (declare (not safe)) (##fx= _g62682_ 2))
                 (apply (lambda (_key57002_ _lst57003_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57002_ _lst57003_)))
                        _g62683_))
                ((let () (declare (not safe)) (##fx= _g62682_ 3))
                 (apply (lambda (_key57007_ _lst57008_ _default57009_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57007_ _lst57008_ _default57009_)))
                        _g62683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g62683_))))))
    (define assget__%
      (lambda (_key56966_ _lst56968_ _default56970_)
        (let ((_$e56973_
               (if (let () (declare (not safe)) (pair? _lst56968_))
                   (assoc _key56966_ _lst56968_)
                   '#f)))
          (if _$e56973_
              (cdr _$e56973_)
              (if (let () (declare (not safe)) (procedure? _default56970_))
                  (_default56970_ _key56966_)
                  _default56970_)))))
    (define assget__0
      (lambda (_key56979_ _lst56980_)
        (let ((_default56982_ '#f))
          (declare (not safe))
          (assget__% _key56979_ _lst56980_ _default56982_))))
    (define assget
      (lambda _g62685_
        (let ((_g62684_ (let () (declare (not safe)) (##length _g62685_))))
          (cond ((let () (declare (not safe)) (##fx= _g62684_ 2))
                 (apply (lambda (_key56979_ _lst56980_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key56979_ _lst56980_)))
                        _g62685_))
                ((let () (declare (not safe)) (##fx= _g62684_ 3))
                 (apply (lambda (_key56984_ _lst56985_ _default56986_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key56984_ _lst56985_ _default56986_)))
                        _g62685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g62685_))))))
    (define pgetq__%
      (lambda (_key56895_ _lst56897_ _default56899_)
        (let _lp56902_ ((_rest56905_ _lst56897_))
          (let* ((_rest5690756917_ _rest56905_)
                 (_else5690956925_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56899_))
                        (_default56899_ _key56895_)
                        _default56899_)))
                 (_K5691156934_
                  (lambda (_rest56928_ _v56929_ _k56931_)
                    (if (let () (declare (not safe)) (eq? _k56931_ _key56895_))
                        _v56929_
                        (let ()
                          (declare (not safe))
                          (_lp56902_ _rest56928_))))))
            (if (let () (declare (not safe)) (##pair? _rest5690756917_))
                (let ((_hd5691256937_
                       (let () (declare (not safe)) (##car _rest5690756917_)))
                      (_tl5691356939_
                       (let () (declare (not safe)) (##cdr _rest5690756917_))))
                  (let ((_k56942_ _hd5691256937_))
                    (if (let () (declare (not safe)) (##pair? _tl5691356939_))
                        (let ((_hd5691456944_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5691356939_)))
                              (_tl5691556946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5691356939_))))
                          (let* ((_v56949_ _hd5691456944_)
                                 (_rest56951_ _tl5691556946_))
                            (declare (not safe))
                            (_K5691156934_ _rest56951_ _v56949_ _k56942_)))
                        (let () (declare (not safe)) (_else5690956925_)))))
                (let () (declare (not safe)) (_else5690956925_)))))))
    (define pgetq__0
      (lambda (_key56956_ _lst56957_)
        (let ((_default56959_ '#f))
          (declare (not safe))
          (pgetq__% _key56956_ _lst56957_ _default56959_))))
    (define pgetq
      (lambda _g62687_
        (let ((_g62686_ (let () (declare (not safe)) (##length _g62687_))))
          (cond ((let () (declare (not safe)) (##fx= _g62686_ 2))
                 (apply (lambda (_key56956_ _lst56957_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key56956_ _lst56957_)))
                        _g62687_))
                ((let () (declare (not safe)) (##fx= _g62686_ 3))
                 (apply (lambda (_key56961_ _lst56962_ _default56963_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key56961_ _lst56962_ _default56963_)))
                        _g62687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g62687_))))))
    (define pgetv__%
      (lambda (_key56824_ _lst56826_ _default56828_)
        (let _lp56831_ ((_rest56834_ _lst56826_))
          (let* ((_rest5683656846_ _rest56834_)
                 (_else5683856854_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56828_))
                        (_default56828_ _key56824_)
                        _default56828_)))
                 (_K5684056863_
                  (lambda (_rest56857_ _v56858_ _k56860_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k56860_ _key56824_))
                        _v56858_
                        (let ()
                          (declare (not safe))
                          (_lp56831_ _rest56857_))))))
            (if (let () (declare (not safe)) (##pair? _rest5683656846_))
                (let ((_hd5684156866_
                       (let () (declare (not safe)) (##car _rest5683656846_)))
                      (_tl5684256868_
                       (let () (declare (not safe)) (##cdr _rest5683656846_))))
                  (let ((_k56871_ _hd5684156866_))
                    (if (let () (declare (not safe)) (##pair? _tl5684256868_))
                        (let ((_hd5684356873_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5684256868_)))
                              (_tl5684456875_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5684256868_))))
                          (let* ((_v56878_ _hd5684356873_)
                                 (_rest56880_ _tl5684456875_))
                            (declare (not safe))
                            (_K5684056863_ _rest56880_ _v56878_ _k56871_)))
                        (let () (declare (not safe)) (_else5683856854_)))))
                (let () (declare (not safe)) (_else5683856854_)))))))
    (define pgetv__0
      (lambda (_key56885_ _lst56886_)
        (let ((_default56888_ '#f))
          (declare (not safe))
          (pgetv__% _key56885_ _lst56886_ _default56888_))))
    (define pgetv
      (lambda _g62689_
        (let ((_g62688_ (let () (declare (not safe)) (##length _g62689_))))
          (cond ((let () (declare (not safe)) (##fx= _g62688_ 2))
                 (apply (lambda (_key56885_ _lst56886_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key56885_ _lst56886_)))
                        _g62689_))
                ((let () (declare (not safe)) (##fx= _g62688_ 3))
                 (apply (lambda (_key56890_ _lst56891_ _default56892_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key56890_ _lst56891_ _default56892_)))
                        _g62689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g62689_))))))
    (define pget__%
      (lambda (_key56753_ _lst56755_ _default56757_)
        (let _lp56760_ ((_rest56763_ _lst56755_))
          (let* ((_rest5676556775_ _rest56763_)
                 (_else5676756783_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56757_))
                        (_default56757_ _key56753_)
                        _default56757_)))
                 (_K5676956792_
                  (lambda (_rest56786_ _v56787_ _k56789_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k56789_ _key56753_))
                        _v56787_
                        (let ()
                          (declare (not safe))
                          (_lp56760_ _rest56786_))))))
            (if (let () (declare (not safe)) (##pair? _rest5676556775_))
                (let ((_hd5677056795_
                       (let () (declare (not safe)) (##car _rest5676556775_)))
                      (_tl5677156797_
                       (let () (declare (not safe)) (##cdr _rest5676556775_))))
                  (let ((_k56800_ _hd5677056795_))
                    (if (let () (declare (not safe)) (##pair? _tl5677156797_))
                        (let ((_hd5677256802_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5677156797_)))
                              (_tl5677356804_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5677156797_))))
                          (let* ((_v56807_ _hd5677256802_)
                                 (_rest56809_ _tl5677356804_))
                            (declare (not safe))
                            (_K5676956792_ _rest56809_ _v56807_ _k56800_)))
                        (let () (declare (not safe)) (_else5676756783_)))))
                (let () (declare (not safe)) (_else5676756783_)))))))
    (define pget__0
      (lambda (_key56814_ _lst56815_)
        (let ((_default56817_ '#f))
          (declare (not safe))
          (pget__% _key56814_ _lst56815_ _default56817_))))
    (define pget
      (lambda _g62691_
        (let ((_g62690_ (let () (declare (not safe)) (##length _g62691_))))
          (cond ((let () (declare (not safe)) (##fx= _g62690_ 2))
                 (apply (lambda (_key56814_ _lst56815_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key56814_ _lst56815_)))
                        _g62691_))
                ((let () (declare (not safe)) (##fx= _g62690_ 3))
                 (apply (lambda (_key56819_ _lst56820_ _default56821_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key56819_ _lst56820_ _default56821_)))
                        _g62691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g62691_))))))
    (define find
      (lambda (_pred56746_ _lst56747_)
        (let ((_$e56749_
               (let () (declare (not safe)) (memf _pred56746_ _lst56747_))))
          (if _$e56749_ (car _$e56749_) '#f))))
    (define memf
      (lambda (_proc56706_ _lst56707_)
        (let _lp56709_ ((_rest56711_ _lst56707_))
          (let* ((_rest5671256720_ _rest56711_)
                 (_else5671456728_ (lambda () '#f))
                 (_K5671656734_
                  (lambda (_tl56731_ _hd56732_)
                    (if (_proc56706_ _hd56732_)
                        _rest56711_
                        (let () (declare (not safe)) (_lp56709_ _tl56731_))))))
            (if (let () (declare (not safe)) (##pair? _rest5671256720_))
                (let ((_hd5671756737_
                       (let () (declare (not safe)) (##car _rest5671256720_)))
                      (_tl5671856739_
                       (let () (declare (not safe)) (##cdr _rest5671256720_))))
                  (let* ((_hd56742_ _hd5671756737_) (_tl56744_ _tl5671856739_))
                    (declare (not safe))
                    (_K5671656734_ _tl56744_ _hd56742_)))
                (let () (declare (not safe)) (_else5671456728_)))))))
    (define remove1
      (lambda (_el56659_ _lst56661_)
        (let _lp56664_ ((_rest56667_ _lst56661_) (_r56669_ '()))
          (let* ((_rest5667156679_ _rest56667_)
                 (_else5667356687_ (lambda () _lst56661_))
                 (_K5667556694_
                  (lambda (_rest56690_ _hd56691_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el56659_ _hd56691_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56690_ _r56669_))
                        (let ((__tmp62692
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56691_ _r56669_))))
                          (declare (not safe))
                          (_lp56664_ _rest56690_ __tmp62692))))))
            (if (let () (declare (not safe)) (##pair? _rest5667156679_))
                (let ((_hd5667656697_
                       (let () (declare (not safe)) (##car _rest5667156679_)))
                      (_tl5667756699_
                       (let () (declare (not safe)) (##cdr _rest5667156679_))))
                  (let* ((_hd56702_ _hd5667656697_)
                         (_rest56704_ _tl5667756699_))
                    (declare (not safe))
                    (_K5667556694_ _rest56704_ _hd56702_)))
                (let () (declare (not safe)) (_else5667356687_)))))))
    (define remv
      (lambda (_el56612_ _lst56614_)
        (let _lp56617_ ((_rest56620_ _lst56614_) (_r56622_ '()))
          (let* ((_rest5662456632_ _rest56620_)
                 (_else5662656640_ (lambda () _lst56614_))
                 (_K5662856647_
                  (lambda (_rest56643_ _hd56644_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el56612_ _hd56644_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56643_ _r56622_))
                        (let ((__tmp62693
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56644_ _r56622_))))
                          (declare (not safe))
                          (_lp56617_ _rest56643_ __tmp62693))))))
            (if (let () (declare (not safe)) (##pair? _rest5662456632_))
                (let ((_hd5662956650_
                       (let () (declare (not safe)) (##car _rest5662456632_)))
                      (_tl5663056652_
                       (let () (declare (not safe)) (##cdr _rest5662456632_))))
                  (let* ((_hd56655_ _hd5662956650_)
                         (_rest56657_ _tl5663056652_))
                    (declare (not safe))
                    (_K5662856647_ _rest56657_ _hd56655_)))
                (let () (declare (not safe)) (_else5662656640_)))))))
    (define remq
      (lambda (_el56565_ _lst56567_)
        (let _lp56570_ ((_rest56573_ _lst56567_) (_r56575_ '()))
          (let* ((_rest5657756585_ _rest56573_)
                 (_else5657956593_ (lambda () _lst56567_))
                 (_K5658156600_
                  (lambda (_rest56596_ _hd56597_)
                    (if (let () (declare (not safe)) (eq? _el56565_ _hd56597_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56596_ _r56575_))
                        (let ((__tmp62694
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56597_ _r56575_))))
                          (declare (not safe))
                          (_lp56570_ _rest56596_ __tmp62694))))))
            (if (let () (declare (not safe)) (##pair? _rest5657756585_))
                (let ((_hd5658256603_
                       (let () (declare (not safe)) (##car _rest5657756585_)))
                      (_tl5658356605_
                       (let () (declare (not safe)) (##cdr _rest5657756585_))))
                  (let* ((_hd56608_ _hd5658256603_)
                         (_rest56610_ _tl5658356605_))
                    (declare (not safe))
                    (_K5658156600_ _rest56610_ _hd56608_)))
                (let () (declare (not safe)) (_else5657956593_)))))))
    (define remf
      (lambda (_proc56524_ _lst56525_)
        (let _lp56527_ ((_rest56529_ _lst56525_) (_r56530_ '()))
          (let* ((_rest5653156539_ _rest56529_)
                 (_else5653356547_ (lambda () _lst56525_))
                 (_K5653556553_
                  (lambda (_rest56550_ _hd56551_)
                    (if (_proc56524_ _hd56551_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56550_ _r56530_))
                        (let ((__tmp62695
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56551_ _r56530_))))
                          (declare (not safe))
                          (_lp56527_ _rest56550_ __tmp62695))))))
            (if (let () (declare (not safe)) (##pair? _rest5653156539_))
                (let ((_hd5653656556_
                       (let () (declare (not safe)) (##car _rest5653156539_)))
                      (_tl5653756558_
                       (let () (declare (not safe)) (##cdr _rest5653156539_))))
                  (let* ((_hd56561_ _hd5653656556_)
                         (_rest56563_ _tl5653756558_))
                    (declare (not safe))
                    (_K5653556553_ _rest56563_ _hd56561_)))
                (let () (declare (not safe)) (_else5653356547_)))))))
    (define 1+ (lambda (_x56522_) (+ _x56522_ '1)))
    (define 1- (lambda (_x56520_) (- _x56520_ '1)))
    (define fx1+ (lambda (_x56518_) (fx+ _x56518_ '1)))
    (define fx1- (lambda (_x56516_) (fx- _x56516_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x56514_)
        (if (fixnum? _x56514_)
            (let () (declare (not safe)) (##fx>= _x56514_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x56512_)
        (if (fixnum? _x56512_)
            (let () (declare (not safe)) (##fx> _x56512_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x56510_) (let () (declare (not safe)) (eq? _x56510_ '0))))
    (define fx<0?
      (lambda (_x56508_)
        (if (fixnum? _x56508_)
            (let () (declare (not safe)) (##fx< _x56508_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x56506_)
        (if (fixnum? _x56506_)
            (let () (declare (not safe)) (##fx<= _x56506_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x56504_)
        (if (let () (declare (not safe)) (symbol? _x56504_))
            (let ((__tmp62696 (uninterned-symbol? _x56504_)))
              (declare (not safe))
              (not __tmp62696))
            '#f)))
    (define display-as-string
      (lambda (_x56476_ _port56477_)
        (if (or (let () (declare (not safe)) (string? _x56476_))
                (let () (declare (not safe)) (symbol? _x56476_))
                (keyword? _x56476_)
                (let () (declare (not safe)) (number? _x56476_))
                (let () (declare (not safe)) (char? _x56476_)))
            (display _x56476_ _port56477_)
            (if (let () (declare (not safe)) (pair? _x56476_))
                (begin
                  (let ((__tmp62697 (car _x56476_)))
                    (declare (not safe))
                    (display-as-string __tmp62697 _port56477_))
                  (let ((__tmp62698 (cdr _x56476_)))
                    (declare (not safe))
                    (display-as-string __tmp62698 _port56477_)))
                (if (let () (declare (not safe)) (vector? _x56476_))
                    (vector-for-each
                     (lambda (_g5649056492_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5649056492_ _port56477_)))
                     _x56476_)
                    (if (or (let () (declare (not safe)) (null? _x56476_))
                            (let ()
                              (declare (not safe))
                              (eq? _x56476_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x56476_))
                            (let () (declare (not safe)) (boolean? _x56476_)))
                        '#!void
                        (error '"cannot convert as string" _x56476_)))))))
    (define as-string__0
      (lambda (_x56464_)
        (if (let () (declare (not safe)) (string? _x56464_))
            _x56464_
            (if (let () (declare (not safe)) (symbol? _x56464_))
                (symbol->string _x56464_)
                (if (keyword? _x56464_)
                    (keyword->string _x56464_)
                    (call-with-output-string
                     '()
                     (lambda (_g5646556467_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x56464_ _g5646556467_)))))))))
    (define as-string__1
      (lambda _args56470_
        (call-with-output-string
         '()
         (lambda (_g5647156473_)
           (let ()
             (declare (not safe))
             (display-as-string _args56470_ _g5647156473_))))))
    (define as-string
      (lambda _g62700_
        (let ((_g62699_ (let () (declare (not safe)) (##length _g62700_))))
          (cond ((let () (declare (not safe)) (##fx= _g62699_ 1))
                 (apply (lambda (_x56464_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x56464_)))
                        _g62700_))
                (#t (apply as-string__1 _g62700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g62700_))))))
    (define make-symbol__0
      (lambda (_x56460_)
        (if (interned-symbol? _x56460_)
            _x56460_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x56460_))))))
    (define make-symbol__1
      (lambda _args56462_ (string->symbol (apply as-string _args56462_))))
    (define make-symbol
      (lambda _g62702_
        (let ((_g62701_ (let () (declare (not safe)) (##length _g62702_))))
          (cond ((let () (declare (not safe)) (##fx= _g62701_ 1))
                 (apply (lambda (_x56460_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x56460_)))
                        _g62702_))
                (#t (apply make-symbol__1 _g62702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g62702_))))))
    (define make-keyword__0
      (lambda (_x56456_)
        (if (interned-keyword? _x56456_)
            _x56456_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x56456_))))))
    (define make-keyword__1
      (lambda _args56458_ (string->keyword (apply as-string _args56458_))))
    (define make-keyword
      (lambda _g62704_
        (let ((_g62703_ (let () (declare (not safe)) (##length _g62704_))))
          (cond ((let () (declare (not safe)) (##fx= _g62703_ 1))
                 (apply (lambda (_x56456_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x56456_)))
                        _g62704_))
                (#t (apply make-keyword__1 _g62704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g62704_))))))
    (define interned-keyword?
      (lambda (_x56454_)
        (if (keyword? _x56454_)
            (let ((__tmp62705 (uninterned-keyword? _x56454_)))
              (declare (not safe))
              (not __tmp62705))
            '#f)))
    (define symbol->keyword
      (lambda (_sym56452_)
        ((if (uninterned-symbol? _sym56452_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym56452_))))
    (define keyword->symbol
      (lambda (_kw56450_)
        ((if (uninterned-keyword? _kw56450_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw56450_))))
    (define bytes->string__%
      (lambda (_bstr56428_ _enc56429_)
        (if (let () (declare (not safe)) (eq? _enc56429_ 'UTF-8))
            (utf8->string _bstr56428_)
            (let* ((_in56431_
                    (open-input-u8vector
                     (let ((__tmp62706
                            (let ((__tmp62707
                                   (let ((__tmp62708
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr56428_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp62708))))
                              (declare (not safe))
                              (cons _enc56429_ __tmp62707))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp62706))))
                   (_len56433_ (u8vector-length _bstr56428_))
                   (_out56435_ (make-string _len56433_))
                   (_n56437_
                    (read-substring _out56435_ '0 _len56433_ _in56431_)))
              (string-shrink! _out56435_ _n56437_)
              _out56435_))))
    (define bytes->string__0
      (lambda (_bstr56443_)
        (let ((_enc56445_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr56443_ _enc56445_))))
    (define bytes->string
      (lambda _g62710_
        (let ((_g62709_ (let () (declare (not safe)) (##length _g62710_))))
          (cond ((let () (declare (not safe)) (##fx= _g62709_ 1))
                 (apply (lambda (_bstr56443_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr56443_)))
                        _g62710_))
                ((let () (declare (not safe)) (##fx= _g62709_ 2))
                 (apply (lambda (_bstr56447_ _enc56448_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr56447_ _enc56448_)))
                        _g62710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g62710_))))))
    (define string->bytes__%
      (lambda (_str56414_ _enc56415_)
        (if (let () (declare (not safe)) (eq? _enc56415_ 'UTF-8))
            (string->utf8 _str56414_)
            (substring->bytes
             _str56414_
             '0
             (string-length _str56414_)
             _enc56415_))))
    (define string->bytes__0
      (lambda (_str56420_)
        (let ((_enc56422_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str56420_ _enc56422_))))
    (define string->bytes
      (lambda _g62712_
        (let ((_g62711_ (let () (declare (not safe)) (##length _g62712_))))
          (cond ((let () (declare (not safe)) (##fx= _g62711_ 1))
                 (apply (lambda (_str56420_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str56420_)))
                        _g62712_))
                ((let () (declare (not safe)) (##fx= _g62711_ 2))
                 (apply (lambda (_str56424_ _enc56425_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str56424_ _enc56425_)))
                        _g62712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g62712_))))))
    (define substring->bytes__%
      (lambda (_str56392_ _start56393_ _end56394_ _enc56395_)
        (if (let () (declare (not safe)) (eq? _enc56395_ 'UTF-8))
            (string->utf8 _str56392_ _start56393_ _end56394_)
            (let ((_out56397_
                   (open-output-u8vector
                    (let ((__tmp62713
                           (let ()
                             (declare (not safe))
                             (cons _enc56395_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp62713)))))
              (write-substring _str56392_ _start56393_ _end56394_ _out56397_)
              (get-output-u8vector _out56397_)))))
    (define substring->bytes__0
      (lambda (_str56402_ _start56403_ _end56404_)
        (let ((_enc56406_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str56402_
           _start56403_
           _end56404_
           _enc56406_))))
    (define substring->bytes
      (lambda _g62715_
        (let ((_g62714_ (let () (declare (not safe)) (##length _g62715_))))
          (cond ((let () (declare (not safe)) (##fx= _g62714_ 3))
                 (apply (lambda (_str56402_ _start56403_ _end56404_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str56402_
                             _start56403_
                             _end56404_)))
                        _g62715_))
                ((let () (declare (not safe)) (##fx= _g62714_ 4))
                 (apply (lambda (_str56408_ _start56409_ _end56410_ _enc56411_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str56408_
                             _start56409_
                             _end56410_
                             _enc56411_)))
                        _g62715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g62715_))))))
    (define string-empty?
      (lambda (_str56389_)
        (let ((__tmp62716 (string-length _str56389_)))
          (declare (not safe))
          (##fxzero? __tmp62716))))
    (define string-prefix?
      (lambda (_prefix56379_ _str56380_)
        (let ((_str-len56382_ (string-length _str56380_))
              (_prefix-len56383_ (string-length _prefix56379_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len56383_ _str-len56382_))
              (let _lp56385_ ((_i56387_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i56387_ _prefix-len56383_))
                    (if (let ((__tmp62719
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str56380_ _i56387_)))
                              (__tmp62718
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix56379_ _i56387_))))
                          (declare (not safe))
                          (eq? __tmp62719 __tmp62718))
                        (let ((__tmp62717
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i56387_ '1))))
                          (declare (not safe))
                          (_lp56385_ __tmp62717))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str56357_ _char56358_ _start56359_)
        (let ((_len56361_ (string-length _str56357_)))
          (let _lp56363_ ((_k56365_ _start56359_))
            (if (let () (declare (not safe)) (##fx< _k56365_ _len56361_))
                (if (let ((__tmp62721
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56357_ _k56365_))))
                      (declare (not safe))
                      (eq? _char56358_ __tmp62721))
                    _k56365_
                    (let ((__tmp62720
                           (let () (declare (not safe)) (##fx+ _k56365_ '1))))
                      (declare (not safe))
                      (_lp56363_ __tmp62720)))
                '#f)))))
    (define string-index__0
      (lambda (_str56370_ _char56371_)
        (let ((_start56373_ '0))
          (declare (not safe))
          (string-index__% _str56370_ _char56371_ _start56373_))))
    (define string-index
      (lambda _g62723_
        (let ((_g62722_ (let () (declare (not safe)) (##length _g62723_))))
          (cond ((let () (declare (not safe)) (##fx= _g62722_ 2))
                 (apply (lambda (_str56370_ _char56371_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str56370_ _char56371_)))
                        _g62723_))
                ((let () (declare (not safe)) (##fx= _g62722_ 3))
                 (apply (lambda (_str56375_ _char56376_ _start56377_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str56375_
                             _char56376_
                             _start56377_)))
                        _g62723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g62723_))))))
    (define string-rindex__%
      (lambda (_str56328_ _char56329_ _start56330_)
        (let* ((_len56332_ (string-length _str56328_))
               (_start56337_
                (let ((_$e56334_ _start56330_))
                  (if _$e56334_
                      _$e56334_
                      (let () (declare (not safe)) (##fx- _len56332_ '1))))))
          (let _lp56340_ ((_k56342_ _start56337_))
            (if (let () (declare (not safe)) (##fx>= _k56342_ '0))
                (if (let ((__tmp62725
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56328_ _k56342_))))
                      (declare (not safe))
                      (eq? _char56329_ __tmp62725))
                    _k56342_
                    (let ((__tmp62724
                           (let () (declare (not safe)) (##fx- _k56342_ '1))))
                      (declare (not safe))
                      (_lp56340_ __tmp62724)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str56347_ _char56348_)
        (let ((_start56350_ '#f))
          (declare (not safe))
          (string-rindex__% _str56347_ _char56348_ _start56350_))))
    (define string-rindex
      (lambda _g62727_
        (let ((_g62726_ (let () (declare (not safe)) (##length _g62727_))))
          (cond ((let () (declare (not safe)) (##fx= _g62726_ 2))
                 (apply (lambda (_str56347_ _char56348_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str56347_ _char56348_)))
                        _g62727_))
                ((let () (declare (not safe)) (##fx= _g62726_ 3))
                 (apply (lambda (_str56352_ _char56353_ _start56354_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str56352_
                             _char56353_
                             _start56354_)))
                        _g62727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g62727_))))))
    (define string-split
      (lambda (_str56312_ _char56313_)
        (let ((_len56315_ (string-length _str56312_)))
          (let _lp56317_ ((_start56319_ '0) (_r56320_ '()))
            (let ((_$e56322_
                   (let ()
                     (declare (not safe))
                     (string-index _str56312_ _char56313_ _start56319_))))
              (if _$e56322_
                  ((lambda (_end56325_)
                     (let ((__tmp62731
                            (let ()
                              (declare (not safe))
                              (##fx+ _end56325_ '1)))
                           (__tmp62729
                            (let ((__tmp62730
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56312_
                                      _start56319_
                                      _end56325_))))
                              (declare (not safe))
                              (cons __tmp62730 _r56320_))))
                       (declare (not safe))
                       (_lp56317_ __tmp62731 __tmp62729)))
                   _$e56322_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start56319_ _len56315_))
                      (let ((__tmp62728
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56312_
                                      _start56319_
                                      _len56315_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp62728 _r56320_))
                      (reverse _r56320_))))))))
    (define string-join
      (lambda (_strs56217_ _join56218_)
        (letrec ((_join-length56220_
                  (lambda (_strs56271_ _jlen56272_)
                    (let _lp56274_ ((_rest56276_ _strs56271_) (_len56277_ '0))
                      (let* ((_rest5627856286_ _rest56276_)
                             (_else5628056294_ (lambda () '0))
                             (_K5628256300_
                              (lambda (_rest56297_ _hd56298_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd56298_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest56297_))
                                        (let ((__tmp62733
                                               (let ((__tmp62734
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd56298_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp62734
                                                        _jlen56272_
                                                        _len56277_))))
                                          (declare (not safe))
                                          (_lp56274_ _rest56297_ __tmp62733))
                                        (let ((__tmp62732
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd56298_))))
                                          (declare (not safe))
                                          (##fx+ __tmp62732 _len56277_)))
                                    (error '"expected string" _hd56298_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5627856286_))
                            (let ((_hd5628356303_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5627856286_)))
                                  (_tl5628456305_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5627856286_))))
                              (let* ((_hd56308_ _hd5628356303_)
                                     (_rest56310_ _tl5628456305_))
                                (declare (not safe))
                                (_K5628256300_ _rest56310_ _hd56308_)))
                            (let ()
                              (declare (not safe))
                              (_else5628056294_))))))))
          (let* ((_join56222_
                  (if (let () (declare (not safe)) (char? _join56218_))
                      (string _join56218_)
                      (if (let () (declare (not safe)) (string? _join56218_))
                          _join56218_
                          (error '"expected string or char" _join56218_))))
                 (_jlen56224_
                  (let () (declare (not safe)) (##string-length _join56222_)))
                 (_olen56226_
                  (let ()
                    (declare (not safe))
                    (_join-length56220_ _strs56217_ _jlen56224_)))
                 (_ostr56228_ (make-string _olen56226_)))
            (let _lp56231_ ((_rest56233_ _strs56217_) (_k56234_ '0))
              (let* ((_rest5623556243_ _rest56233_)
                     (_else5623756251_ (lambda () '""))
                     (_K5623956259_
                      (lambda (_rest56254_ _hd56255_)
                        (let ((_hdlen56257_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd56255_))))
                          (if (let () (declare (not safe)) (pair? _rest56254_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56255_
                                   '0
                                   _hdlen56257_
                                   _ostr56228_
                                   _k56234_))
                                (let ((__tmp62735
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56234_ _hdlen56257_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join56222_
                                   '0
                                   _jlen56224_
                                   _ostr56228_
                                   __tmp62735))
                                (let ((__tmp62736
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56234_
                                                _hdlen56257_
                                                _jlen56224_))))
                                  (declare (not safe))
                                  (_lp56231_ _rest56254_ __tmp62736)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56255_
                                   '0
                                   _hdlen56257_
                                   _ostr56228_
                                   _k56234_))
                                _ostr56228_))))))
                (if (let () (declare (not safe)) (##pair? _rest5623556243_))
                    (let ((_hd5624056262_
                           (let ()
                             (declare (not safe))
                             (##car _rest5623556243_)))
                          (_tl5624156264_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5623556243_))))
                      (let* ((_hd56267_ _hd5624056262_)
                             (_rest56269_ _tl5624156264_))
                        (declare (not safe))
                        (_K5623956259_ _rest56269_ _hd56267_)))
                    (let () (declare (not safe)) (_else5623756251_)))))))))
    (define read-u8vector
      (lambda (_bytes56214_ _port56215_)
        (read-subu8vector
         _bytes56214_
         '0
         (u8vector-length _bytes56214_)
         _port56215_)))
    (define write-u8vector
      (lambda (_bytes56211_ _port56212_)
        (write-subu8vector
         _bytes56211_
         '0
         (u8vector-length _bytes56211_)
         _port56212_)))
    (define read-string
      (lambda (_str56208_ _port56209_)
        (read-substring _str56208_ '0 (string-length _str56208_) _port56209_)))
    (define write-string
      (lambda (_str56205_ _port56206_)
        (write-substring
         _str56205_
         '0
         (string-length _str56205_)
         _port56206_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag56174_
               _dbg-exprs56175_
               _dbg-thunks56176_
               _expr56177_
               _thunk56178_)
        (letrec ((_o56180_ (current-output-port))
                 (_e56181_ (current-error-port))
                 (_p56182_ (DBG-printer))
                 (_f56183_
                  (lambda () (force-output _o56180_) (force-output _e56181_)))
                 (_d56184_ (lambda (_x56191_) (display _x56191_ _e56181_)))
                 (_w56185_ (lambda (_x56193_) (_p56182_ _x56193_ _e56181_)))
                 (_n56186_ (lambda () (newline _e56181_)))
                 (_v56187_
                  (lambda (_l56196_)
                    (for-each
                     (lambda (_x56198_)
                       (let () (declare (not safe)) (_d56184_ '" "))
                       (let () (declare (not safe)) (_w56185_ _x56198_)))
                     _l56196_)
                    (let () (declare (not safe)) (_n56186_))))
                 (_x56188_
                  (lambda (_expr56200_ _thunk56201_)
                    (let () (declare (not safe)) (_f56183_))
                    (let () (declare (not safe)) (_d56184_ '"  "))
                    (let () (declare (not safe)) (_w56185_ _expr56200_))
                    (let () (declare (not safe)) (_d56184_ '" =>"))
                    (call-with-values
                     _thunk56201_
                     (lambda _x56203_
                       (let () (declare (not safe)) (_v56187_ _x56203_))
                       (let () (declare (not safe)) (_f56183_))
                       (apply values _x56203_))))))
          (if _tag56174_
              (begin
                (if (let () (declare (not safe)) (eq? _tag56174_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f56183_))
                      (let () (declare (not safe)) (_d56184_ _tag56174_))
                      (let () (declare (not safe)) (_n56186_))))
                (for-each _x56188_ _dbg-exprs56175_ _dbg-thunks56176_)
                (if _thunk56178_
                    (let ()
                      (declare (not safe))
                      (_x56188_ _expr56177_ _thunk56178_))
                    '#!void))
              (if _thunk56178_ (_thunk56178_) '#!void)))))))
