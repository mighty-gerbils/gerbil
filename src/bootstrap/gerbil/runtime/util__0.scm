(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1710617599)
  (begin
    (define displayln
      (lambda _args54304_
        (let _lp54306_ ((_rest54308_ _args54304_))
          (let* ((_rest5430954317_ _rest54308_)
                 (_else5431154325_ (lambda () (newline)))
                 (_K5431354331_
                  (lambda (_rest54328_ _hd54329_)
                    (display _hd54329_)
                    (let () (declare (not safe)) (_lp54306_ _rest54328_)))))
            (if (let () (declare (not safe)) (##pair? _rest5430954317_))
                (let ((_hd5431454334_
                       (let () (declare (not safe)) (##car _rest5430954317_)))
                      (_tl5431554336_
                       (let () (declare (not safe)) (##cdr _rest5430954317_))))
                  (let* ((_hd54339_ _hd5431454334_)
                         (_rest54341_ _tl5431554336_))
                    (declare (not safe))
                    (_K5431354331_ _rest54341_ _hd54339_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args54302_ (for-each display _args54302_)))
    (define file-newer?
      (lambda (_file154295_ _file254296_)
        (letrec ((_modification-time54298_
                  (lambda (_file54300_)
                    (let ((__tmp54725
                           (file-info-last-modification-time
                            (file-info _file54300_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp54725)))))
          (let ((__tmp54727
                 (let ()
                   (declare (not safe))
                   (_modification-time54298_ _file154295_)))
                (__tmp54726
                 (let ()
                   (declare (not safe))
                   (_modification-time54298_ _file254296_))))
            (declare (not safe))
            (##fl> __tmp54727 __tmp54726)))))
    (define create-directory*__%
      (lambda (_dir54269_ _perms54270_)
        (letrec ((_create154272_
                  (lambda (_path54283_)
                    (if (file-exists? _path54283_)
                        (if (let ((__tmp54728 (file-type _path54283_)))
                              (declare (not safe))
                              (eq? __tmp54728 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path54283_))
                        (if _perms54270_
                            (create-directory
                             (list 'path:
                                   _path54283_
                                   'permissions:
                                   _perms54270_))
                            (create-directory _path54283_))))))
          (if (file-exists? _dir54269_)
              '#!void
              (let _lp54274_ ((_start54276_ '0))
                (let ((_$e54278_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir54269_ '#\/ _start54276_))))
                  (if _$e54278_
                      ((lambda (_x54281_)
                         (if (let () (declare (not safe)) (##fx> _x54281_ '0))
                             (let ((__tmp54729
                                    (substring _dir54269_ '0 _x54281_)))
                               (declare (not safe))
                               (_create154272_ __tmp54729))
                             '#!void)
                         (let ((__tmp54730
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x54281_ '1))))
                           (declare (not safe))
                           (_lp54274_ __tmp54730)))
                       _$e54278_)
                      (let ()
                        (declare (not safe))
                        (_create154272_ _dir54269_)))))))))
    (define create-directory*__0
      (lambda (_dir54288_)
        (let ((_perms54290_ '493))
          (declare (not safe))
          (create-directory*__% _dir54288_ _perms54290_))))
    (define create-directory*
      (lambda _g54732_
        (let ((_g54731_ (let () (declare (not safe)) (##length _g54732_))))
          (cond ((let () (declare (not safe)) (##fx= _g54731_ 1))
                 (apply (lambda (_dir54288_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir54288_)))
                        _g54732_))
                ((let () (declare (not safe)) (##fx= _g54731_ 2))
                 (apply (lambda (_dir54292_ _perms54293_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir54292_ _perms54293_)))
                        _g54732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g54732_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g54733_ '#t))
    (define true?
      (lambda (_obj54265_) (let () (declare (not safe)) (eq? _obj54265_ '#t))))
    (define false (lambda _g54734_ '#f))
    (define void (lambda _g54735_ '#!void))
    (define void?
      (lambda (_obj54261_)
        (let () (declare (not safe)) (eq? _obj54261_ '#!void))))
    (define dssl-object?
      (lambda (_obj54259_)
        (if (memq _obj54259_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj54257_)
        (let () (declare (not safe)) (eq? _obj54257_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj54255_)
        (let () (declare (not safe)) (eq? _obj54255_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj54253_)
        (let () (declare (not safe)) (eq? _obj54253_ '#!optional))))
    (define immediate?
      (lambda (_obj54249_)
        (let* ((_t54251_ (let () (declare (not safe)) (##type _obj54249_)))
               (__tmp54736
                (let () (declare (not safe)) (##fxand _t54251_ '1))))
          (declare (not safe))
          (##fxzero? __tmp54736))))
    (define nonnegative-fixnum?
      (lambda (_obj54247_)
        (if (let () (declare (not safe)) (fixnum? _obj54247_))
            (let ((__tmp54737 (fxnegative? _obj54247_)))
              (declare (not safe))
              (not __tmp54737))
            '#f)))
    (define values-count
      (lambda (_obj54245_)
        (if (let () (declare (not safe)) (##values? _obj54245_))
            (let () (declare (not safe)) (##vector-length _obj54245_))
            '1)))
    (define values-ref
      (lambda (_obj54242_ _k54243_)
        (if (let () (declare (not safe)) (##values? _obj54242_))
            (let () (declare (not safe)) (##vector-ref _obj54242_ _k54243_))
            _obj54242_)))
    (define values->list
      (lambda (_obj54240_)
        (if (let () (declare (not safe)) (##values? _obj54240_))
            (let () (declare (not safe)) (##vector->list _obj54240_))
            (list _obj54240_))))
    (define subvector->list__%
      (lambda (_obj54225_ _start54226_)
        (let ((_lst54228_
               (let () (declare (not safe)) (##vector->list _obj54225_))))
          (list-tail _lst54228_ _start54226_))))
    (define subvector->list__0
      (lambda (_obj54233_)
        (let ((_start54235_ '0))
          (declare (not safe))
          (subvector->list__% _obj54233_ _start54235_))))
    (define subvector->list
      (lambda _g54739_
        (let ((_g54738_ (let () (declare (not safe)) (##length _g54739_))))
          (cond ((let () (declare (not safe)) (##fx= _g54738_ 1))
                 (apply (lambda (_obj54233_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj54233_)))
                        _g54739_))
                ((let () (declare (not safe)) (##fx= _g54738_ 2))
                 (apply (lambda (_obj54237_ _start54238_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj54237_ _start54238_)))
                        _g54739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g54739_))))))
    (define cons*
      (lambda (_x54215_ _y54216_ . _rest54217_)
        (letrec ((_recur54219_
                  (lambda (_x54221_ _rest54222_)
                    (if (let () (declare (not safe)) (pair? _rest54222_))
                        (let ((__tmp54740
                               (let ((__tmp54742
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest54222_)))
                                     (__tmp54741
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest54222_))))
                                 (declare (not safe))
                                 (_recur54219_ __tmp54742 __tmp54741))))
                          (declare (not safe))
                          (cons _x54221_ __tmp54740))
                        _x54221_))))
          (let ((__tmp54743
                 (let ()
                   (declare (not safe))
                   (_recur54219_ _y54216_ _rest54217_))))
            (declare (not safe))
            (cons _x54215_ __tmp54743)))))
    (define foldl1
      (lambda (_f54173_ _iv54174_ _lst54175_)
        (let _lp54177_ ((_rest54179_ _lst54175_) (_r54180_ _iv54174_))
          (let* ((_rest5418154189_ _rest54179_)
                 (_else5418354197_ (lambda () _r54180_))
                 (_K5418554203_
                  (lambda (_rest54200_ _x54201_)
                    (let ((__tmp54744 (_f54173_ _x54201_ _r54180_)))
                      (declare (not safe))
                      (_lp54177_ _rest54200_ __tmp54744)))))
            (if (let () (declare (not safe)) (##pair? _rest5418154189_))
                (let ((_hd5418654206_
                       (let () (declare (not safe)) (##car _rest5418154189_)))
                      (_tl5418754208_
                       (let () (declare (not safe)) (##cdr _rest5418154189_))))
                  (let* ((_x54211_ _hd5418654206_)
                         (_rest54213_ _tl5418754208_))
                    (declare (not safe))
                    (_K5418554203_ _rest54213_ _x54211_)))
                (let () (declare (not safe)) (_else5418354197_)))))))
    (define foldl2
      (lambda (_f54096_ _iv54097_ _lst154098_ _lst254099_)
        (let _lp54101_ ((_rest154103_ _lst154098_)
                        (_rest254104_ _lst254099_)
                        (_r54105_ _iv54097_))
          (let* ((_rest15410654114_ _rest154103_)
                 (_else5410854122_ (lambda () _r54105_))
                 (_K5411054161_
                  (lambda (_rest154125_ _x154126_)
                    (let* ((_rest25412754135_ _rest254104_)
                           (_else5412954143_ (lambda () _r54105_))
                           (_K5413154149_
                            (lambda (_rest254146_ _x254147_)
                              (let ((__tmp54745
                                     (_f54096_ _x154126_ _x254147_ _r54105_)))
                                (declare (not safe))
                                (_lp54101_
                                 _rest154125_
                                 _rest254146_
                                 __tmp54745)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25412754135_))
                          (let ((_hd5413254152_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25412754135_)))
                                (_tl5413354154_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25412754135_))))
                            (let* ((_x254157_ _hd5413254152_)
                                   (_rest254159_ _tl5413354154_))
                              (declare (not safe))
                              (_K5413154149_ _rest254159_ _x254157_)))
                          (let () (declare (not safe)) (_else5412954143_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15410654114_))
                (let ((_hd5411154164_
                       (let () (declare (not safe)) (##car _rest15410654114_)))
                      (_tl5411254166_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15410654114_))))
                  (let* ((_x154169_ _hd5411154164_)
                         (_rest154171_ _tl5411254166_))
                    (declare (not safe))
                    (_K5411054161_ _rest154171_ _x154169_)))
                (let () (declare (not safe)) (_else5410854122_)))))))
    (define foldl
      (lambda _g54747_
        (let ((_g54746_ (let () (declare (not safe)) (##length _g54747_))))
          (cond ((let () (declare (not safe)) (##fx= _g54746_ 3))
                 (apply (lambda (_f54081_ _iv54082_ _lst54083_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f54081_ _iv54082_ _lst54083_)))
                        _g54747_))
                ((let () (declare (not safe)) (##fx= _g54746_ 4))
                 (apply (lambda (_f54085_ _iv54086_ _lst154087_ _lst254088_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f54085_
                                    _iv54086_
                                    _lst154087_
                                    _lst254088_)))
                        _g54747_))
                ((let () (declare (not safe)) (##fx>= _g54746_ 4))
                 (apply foldl* _g54747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g54747_))))))
    (define foldl*
      (lambda (_f54069_ _iv54070_ . _rest54071_)
        (let _recur54073_ ((_iv54075_ _iv54070_) (_rest54076_ _rest54071_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest54076_))
              (let ((__tmp54749
                     (apply _f54069_
                            (let ((__tmp54751
                                   (lambda (_xs54078_ _r54079_)
                                     (let ((__tmp54752 (car _xs54078_)))
                                       (declare (not safe))
                                       (cons __tmp54752 _r54079_))))
                                  (__tmp54750 (list _iv54075_)))
                              (declare (not safe))
                              (foldr1 __tmp54751 __tmp54750 _rest54076_))))
                    (__tmp54748 (map cdr _rest54076_)))
                (declare (not safe))
                (_recur54073_ __tmp54749 __tmp54748))
              _iv54075_))))
    (define foldr1
      (lambda (_f54028_ _iv54029_ _lst54030_)
        (let _recur54032_ ((_rest54034_ _lst54030_))
          (let* ((_rest5403554043_ _rest54034_)
                 (_else5403754051_ (lambda () _iv54029_))
                 (_K5403954057_
                  (lambda (_rest54054_ _x54055_)
                    (_f54028_
                     _x54055_
                     (let ()
                       (declare (not safe))
                       (_recur54032_ _rest54054_))))))
            (if (let () (declare (not safe)) (##pair? _rest5403554043_))
                (let ((_hd5404054060_
                       (let () (declare (not safe)) (##car _rest5403554043_)))
                      (_tl5404154062_
                       (let () (declare (not safe)) (##cdr _rest5403554043_))))
                  (let* ((_x54065_ _hd5404054060_)
                         (_rest54067_ _tl5404154062_))
                    (declare (not safe))
                    (_K5403954057_ _rest54067_ _x54065_)))
                (let () (declare (not safe)) (_else5403754051_)))))))
    (define foldr2
      (lambda (_f53952_ _iv53953_ _lst153954_ _lst253955_)
        (let _recur53957_ ((_rest153959_ _lst153954_)
                           (_rest253960_ _lst253955_))
          (let* ((_rest15396153969_ _rest153959_)
                 (_else5396353977_ (lambda () _iv53953_))
                 (_K5396554016_
                  (lambda (_rest153980_ _x153981_)
                    (let* ((_rest25398253990_ _rest253960_)
                           (_else5398453998_ (lambda () _iv53953_))
                           (_K5398654004_
                            (lambda (_rest254001_ _x254002_)
                              (_f53952_
                               _x153981_
                               _x254002_
                               (let ()
                                 (declare (not safe))
                                 (_recur53957_ _rest153980_ _rest254001_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25398253990_))
                          (let ((_hd5398754007_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25398253990_)))
                                (_tl5398854009_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25398253990_))))
                            (let* ((_x254012_ _hd5398754007_)
                                   (_rest254014_ _tl5398854009_))
                              (declare (not safe))
                              (_K5398654004_ _rest254014_ _x254012_)))
                          (let () (declare (not safe)) (_else5398453998_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15396153969_))
                (let ((_hd5396654019_
                       (let () (declare (not safe)) (##car _rest15396153969_)))
                      (_tl5396754021_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15396153969_))))
                  (let* ((_x154024_ _hd5396654019_)
                         (_rest154026_ _tl5396754021_))
                    (declare (not safe))
                    (_K5396554016_ _rest154026_ _x154024_)))
                (let () (declare (not safe)) (_else5396353977_)))))))
    (define foldr
      (lambda _g54754_
        (let ((_g54753_ (let () (declare (not safe)) (##length _g54754_))))
          (cond ((let () (declare (not safe)) (##fx= _g54753_ 3))
                 (apply (lambda (_f53937_ _iv53938_ _lst53939_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f53937_ _iv53938_ _lst53939_)))
                        _g54754_))
                ((let () (declare (not safe)) (##fx= _g54753_ 4))
                 (apply (lambda (_f53941_ _iv53942_ _lst153943_ _lst253944_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f53941_
                                    _iv53942_
                                    _lst153943_
                                    _lst253944_)))
                        _g54754_))
                ((let () (declare (not safe)) (##fx>= _g54753_ 4))
                 (apply foldr* _g54754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g54754_))))))
    (define foldr*
      (lambda (_f53926_ _iv53927_ . _rest53928_)
        (let _recur53930_ ((_rest53932_ _rest53928_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53932_))
              (apply _f53926_
                     (let ((__tmp54757
                            (lambda (_xs53934_ _r53935_)
                              (let ((__tmp54758 (car _xs53934_)))
                                (declare (not safe))
                                (cons __tmp54758 _r53935_))))
                           (__tmp54755
                            (list (let ((__tmp54756 (map cdr _rest53932_)))
                                    (declare (not safe))
                                    (_recur53930_ __tmp54756)))))
                       (declare (not safe))
                       (foldr1 __tmp54757 __tmp54755 _rest53932_)))
              _iv53927_))))
    (define remove-nulls!
      (lambda (_l53813_)
        (let* ((_l5381453827_ _l53813_)
               (_E5381853831_
                (lambda () (error '"No clause matching" _l5381453827_))))
          (let ((_K5382353916_
                 (lambda (_r53914_)
                   (let () (declare (not safe)) (remove-nulls! _r53914_))))
                (_K5382053903_
                 (lambda (_r53843_)
                   (let _loop53845_ ((_l53847_ _l53813_) (_r53848_ _r53843_))
                     (let* ((_r5384953862_ _r53848_)
                            (_E5385353866_
                             (lambda ()
                               (error '"No clause matching" _r5384953862_))))
                       (let ((_K5385853893_
                              (lambda (_rr53891_)
                                (set-cdr!
                                 _l53847_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr53891_)))))
                             (_K5385553880_
                              (lambda (_rr53878_)
                                (let ()
                                  (declare (not safe))
                                  (_loop53845_ _r53848_ _rr53878_))))
                             (_K5385453871_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5384953862_))
                             (let ((_tl5386053898_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5384953862_)))
                                   (_hd5385953896_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5384953862_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5385953896_))
                                   (let ((_rr53901_ _tl5386053898_))
                                     (declare (not safe))
                                     (_K5385853893_ _rr53901_))
                                   (let ((_rr53886_ _tl5386053898_))
                                     (declare (not safe))
                                     (_K5385553880_ _rr53886_))))
                             '#!void))))
                   _l53813_))
                (_K5381953836_ (lambda () _l53813_)))
            (if (let () (declare (not safe)) (##pair? _l5381453827_))
                (let ((_tl5382553921_
                       (let () (declare (not safe)) (##cdr _l5381453827_)))
                      (_hd5382453919_
                       (let () (declare (not safe)) (##car _l5381453827_))))
                  (if (let () (declare (not safe)) (##null? _hd5382453919_))
                      (let ((_r53924_ _tl5382553921_))
                        (declare (not safe))
                        (remove-nulls! _r53924_))
                      (let ((_r53909_ _tl5382553921_))
                        (declare (not safe))
                        (_K5382053903_ _r53909_))))
                (let () (declare (not safe)) (_K5381953836_)))))))
    (define append1!
      (lambda (_l53808_ _x53809_)
        (let ((_l253811_ (let () (declare (not safe)) (cons _x53809_ '()))))
          (if (let () (declare (not safe)) (pair? _l53808_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l53808_))
               _l253811_)
              _l253811_))))
    (define append-reverse-until
      (lambda (_pred53761_ _rhead53762_ _tail53763_)
        (let _loop53765_ ((_rhead53767_ _rhead53762_)
                          (_tail53768_ _tail53763_))
          (let* ((_rhead5376953778_ _rhead53767_)
                 (_E5377253782_
                  (lambda () (error '"No clause matching" _rhead5376953778_))))
            (let ((_K5377653805_ (lambda () (values '() _tail53768_)))
                  (_K5377353789_
                   (lambda (_r53786_ _a53787_)
                     (if (_pred53761_ _a53787_)
                         (values _rhead53767_ _tail53768_)
                         (let ((__tmp54759
                                (let ()
                                  (declare (not safe))
                                  (cons _a53787_ _tail53768_))))
                           (declare (not safe))
                           (_loop53765_ _r53786_ __tmp54759))))))
              (let ((_try-match5377153801_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5376953778_))
                           (let ((_tl5377553794_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5376953778_)))
                                 (_hd5377453792_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5376953778_))))
                             (let ((_a53797_ _hd5377453792_)
                                   (_r53799_ _tl5377553794_))
                               (let ()
                                 (declare (not safe))
                                 (_K5377353789_ _r53799_ _a53797_))))
                           (let () (declare (not safe)) (_E5377253782_))))))
                (if (let () (declare (not safe)) (##null? _rhead5376953778_))
                    (let () (declare (not safe)) (_K5377653805_))
                    (let ()
                      (declare (not safe))
                      (_try-match5377153801_)))))))))
    (define andmap1
      (lambda (_f53721_ _lst53722_)
        (let _lp53724_ ((_rest53726_ _lst53722_))
          (let* ((_rest5372753735_ _rest53726_)
                 (_else5372953743_ (lambda () '#t))
                 (_K5373153749_
                  (lambda (_rest53746_ _x53747_)
                    (if (_f53721_ _x53747_)
                        (let () (declare (not safe)) (_lp53724_ _rest53746_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5372753735_))
                (let ((_hd5373253752_
                       (let () (declare (not safe)) (##car _rest5372753735_)))
                      (_tl5373353754_
                       (let () (declare (not safe)) (##cdr _rest5372753735_))))
                  (let* ((_x53757_ _hd5373253752_)
                         (_rest53759_ _tl5373353754_))
                    (declare (not safe))
                    (_K5373153749_ _rest53759_ _x53757_)))
                (let () (declare (not safe)) (_else5372953743_)))))))
    (define andmap2
      (lambda (_f53646_ _lst153647_ _lst253648_)
        (let _lp53650_ ((_rest153652_ _lst153647_) (_rest253653_ _lst253648_))
          (let* ((_rest15365453662_ _rest153652_)
                 (_else5365653670_ (lambda () '#t))
                 (_K5365853709_
                  (lambda (_rest153673_ _x153674_)
                    (let* ((_rest25367553683_ _rest253653_)
                           (_else5367753691_ (lambda () '#t))
                           (_K5367953697_
                            (lambda (_rest253694_ _x253695_)
                              (if (_f53646_ _x153674_ _x253695_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp53650_ _rest153673_ _rest253694_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25367553683_))
                          (let ((_hd5368053700_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25367553683_)))
                                (_tl5368153702_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25367553683_))))
                            (let* ((_x253705_ _hd5368053700_)
                                   (_rest253707_ _tl5368153702_))
                              (declare (not safe))
                              (_K5367953697_ _rest253707_ _x253705_)))
                          (let () (declare (not safe)) (_else5367753691_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15365453662_))
                (let ((_hd5365953712_
                       (let () (declare (not safe)) (##car _rest15365453662_)))
                      (_tl5366053714_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15365453662_))))
                  (let* ((_x153717_ _hd5365953712_)
                         (_rest153719_ _tl5366053714_))
                    (declare (not safe))
                    (_K5365853709_ _rest153719_ _x153717_)))
                (let () (declare (not safe)) (_else5365653670_)))))))
    (define andmap
      (lambda _g54761_
        (let ((_g54760_ (let () (declare (not safe)) (##length _g54761_))))
          (cond ((let () (declare (not safe)) (##fx= _g54760_ 2))
                 (apply (lambda (_f53634_ _lst53635_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f53634_ _lst53635_)))
                        _g54761_))
                ((let () (declare (not safe)) (##fx= _g54760_ 3))
                 (apply (lambda (_f53637_ _lst153638_ _lst253639_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f53637_ _lst153638_ _lst253639_)))
                        _g54761_))
                ((let () (declare (not safe)) (##fx>= _g54760_ 3))
                 (apply andmap* _g54761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g54761_))))))
    (define andmap*
      (lambda (_f53627_ . _rest53628_)
        (let _recur53630_ ((_rest53632_ _rest53628_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53632_))
              (if (apply _f53627_ (map car _rest53632_))
                  (let ((__tmp54762 (map cdr _rest53632_)))
                    (declare (not safe))
                    (_recur53630_ __tmp54762))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f53584_ _lst53585_)
        (let _lp53587_ ((_rest53589_ _lst53585_))
          (let* ((_rest5359053598_ _rest53589_)
                 (_else5359253606_ (lambda () '#f))
                 (_K5359453615_
                  (lambda (_rest53609_ _x53610_)
                    (let ((_$e53612_ (_f53584_ _x53610_)))
                      (if _$e53612_
                          _$e53612_
                          (let ()
                            (declare (not safe))
                            (_lp53587_ _rest53609_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5359053598_))
                (let ((_hd5359553618_
                       (let () (declare (not safe)) (##car _rest5359053598_)))
                      (_tl5359653620_
                       (let () (declare (not safe)) (##cdr _rest5359053598_))))
                  (let* ((_x53623_ _hd5359553618_)
                         (_rest53625_ _tl5359653620_))
                    (declare (not safe))
                    (_K5359453615_ _rest53625_ _x53623_)))
                (let () (declare (not safe)) (_else5359253606_)))))))
    (define ormap2
      (lambda (_f53506_ _lst153507_ _lst253508_)
        (let _lp53510_ ((_rest153512_ _lst153507_) (_rest253513_ _lst253508_))
          (let* ((_rest15351453522_ _rest153512_)
                 (_else5351653530_ (lambda () '#f))
                 (_K5351853572_
                  (lambda (_rest153533_ _x153534_)
                    (let* ((_rest25353553543_ _rest253513_)
                           (_else5353753551_ (lambda () '#f))
                           (_K5353953560_
                            (lambda (_rest253554_ _x253555_)
                              (let ((_$e53557_ (_f53506_ _x153534_ _x253555_)))
                                (if _$e53557_
                                    _$e53557_
                                    (let ()
                                      (declare (not safe))
                                      (_lp53510_
                                       _rest153533_
                                       _rest253554_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25353553543_))
                          (let ((_hd5354053563_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25353553543_)))
                                (_tl5354153565_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25353553543_))))
                            (let* ((_x253568_ _hd5354053563_)
                                   (_rest253570_ _tl5354153565_))
                              (declare (not safe))
                              (_K5353953560_ _rest253570_ _x253568_)))
                          (let () (declare (not safe)) (_else5353753551_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15351453522_))
                (let ((_hd5351953575_
                       (let () (declare (not safe)) (##car _rest15351453522_)))
                      (_tl5352053577_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15351453522_))))
                  (let* ((_x153580_ _hd5351953575_)
                         (_rest153582_ _tl5352053577_))
                    (declare (not safe))
                    (_K5351853572_ _rest153582_ _x153580_)))
                (let () (declare (not safe)) (_else5351653530_)))))))
    (define ormap
      (lambda _g54764_
        (let ((_g54763_ (let () (declare (not safe)) (##length _g54764_))))
          (cond ((let () (declare (not safe)) (##fx= _g54763_ 2))
                 (apply (lambda (_f53494_ _lst53495_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f53494_ _lst53495_)))
                        _g54764_))
                ((let () (declare (not safe)) (##fx= _g54763_ 3))
                 (apply (lambda (_f53497_ _lst153498_ _lst253499_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f53497_ _lst153498_ _lst253499_)))
                        _g54764_))
                ((let () (declare (not safe)) (##fx>= _g54763_ 3))
                 (apply ormap* _g54764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g54764_))))))
    (define ormap*
      (lambda (_f53484_ . _rest53485_)
        (let _recur53487_ ((_rest53489_ _rest53485_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53489_))
              (let ((_$e53491_ (apply _f53484_ (map car _rest53489_))))
                (if _$e53491_
                    _$e53491_
                    (let ((__tmp54765 (map cdr _rest53489_)))
                      (declare (not safe))
                      (_recur53487_ __tmp54765))))
              '#f))))
    (define filter-map1
      (lambda (_f53439_ _lst53440_)
        (let _recur53442_ ((_rest53444_ _lst53440_))
          (let* ((_rest5344553453_ _rest53444_)
                 (_else5344753461_ (lambda () '()))
                 (_K5344953472_
                  (lambda (_rest53464_ _x53465_)
                    (let ((_$e53467_ (_f53439_ _x53465_)))
                      (if _$e53467_
                          ((lambda (_r53470_)
                             (let ((__tmp54766
                                    (let ()
                                      (declare (not safe))
                                      (_recur53442_ _rest53464_))))
                               (declare (not safe))
                               (cons _r53470_ __tmp54766)))
                           _$e53467_)
                          (let ()
                            (declare (not safe))
                            (_recur53442_ _rest53464_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5344553453_))
                (let ((_hd5345053475_
                       (let () (declare (not safe)) (##car _rest5344553453_)))
                      (_tl5345153477_
                       (let () (declare (not safe)) (##cdr _rest5344553453_))))
                  (let* ((_x53480_ _hd5345053475_)
                         (_rest53482_ _tl5345153477_))
                    (declare (not safe))
                    (_K5344953472_ _rest53482_ _x53480_)))
                (let () (declare (not safe)) (_else5344753461_)))))))
    (define filter-map2
      (lambda (_f53359_ _lst153360_ _lst253361_)
        (let _recur53363_ ((_rest153365_ _lst153360_)
                           (_rest253366_ _lst253361_))
          (let* ((_rest15336753375_ _rest153365_)
                 (_else5336953383_ (lambda () '()))
                 (_K5337153427_
                  (lambda (_rest153386_ _x153387_)
                    (let* ((_rest25338853396_ _rest253366_)
                           (_else5339053404_ (lambda () '()))
                           (_K5339253415_
                            (lambda (_rest253407_ _x253408_)
                              (let ((_$e53410_ (_f53359_ _x153387_ _x253408_)))
                                (if _$e53410_
                                    ((lambda (_r53413_)
                                       (let ((__tmp54767
                                              (let ()
                                                (declare (not safe))
                                                (_recur53363_
                                                 _rest153386_
                                                 _rest253407_))))
                                         (declare (not safe))
                                         (cons _r53413_ __tmp54767)))
                                     _$e53410_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur53363_
                                       _rest153386_
                                       _rest253407_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25338853396_))
                          (let ((_hd5339353418_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25338853396_)))
                                (_tl5339453420_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25338853396_))))
                            (let* ((_x253423_ _hd5339353418_)
                                   (_rest253425_ _tl5339453420_))
                              (declare (not safe))
                              (_K5339253415_ _rest253425_ _x253423_)))
                          (let () (declare (not safe)) (_else5339053404_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15336753375_))
                (let ((_hd5337253430_
                       (let () (declare (not safe)) (##car _rest15336753375_)))
                      (_tl5337353432_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15336753375_))))
                  (let* ((_x153435_ _hd5337253430_)
                         (_rest153437_ _tl5337353432_))
                    (declare (not safe))
                    (_K5337153427_ _rest153437_ _x153435_)))
                (let () (declare (not safe)) (_else5336953383_)))))))
    (define filter-map
      (lambda _g54769_
        (let ((_g54768_ (let () (declare (not safe)) (##length _g54769_))))
          (cond ((let () (declare (not safe)) (##fx= _g54768_ 2))
                 (apply (lambda (_f53347_ _lst53348_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f53347_ _lst53348_)))
                        _g54769_))
                ((let () (declare (not safe)) (##fx= _g54768_ 3))
                 (apply (lambda (_f53350_ _lst153351_ _lst253352_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f53350_ _lst153351_ _lst253352_)))
                        _g54769_))
                ((let () (declare (not safe)) (##fx>= _g54768_ 3))
                 (apply filter-map* _g54769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g54769_))))))
    (define filter-map*
      (lambda (_f53335_ . _rest53336_)
        (let _recur53338_ ((_rest53340_ _rest53336_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53340_))
              (let ((_$e53342_ (apply _f53335_ (map car _rest53340_))))
                (if _$e53342_
                    ((lambda (_r53345_)
                       (let ((__tmp54770
                              (let ((__tmp54771 (map cdr _rest53340_)))
                                (declare (not safe))
                                (_recur53338_ __tmp54771))))
                         (declare (not safe))
                         (cons _r53345_ __tmp54770)))
                     _$e53342_)
                    (let ((__tmp54772 (map cdr _rest53340_)))
                      (declare (not safe))
                      (_recur53338_ __tmp54772))))
              '()))))
    (define assgetq__%
      (lambda (_key53313_ _lst53315_ _default53317_)
        (let ((_$e53320_
               (if (let () (declare (not safe)) (pair? _lst53315_))
                   (assq _key53313_ _lst53315_)
                   '#f)))
          (if _$e53320_
              (cdr _$e53320_)
              (if (let () (declare (not safe)) (procedure? _default53317_))
                  (_default53317_ _key53313_)
                  _default53317_)))))
    (define assgetq__0
      (lambda (_key53326_ _lst53327_)
        (let ((_default53329_ '#f))
          (declare (not safe))
          (assgetq__% _key53326_ _lst53327_ _default53329_))))
    (define assgetq
      (lambda _g54774_
        (let ((_g54773_ (let () (declare (not safe)) (##length _g54774_))))
          (cond ((let () (declare (not safe)) (##fx= _g54773_ 2))
                 (apply (lambda (_key53326_ _lst53327_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key53326_ _lst53327_)))
                        _g54774_))
                ((let () (declare (not safe)) (##fx= _g54773_ 3))
                 (apply (lambda (_key53331_ _lst53332_ _default53333_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key53331_ _lst53332_ _default53333_)))
                        _g54774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g54774_))))))
    (define assgetv__%
      (lambda (_key53290_ _lst53292_ _default53294_)
        (let ((_$e53297_
               (if (let () (declare (not safe)) (pair? _lst53292_))
                   (assv _key53290_ _lst53292_)
                   '#f)))
          (if _$e53297_
              (cdr _$e53297_)
              (if (let () (declare (not safe)) (procedure? _default53294_))
                  (_default53294_ _key53290_)
                  _default53294_)))))
    (define assgetv__0
      (lambda (_key53303_ _lst53304_)
        (let ((_default53306_ '#f))
          (declare (not safe))
          (assgetv__% _key53303_ _lst53304_ _default53306_))))
    (define assgetv
      (lambda _g54776_
        (let ((_g54775_ (let () (declare (not safe)) (##length _g54776_))))
          (cond ((let () (declare (not safe)) (##fx= _g54775_ 2))
                 (apply (lambda (_key53303_ _lst53304_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key53303_ _lst53304_)))
                        _g54776_))
                ((let () (declare (not safe)) (##fx= _g54775_ 3))
                 (apply (lambda (_key53308_ _lst53309_ _default53310_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key53308_ _lst53309_ _default53310_)))
                        _g54776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g54776_))))))
    (define assget__%
      (lambda (_key53267_ _lst53269_ _default53271_)
        (let ((_$e53274_
               (if (let () (declare (not safe)) (pair? _lst53269_))
                   (assoc _key53267_ _lst53269_)
                   '#f)))
          (if _$e53274_
              (cdr _$e53274_)
              (if (let () (declare (not safe)) (procedure? _default53271_))
                  (_default53271_ _key53267_)
                  _default53271_)))))
    (define assget__0
      (lambda (_key53280_ _lst53281_)
        (let ((_default53283_ '#f))
          (declare (not safe))
          (assget__% _key53280_ _lst53281_ _default53283_))))
    (define assget
      (lambda _g54778_
        (let ((_g54777_ (let () (declare (not safe)) (##length _g54778_))))
          (cond ((let () (declare (not safe)) (##fx= _g54777_ 2))
                 (apply (lambda (_key53280_ _lst53281_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key53280_ _lst53281_)))
                        _g54778_))
                ((let () (declare (not safe)) (##fx= _g54777_ 3))
                 (apply (lambda (_key53285_ _lst53286_ _default53287_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key53285_ _lst53286_ _default53287_)))
                        _g54778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g54778_))))))
    (define pgetq__%
      (lambda (_key53196_ _lst53198_ _default53200_)
        (let _lp53203_ ((_rest53206_ _lst53198_))
          (let* ((_rest5320853218_ _rest53206_)
                 (_else5321053226_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default53200_))
                        (_default53200_ _key53196_)
                        _default53200_)))
                 (_K5321253235_
                  (lambda (_rest53229_ _v53230_ _k53232_)
                    (if (let () (declare (not safe)) (eq? _k53232_ _key53196_))
                        _v53230_
                        (let ()
                          (declare (not safe))
                          (_lp53203_ _rest53229_))))))
            (if (let () (declare (not safe)) (##pair? _rest5320853218_))
                (let ((_hd5321353238_
                       (let () (declare (not safe)) (##car _rest5320853218_)))
                      (_tl5321453240_
                       (let () (declare (not safe)) (##cdr _rest5320853218_))))
                  (let ((_k53243_ _hd5321353238_))
                    (if (let () (declare (not safe)) (##pair? _tl5321453240_))
                        (let ((_hd5321553245_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5321453240_)))
                              (_tl5321653247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5321453240_))))
                          (let* ((_v53250_ _hd5321553245_)
                                 (_rest53252_ _tl5321653247_))
                            (declare (not safe))
                            (_K5321253235_ _rest53252_ _v53250_ _k53243_)))
                        (let () (declare (not safe)) (_else5321053226_)))))
                (let () (declare (not safe)) (_else5321053226_)))))))
    (define pgetq__0
      (lambda (_key53257_ _lst53258_)
        (let ((_default53260_ '#f))
          (declare (not safe))
          (pgetq__% _key53257_ _lst53258_ _default53260_))))
    (define pgetq
      (lambda _g54780_
        (let ((_g54779_ (let () (declare (not safe)) (##length _g54780_))))
          (cond ((let () (declare (not safe)) (##fx= _g54779_ 2))
                 (apply (lambda (_key53257_ _lst53258_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key53257_ _lst53258_)))
                        _g54780_))
                ((let () (declare (not safe)) (##fx= _g54779_ 3))
                 (apply (lambda (_key53262_ _lst53263_ _default53264_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key53262_ _lst53263_ _default53264_)))
                        _g54780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g54780_))))))
    (define pgetv__%
      (lambda (_key53125_ _lst53127_ _default53129_)
        (let _lp53132_ ((_rest53135_ _lst53127_))
          (let* ((_rest5313753147_ _rest53135_)
                 (_else5313953155_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default53129_))
                        (_default53129_ _key53125_)
                        _default53129_)))
                 (_K5314153164_
                  (lambda (_rest53158_ _v53159_ _k53161_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k53161_ _key53125_))
                        _v53159_
                        (let ()
                          (declare (not safe))
                          (_lp53132_ _rest53158_))))))
            (if (let () (declare (not safe)) (##pair? _rest5313753147_))
                (let ((_hd5314253167_
                       (let () (declare (not safe)) (##car _rest5313753147_)))
                      (_tl5314353169_
                       (let () (declare (not safe)) (##cdr _rest5313753147_))))
                  (let ((_k53172_ _hd5314253167_))
                    (if (let () (declare (not safe)) (##pair? _tl5314353169_))
                        (let ((_hd5314453174_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5314353169_)))
                              (_tl5314553176_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5314353169_))))
                          (let* ((_v53179_ _hd5314453174_)
                                 (_rest53181_ _tl5314553176_))
                            (declare (not safe))
                            (_K5314153164_ _rest53181_ _v53179_ _k53172_)))
                        (let () (declare (not safe)) (_else5313953155_)))))
                (let () (declare (not safe)) (_else5313953155_)))))))
    (define pgetv__0
      (lambda (_key53186_ _lst53187_)
        (let ((_default53189_ '#f))
          (declare (not safe))
          (pgetv__% _key53186_ _lst53187_ _default53189_))))
    (define pgetv
      (lambda _g54782_
        (let ((_g54781_ (let () (declare (not safe)) (##length _g54782_))))
          (cond ((let () (declare (not safe)) (##fx= _g54781_ 2))
                 (apply (lambda (_key53186_ _lst53187_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key53186_ _lst53187_)))
                        _g54782_))
                ((let () (declare (not safe)) (##fx= _g54781_ 3))
                 (apply (lambda (_key53191_ _lst53192_ _default53193_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key53191_ _lst53192_ _default53193_)))
                        _g54782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g54782_))))))
    (define pget__%
      (lambda (_key53054_ _lst53056_ _default53058_)
        (let _lp53061_ ((_rest53064_ _lst53056_))
          (let* ((_rest5306653076_ _rest53064_)
                 (_else5306853084_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default53058_))
                        (_default53058_ _key53054_)
                        _default53058_)))
                 (_K5307053093_
                  (lambda (_rest53087_ _v53088_ _k53090_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k53090_ _key53054_))
                        _v53088_
                        (let ()
                          (declare (not safe))
                          (_lp53061_ _rest53087_))))))
            (if (let () (declare (not safe)) (##pair? _rest5306653076_))
                (let ((_hd5307153096_
                       (let () (declare (not safe)) (##car _rest5306653076_)))
                      (_tl5307253098_
                       (let () (declare (not safe)) (##cdr _rest5306653076_))))
                  (let ((_k53101_ _hd5307153096_))
                    (if (let () (declare (not safe)) (##pair? _tl5307253098_))
                        (let ((_hd5307353103_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5307253098_)))
                              (_tl5307453105_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5307253098_))))
                          (let* ((_v53108_ _hd5307353103_)
                                 (_rest53110_ _tl5307453105_))
                            (declare (not safe))
                            (_K5307053093_ _rest53110_ _v53108_ _k53101_)))
                        (let () (declare (not safe)) (_else5306853084_)))))
                (let () (declare (not safe)) (_else5306853084_)))))))
    (define pget__0
      (lambda (_key53115_ _lst53116_)
        (let ((_default53118_ '#f))
          (declare (not safe))
          (pget__% _key53115_ _lst53116_ _default53118_))))
    (define pget
      (lambda _g54784_
        (let ((_g54783_ (let () (declare (not safe)) (##length _g54784_))))
          (cond ((let () (declare (not safe)) (##fx= _g54783_ 2))
                 (apply (lambda (_key53115_ _lst53116_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key53115_ _lst53116_)))
                        _g54784_))
                ((let () (declare (not safe)) (##fx= _g54783_ 3))
                 (apply (lambda (_key53120_ _lst53121_ _default53122_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key53120_ _lst53121_ _default53122_)))
                        _g54784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g54784_))))))
    (define find
      (lambda (_pred53047_ _lst53048_)
        (let ((_$e53050_
               (let () (declare (not safe)) (memf _pred53047_ _lst53048_))))
          (if _$e53050_ (car _$e53050_) '#f))))
    (define memf
      (lambda (_proc53007_ _lst53008_)
        (let _lp53010_ ((_rest53012_ _lst53008_))
          (let* ((_rest5301353021_ _rest53012_)
                 (_else5301553029_ (lambda () '#f))
                 (_K5301753035_
                  (lambda (_tl53032_ _hd53033_)
                    (if (_proc53007_ _hd53033_)
                        _rest53012_
                        (let () (declare (not safe)) (_lp53010_ _tl53032_))))))
            (if (let () (declare (not safe)) (##pair? _rest5301353021_))
                (let ((_hd5301853038_
                       (let () (declare (not safe)) (##car _rest5301353021_)))
                      (_tl5301953040_
                       (let () (declare (not safe)) (##cdr _rest5301353021_))))
                  (let* ((_hd53043_ _hd5301853038_) (_tl53045_ _tl5301953040_))
                    (declare (not safe))
                    (_K5301753035_ _tl53045_ _hd53043_)))
                (let () (declare (not safe)) (_else5301553029_)))))))
    (define remove1
      (lambda (_el52960_ _lst52962_)
        (let _lp52965_ ((_rest52968_ _lst52962_) (_r52970_ '()))
          (let* ((_rest5297252980_ _rest52968_)
                 (_else5297452988_ (lambda () _lst52962_))
                 (_K5297652995_
                  (lambda (_rest52991_ _hd52992_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el52960_ _hd52992_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52991_ _r52970_))
                        (let ((__tmp54785
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52992_ _r52970_))))
                          (declare (not safe))
                          (_lp52965_ _rest52991_ __tmp54785))))))
            (if (let () (declare (not safe)) (##pair? _rest5297252980_))
                (let ((_hd5297752998_
                       (let () (declare (not safe)) (##car _rest5297252980_)))
                      (_tl5297853000_
                       (let () (declare (not safe)) (##cdr _rest5297252980_))))
                  (let* ((_hd53003_ _hd5297752998_)
                         (_rest53005_ _tl5297853000_))
                    (declare (not safe))
                    (_K5297652995_ _rest53005_ _hd53003_)))
                (let () (declare (not safe)) (_else5297452988_)))))))
    (define remv
      (lambda (_el52913_ _lst52915_)
        (let _lp52918_ ((_rest52921_ _lst52915_) (_r52923_ '()))
          (let* ((_rest5292552933_ _rest52921_)
                 (_else5292752941_ (lambda () _lst52915_))
                 (_K5292952948_
                  (lambda (_rest52944_ _hd52945_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el52913_ _hd52945_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52944_ _r52923_))
                        (let ((__tmp54786
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52945_ _r52923_))))
                          (declare (not safe))
                          (_lp52918_ _rest52944_ __tmp54786))))))
            (if (let () (declare (not safe)) (##pair? _rest5292552933_))
                (let ((_hd5293052951_
                       (let () (declare (not safe)) (##car _rest5292552933_)))
                      (_tl5293152953_
                       (let () (declare (not safe)) (##cdr _rest5292552933_))))
                  (let* ((_hd52956_ _hd5293052951_)
                         (_rest52958_ _tl5293152953_))
                    (declare (not safe))
                    (_K5292952948_ _rest52958_ _hd52956_)))
                (let () (declare (not safe)) (_else5292752941_)))))))
    (define remq
      (lambda (_el52866_ _lst52868_)
        (let _lp52871_ ((_rest52874_ _lst52868_) (_r52876_ '()))
          (let* ((_rest5287852886_ _rest52874_)
                 (_else5288052894_ (lambda () _lst52868_))
                 (_K5288252901_
                  (lambda (_rest52897_ _hd52898_)
                    (if (let () (declare (not safe)) (eq? _el52866_ _hd52898_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52897_ _r52876_))
                        (let ((__tmp54787
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52898_ _r52876_))))
                          (declare (not safe))
                          (_lp52871_ _rest52897_ __tmp54787))))))
            (if (let () (declare (not safe)) (##pair? _rest5287852886_))
                (let ((_hd5288352904_
                       (let () (declare (not safe)) (##car _rest5287852886_)))
                      (_tl5288452906_
                       (let () (declare (not safe)) (##cdr _rest5287852886_))))
                  (let* ((_hd52909_ _hd5288352904_)
                         (_rest52911_ _tl5288452906_))
                    (declare (not safe))
                    (_K5288252901_ _rest52911_ _hd52909_)))
                (let () (declare (not safe)) (_else5288052894_)))))))
    (define remf
      (lambda (_proc52825_ _lst52826_)
        (let _lp52828_ ((_rest52830_ _lst52826_) (_r52831_ '()))
          (let* ((_rest5283252840_ _rest52830_)
                 (_else5283452848_ (lambda () _lst52826_))
                 (_K5283652854_
                  (lambda (_rest52851_ _hd52852_)
                    (if (_proc52825_ _hd52852_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52851_ _r52831_))
                        (let ((__tmp54788
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52852_ _r52831_))))
                          (declare (not safe))
                          (_lp52828_ _rest52851_ __tmp54788))))))
            (if (let () (declare (not safe)) (##pair? _rest5283252840_))
                (let ((_hd5283752857_
                       (let () (declare (not safe)) (##car _rest5283252840_)))
                      (_tl5283852859_
                       (let () (declare (not safe)) (##cdr _rest5283252840_))))
                  (let* ((_hd52862_ _hd5283752857_)
                         (_rest52864_ _tl5283852859_))
                    (declare (not safe))
                    (_K5283652854_ _rest52864_ _hd52862_)))
                (let () (declare (not safe)) (_else5283452848_)))))))
    (define 1+ (lambda (_x52823_) (+ _x52823_ '1)))
    (define 1- (lambda (_x52821_) (- _x52821_ '1)))
    (define fx1+ (lambda (_x52819_) (fx+ _x52819_ '1)))
    (define fx1- (lambda (_x52817_) (fx- _x52817_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x52815_)
        (if (let () (declare (not safe)) (fixnum? _x52815_))
            (let () (declare (not safe)) (##fx>= _x52815_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x52813_)
        (if (let () (declare (not safe)) (fixnum? _x52813_))
            (let () (declare (not safe)) (##fx> _x52813_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x52811_) (let () (declare (not safe)) (eq? _x52811_ '0))))
    (define fx<0?
      (lambda (_x52809_)
        (if (let () (declare (not safe)) (fixnum? _x52809_))
            (let () (declare (not safe)) (##fx< _x52809_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x52807_)
        (if (let () (declare (not safe)) (fixnum? _x52807_))
            (let () (declare (not safe)) (##fx<= _x52807_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x52805_)
        (if (let () (declare (not safe)) (symbol? _x52805_))
            (let ((__tmp54789 (uninterned-symbol? _x52805_)))
              (declare (not safe))
              (not __tmp54789))
            '#f)))
    (define display-as-string
      (lambda (_x52777_ _port52778_)
        (if (or (let () (declare (not safe)) (string? _x52777_))
                (let () (declare (not safe)) (symbol? _x52777_))
                (keyword? _x52777_)
                (let () (declare (not safe)) (number? _x52777_))
                (let () (declare (not safe)) (char? _x52777_)))
            (display _x52777_ _port52778_)
            (if (let () (declare (not safe)) (pair? _x52777_))
                (begin
                  (let ((__tmp54790 (car _x52777_)))
                    (declare (not safe))
                    (display-as-string __tmp54790 _port52778_))
                  (let ((__tmp54791 (cdr _x52777_)))
                    (declare (not safe))
                    (display-as-string __tmp54791 _port52778_)))
                (if (let () (declare (not safe)) (vector? _x52777_))
                    (vector-for-each
                     (lambda (_g5279152793_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5279152793_ _port52778_)))
                     _x52777_)
                    (if (or (let () (declare (not safe)) (null? _x52777_))
                            (let ()
                              (declare (not safe))
                              (eq? _x52777_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x52777_))
                            (let () (declare (not safe)) (boolean? _x52777_)))
                        '#!void
                        (error '"cannot convert as string" _x52777_)))))))
    (define as-string__0
      (lambda (_x52765_)
        (if (let () (declare (not safe)) (string? _x52765_))
            _x52765_
            (if (let () (declare (not safe)) (symbol? _x52765_))
                (symbol->string _x52765_)
                (if (keyword? _x52765_)
                    (keyword->string _x52765_)
                    (if (let () (declare (not safe)) (number? _x52765_))
                        (number->string _x52765_)
                        (call-with-output-string
                         '()
                         (lambda (_g5276652768_)
                           (let ()
                             (declare (not safe))
                             (display-as-string
                              _x52765_
                              _g5276652768_))))))))))
    (define as-string__1
      (lambda _args52771_
        (call-with-output-string
         '()
         (lambda (_g5277252774_)
           (let ()
             (declare (not safe))
             (display-as-string _args52771_ _g5277252774_))))))
    (define as-string
      (lambda _g54793_
        (let ((_g54792_ (let () (declare (not safe)) (##length _g54793_))))
          (cond ((let () (declare (not safe)) (##fx= _g54792_ 1))
                 (apply (lambda (_x52765_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x52765_)))
                        _g54793_))
                (#t (apply as-string__1 _g54793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g54793_))))))
    (define make-symbol__0
      (lambda (_x52761_)
        (if (interned-symbol? _x52761_)
            _x52761_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x52761_))))))
    (define make-symbol__1
      (lambda _args52763_ (string->symbol (apply as-string _args52763_))))
    (define make-symbol
      (lambda _g54795_
        (let ((_g54794_ (let () (declare (not safe)) (##length _g54795_))))
          (cond ((let () (declare (not safe)) (##fx= _g54794_ 1))
                 (apply (lambda (_x52761_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x52761_)))
                        _g54795_))
                (#t (apply make-symbol__1 _g54795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g54795_))))))
    (define make-keyword__0
      (lambda (_x52757_)
        (if (interned-keyword? _x52757_)
            _x52757_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x52757_))))))
    (define make-keyword__1
      (lambda _args52759_ (string->keyword (apply as-string _args52759_))))
    (define make-keyword
      (lambda _g54797_
        (let ((_g54796_ (let () (declare (not safe)) (##length _g54797_))))
          (cond ((let () (declare (not safe)) (##fx= _g54796_ 1))
                 (apply (lambda (_x52757_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x52757_)))
                        _g54797_))
                (#t (apply make-keyword__1 _g54797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g54797_))))))
    (define interned-keyword?
      (lambda (_x52755_)
        (if (keyword? _x52755_)
            (let ((__tmp54798 (uninterned-keyword? _x52755_)))
              (declare (not safe))
              (not __tmp54798))
            '#f)))
    (define symbol->keyword
      (lambda (_sym52753_)
        ((if (uninterned-symbol? _sym52753_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym52753_))))
    (define keyword->symbol
      (lambda (_kw52751_)
        ((if (uninterned-keyword? _kw52751_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw52751_))))
    (define bytes->string__%
      (lambda (_bstr52729_ _enc52730_)
        (if (let () (declare (not safe)) (eq? _enc52730_ 'UTF-8))
            (utf8->string _bstr52729_)
            (let* ((_in52732_
                    (open-input-u8vector
                     (let ((__tmp54799
                            (let ((__tmp54800
                                   (let ((__tmp54801
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr52729_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp54801))))
                              (declare (not safe))
                              (cons _enc52730_ __tmp54800))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp54799))))
                   (_len52734_ (u8vector-length _bstr52729_))
                   (_out52736_ (make-string _len52734_))
                   (_n52738_
                    (read-substring _out52736_ '0 _len52734_ _in52732_)))
              (string-shrink! _out52736_ _n52738_)
              _out52736_))))
    (define bytes->string__0
      (lambda (_bstr52744_)
        (let ((_enc52746_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr52744_ _enc52746_))))
    (define bytes->string
      (lambda _g54803_
        (let ((_g54802_ (let () (declare (not safe)) (##length _g54803_))))
          (cond ((let () (declare (not safe)) (##fx= _g54802_ 1))
                 (apply (lambda (_bstr52744_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr52744_)))
                        _g54803_))
                ((let () (declare (not safe)) (##fx= _g54802_ 2))
                 (apply (lambda (_bstr52748_ _enc52749_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr52748_ _enc52749_)))
                        _g54803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g54803_))))))
    (define string->bytes__%
      (lambda (_str52715_ _enc52716_)
        (if (let () (declare (not safe)) (eq? _enc52716_ 'UTF-8))
            (string->utf8 _str52715_)
            (substring->bytes
             _str52715_
             '0
             (string-length _str52715_)
             _enc52716_))))
    (define string->bytes__0
      (lambda (_str52721_)
        (let ((_enc52723_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str52721_ _enc52723_))))
    (define string->bytes
      (lambda _g54805_
        (let ((_g54804_ (let () (declare (not safe)) (##length _g54805_))))
          (cond ((let () (declare (not safe)) (##fx= _g54804_ 1))
                 (apply (lambda (_str52721_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str52721_)))
                        _g54805_))
                ((let () (declare (not safe)) (##fx= _g54804_ 2))
                 (apply (lambda (_str52725_ _enc52726_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str52725_ _enc52726_)))
                        _g54805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g54805_))))))
    (define substring->bytes__%
      (lambda (_str52693_ _start52694_ _end52695_ _enc52696_)
        (if (let () (declare (not safe)) (eq? _enc52696_ 'UTF-8))
            (string->utf8 _str52693_ _start52694_ _end52695_)
            (let ((_out52698_
                   (open-output-u8vector
                    (let ((__tmp54806
                           (let ()
                             (declare (not safe))
                             (cons _enc52696_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp54806)))))
              (write-substring _str52693_ _start52694_ _end52695_ _out52698_)
              (get-output-u8vector _out52698_)))))
    (define substring->bytes__0
      (lambda (_str52703_ _start52704_ _end52705_)
        (let ((_enc52707_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str52703_
           _start52704_
           _end52705_
           _enc52707_))))
    (define substring->bytes
      (lambda _g54808_
        (let ((_g54807_ (let () (declare (not safe)) (##length _g54808_))))
          (cond ((let () (declare (not safe)) (##fx= _g54807_ 3))
                 (apply (lambda (_str52703_ _start52704_ _end52705_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str52703_
                             _start52704_
                             _end52705_)))
                        _g54808_))
                ((let () (declare (not safe)) (##fx= _g54807_ 4))
                 (apply (lambda (_str52709_ _start52710_ _end52711_ _enc52712_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str52709_
                             _start52710_
                             _end52711_
                             _enc52712_)))
                        _g54808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g54808_))))))
    (define string-empty?
      (lambda (_str52690_)
        (let ((__tmp54809 (string-length _str52690_)))
          (declare (not safe))
          (##fxzero? __tmp54809))))
    (define string-prefix?
      (lambda (_prefix52680_ _str52681_)
        (let ((_str-len52683_ (string-length _str52681_))
              (_prefix-len52684_ (string-length _prefix52680_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len52684_ _str-len52683_))
              (let _lp52686_ ((_i52688_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i52688_ _prefix-len52684_))
                    (if (let ((__tmp54811
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str52681_ _i52688_)))
                              (__tmp54810
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix52680_ _i52688_))))
                          (declare (not safe))
                          (eq? __tmp54811 __tmp54810))
                        (let ((__tmp54812
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i52688_ '1))))
                          (declare (not safe))
                          (_lp52686_ __tmp54812))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str52658_ _char52659_ _start52660_)
        (let ((_len52662_ (string-length _str52658_)))
          (let _lp52664_ ((_k52666_ _start52660_))
            (if (let () (declare (not safe)) (##fx< _k52666_ _len52662_))
                (if (let ((__tmp54813
                           (let ()
                             (declare (not safe))
                             (##string-ref _str52658_ _k52666_))))
                      (declare (not safe))
                      (eq? _char52659_ __tmp54813))
                    _k52666_
                    (let ((__tmp54814
                           (let () (declare (not safe)) (##fx+ _k52666_ '1))))
                      (declare (not safe))
                      (_lp52664_ __tmp54814)))
                '#f)))))
    (define string-index__0
      (lambda (_str52671_ _char52672_)
        (let ((_start52674_ '0))
          (declare (not safe))
          (string-index__% _str52671_ _char52672_ _start52674_))))
    (define string-index
      (lambda _g54816_
        (let ((_g54815_ (let () (declare (not safe)) (##length _g54816_))))
          (cond ((let () (declare (not safe)) (##fx= _g54815_ 2))
                 (apply (lambda (_str52671_ _char52672_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str52671_ _char52672_)))
                        _g54816_))
                ((let () (declare (not safe)) (##fx= _g54815_ 3))
                 (apply (lambda (_str52676_ _char52677_ _start52678_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str52676_
                             _char52677_
                             _start52678_)))
                        _g54816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g54816_))))))
    (define string-rindex__%
      (lambda (_str52629_ _char52630_ _start52631_)
        (let* ((_len52633_ (string-length _str52629_))
               (_start52638_
                (let ((_$e52635_ _start52631_))
                  (if _$e52635_
                      _$e52635_
                      (let () (declare (not safe)) (##fx- _len52633_ '1))))))
          (let _lp52641_ ((_k52643_ _start52638_))
            (if (let () (declare (not safe)) (##fx>= _k52643_ '0))
                (if (let ((__tmp54817
                           (let ()
                             (declare (not safe))
                             (##string-ref _str52629_ _k52643_))))
                      (declare (not safe))
                      (eq? _char52630_ __tmp54817))
                    _k52643_
                    (let ((__tmp54818
                           (let () (declare (not safe)) (##fx- _k52643_ '1))))
                      (declare (not safe))
                      (_lp52641_ __tmp54818)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str52648_ _char52649_)
        (let ((_start52651_ '#f))
          (declare (not safe))
          (string-rindex__% _str52648_ _char52649_ _start52651_))))
    (define string-rindex
      (lambda _g54820_
        (let ((_g54819_ (let () (declare (not safe)) (##length _g54820_))))
          (cond ((let () (declare (not safe)) (##fx= _g54819_ 2))
                 (apply (lambda (_str52648_ _char52649_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str52648_ _char52649_)))
                        _g54820_))
                ((let () (declare (not safe)) (##fx= _g54819_ 3))
                 (apply (lambda (_str52653_ _char52654_ _start52655_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str52653_
                             _char52654_
                             _start52655_)))
                        _g54820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g54820_))))))
    (define string-split
      (lambda (_str52613_ _char52614_)
        (let ((_len52616_ (string-length _str52613_)))
          (let _lp52618_ ((_start52620_ '0) (_r52621_ '()))
            (let ((_$e52623_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str52613_ _char52614_ _start52620_))))
              (if _$e52623_
                  ((lambda (_end52626_)
                     (let ((__tmp54823
                            (let ()
                              (declare (not safe))
                              (##fx+ _end52626_ '1)))
                           (__tmp54821
                            (let ((__tmp54822
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str52613_
                                      _start52620_
                                      _end52626_))))
                              (declare (not safe))
                              (cons __tmp54822 _r52621_))))
                       (declare (not safe))
                       (_lp52618_ __tmp54823 __tmp54821)))
                   _$e52623_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start52620_ _len52616_))
                      (let ((__tmp54824
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str52613_
                                      _start52620_
                                      _len52616_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp54824 _r52621_))
                      (reverse _r52621_))))))))
    (define string-join
      (lambda (_strs52518_ _join52519_)
        (letrec ((_join-length52521_
                  (lambda (_strs52572_ _jlen52573_)
                    (let _lp52575_ ((_rest52577_ _strs52572_) (_len52578_ '0))
                      (let* ((_rest5257952587_ _rest52577_)
                             (_else5258152595_ (lambda () '0))
                             (_K5258352601_
                              (lambda (_rest52598_ _hd52599_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd52599_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest52598_))
                                        (let ((__tmp54825
                                               (let ((__tmp54826
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd52599_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp54826
                                                        _jlen52573_
                                                        _len52578_))))
                                          (declare (not safe))
                                          (_lp52575_ _rest52598_ __tmp54825))
                                        (let ((__tmp54827
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd52599_))))
                                          (declare (not safe))
                                          (##fx+ __tmp54827 _len52578_)))
                                    (error '"expected string" _hd52599_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5257952587_))
                            (let ((_hd5258452604_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5257952587_)))
                                  (_tl5258552606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5257952587_))))
                              (let* ((_hd52609_ _hd5258452604_)
                                     (_rest52611_ _tl5258552606_))
                                (declare (not safe))
                                (_K5258352601_ _rest52611_ _hd52609_)))
                            (let ()
                              (declare (not safe))
                              (_else5258152595_))))))))
          (let* ((_join52523_
                  (if (let () (declare (not safe)) (char? _join52519_))
                      (string _join52519_)
                      (if (let () (declare (not safe)) (string? _join52519_))
                          _join52519_
                          (error '"expected string or char" _join52519_))))
                 (_jlen52525_
                  (let () (declare (not safe)) (##string-length _join52523_)))
                 (_olen52527_
                  (let ()
                    (declare (not safe))
                    (_join-length52521_ _strs52518_ _jlen52525_)))
                 (_ostr52529_ (make-string _olen52527_)))
            (let _lp52532_ ((_rest52534_ _strs52518_) (_k52535_ '0))
              (let* ((_rest5253652544_ _rest52534_)
                     (_else5253852552_ (lambda () '""))
                     (_K5254052560_
                      (lambda (_rest52555_ _hd52556_)
                        (let ((_hdlen52558_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd52556_))))
                          (if (let () (declare (not safe)) (pair? _rest52555_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd52556_
                                   '0
                                   _hdlen52558_
                                   _ostr52529_
                                   _k52535_))
                                (let ((__tmp54828
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k52535_ _hdlen52558_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join52523_
                                   '0
                                   _jlen52525_
                                   _ostr52529_
                                   __tmp54828))
                                (let ((__tmp54829
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k52535_
                                                _hdlen52558_
                                                _jlen52525_))))
                                  (declare (not safe))
                                  (_lp52532_ _rest52555_ __tmp54829)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd52556_
                                   '0
                                   _hdlen52558_
                                   _ostr52529_
                                   _k52535_))
                                _ostr52529_))))))
                (if (let () (declare (not safe)) (##pair? _rest5253652544_))
                    (let ((_hd5254152563_
                           (let ()
                             (declare (not safe))
                             (##car _rest5253652544_)))
                          (_tl5254252565_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5253652544_))))
                      (let* ((_hd52568_ _hd5254152563_)
                             (_rest52570_ _tl5254252565_))
                        (declare (not safe))
                        (_K5254052560_ _rest52570_ _hd52568_)))
                    (let () (declare (not safe)) (_else5253852552_)))))))))
    (define read-u8vector
      (lambda (_bytes52515_ _port52516_)
        (read-subu8vector
         _bytes52515_
         '0
         (u8vector-length _bytes52515_)
         _port52516_)))
    (define write-u8vector
      (lambda (_bytes52512_ _port52513_)
        (write-subu8vector
         _bytes52512_
         '0
         (u8vector-length _bytes52512_)
         _port52513_)))
    (define read-string
      (lambda (_str52509_ _port52510_)
        (read-substring _str52509_ '0 (string-length _str52509_) _port52510_)))
    (define write-string
      (lambda (_str52506_ _port52507_)
        (write-substring
         _str52506_
         '0
         (string-length _str52506_)
         _port52507_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag52475_
               _dbg-exprs52476_
               _dbg-thunks52477_
               _expr52478_
               _thunk52479_)
        (letrec ((_o52481_ (current-output-port))
                 (_e52482_ (current-error-port))
                 (_p52483_ (DBG-printer))
                 (_f52484_
                  (lambda () (force-output _o52481_) (force-output _e52482_)))
                 (_d52485_ (lambda (_x52492_) (display _x52492_ _e52482_)))
                 (_w52486_ (lambda (_x52494_) (_p52483_ _x52494_ _e52482_)))
                 (_n52487_ (lambda () (newline _e52482_)))
                 (_v52488_
                  (lambda (_l52497_)
                    (for-each
                     (lambda (_x52499_)
                       (let () (declare (not safe)) (_d52485_ '" "))
                       (let () (declare (not safe)) (_w52486_ _x52499_)))
                     _l52497_)
                    (let () (declare (not safe)) (_n52487_))))
                 (_x52489_
                  (lambda (_expr52501_ _thunk52502_)
                    (let () (declare (not safe)) (_f52484_))
                    (let () (declare (not safe)) (_d52485_ '"  "))
                    (let () (declare (not safe)) (_w52486_ _expr52501_))
                    (let () (declare (not safe)) (_d52485_ '" =>"))
                    (call-with-values
                     _thunk52502_
                     (lambda _x52504_
                       (let () (declare (not safe)) (_v52488_ _x52504_))
                       (let () (declare (not safe)) (_f52484_))
                       (apply values _x52504_))))))
          (if _tag52475_
              (begin
                (if (let () (declare (not safe)) (eq? _tag52475_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f52484_))
                      (let () (declare (not safe)) (_d52485_ _tag52475_))
                      (let () (declare (not safe)) (_n52487_))))
                (for-each _x52489_ _dbg-exprs52476_ _dbg-thunks52477_)
                (if _thunk52479_
                    (let ()
                      (declare (not safe))
                      (_x52489_ _expr52478_ _thunk52479_))
                    '#!void))
              (if _thunk52479_ (_thunk52479_) '#!void)))))))
