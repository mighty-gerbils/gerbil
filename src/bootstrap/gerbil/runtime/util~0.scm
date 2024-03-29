(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1711709195)
  (begin
    (define displayln (lambda _args55197_ (apply __displayln _args55197_)))
    (define __displayln
      (lambda _args55157_
        (let ()
          (let _lp55160_ ((_rest55162_ _args55157_))
            (let* ((_rest5516355171_ _rest55162_)
                   (_else5516555179_ (lambda () (newline)))
                   (_K5516755185_
                    (lambda (_rest55182_ _hd55183_)
                      (display _hd55183_)
                      (let () (declare (not safe)) (_lp55160_ _rest55182_)))))
              (if (let () (declare (not safe)) (##pair? _rest5516355171_))
                  (let ((_hd5516855188_
                         (let ()
                           (declare (not safe))
                           (##car _rest5516355171_)))
                        (_tl5516955190_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5516355171_))))
                    (let* ((_hd55193_ _hd5516855188_)
                           (_rest55195_ _tl5516955190_))
                      (declare (not safe))
                      (_K5516755185_ _rest55195_ _hd55193_)))
                  (let () (declare (not safe)) (newline))))))))
    (define display* (lambda _args55155_ (apply __display* _args55155_)))
    (define __display*
      (lambda _args55152_ (let () (for-each display _args55152_))))
    (define file-newer?
      (lambda (_file155149_ _file255150_)
        (if (let () (declare (not safe)) (string? _file155149_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _file155149_)))
        (if (let () (declare (not safe)) (string? _file255150_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _file255150_)))
        (let ()
          (declare (not safe))
          (__file-newer? _file155149_ _file255150_))))
    (define __file-newer?
      (lambda (_file155140_ _file255141_)
        (let ()
          (letrec ((_modification-time55144_
                    (lambda (_file55146_)
                      (let ()
                        (let ((__tmp57790
                               (file-info-last-modification-time
                                (let ()
                                  (declare (not safe))
                                  (##file-info _file55146_ '#t)))))
                          (declare (not safe))
                          (##time->seconds __tmp57790))))))
            (let ((__tmp57792
                   (let ()
                     (declare (not safe))
                     (_modification-time55144_ _file155140_)))
                  (__tmp57791
                   (let ()
                     (declare (not safe))
                     (_modification-time55144_ _file255141_))))
              (declare (not safe))
              (##fl> __tmp57792 __tmp57791))))))
    (define create-directory*__%
      (lambda (_dir55127_ _perms55128_)
        (if (let () (declare (not safe)) (string? _dir55127_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _dir55127_)))
        (if (let () (declare (not safe)) (fixnum? _perms55128_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'fixnum::t
                     _perms55128_)))
        (let ()
          (declare (not safe))
          (__create-directory*__% _dir55127_ _perms55128_))))
    (define create-directory*__0
      (lambda (_dir55133_)
        (let ((_perms55135_ '493))
          (declare (not safe))
          (create-directory*__% _dir55133_ _perms55135_))))
    (define create-directory*
      (lambda _g57794_
        (let ((_g57793_ (let () (declare (not safe)) (##length _g57794_))))
          (cond ((let () (declare (not safe)) (##fx= _g57793_ 1))
                 (apply (lambda (_dir55133_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir55133_)))
                        _g57794_))
                ((let () (declare (not safe)) (##fx= _g57793_ 2))
                 (apply (lambda (_dir55137_ _perms55138_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir55137_ _perms55138_)))
                        _g57794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g57794_))))))
    (define __create-directory*__%
      (lambda (_dir55098_ _perms55099_)
        (let ()
          (letrec ((_create155102_
                    (lambda (_path55113_)
                      (let ()
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _path55113_))
                            (if (eq? (file-type _path55113_) 'directory)
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (error '"Path component is not a directory"
                                         _path55113_)))
                            (if _perms55099_
                                (create-directory
                                 (cons 'path:
                                       (cons _path55113_
                                             (cons 'permissions:
                                                   (cons _perms55099_ '())))))
                                (create-directory _path55113_)))))))
            (if (let () (declare (not safe)) (##file-exists? _dir55098_))
                '#!void
                (let _lp55104_ ((_start55106_ '0))
                  (let ((_$e55108_
                         (let ()
                           (declare (not safe))
                           (string-index__% _dir55098_ '#\/ _start55106_))))
                    (if _$e55108_
                        ((lambda (_x55111_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _x55111_ '0))
                               (let ((__tmp57795
                                      (substring _dir55098_ '0 _x55111_)))
                                 (declare (not safe))
                                 (_create155102_ __tmp57795))
                               '#!void)
                           (let ((__tmp57796
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _x55111_ '1))))
                             (declare (not safe))
                             (_lp55104_ __tmp57796)))
                         _$e55108_)
                        (let ()
                          (declare (not safe))
                          (_create155102_ _dir55098_))))))))))
    (define __create-directory*__0
      (lambda (_dir55119_)
        (let ((_perms55121_ '493))
          (declare (not safe))
          (__create-directory*__% _dir55119_ _perms55121_))))
    (define __create-directory*
      (lambda _g57798_
        (let ((_g57797_ (let () (declare (not safe)) (##length _g57798_))))
          (cond ((let () (declare (not safe)) (##fx= _g57797_ 1))
                 (apply (lambda (_dir55119_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _dir55119_)))
                        _g57798_))
                ((let () (declare (not safe)) (##fx= _g57797_ 2))
                 (apply (lambda (_dir55123_ _perms55124_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__% _dir55123_ _perms55124_)))
                        _g57798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g57798_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _ignore55095_ (apply __true _ignore55095_)))
    (define __true (lambda _ignore55092_ (let () '#t)))
    (define true?
      (lambda (_obj55090_) (let () (declare (not safe)) (__true? _obj55090_))))
    (define __true? (lambda (_obj55087_) (let () (eq? _obj55087_ '#t))))
    (define false (lambda _ignore55085_ (apply __false _ignore55085_)))
    (define __false (lambda _ignore55082_ (let () '#f)))
    (define void (lambda _ignore55080_ (apply __void _ignore55080_)))
    (define __void (lambda _ignore55077_ (let () '#!void)))
    (define void?
      (lambda (_obj55075_) (let () (declare (not safe)) (__void? _obj55075_))))
    (define __void? (lambda (_obj55072_) (let () (eq? _obj55072_ '#!void))))
    (define dssl-object?
      (lambda (_obj55070_)
        (let () (declare (not safe)) (__dssl-object? _obj55070_))))
    (define __dssl-object?
      (lambda (_obj55067_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _obj55067_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_obj55065_)
        (let () (declare (not safe)) (__dssl-key-object? _obj55065_))))
    (define __dssl-key-object?
      (lambda (_obj55062_) (let () (eq? _obj55062_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj55060_)
        (let () (declare (not safe)) (__dssl-rest-object? _obj55060_))))
    (define __dssl-rest-object?
      (lambda (_obj55057_) (let () (eq? _obj55057_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj55055_)
        (let () (declare (not safe)) (__dssl-optional-object? _obj55055_))))
    (define __dssl-optional-object?
      (lambda (_obj55052_) (let () (eq? _obj55052_ '#!optional))))
    (define immediate?
      (lambda (_obj55050_)
        (let () (declare (not safe)) (__immediate? _obj55050_))))
    (define __immediate?
      (lambda (_obj55045_)
        (let ()
          (let* ((_t55048_ (let () (declare (not safe)) (##type _obj55045_)))
                 (__tmp57799
                  (let () (declare (not safe)) (##fxand _t55048_ '1))))
            (declare (not safe))
            (##fxzero? __tmp57799)))))
    (define nonnegative-fixnum?
      (lambda (_obj55043_)
        (let () (declare (not safe)) (__nonnegative-fixnum? _obj55043_))))
    (define __nonnegative-fixnum?
      (lambda (_obj55040_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _obj55040_))
              (let () (declare (not safe)) (##fx>= _obj55040_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_obj55038_)
        (let () (declare (not safe)) (__pair-or-null? _obj55038_))))
    (define __pair-or-null?
      (lambda (_obj55032_)
        (let ()
          (let ((_$e55035_ (let () (declare (not safe)) (pair? _obj55032_))))
            (if _$e55035_
                _$e55035_
                (let () (declare (not safe)) (null? _obj55032_)))))))
    (define values-count
      (lambda (_obj55030_)
        (let () (declare (not safe)) (__values-count _obj55030_))))
    (define __values-count
      (lambda (_obj55027_)
        (let ()
          (if (let () (declare (not safe)) (##values? _obj55027_))
              (let () (declare (not safe)) (##vector-length _obj55027_))
              '1))))
    (define values-ref
      (lambda (_obj55024_ _k55025_)
        (if (let () (declare (not safe)) (fixnum? _k55025_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'fixnum::t _k55025_)))
        (let () (declare (not safe)) (__values-ref _obj55024_ _k55025_))))
    (define __values-ref
      (lambda (_obj55020_ _k55021_)
        (let ()
          (if (let () (declare (not safe)) (##values? _obj55020_))
              (let () (declare (not safe)) (##vector-ref _obj55020_ _k55021_))
              _obj55020_))))
    (define values->list
      (lambda (_obj55018_)
        (let () (declare (not safe)) (__values->list _obj55018_))))
    (define __values->list
      (lambda (_obj55015_)
        (let ()
          (if (let () (declare (not safe)) (##values? _obj55015_))
              (let () (declare (not safe)) (##vector->list _obj55015_))
              (list _obj55015_)))))
    (define foldl1
      (lambda (_f55011_ _iv55012_ _lst55013_)
        (if (let () (declare (not safe)) (procedure? _f55011_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f55011_)))
        (let ()
          (declare (not safe))
          (__foldl1 _f55011_ _iv55012_ _lst55013_))))
    (define __foldl1
      (lambda (_f54968_ _iv54969_ _lst54970_)
        (let ()
          (let _lp54973_ ((_rest54975_ _lst54970_) (_r54976_ _iv54969_))
            (let* ((_rest5497754985_ _rest54975_)
                   (_else5497954993_ (lambda () _r54976_))
                   (_K5498154999_
                    (lambda (_rest54996_ _x54997_)
                      (let ((__tmp57800
                             (let ()
                               (declare (not safe))
                               (_f54968_ _x54997_ _r54976_))))
                        (declare (not safe))
                        (_lp54973_ _rest54996_ __tmp57800)))))
              (if (let () (declare (not safe)) (##pair? _rest5497754985_))
                  (let ((_hd5498255002_
                         (let ()
                           (declare (not safe))
                           (##car _rest5497754985_)))
                        (_tl5498355004_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5497754985_))))
                    (let* ((_x55007_ _hd5498255002_)
                           (_rest55009_ _tl5498355004_))
                      (declare (not safe))
                      (_K5498154999_ _rest55009_ _x55007_)))
                  (let () (declare (not safe)) (_else5497954993_))))))))
    (define foldl2
      (lambda (_f54963_ _iv54964_ _lst154965_ _lst254966_)
        (if (let () (declare (not safe)) (procedure? _f54963_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54963_)))
        (let ()
          (declare (not safe))
          (__foldl2 _f54963_ _iv54964_ _lst154965_ _lst254966_))))
    (define __foldl2
      (lambda (_f54885_ _iv54886_ _lst154887_ _lst254888_)
        (let ()
          (let _lp54891_ ((_rest154893_ _lst154887_)
                          (_rest254894_ _lst254888_)
                          (_r54895_ _iv54886_))
            (let* ((_rest15489654904_ _rest154893_)
                   (_else5489854912_ (lambda () _r54895_))
                   (_K5490054951_
                    (lambda (_rest154915_ _x154916_)
                      (let* ((_rest25491754925_ _rest254894_)
                             (_else5491954933_ (lambda () _r54895_))
                             (_K5492154939_
                              (lambda (_rest254936_ _x254937_)
                                (let ((__tmp57801
                                       (let ()
                                         (declare (not safe))
                                         (_f54885_
                                          _x154916_
                                          _x254937_
                                          _r54895_))))
                                  (declare (not safe))
                                  (_lp54891_
                                   _rest154915_
                                   _rest254936_
                                   __tmp57801)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest25491754925_))
                            (let ((_hd5492254942_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest25491754925_)))
                                  (_tl5492354944_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest25491754925_))))
                              (let* ((_x254947_ _hd5492254942_)
                                     (_rest254949_ _tl5492354944_))
                                (declare (not safe))
                                (_K5492154939_ _rest254949_ _x254947_)))
                            (let ()
                              (declare (not safe))
                              (_else5491954933_)))))))
              (if (let () (declare (not safe)) (##pair? _rest15489654904_))
                  (let ((_hd5490154954_
                         (let ()
                           (declare (not safe))
                           (##car _rest15489654904_)))
                        (_tl5490254956_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest15489654904_))))
                    (let* ((_x154959_ _hd5490154954_)
                           (_rest154961_ _tl5490254956_))
                      (declare (not safe))
                      (_K5490054951_ _rest154961_ _x154959_)))
                  (let () (declare (not safe)) (_else5489854912_))))))))
    (define foldl
      (lambda _g57803_
        (let ((_g57802_ (let () (declare (not safe)) (##length _g57803_))))
          (cond ((let () (declare (not safe)) (##fx= _g57802_ 3))
                 (apply (lambda (_f54870_ _iv54871_ _lst54872_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f54870_ _iv54871_ _lst54872_)))
                        _g57803_))
                ((let () (declare (not safe)) (##fx= _g57802_ 4))
                 (apply (lambda (_f54874_ _iv54875_ _lst154876_ _lst254877_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f54874_
                                    _iv54875_
                                    _lst154876_
                                    _lst254877_)))
                        _g57803_))
                ((let () (declare (not safe)) (##fx>= _g57802_ 4))
                 (apply foldl* _g57803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g57803_))))))
    (define foldl*
      (lambda (_f54866_ _iv54867_ . _rest54868_)
        (if (let () (declare (not safe)) (procedure? _f54866_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54866_)))
        (apply __foldl* _f54866_ _iv54867_ _rest54868_)))
    (define __foldl*
      (lambda (_f54853_ _iv54854_ . _rest54855_)
        (let ()
          (let _recur54858_ ((_iv54860_ _iv54854_) (_rest54861_ _rest54855_))
            (if (let () (declare (not safe)) (__andmap1 pair? _rest54861_))
                (let ((__tmp57805
                       (let ((__tmp57806
                              (let ((__tmp57808
                                     (lambda (_xs54863_ _r54864_)
                                       (cons (car _xs54863_) _r54864_)))
                                    (__tmp57807 (list _iv54860_)))
                                (declare (not safe))
                                (__foldr1 __tmp57808 __tmp57807 _rest54861_))))
                         (declare (not safe))
                         (##apply _f54853_ __tmp57806)))
                      (__tmp57804 (map cdr _rest54861_)))
                  (declare (not safe))
                  (_recur54858_ __tmp57805 __tmp57804))
                _iv54860_)))))
    (define foldr1
      (lambda (_f54849_ _iv54850_ _lst54851_)
        (if (let () (declare (not safe)) (procedure? _f54849_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54849_)))
        (let ()
          (declare (not safe))
          (__foldr1 _f54849_ _iv54850_ _lst54851_))))
    (define __foldr1
      (lambda (_f54807_ _iv54808_ _lst54809_)
        (let ()
          (let _recur54812_ ((_rest54814_ _lst54809_))
            (let* ((_rest5481554823_ _rest54814_)
                   (_else5481754831_ (lambda () _iv54808_))
                   (_K5481954837_
                    (lambda (_rest54834_ _x54835_)
                      (let ((__tmp57809
                             (let ()
                               (declare (not safe))
                               (_recur54812_ _rest54834_))))
                        (declare (not safe))
                        (_f54807_ _x54835_ __tmp57809)))))
              (if (let () (declare (not safe)) (##pair? _rest5481554823_))
                  (let ((_hd5482054840_
                         (let ()
                           (declare (not safe))
                           (##car _rest5481554823_)))
                        (_tl5482154842_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5481554823_))))
                    (let* ((_x54845_ _hd5482054840_)
                           (_rest54847_ _tl5482154842_))
                      (declare (not safe))
                      (_K5481954837_ _rest54847_ _x54845_)))
                  (let () (declare (not safe)) (_else5481754831_))))))))
    (define foldr2
      (lambda (_f54802_ _iv54803_ _lst154804_ _lst254805_)
        (if (let () (declare (not safe)) (procedure? _f54802_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54802_)))
        (let ()
          (declare (not safe))
          (__foldr2 _f54802_ _iv54803_ _lst154804_ _lst254805_))))
    (define __foldr2
      (lambda (_f54725_ _iv54726_ _lst154727_ _lst254728_)
        (let ()
          (let _recur54731_ ((_rest154733_ _lst154727_)
                             (_rest254734_ _lst254728_))
            (let* ((_rest15473554743_ _rest154733_)
                   (_else5473754751_ (lambda () _iv54726_))
                   (_K5473954790_
                    (lambda (_rest154754_ _x154755_)
                      (let* ((_rest25475654764_ _rest254734_)
                             (_else5475854772_ (lambda () _iv54726_))
                             (_K5476054778_
                              (lambda (_rest254775_ _x254776_)
                                (let ((__tmp57810
                                       (let ()
                                         (declare (not safe))
                                         (_recur54731_
                                          _rest154754_
                                          _rest254775_))))
                                  (declare (not safe))
                                  (_f54725_ _x154755_ _x254776_ __tmp57810)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest25475654764_))
                            (let ((_hd5476154781_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest25475654764_)))
                                  (_tl5476254783_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest25475654764_))))
                              (let* ((_x254786_ _hd5476154781_)
                                     (_rest254788_ _tl5476254783_))
                                (declare (not safe))
                                (_K5476054778_ _rest254788_ _x254786_)))
                            (let ()
                              (declare (not safe))
                              (_else5475854772_)))))))
              (if (let () (declare (not safe)) (##pair? _rest15473554743_))
                  (let ((_hd5474054793_
                         (let ()
                           (declare (not safe))
                           (##car _rest15473554743_)))
                        (_tl5474154795_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest15473554743_))))
                    (let* ((_x154798_ _hd5474054793_)
                           (_rest154800_ _tl5474154795_))
                      (declare (not safe))
                      (_K5473954790_ _rest154800_ _x154798_)))
                  (let () (declare (not safe)) (_else5473754751_))))))))
    (define foldr
      (lambda _g57812_
        (let ((_g57811_ (let () (declare (not safe)) (##length _g57812_))))
          (cond ((let () (declare (not safe)) (##fx= _g57811_ 3))
                 (apply (lambda (_f54710_ _iv54711_ _lst54712_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f54710_ _iv54711_ _lst54712_)))
                        _g57812_))
                ((let () (declare (not safe)) (##fx= _g57811_ 4))
                 (apply (lambda (_f54714_ _iv54715_ _lst154716_ _lst254717_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f54714_
                                    _iv54715_
                                    _lst154716_
                                    _lst254717_)))
                        _g57812_))
                ((let () (declare (not safe)) (##fx>= _g57811_ 4))
                 (apply foldr* _g57812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g57812_))))))
    (define foldr*
      (lambda (_f54706_ _iv54707_ . _rest54708_)
        (if (let () (declare (not safe)) (procedure? _f54706_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54706_)))
        (apply __foldr* _f54706_ _iv54707_ _rest54708_)))
    (define __foldr*
      (lambda (_f54694_ _iv54695_ . _rest54696_)
        (let ()
          (let _recur54699_ ((_rest54701_ _rest54696_))
            (if (let () (declare (not safe)) (__andmap1 pair? _rest54701_))
                (let ((__tmp57813
                       (let ((__tmp57816
                              (lambda (_xs54703_ _r54704_)
                                (cons (car _xs54703_) _r54704_)))
                             (__tmp57814
                              (list (let ((__tmp57815 (map cdr _rest54701_)))
                                      (declare (not safe))
                                      (_recur54699_ __tmp57815)))))
                         (declare (not safe))
                         (__foldr1 __tmp57816 __tmp57814 _rest54701_))))
                  (declare (not safe))
                  (##apply _f54694_ __tmp57813))
                _iv54695_)))))
    (define remove-nulls!
      (lambda (_l54692_)
        (let () (declare (not safe)) (__remove-nulls! _l54692_))))
    (define __remove-nulls!
      (lambda (_l54578_)
        (let ()
          (let* ((_l5458054593_ _l54578_)
                 (_E5458454597_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _l5458054593_)))))
            (let ((_K5458954682_
                   (lambda (_r54680_)
                     (let () (declare (not safe)) (__remove-nulls! _r54680_))))
                  (_K5458654669_
                   (lambda (_r54609_)
                     (let _loop54611_ ((_l54613_ _l54578_) (_r54614_ _r54609_))
                       (let* ((_r5461554628_ _r54614_)
                              (_E5461954632_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _r5461554628_)))))
                         (let ((_K5462454659_
                                (lambda (_rr54657_)
                                  (let ((__tmp57818 _l54613_)
                                        (__tmp57817
                                         (let ()
                                           (declare (not safe))
                                           (__remove-nulls! _rr54657_))))
                                    (declare (not safe))
                                    (##set-cdr! __tmp57818 __tmp57817))))
                               (_K5462154646_
                                (lambda (_rr54644_)
                                  (let ()
                                    (declare (not safe))
                                    (_loop54611_ _r54614_ _rr54644_))))
                               (_K5462054637_ (lambda () '#!void)))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _r5461554628_))
                               (let ((_tl5462654664_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _r5461554628_)))
                                     (_hd5462554662_
                                      (let ()
                                        (declare (not safe))
                                        (##car _r5461554628_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##null? _hd5462554662_))
                                     (let ((_rr54667_ _tl5462654664_))
                                       (declare (not safe))
                                       (_K5462454659_ _rr54667_))
                                     (let ((_rr54652_ _tl5462654664_))
                                       (declare (not safe))
                                       (_K5462154646_ _rr54652_))))
                               '#!void))))
                     _l54578_))
                  (_K5458554602_ (lambda () _l54578_)))
              (if (let () (declare (not safe)) (##pair? _l5458054593_))
                  (let ((_tl5459154687_
                         (let () (declare (not safe)) (##cdr _l5458054593_)))
                        (_hd5459054685_
                         (let () (declare (not safe)) (##car _l5458054593_))))
                    (if (let () (declare (not safe)) (##null? _hd5459054685_))
                        (let ((_r54690_ _tl5459154687_))
                          (declare (not safe))
                          (__remove-nulls! _r54690_))
                        (let ((_r54675_ _tl5459154687_))
                          (declare (not safe))
                          (_K5458654669_ _r54675_))))
                  (let () (declare (not safe)) (_K5458554602_))))))))
    (define append1!
      (lambda (_l54575_ _x54576_)
        (let () (declare (not safe)) (__append1! _l54575_ _x54576_))))
    (define __append1!
      (lambda (_l54569_ _x54570_)
        (let ()
          (let ((_l254573_ (cons _x54570_ '())))
            (if (let () (declare (not safe)) (pair? _l54569_))
                (begin
                  (let ((__tmp57819
                         (let () (declare (not safe)) (##last-pair _l54569_))))
                    (declare (not safe))
                    (##set-cdr! __tmp57819 _l254573_))
                  _l54569_)
                _l254573_)))))
    (define append-reverse-until
      (lambda (_pred54565_ _rhead54566_ _tail54567_)
        (if (let () (declare (not safe)) (procedure? _pred54565_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _pred54565_)))
        (let ()
          (declare (not safe))
          (__append-reverse-until _pred54565_ _rhead54566_ _tail54567_))))
    (define __append-reverse-until
      (lambda (_pred54517_ _rhead54518_ _tail54519_)
        (let ()
          (let _loop54522_ ((_rhead54524_ _rhead54518_)
                            (_tail54525_ _tail54519_))
            (let* ((_rhead5452654535_ _rhead54524_)
                   (_E5452954539_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching" _rhead5452654535_)))))
              (let ((_K5453354562_ (lambda () (values '() _tail54525_)))
                    (_K5453054546_
                     (lambda (_r54543_ _a54544_)
                       (if (let () (declare (not safe)) (_pred54517_ _a54544_))
                           (values _rhead54524_ _tail54525_)
                           (let ((__tmp57820 (cons _a54544_ _tail54525_)))
                             (declare (not safe))
                             (_loop54522_ _r54543_ __tmp57820))))))
                (let ((_try-match5452854558_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rhead5452654535_))
                             (let ((_tl5453254551_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rhead5452654535_)))
                                   (_hd5453154549_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rhead5452654535_))))
                               (let ((_a54554_ _hd5453154549_)
                                     (_r54556_ _tl5453254551_))
                                 (let ()
                                   (declare (not safe))
                                   (_K5453054546_ _r54556_ _a54554_))))
                             (let () (declare (not safe)) (_E5452954539_))))))
                  (if (let () (declare (not safe)) (##null? _rhead5452654535_))
                      (let () (declare (not safe)) (_K5453354562_))
                      (let ()
                        (declare (not safe))
                        (_try-match5452854558_))))))))))
    (define andmap1
      (lambda (_f54514_ _lst54515_)
        (if (let () (declare (not safe)) (procedure? _f54514_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54514_)))
        (let () (declare (not safe)) (__andmap1 _f54514_ _lst54515_))))
    (define __andmap1
      (lambda (_f54473_ _lst54474_)
        (let ()
          (let _lp54477_ ((_rest54479_ _lst54474_))
            (let* ((_rest5448054488_ _rest54479_)
                   (_else5448254496_ (lambda () '#t))
                   (_K5448454502_
                    (lambda (_rest54499_ _x54500_)
                      (if (let () (declare (not safe)) (_f54473_ _x54500_))
                          (let () (declare (not safe)) (_lp54477_ _rest54499_))
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _rest5448054488_))
                  (let ((_hd5448554505_
                         (let ()
                           (declare (not safe))
                           (##car _rest5448054488_)))
                        (_tl5448654507_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5448054488_))))
                    (let* ((_x54510_ _hd5448554505_)
                           (_rest54512_ _tl5448654507_))
                      (declare (not safe))
                      (_K5448454502_ _rest54512_ _x54510_)))
                  (let () (declare (not safe)) (_else5448254496_))))))))
    (define andmap2
      (lambda (_f54469_ _lst154470_ _lst254471_)
        (if (let () (declare (not safe)) (procedure? _f54469_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54469_)))
        (let ()
          (declare (not safe))
          (__andmap2 _f54469_ _lst154470_ _lst254471_))))
    (define __andmap2
      (lambda (_f54393_ _lst154394_ _lst254395_)
        (let ()
          (let _lp54398_ ((_rest154400_ _lst154394_)
                          (_rest254401_ _lst254395_))
            (let* ((_rest15440254410_ _rest154400_)
                   (_else5440454418_ (lambda () '#t))
                   (_K5440654457_
                    (lambda (_rest154421_ _x154422_)
                      (let* ((_rest25442354431_ _rest254401_)
                             (_else5442554439_ (lambda () '#t))
                             (_K5442754445_
                              (lambda (_rest254442_ _x254443_)
                                (if (let ()
                                      (declare (not safe))
                                      (_f54393_ _x154422_ _x254443_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp54398_ _rest154421_ _rest254442_))
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest25442354431_))
                            (let ((_hd5442854448_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest25442354431_)))
                                  (_tl5442954450_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest25442354431_))))
                              (let* ((_x254453_ _hd5442854448_)
                                     (_rest254455_ _tl5442954450_))
                                (declare (not safe))
                                (_K5442754445_ _rest254455_ _x254453_)))
                            (let ()
                              (declare (not safe))
                              (_else5442554439_)))))))
              (if (let () (declare (not safe)) (##pair? _rest15440254410_))
                  (let ((_hd5440754460_
                         (let ()
                           (declare (not safe))
                           (##car _rest15440254410_)))
                        (_tl5440854462_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest15440254410_))))
                    (let* ((_x154465_ _hd5440754460_)
                           (_rest154467_ _tl5440854462_))
                      (declare (not safe))
                      (_K5440654457_ _rest154467_ _x154465_)))
                  (let () (declare (not safe)) (_else5440454418_))))))))
    (define andmap
      (lambda _g57822_
        (let ((_g57821_ (let () (declare (not safe)) (##length _g57822_))))
          (cond ((let () (declare (not safe)) (##fx= _g57821_ 2))
                 (apply (lambda (_f54381_ _lst54382_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f54381_ _lst54382_)))
                        _g57822_))
                ((let () (declare (not safe)) (##fx= _g57821_ 3))
                 (apply (lambda (_f54384_ _lst154385_ _lst254386_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f54384_ _lst154385_ _lst254386_)))
                        _g57822_))
                ((let () (declare (not safe)) (##fx>= _g57821_ 3))
                 (apply andmap* _g57822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g57822_))))))
    (define andmap*
      (lambda (_f54378_ . _rest54379_)
        (if (let () (declare (not safe)) (procedure? _f54378_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54378_)))
        (apply __andmap* _f54378_ _rest54379_)))
    (define __andmap*
      (lambda (_f54370_ . _rest54371_)
        (let ()
          (let _recur54374_ ((_rest54376_ _rest54371_))
            (if (let () (declare (not safe)) (__andmap1 pair? _rest54376_))
                (if (apply _f54370_ (map car _rest54376_))
                    (let ((__tmp57823 (map cdr _rest54376_)))
                      (declare (not safe))
                      (_recur54374_ __tmp57823))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_f54367_ _lst54368_)
        (if (let () (declare (not safe)) (procedure? _f54367_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54367_)))
        (let () (declare (not safe)) (__ormap1 _f54367_ _lst54368_))))
    (define __ormap1
      (lambda (_f54323_ _lst54324_)
        (let ()
          (let _lp54327_ ((_rest54329_ _lst54324_))
            (let* ((_rest5433054338_ _rest54329_)
                   (_else5433254346_ (lambda () '#f))
                   (_K5433454355_
                    (lambda (_rest54349_ _x54350_)
                      (let ((_$e54352_
                             (let ()
                               (declare (not safe))
                               (_f54323_ _x54350_))))
                        (if _$e54352_
                            _$e54352_
                            (let ()
                              (declare (not safe))
                              (_lp54327_ _rest54349_)))))))
              (if (let () (declare (not safe)) (##pair? _rest5433054338_))
                  (let ((_hd5433554358_
                         (let ()
                           (declare (not safe))
                           (##car _rest5433054338_)))
                        (_tl5433654360_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5433054338_))))
                    (let* ((_x54363_ _hd5433554358_)
                           (_rest54365_ _tl5433654360_))
                      (declare (not safe))
                      (_K5433454355_ _rest54365_ _x54363_)))
                  (let () (declare (not safe)) (_else5433254346_))))))))
    (define ormap2
      (lambda (_f54319_ _lst154320_ _lst254321_)
        (if (let () (declare (not safe)) (procedure? _f54319_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54319_)))
        (let ()
          (declare (not safe))
          (__ormap2 _f54319_ _lst154320_ _lst254321_))))
    (define __ormap2
      (lambda (_f54240_ _lst154241_ _lst254242_)
        (let ()
          (let _lp54245_ ((_rest154247_ _lst154241_)
                          (_rest254248_ _lst254242_))
            (let* ((_rest15424954257_ _rest154247_)
                   (_else5425154265_ (lambda () '#f))
                   (_K5425354307_
                    (lambda (_rest154268_ _x154269_)
                      (let* ((_rest25427054278_ _rest254248_)
                             (_else5427254286_ (lambda () '#f))
                             (_K5427454295_
                              (lambda (_rest254289_ _x254290_)
                                (let ((_$e54292_
                                       (let ()
                                         (declare (not safe))
                                         (_f54240_ _x154269_ _x254290_))))
                                  (if _$e54292_
                                      _$e54292_
                                      (let ()
                                        (declare (not safe))
                                        (_lp54245_
                                         _rest154268_
                                         _rest254289_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest25427054278_))
                            (let ((_hd5427554298_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest25427054278_)))
                                  (_tl5427654300_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest25427054278_))))
                              (let* ((_x254303_ _hd5427554298_)
                                     (_rest254305_ _tl5427654300_))
                                (declare (not safe))
                                (_K5427454295_ _rest254305_ _x254303_)))
                            (let ()
                              (declare (not safe))
                              (_else5427254286_)))))))
              (if (let () (declare (not safe)) (##pair? _rest15424954257_))
                  (let ((_hd5425454310_
                         (let ()
                           (declare (not safe))
                           (##car _rest15424954257_)))
                        (_tl5425554312_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest15424954257_))))
                    (let* ((_x154315_ _hd5425454310_)
                           (_rest154317_ _tl5425554312_))
                      (declare (not safe))
                      (_K5425354307_ _rest154317_ _x154315_)))
                  (let () (declare (not safe)) (_else5425154265_))))))))
    (define ormap
      (lambda _g57825_
        (let ((_g57824_ (let () (declare (not safe)) (##length _g57825_))))
          (cond ((let () (declare (not safe)) (##fx= _g57824_ 2))
                 (apply (lambda (_f54228_ _lst54229_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f54228_ _lst54229_)))
                        _g57825_))
                ((let () (declare (not safe)) (##fx= _g57824_ 3))
                 (apply (lambda (_f54231_ _lst154232_ _lst254233_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f54231_ _lst154232_ _lst254233_)))
                        _g57825_))
                ((let () (declare (not safe)) (##fx>= _g57824_ 3))
                 (apply ormap* _g57825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g57825_))))))
    (define ormap*
      (lambda (_f54225_ . _rest54226_)
        (if (let () (declare (not safe)) (procedure? _f54225_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54225_)))
        (apply __ormap* _f54225_ _rest54226_)))
    (define __ormap*
      (lambda (_f54214_ . _rest54215_)
        (let ()
          (let _recur54218_ ((_rest54220_ _rest54215_))
            (if (let () (declare (not safe)) (__andmap1 pair? _rest54220_))
                (let ((_$e54222_ (apply _f54214_ (map car _rest54220_))))
                  (if _$e54222_
                      _$e54222_
                      (let ((__tmp57826 (map cdr _rest54220_)))
                        (declare (not safe))
                        (_recur54218_ __tmp57826))))
                '#f)))))
    (define filter-map1
      (lambda (_f54211_ _lst54212_)
        (if (let () (declare (not safe)) (procedure? _f54211_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54211_)))
        (let () (declare (not safe)) (__filter-map1 _f54211_ _lst54212_))))
    (define __filter-map1
      (lambda (_f54165_ _lst54166_)
        (let ()
          (let _recur54169_ ((_rest54171_ _lst54166_))
            (let* ((_rest5417254180_ _rest54171_)
                   (_else5417454188_ (lambda () '()))
                   (_K5417654199_
                    (lambda (_rest54191_ _x54192_)
                      (let ((_$e54194_
                             (let ()
                               (declare (not safe))
                               (_f54165_ _x54192_))))
                        (if _$e54194_
                            ((lambda (_r54197_)
                               (cons _r54197_
                                     (let ()
                                       (declare (not safe))
                                       (_recur54169_ _rest54191_))))
                             _$e54194_)
                            (let ()
                              (declare (not safe))
                              (_recur54169_ _rest54191_)))))))
              (if (let () (declare (not safe)) (##pair? _rest5417254180_))
                  (let ((_hd5417754202_
                         (let ()
                           (declare (not safe))
                           (##car _rest5417254180_)))
                        (_tl5417854204_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5417254180_))))
                    (let* ((_x54207_ _hd5417754202_)
                           (_rest54209_ _tl5417854204_))
                      (declare (not safe))
                      (_K5417654199_ _rest54209_ _x54207_)))
                  (let () (declare (not safe)) (_else5417454188_))))))))
    (define filter-map2
      (lambda (_f54161_ _lst154162_ _lst254163_)
        (if (let () (declare (not safe)) (procedure? _f54161_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54161_)))
        (let ()
          (declare (not safe))
          (__filter-map2 _f54161_ _lst154162_ _lst254163_))))
    (define __filter-map2
      (lambda (_f54080_ _lst154081_ _lst254082_)
        (let ()
          (let _recur54085_ ((_rest154087_ _lst154081_)
                             (_rest254088_ _lst254082_))
            (let* ((_rest15408954097_ _rest154087_)
                   (_else5409154105_ (lambda () '()))
                   (_K5409354149_
                    (lambda (_rest154108_ _x154109_)
                      (let* ((_rest25411054118_ _rest254088_)
                             (_else5411254126_ (lambda () '()))
                             (_K5411454137_
                              (lambda (_rest254129_ _x254130_)
                                (let ((_$e54132_
                                       (let ()
                                         (declare (not safe))
                                         (_f54080_ _x154109_ _x254130_))))
                                  (if _$e54132_
                                      ((lambda (_r54135_)
                                         (cons _r54135_
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur54085_
                                                  _rest154108_
                                                  _rest254129_))))
                                       _$e54132_)
                                      (let ()
                                        (declare (not safe))
                                        (_recur54085_
                                         _rest154108_
                                         _rest254129_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest25411054118_))
                            (let ((_hd5411554140_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest25411054118_)))
                                  (_tl5411654142_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest25411054118_))))
                              (let* ((_x254145_ _hd5411554140_)
                                     (_rest254147_ _tl5411654142_))
                                (declare (not safe))
                                (_K5411454137_ _rest254147_ _x254145_)))
                            (let ()
                              (declare (not safe))
                              (_else5411254126_)))))))
              (if (let () (declare (not safe)) (##pair? _rest15408954097_))
                  (let ((_hd5409454152_
                         (let ()
                           (declare (not safe))
                           (##car _rest15408954097_)))
                        (_tl5409554154_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest15408954097_))))
                    (let* ((_x154157_ _hd5409454152_)
                           (_rest154159_ _tl5409554154_))
                      (declare (not safe))
                      (_K5409354149_ _rest154159_ _x154157_)))
                  (let () (declare (not safe)) (_else5409154105_))))))))
    (define filter-map
      (lambda _g57828_
        (let ((_g57827_ (let () (declare (not safe)) (##length _g57828_))))
          (cond ((let () (declare (not safe)) (##fx= _g57827_ 2))
                 (apply (lambda (_f54068_ _lst54069_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f54068_ _lst54069_)))
                        _g57828_))
                ((let () (declare (not safe)) (##fx= _g57827_ 3))
                 (apply (lambda (_f54071_ _lst154072_ _lst254073_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f54071_ _lst154072_ _lst254073_)))
                        _g57828_))
                ((let () (declare (not safe)) (##fx>= _g57827_ 3))
                 (apply filter-map* _g57828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g57828_))))))
    (define filter-map*
      (lambda (_f54065_ . _rest54066_)
        (if (let () (declare (not safe)) (procedure? _f54065_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f54065_)))
        (apply __filter-map* _f54065_ _rest54066_)))
    (define __filter-map*
      (lambda (_f54052_ . _rest54053_)
        (let ()
          (let _recur54056_ ((_rest54058_ _rest54053_))
            (if (let () (declare (not safe)) (__andmap1 pair? _rest54058_))
                (let ((_$e54060_ (apply _f54052_ (map car _rest54058_))))
                  (if _$e54060_
                      ((lambda (_r54063_)
                         (cons _r54063_
                               (let ((__tmp57829 (map cdr _rest54058_)))
                                 (declare (not safe))
                                 (_recur54056_ __tmp57829))))
                       _$e54060_)
                      (let ((__tmp57830 (map cdr _rest54058_)))
                        (declare (not safe))
                        (_recur54056_ __tmp57830))))
                '())))))
    (define agetq__%
      (lambda (_key54036_ _lst54037_ _default54038_)
        (let ()
          (declare (not safe))
          (__agetq__% _key54036_ _lst54037_ _default54038_))))
    (define agetq__0
      (lambda (_key54043_ _lst54044_)
        (let ((_default54046_ '#f))
          (declare (not safe))
          (__agetq _key54043_ _lst54044_ _default54046_))))
    (define agetq
      (lambda _g57832_
        (let ((_g57831_ (let () (declare (not safe)) (##length _g57832_))))
          (cond ((let () (declare (not safe)) (##fx= _g57831_ 2))
                 (apply (lambda (_key54043_ _lst54044_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _key54043_ _lst54044_)))
                        _g57832_))
                ((let () (declare (not safe)) (##fx= _g57831_ 3))
                 (apply (lambda (_key54048_ _lst54049_ _default54050_)
                          (let ()
                            (declare (not safe))
                            (__agetq _key54048_ _lst54049_ _default54050_)))
                        _g57832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g57832_))))))
    (define __agetq__%
      (lambda (_key54012_ _lst54014_ _default54016_)
        (let ()
          (let ((_$e54020_
                 (if (let () (declare (not safe)) (pair? _lst54014_))
                     (assq _key54012_ _lst54014_)
                     '#f)))
            (if _$e54020_
                (cdr _$e54020_)
                (if (let () (declare (not safe)) (procedure? _default54016_))
                    (_default54016_ _key54012_)
                    _default54016_))))))
    (define __agetq__0
      (lambda (_key54026_ _lst54027_)
        (let ((_default54029_ '#f))
          (declare (not safe))
          (__agetq__% _key54026_ _lst54027_ _default54029_))))
    (define __agetq
      (lambda _g57834_
        (let ((_g57833_ (let () (declare (not safe)) (##length _g57834_))))
          (cond ((let () (declare (not safe)) (##fx= _g57833_ 2))
                 (apply (lambda (_key54026_ _lst54027_)
                          (let ()
                            (declare (not safe))
                            (__agetq__0 _key54026_ _lst54027_)))
                        _g57834_))
                ((let () (declare (not safe)) (##fx= _g57833_ 3))
                 (apply (lambda (_key54031_ _lst54032_ _default54033_)
                          (let ()
                            (declare (not safe))
                            (__agetq__% _key54031_ _lst54032_ _default54033_)))
                        _g57834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __agetq
                  _g57834_))))))
    (define agetv__%
      (lambda (_key53995_ _lst53996_ _default53997_)
        (let ()
          (declare (not safe))
          (__agetv__% _key53995_ _lst53996_ _default53997_))))
    (define agetv__0
      (lambda (_key54002_ _lst54003_)
        (let ((_default54005_ '#f))
          (declare (not safe))
          (__agetv _key54002_ _lst54003_ _default54005_))))
    (define agetv
      (lambda _g57836_
        (let ((_g57835_ (let () (declare (not safe)) (##length _g57836_))))
          (cond ((let () (declare (not safe)) (##fx= _g57835_ 2))
                 (apply (lambda (_key54002_ _lst54003_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _key54002_ _lst54003_)))
                        _g57836_))
                ((let () (declare (not safe)) (##fx= _g57835_ 3))
                 (apply (lambda (_key54007_ _lst54008_ _default54009_)
                          (let ()
                            (declare (not safe))
                            (__agetv _key54007_ _lst54008_ _default54009_)))
                        _g57836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g57836_))))))
    (define __agetv__%
      (lambda (_key53971_ _lst53973_ _default53975_)
        (let ()
          (let ((_$e53979_
                 (if (let () (declare (not safe)) (pair? _lst53973_))
                     (assv _key53971_ _lst53973_)
                     '#f)))
            (if _$e53979_
                (cdr _$e53979_)
                (if (let () (declare (not safe)) (procedure? _default53975_))
                    (_default53975_ _key53971_)
                    _default53975_))))))
    (define __agetv__0
      (lambda (_key53985_ _lst53986_)
        (let ((_default53988_ '#f))
          (declare (not safe))
          (__agetv__% _key53985_ _lst53986_ _default53988_))))
    (define __agetv
      (lambda _g57838_
        (let ((_g57837_ (let () (declare (not safe)) (##length _g57838_))))
          (cond ((let () (declare (not safe)) (##fx= _g57837_ 2))
                 (apply (lambda (_key53985_ _lst53986_)
                          (let ()
                            (declare (not safe))
                            (__agetv__0 _key53985_ _lst53986_)))
                        _g57838_))
                ((let () (declare (not safe)) (##fx= _g57837_ 3))
                 (apply (lambda (_key53990_ _lst53991_ _default53992_)
                          (let ()
                            (declare (not safe))
                            (__agetv__% _key53990_ _lst53991_ _default53992_)))
                        _g57838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __agetv
                  _g57838_))))))
    (define aget__%
      (lambda (_key53954_ _lst53955_ _default53956_)
        (let ()
          (declare (not safe))
          (__aget__% _key53954_ _lst53955_ _default53956_))))
    (define aget__0
      (lambda (_key53961_ _lst53962_)
        (let ((_default53964_ '#f))
          (declare (not safe))
          (__aget _key53961_ _lst53962_ _default53964_))))
    (define aget
      (lambda _g57840_
        (let ((_g57839_ (let () (declare (not safe)) (##length _g57840_))))
          (cond ((let () (declare (not safe)) (##fx= _g57839_ 2))
                 (apply (lambda (_key53961_ _lst53962_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _key53961_ _lst53962_)))
                        _g57840_))
                ((let () (declare (not safe)) (##fx= _g57839_ 3))
                 (apply (lambda (_key53966_ _lst53967_ _default53968_)
                          (let ()
                            (declare (not safe))
                            (__aget _key53966_ _lst53967_ _default53968_)))
                        _g57840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g57840_))))))
    (define __aget__%
      (lambda (_key53930_ _lst53932_ _default53934_)
        (let ()
          (let ((_$e53938_
                 (if (let () (declare (not safe)) (pair? _lst53932_))
                     (assoc _key53930_ _lst53932_)
                     '#f)))
            (if _$e53938_
                (cdr _$e53938_)
                (if (let () (declare (not safe)) (procedure? _default53934_))
                    (_default53934_ _key53930_)
                    _default53934_))))))
    (define __aget__0
      (lambda (_key53944_ _lst53945_)
        (let ((_default53947_ '#f))
          (declare (not safe))
          (__aget__% _key53944_ _lst53945_ _default53947_))))
    (define __aget
      (lambda _g57842_
        (let ((_g57841_ (let () (declare (not safe)) (##length _g57842_))))
          (cond ((let () (declare (not safe)) (##fx= _g57841_ 2))
                 (apply (lambda (_key53944_ _lst53945_)
                          (let ()
                            (declare (not safe))
                            (__aget__0 _key53944_ _lst53945_)))
                        _g57842_))
                ((let () (declare (not safe)) (##fx= _g57841_ 3))
                 (apply (lambda (_key53949_ _lst53950_ _default53951_)
                          (let ()
                            (declare (not safe))
                            (__aget__% _key53949_ _lst53950_ _default53951_)))
                        _g57842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __aget
                  _g57842_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_key53913_ _lst53914_ _default53915_)
        (let ()
          (declare (not safe))
          (__pgetq__% _key53913_ _lst53914_ _default53915_))))
    (define pgetq__0
      (lambda (_key53920_ _lst53921_)
        (let ((_default53923_ '#f))
          (declare (not safe))
          (__pgetq _key53920_ _lst53921_ _default53923_))))
    (define pgetq
      (lambda _g57844_
        (let ((_g57843_ (let () (declare (not safe)) (##length _g57844_))))
          (cond ((let () (declare (not safe)) (##fx= _g57843_ 2))
                 (apply (lambda (_key53920_ _lst53921_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key53920_ _lst53921_)))
                        _g57844_))
                ((let () (declare (not safe)) (##fx= _g57843_ 3))
                 (apply (lambda (_key53925_ _lst53926_ _default53927_)
                          (let ()
                            (declare (not safe))
                            (__pgetq _key53925_ _lst53926_ _default53927_)))
                        _g57844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g57844_))))))
    (define __pgetq__%
      (lambda (_key53841_ _lst53843_ _default53845_)
        (let ()
          (let _lp53849_ ((_rest53852_ _lst53843_))
            (let* ((_rest5385453864_ _rest53852_)
                   (_else5385653872_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (procedure? _default53845_))
                          (_default53845_ _key53841_)
                          _default53845_)))
                   (_K5385853881_
                    (lambda (_rest53875_ _v53876_ _k53878_)
                      (if (eq? _k53878_ _key53841_)
                          _v53876_
                          (let ()
                            (declare (not safe))
                            (_lp53849_ _rest53875_))))))
              (if (let () (declare (not safe)) (##pair? _rest5385453864_))
                  (let ((_hd5385953884_
                         (let ()
                           (declare (not safe))
                           (##car _rest5385453864_)))
                        (_tl5386053886_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5385453864_))))
                    (let ((_k53889_ _hd5385953884_))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5386053886_))
                          (let ((_hd5386153891_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5386053886_)))
                                (_tl5386253893_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5386053886_))))
                            (let* ((_v53896_ _hd5386153891_)
                                   (_rest53898_ _tl5386253893_))
                              (declare (not safe))
                              (_K5385853881_ _rest53898_ _v53896_ _k53889_)))
                          (let () (declare (not safe)) (_else5385653872_)))))
                  (let () (declare (not safe)) (_else5385653872_))))))))
    (define __pgetq__0
      (lambda (_key53903_ _lst53904_)
        (let ((_default53906_ '#f))
          (declare (not safe))
          (__pgetq__% _key53903_ _lst53904_ _default53906_))))
    (define __pgetq
      (lambda _g57846_
        (let ((_g57845_ (let () (declare (not safe)) (##length _g57846_))))
          (cond ((let () (declare (not safe)) (##fx= _g57845_ 2))
                 (apply (lambda (_key53903_ _lst53904_)
                          (let ()
                            (declare (not safe))
                            (__pgetq__0 _key53903_ _lst53904_)))
                        _g57846_))
                ((let () (declare (not safe)) (##fx= _g57845_ 3))
                 (apply (lambda (_key53908_ _lst53909_ _default53910_)
                          (let ()
                            (declare (not safe))
                            (__pgetq__% _key53908_ _lst53909_ _default53910_)))
                        _g57846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __pgetq
                  _g57846_))))))
    (define pgetv__%
      (lambda (_key53824_ _lst53825_ _default53826_)
        (let ()
          (declare (not safe))
          (__pgetv__% _key53824_ _lst53825_ _default53826_))))
    (define pgetv__0
      (lambda (_key53831_ _lst53832_)
        (let ((_default53834_ '#f))
          (declare (not safe))
          (__pgetv _key53831_ _lst53832_ _default53834_))))
    (define pgetv
      (lambda _g57848_
        (let ((_g57847_ (let () (declare (not safe)) (##length _g57848_))))
          (cond ((let () (declare (not safe)) (##fx= _g57847_ 2))
                 (apply (lambda (_key53831_ _lst53832_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key53831_ _lst53832_)))
                        _g57848_))
                ((let () (declare (not safe)) (##fx= _g57847_ 3))
                 (apply (lambda (_key53836_ _lst53837_ _default53838_)
                          (let ()
                            (declare (not safe))
                            (__pgetv _key53836_ _lst53837_ _default53838_)))
                        _g57848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g57848_))))))
    (define __pgetv__%
      (lambda (_key53752_ _lst53754_ _default53756_)
        (let ()
          (let _lp53760_ ((_rest53763_ _lst53754_))
            (let* ((_rest5376553775_ _rest53763_)
                   (_else5376753783_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (procedure? _default53756_))
                          (_default53756_ _key53752_)
                          _default53756_)))
                   (_K5376953792_
                    (lambda (_rest53786_ _v53787_ _k53789_)
                      (if (eqv? _k53789_ _key53752_)
                          _v53787_
                          (let ()
                            (declare (not safe))
                            (_lp53760_ _rest53786_))))))
              (if (let () (declare (not safe)) (##pair? _rest5376553775_))
                  (let ((_hd5377053795_
                         (let ()
                           (declare (not safe))
                           (##car _rest5376553775_)))
                        (_tl5377153797_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5376553775_))))
                    (let ((_k53800_ _hd5377053795_))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5377153797_))
                          (let ((_hd5377253802_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5377153797_)))
                                (_tl5377353804_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5377153797_))))
                            (let* ((_v53807_ _hd5377253802_)
                                   (_rest53809_ _tl5377353804_))
                              (declare (not safe))
                              (_K5376953792_ _rest53809_ _v53807_ _k53800_)))
                          (let () (declare (not safe)) (_else5376753783_)))))
                  (let () (declare (not safe)) (_else5376753783_))))))))
    (define __pgetv__0
      (lambda (_key53814_ _lst53815_)
        (let ((_default53817_ '#f))
          (declare (not safe))
          (__pgetv__% _key53814_ _lst53815_ _default53817_))))
    (define __pgetv
      (lambda _g57850_
        (let ((_g57849_ (let () (declare (not safe)) (##length _g57850_))))
          (cond ((let () (declare (not safe)) (##fx= _g57849_ 2))
                 (apply (lambda (_key53814_ _lst53815_)
                          (let ()
                            (declare (not safe))
                            (__pgetv__0 _key53814_ _lst53815_)))
                        _g57850_))
                ((let () (declare (not safe)) (##fx= _g57849_ 3))
                 (apply (lambda (_key53819_ _lst53820_ _default53821_)
                          (let ()
                            (declare (not safe))
                            (__pgetv__% _key53819_ _lst53820_ _default53821_)))
                        _g57850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __pgetv
                  _g57850_))))))
    (define pget__%
      (lambda (_key53735_ _lst53736_ _default53737_)
        (let ()
          (declare (not safe))
          (__pget__% _key53735_ _lst53736_ _default53737_))))
    (define pget__0
      (lambda (_key53742_ _lst53743_)
        (let ((_default53745_ '#f))
          (declare (not safe))
          (__pget _key53742_ _lst53743_ _default53745_))))
    (define pget
      (lambda _g57852_
        (let ((_g57851_ (let () (declare (not safe)) (##length _g57852_))))
          (cond ((let () (declare (not safe)) (##fx= _g57851_ 2))
                 (apply (lambda (_key53742_ _lst53743_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key53742_ _lst53743_)))
                        _g57852_))
                ((let () (declare (not safe)) (##fx= _g57851_ 3))
                 (apply (lambda (_key53747_ _lst53748_ _default53749_)
                          (let ()
                            (declare (not safe))
                            (__pget _key53747_ _lst53748_ _default53749_)))
                        _g57852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g57852_))))))
    (define __pget__%
      (lambda (_key53663_ _lst53665_ _default53667_)
        (let ()
          (let _lp53671_ ((_rest53674_ _lst53665_))
            (let* ((_rest5367653686_ _rest53674_)
                   (_else5367853694_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (procedure? _default53667_))
                          (_default53667_ _key53663_)
                          _default53667_)))
                   (_K5368053703_
                    (lambda (_rest53697_ _v53698_ _k53700_)
                      (if (equal? _k53700_ _key53663_)
                          _v53698_
                          (let ()
                            (declare (not safe))
                            (_lp53671_ _rest53697_))))))
              (if (let () (declare (not safe)) (##pair? _rest5367653686_))
                  (let ((_hd5368153706_
                         (let ()
                           (declare (not safe))
                           (##car _rest5367653686_)))
                        (_tl5368253708_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5367653686_))))
                    (let ((_k53711_ _hd5368153706_))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5368253708_))
                          (let ((_hd5368353713_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5368253708_)))
                                (_tl5368453715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5368253708_))))
                            (let* ((_v53718_ _hd5368353713_)
                                   (_rest53720_ _tl5368453715_))
                              (declare (not safe))
                              (_K5368053703_ _rest53720_ _v53718_ _k53711_)))
                          (let () (declare (not safe)) (_else5367853694_)))))
                  (let () (declare (not safe)) (_else5367853694_))))))))
    (define __pget__0
      (lambda (_key53725_ _lst53726_)
        (let ((_default53728_ '#f))
          (declare (not safe))
          (__pget__% _key53725_ _lst53726_ _default53728_))))
    (define __pget
      (lambda _g57854_
        (let ((_g57853_ (let () (declare (not safe)) (##length _g57854_))))
          (cond ((let () (declare (not safe)) (##fx= _g57853_ 2))
                 (apply (lambda (_key53725_ _lst53726_)
                          (let ()
                            (declare (not safe))
                            (__pget__0 _key53725_ _lst53726_)))
                        _g57854_))
                ((let () (declare (not safe)) (##fx= _g57853_ 3))
                 (apply (lambda (_key53730_ _lst53731_ _default53732_)
                          (let ()
                            (declare (not safe))
                            (__pget__% _key53730_ _lst53731_ _default53732_)))
                        _g57854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __pget
                  _g57854_))))))
    (define find
      (lambda (_pred53659_ _lst53660_)
        (if (let () (declare (not safe)) (procedure? _pred53659_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _pred53659_)))
        (let () (declare (not safe)) (__find _pred53659_ _lst53660_))))
    (define __find
      (lambda (_pred53652_ _lst53653_)
        (let ()
          (let ((_$e53656_
                 (let ()
                   (declare (not safe))
                   (__memf _pred53652_ _lst53653_))))
            (if _$e53656_
                (let () (declare (not safe)) (##car _$e53656_))
                '#f)))))
    (define memf
      (lambda (_proc53649_ _lst53650_)
        (if (let () (declare (not safe)) (procedure? _proc53649_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _proc53649_)))
        (let () (declare (not safe)) (__memf _proc53649_ _lst53650_))))
    (define __memf
      (lambda (_proc53608_ _lst53609_)
        (let ()
          (let _lp53612_ ((_rest53614_ _lst53609_))
            (let* ((_rest5361553623_ _rest53614_)
                   (_else5361753631_ (lambda () '#f))
                   (_K5361953637_
                    (lambda (_tl53634_ _hd53635_)
                      (if (let () (declare (not safe)) (_proc53608_ _hd53635_))
                          _rest53614_
                          (let ()
                            (declare (not safe))
                            (_lp53612_ _tl53634_))))))
              (if (let () (declare (not safe)) (##pair? _rest5361553623_))
                  (let ((_hd5362053640_
                         (let ()
                           (declare (not safe))
                           (##car _rest5361553623_)))
                        (_tl5362153642_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5361553623_))))
                    (let* ((_hd53645_ _hd5362053640_)
                           (_tl53647_ _tl5362153642_))
                      (declare (not safe))
                      (_K5361953637_ _tl53647_ _hd53645_)))
                  (let () (declare (not safe)) (_else5361753631_))))))))
    (define remove1
      (lambda (_el53605_ _lst53606_)
        (let () (declare (not safe)) (__remove1 _el53605_ _lst53606_))))
    (define __remove1
      (lambda (_el53557_ _lst53559_)
        (let ()
          (let _lp53563_ ((_rest53566_ _lst53559_) (_r53568_ '()))
            (let* ((_rest5357053578_ _rest53566_)
                   (_else5357253586_ (lambda () _lst53559_))
                   (_K5357453593_
                    (lambda (_rest53589_ _hd53590_)
                      (if (equal? _el53557_ _hd53590_)
                          (let ()
                            (declare (not safe))
                            (__foldl1 cons _rest53589_ _r53568_))
                          (let ((__tmp57855 (cons _hd53590_ _r53568_)))
                            (declare (not safe))
                            (_lp53563_ _rest53589_ __tmp57855))))))
              (if (let () (declare (not safe)) (##pair? _rest5357053578_))
                  (let ((_hd5357553596_
                         (let ()
                           (declare (not safe))
                           (##car _rest5357053578_)))
                        (_tl5357653598_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5357053578_))))
                    (let* ((_hd53601_ _hd5357553596_)
                           (_rest53603_ _tl5357653598_))
                      (declare (not safe))
                      (_K5357453593_ _rest53603_ _hd53601_)))
                  (let () (declare (not safe)) (_else5357253586_))))))))
    (define remv1
      (lambda (_el53554_ _lst53555_)
        (let () (declare (not safe)) (__remv1 _el53554_ _lst53555_))))
    (define __remv1
      (lambda (_el53506_ _lst53508_)
        (let ()
          (let _lp53512_ ((_rest53515_ _lst53508_) (_r53517_ '()))
            (let* ((_rest5351953527_ _rest53515_)
                   (_else5352153535_ (lambda () _lst53508_))
                   (_K5352353542_
                    (lambda (_rest53538_ _hd53539_)
                      (if (eqv? _el53506_ _hd53539_)
                          (let ()
                            (declare (not safe))
                            (__foldl1 cons _rest53538_ _r53517_))
                          (let ((__tmp57856 (cons _hd53539_ _r53517_)))
                            (declare (not safe))
                            (_lp53512_ _rest53538_ __tmp57856))))))
              (if (let () (declare (not safe)) (##pair? _rest5351953527_))
                  (let ((_hd5352453545_
                         (let ()
                           (declare (not safe))
                           (##car _rest5351953527_)))
                        (_tl5352553547_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5351953527_))))
                    (let* ((_hd53550_ _hd5352453545_)
                           (_rest53552_ _tl5352553547_))
                      (declare (not safe))
                      (_K5352353542_ _rest53552_ _hd53550_)))
                  (let () (declare (not safe)) (_else5352153535_))))))))
    (define remq1
      (lambda (_el53503_ _lst53504_)
        (let () (declare (not safe)) (__remq1 _el53503_ _lst53504_))))
    (define __remq1
      (lambda (_el53455_ _lst53457_)
        (let ()
          (let _lp53461_ ((_rest53464_ _lst53457_) (_r53466_ '()))
            (let* ((_rest5346853476_ _rest53464_)
                   (_else5347053484_ (lambda () _lst53457_))
                   (_K5347253491_
                    (lambda (_rest53487_ _hd53488_)
                      (if (eq? _el53455_ _hd53488_)
                          (let ()
                            (declare (not safe))
                            (__foldl1 cons _rest53487_ _r53466_))
                          (let ((__tmp57857 (cons _hd53488_ _r53466_)))
                            (declare (not safe))
                            (_lp53461_ _rest53487_ __tmp57857))))))
              (if (let () (declare (not safe)) (##pair? _rest5346853476_))
                  (let ((_hd5347353494_
                         (let ()
                           (declare (not safe))
                           (##car _rest5346853476_)))
                        (_tl5347453496_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5346853476_))))
                    (let* ((_hd53499_ _hd5347353494_)
                           (_rest53501_ _tl5347453496_))
                      (declare (not safe))
                      (_K5347253491_ _rest53501_ _hd53499_)))
                  (let () (declare (not safe)) (_else5347053484_))))))))
    (define remf
      (lambda (_proc53452_ _lst53453_)
        (if (let () (declare (not safe)) (procedure? _proc53452_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _proc53452_)))
        (let () (declare (not safe)) (__remf _proc53452_ _lst53453_))))
    (define __remf
      (lambda (_proc53410_ _lst53411_)
        (let ()
          (let _lp53414_ ((_rest53416_ _lst53411_) (_r53417_ '()))
            (let* ((_rest5341853426_ _rest53416_)
                   (_else5342053434_ (lambda () _lst53411_))
                   (_K5342253440_
                    (lambda (_rest53437_ _hd53438_)
                      (if (let () (declare (not safe)) (_proc53410_ _hd53438_))
                          (let ()
                            (declare (not safe))
                            (__foldl1 cons _rest53437_ _r53417_))
                          (let ((__tmp57858 (cons _hd53438_ _r53417_)))
                            (declare (not safe))
                            (_lp53414_ _rest53437_ __tmp57858))))))
              (if (let () (declare (not safe)) (##pair? _rest5341853426_))
                  (let ((_hd5342353443_
                         (let ()
                           (declare (not safe))
                           (##car _rest5341853426_)))
                        (_tl5342453445_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5341853426_))))
                    (let* ((_hd53448_ _hd5342353443_)
                           (_rest53450_ _tl5342453445_))
                      (declare (not safe))
                      (_K5342253440_ _rest53450_ _hd53448_)))
                  (let () (declare (not safe)) (_else5342053434_))))))))
    (define 1+
      (lambda (_x53408_)
        (if (let () (declare (not safe)) (number? _x53408_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'number::t _x53408_)))
        (let () (declare (not safe)) (__1+ _x53408_))))
    (define __1+ (lambda (_x53405_) (let () (+ _x53405_ '1))))
    (define 1-
      (lambda (_x53403_)
        (if (let () (declare (not safe)) (number? _x53403_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'number::t _x53403_)))
        (let () (declare (not safe)) (__1- _x53403_))))
    (define __1- (lambda (_x53400_) (let () (- _x53400_ '1))))
    (define fx1+
      (lambda (_x53398_)
        (if (let () (declare (not safe)) (fixnum? _x53398_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'fixnum::t _x53398_)))
        (let () (declare (not safe)) (__fx1+ _x53398_))))
    (define __fx1+
      (lambda (_x53395_)
        (let () (let () (declare (not safe)) (##fx+ _x53395_ '1)))))
    (define fx1-
      (lambda (_x53393_)
        (if (let () (declare (not safe)) (fixnum? _x53393_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'fixnum::t _x53393_)))
        (let () (declare (not safe)) (__fx1- _x53393_))))
    (define __fx1-
      (lambda (_x53390_)
        (let () (let () (declare (not safe)) (##fx- _x53390_ '1)))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x53388_) (let () (declare (not safe)) (__fx>=0? _x53388_))))
    (define __fx>=0?
      (lambda (_x53385_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _x53385_))
              (let () (declare (not safe)) (##fx>= _x53385_ '0))
              '#f))))
    (define fx>0?
      (lambda (_x53383_) (let () (declare (not safe)) (__fx>0? _x53383_))))
    (define __fx>0?
      (lambda (_x53380_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _x53380_))
              (let () (declare (not safe)) (##fx> _x53380_ '0))
              '#f))))
    (define fx=0?
      (lambda (_x53378_) (let () (declare (not safe)) (__fx=0? _x53378_))))
    (define __fx=0?
      (lambda (_x53375_)
        (let () (let () (declare (not safe)) (##fx= _x53375_ '0)))))
    (define fx<0?
      (lambda (_x53373_) (let () (declare (not safe)) (__fx<0? _x53373_))))
    (define __fx<0?
      (lambda (_x53370_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _x53370_))
              (let () (declare (not safe)) (##fx< _x53370_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_x53368_) (let () (declare (not safe)) (__fx<=0? _x53368_))))
    (define __fx<=0?
      (lambda (_x53365_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _x53365_))
              (let () (declare (not safe)) (##fx<= _x53365_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_x53363_)
        (let () (declare (not safe)) (__interned-symbol? _x53363_))))
    (define __interned-symbol?
      (lambda (_x53360_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _x53360_))
              (let ((__tmp57859 (uninterned-symbol? _x53360_)))
                (declare (not safe))
                (not __tmp57859))
              '#f))))
    (define display-as-string
      (lambda (_x53357_ _port53358_)
        (if (output-port? _port53358_)
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'output-port?
                     _port53358_)))
        (let ()
          (declare (not safe))
          (__display-as-string _x53357_ _port53358_))))
    (define __display-as-string
      (lambda (_x53328_ _port53329_)
        (let ()
          (if (or (let () (declare (not safe)) (string? _x53328_))
                  (let () (declare (not safe)) (symbol? _x53328_))
                  (let () (declare (not safe)) (keyword? _x53328_))
                  (let () (declare (not safe)) (number? _x53328_))
                  (let () (declare (not safe)) (char? _x53328_)))
              (display _x53328_ _port53329_)
              (if (let () (declare (not safe)) (pair? _x53328_))
                  (begin
                    (let ((__tmp57860 (car _x53328_)))
                      (declare (not safe))
                      (display-as-string __tmp57860 _port53329_))
                    (let ((__tmp57861 (cdr _x53328_)))
                      (declare (not safe))
                      (display-as-string __tmp57861 _port53329_)))
                  (if (let () (declare (not safe)) (vector? _x53328_))
                      (vector-for-each
                       (lambda (_g5334353345_)
                         (let ()
                           (declare (not safe))
                           (display-as-string _g5334353345_ _port53329_)))
                       _x53328_)
                      (if (or (let () (declare (not safe)) (null? _x53328_))
                              (let ()
                                (declare (not safe))
                                (eq? _x53328_ '#!void))
                              (let ()
                                (declare (not safe))
                                (eof-object? _x53328_))
                              (let ()
                                (declare (not safe))
                                (boolean? _x53328_)))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (error '"cannot convert as string"
                                   _x53328_)))))))))
    (define as-string__0
      (lambda (_x53316_)
        (if (let () (declare (not safe)) (string? _x53316_))
            _x53316_
            (if (let () (declare (not safe)) (symbol? _x53316_))
                (symbol->string _x53316_)
                (if (let () (declare (not safe)) (keyword? _x53316_))
                    (keyword->string _x53316_)
                    (if (let () (declare (not safe)) (number? _x53316_))
                        (number->string _x53316_)
                        (call-with-output-string
                         '()
                         (lambda (_g5331753319_)
                           (let ()
                             (declare (not safe))
                             (display-as-string
                              _x53316_
                              _g5331753319_))))))))))
    (define as-string__1
      (lambda _args53322_
        (call-with-output-string
         '()
         (lambda (_g5332353325_)
           (let ()
             (declare (not safe))
             (display-as-string _args53322_ _g5332353325_))))))
    (define as-string
      (lambda _g57863_
        (let ((_g57862_ (let () (declare (not safe)) (##length _g57863_))))
          (cond ((let () (declare (not safe)) (##fx= _g57862_ 1))
                 (apply (lambda (_x53316_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x53316_)))
                        _g57863_))
                (#t (apply as-string__1 _g57863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g57863_))))))
    (define make-symbol__0
      (lambda (_x53312_)
        (if (let () (declare (not safe)) (__interned-symbol? _x53312_))
            _x53312_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x53312_))))))
    (define make-symbol__1
      (lambda _args53314_ (string->symbol (apply as-string _args53314_))))
    (define make-symbol
      (lambda _g57865_
        (let ((_g57864_ (let () (declare (not safe)) (##length _g57865_))))
          (cond ((let () (declare (not safe)) (##fx= _g57864_ 1))
                 (apply (lambda (_x53312_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x53312_)))
                        _g57865_))
                (#t (apply make-symbol__1 _g57865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g57865_))))))
    (define make-keyword__0
      (lambda (_x53308_)
        (if (let () (declare (not safe)) (__interned-keyword? _x53308_))
            _x53308_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x53308_))))))
    (define make-keyword__1
      (lambda _args53310_ (string->keyword (apply as-string _args53310_))))
    (define make-keyword
      (lambda _g57867_
        (let ((_g57866_ (let () (declare (not safe)) (##length _g57867_))))
          (cond ((let () (declare (not safe)) (##fx= _g57866_ 1))
                 (apply (lambda (_x53308_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x53308_)))
                        _g57867_))
                (#t (apply make-keyword__1 _g57867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g57867_))))))
    (define interned-keyword?
      (lambda (_x53306_)
        (let () (declare (not safe)) (__interned-keyword? _x53306_))))
    (define __interned-keyword?
      (lambda (_x53303_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _x53303_))
              (let ((__tmp57868 (uninterned-keyword? _x53303_)))
                (declare (not safe))
                (not __tmp57868))
              '#f))))
    (define symbol->keyword
      (lambda (_sym53301_)
        (if (let () (declare (not safe)) (symbol? _sym53301_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _sym53301_)))
        (let () (declare (not safe)) (__symbol->keyword _sym53301_))))
    (define __symbol->keyword
      (lambda (_sym53298_)
        (let ()
          (if (uninterned-symbol? _sym53298_)
              (let ((__tmp57869
                     (let ()
                       (declare (not safe))
                       (##symbol->string _sym53298_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp57869))
              (let ((__tmp57870
                     (let ()
                       (declare (not safe))
                       (##symbol->string _sym53298_))))
                (declare (not safe))
                (##string->keyword __tmp57870))))))
    (define keyword->symbol
      (lambda (_sym53296_)
        (if (let () (declare (not safe)) (keyword? _sym53296_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'keyword::t
                     _sym53296_)))
        (let () (declare (not safe)) (__keyword->symbol _sym53296_))))
    (define __keyword->symbol
      (lambda (_sym53293_)
        (let ()
          (if (uninterned-keyword? _sym53293_)
              (let ((__tmp57871
                     (let ()
                       (declare (not safe))
                       (##keyword->string _sym53293_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp57871))
              (let ((__tmp57872
                     (let ()
                       (declare (not safe))
                       (##keyword->string _sym53293_))))
                (declare (not safe))
                (##string->symbol __tmp57872))))))
    (define bytes->string__%
      (lambda (_bstr53280_ _enc53281_)
        (if (let () (declare (not safe)) (u8vector? _bstr53280_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'u8vector::t
                     _bstr53280_)))
        (if (let () (declare (not safe)) (symbol? _enc53281_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _enc53281_)))
        (let ()
          (declare (not safe))
          (__bytes->string__% _bstr53280_ _enc53281_))))
    (define bytes->string__0
      (lambda (_bstr53286_)
        (let ((_enc53288_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr53286_ _enc53288_))))
    (define bytes->string
      (lambda _g57874_
        (let ((_g57873_ (let () (declare (not safe)) (##length _g57874_))))
          (cond ((let () (declare (not safe)) (##fx= _g57873_ 1))
                 (apply (lambda (_bstr53286_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr53286_)))
                        _g57874_))
                ((let () (declare (not safe)) (##fx= _g57873_ 2))
                 (apply (lambda (_bstr53290_ _enc53291_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr53290_ _enc53291_)))
                        _g57874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g57874_))))))
    (define __bytes->string__%
      (lambda (_bstr53256_ _enc53257_)
        (let ()
          (if (eq? _enc53257_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _bstr53256_))
              (let* ((_in53260_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _enc53257_
                                   (cons 'init: (cons _bstr53256_ '()))))))
                     (_len53262_ (u8vector-length _bstr53256_))
                     (_out53264_ (make-string _len53262_))
                     (_n53266_
                      (read-substring _out53264_ '0 _len53262_ _in53260_)))
                (string-shrink! _out53264_ _n53266_)
                _out53264_)))))
    (define __bytes->string__0
      (lambda (_bstr53272_)
        (let ((_enc53274_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _bstr53272_ _enc53274_))))
    (define __bytes->string
      (lambda _g57876_
        (let ((_g57875_ (let () (declare (not safe)) (##length _g57876_))))
          (cond ((let () (declare (not safe)) (##fx= _g57875_ 1))
                 (apply (lambda (_bstr53272_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _bstr53272_)))
                        _g57876_))
                ((let () (declare (not safe)) (##fx= _g57875_ 2))
                 (apply (lambda (_bstr53276_ _enc53277_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _bstr53276_ _enc53277_)))
                        _g57876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g57876_))))))
    (define string->bytes__%
      (lambda (_str53242_ _enc53243_)
        (if (let () (declare (not safe)) (string? _str53242_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _str53242_)))
        (if (let () (declare (not safe)) (symbol? _enc53243_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _enc53243_)))
        (let ()
          (declare (not safe))
          (__string->bytes__% _str53242_ _enc53243_))))
    (define string->bytes__0
      (lambda (_str53248_)
        (let ((_enc53250_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str53248_ _enc53250_))))
    (define string->bytes
      (lambda _g57878_
        (let ((_g57877_ (let () (declare (not safe)) (##length _g57878_))))
          (cond ((let () (declare (not safe)) (##fx= _g57877_ 1))
                 (apply (lambda (_str53248_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str53248_)))
                        _g57878_))
                ((let () (declare (not safe)) (##fx= _g57877_ 2))
                 (apply (lambda (_str53252_ _enc53253_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str53252_ _enc53253_)))
                        _g57878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g57878_))))))
    (define __string->bytes__%
      (lambda (_str53227_ _enc53228_)
        (let ()
          (if (eq? _enc53228_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _str53227_))
              (let ((__tmp57879
                     (let ()
                       (declare (not safe))
                       (##string-length _str53227_))))
                (declare (not safe))
                (substring->bytes__% _str53227_ '0 __tmp57879 _enc53228_))))))
    (define __string->bytes__0
      (lambda (_str53234_)
        (let ((_enc53236_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _str53234_ _enc53236_))))
    (define __string->bytes
      (lambda _g57881_
        (let ((_g57880_ (let () (declare (not safe)) (##length _g57881_))))
          (cond ((let () (declare (not safe)) (##fx= _g57880_ 1))
                 (apply (lambda (_str53234_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _str53234_)))
                        _g57881_))
                ((let () (declare (not safe)) (##fx= _g57880_ 2))
                 (apply (lambda (_str53238_ _enc53239_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _str53238_ _enc53239_)))
                        _g57881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g57881_))))))
    (define substring->bytes__%
      (lambda (_str53207_ _start53208_ _end53209_ _enc53210_)
        (if (let () (declare (not safe)) (string? _str53207_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _str53207_)))
        (if (let () (declare (not safe)) (__nonnegative-fixnum? _start53208_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'nonnegative-fixnum?
                     _start53208_)))
        (if (let () (declare (not safe)) (__nonnegative-fixnum? _end53209_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'nonnegative-fixnum?
                     _end53209_)))
        (let ()
          (declare (not safe))
          (__substring->bytes__%
           _str53207_
           _start53208_
           _end53209_
           _enc53210_))))
    (define substring->bytes__0
      (lambda (_str53215_ _start53216_ _end53217_)
        (let ((_enc53219_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str53215_
           _start53216_
           _end53217_
           _enc53219_))))
    (define substring->bytes
      (lambda _g57883_
        (let ((_g57882_ (let () (declare (not safe)) (##length _g57883_))))
          (cond ((let () (declare (not safe)) (##fx= _g57882_ 3))
                 (apply (lambda (_str53215_ _start53216_ _end53217_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str53215_
                             _start53216_
                             _end53217_)))
                        _g57883_))
                ((let () (declare (not safe)) (##fx= _g57882_ 4))
                 (apply (lambda (_str53221_ _start53222_ _end53223_ _enc53224_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str53221_
                             _start53222_
                             _end53223_
                             _enc53224_)))
                        _g57883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g57883_))))))
    (define __substring->bytes__%
      (lambda (_str53184_ _start53185_ _end53186_ _enc53187_)
        (let ()
          (if (eq? _enc53187_ 'UTF-8)
              (string->utf8 _str53184_ _start53185_ _end53186_)
              (let ((_out53190_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _enc53187_ '())))))
                (write-substring _str53184_ _start53185_ _end53186_ _out53190_)
                (get-output-u8vector _out53190_))))))
    (define __substring->bytes__0
      (lambda (_str53195_ _start53196_ _end53197_)
        (let ((_enc53199_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _str53195_
           _start53196_
           _end53197_
           _enc53199_))))
    (define __substring->bytes
      (lambda _g57885_
        (let ((_g57884_ (let () (declare (not safe)) (##length _g57885_))))
          (cond ((let () (declare (not safe)) (##fx= _g57884_ 3))
                 (apply (lambda (_str53195_ _start53196_ _end53197_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _str53195_
                             _start53196_
                             _end53197_)))
                        _g57885_))
                ((let () (declare (not safe)) (##fx= _g57884_ 4))
                 (apply (lambda (_str53201_ _start53202_ _end53203_ _enc53204_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _str53201_
                             _start53202_
                             _end53203_
                             _enc53204_)))
                        _g57885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g57885_))))))
    (define string-empty?
      (lambda (_str53181_)
        (if (let () (declare (not safe)) (string? _str53181_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _str53181_)))
        (let () (declare (not safe)) (__string-empty? _str53181_))))
    (define __string-empty?
      (lambda (_str53178_)
        (let ()
          (let ((__tmp57886
                 (let () (declare (not safe)) (##string-length _str53178_))))
            (declare (not safe))
            (##fxzero? __tmp57886)))))
    (define string-index__%
      (lambda (_str53162_ _char53163_ _start53164_)
        (if (let () (declare (not safe)) (string? _str53162_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _str53162_)))
        (if (let () (declare (not safe)) (char? _char53163_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'char::t
                     _char53163_)))
        (if (let () (declare (not safe)) (__nonnegative-fixnum? _start53164_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'nonnegative-fixnum?
                     _start53164_)))
        (let ()
          (declare (not safe))
          (__string-index__% _str53162_ _char53163_ _start53164_))))
    (define string-index__0
      (lambda (_str53169_ _char53170_)
        (let ((_start53172_ '0))
          (declare (not safe))
          (string-index__% _str53169_ _char53170_ _start53172_))))
    (define string-index
      (lambda _g57888_
        (let ((_g57887_ (let () (declare (not safe)) (##length _g57888_))))
          (cond ((let () (declare (not safe)) (##fx= _g57887_ 2))
                 (apply (lambda (_str53169_ _char53170_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str53169_ _char53170_)))
                        _g57888_))
                ((let () (declare (not safe)) (##fx= _g57887_ 3))
                 (apply (lambda (_str53174_ _char53175_ _start53176_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str53174_
                             _char53175_
                             _start53176_)))
                        _g57888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g57888_))))))
    (define __string-index__%
      (lambda (_str53137_ _char53138_ _start53139_)
        (let ()
          (let ((_len53142_
                 (let () (declare (not safe)) (##string-length _str53137_))))
            (let _lp53144_ ((_k53146_ _start53139_))
              (let ()
                (if (let () (declare (not safe)) (##fx< _k53146_ _len53142_))
                    (if (eq? _char53138_
                             (let ()
                               (declare (not safe))
                               (##string-ref _str53137_ _k53146_)))
                        _k53146_
                        (let ((__tmp57889
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _k53146_ '1))))
                          (declare (not safe))
                          (_lp53144_ __tmp57889)))
                    '#f)))))))
    (define __string-index__0
      (lambda (_str53152_ _char53153_)
        (let ((_start53155_ '0))
          (declare (not safe))
          (__string-index__% _str53152_ _char53153_ _start53155_))))
    (define __string-index
      (lambda _g57891_
        (let ((_g57890_ (let () (declare (not safe)) (##length _g57891_))))
          (cond ((let () (declare (not safe)) (##fx= _g57890_ 2))
                 (apply (lambda (_str53152_ _char53153_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _str53152_ _char53153_)))
                        _g57891_))
                ((let () (declare (not safe)) (##fx= _g57890_ 3))
                 (apply (lambda (_str53157_ _char53158_ _start53159_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _str53157_
                             _char53158_
                             _start53159_)))
                        _g57891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g57891_))))))
    (define string-rindex__%
      (lambda (_str53120_ _char53121_ _start53122_)
        (if (let () (declare (not safe)) (string? _str53120_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _str53120_)))
        (if (let () (declare (not safe)) (char? _char53121_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'char::t
                     _char53121_)))
        (let ()
          (declare (not safe))
          (__string-rindex__% _str53120_ _char53121_ _start53122_))))
    (define string-rindex__0
      (lambda (_str53127_ _char53128_)
        (let ((_start53130_ '#f))
          (declare (not safe))
          (string-rindex__% _str53127_ _char53128_ _start53130_))))
    (define string-rindex
      (lambda _g57893_
        (let ((_g57892_ (let () (declare (not safe)) (##length _g57893_))))
          (cond ((let () (declare (not safe)) (##fx= _g57892_ 2))
                 (apply (lambda (_str53127_ _char53128_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str53127_ _char53128_)))
                        _g57893_))
                ((let () (declare (not safe)) (##fx= _g57892_ 3))
                 (apply (lambda (_str53132_ _char53133_ _start53134_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str53132_
                             _char53133_
                             _start53134_)))
                        _g57893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g57893_))))))
    (define __string-rindex__%
      (lambda (_str53092_ _char53093_ _start53094_)
        (let ()
          (let* ((_len53097_
                  (let () (declare (not safe)) (##string-length _str53092_)))
                 (_start53099_
                  (if (let () (declare (not safe)) (fixnum? _start53094_))
                      _start53094_
                      (let () (declare (not safe)) (##fx- _len53097_ '1)))))
            (let _lp53102_ ((_k53104_ _start53099_))
              (let ()
                (if (let () (declare (not safe)) (##fx>= _k53104_ '0))
                    (if (eq? _char53093_
                             (let ()
                               (declare (not safe))
                               (##string-ref _str53092_ _k53104_)))
                        _k53104_
                        (let ((__tmp57894
                               (let ()
                                 (declare (not safe))
                                 (##fx- _k53104_ '1))))
                          (declare (not safe))
                          (_lp53102_ __tmp57894)))
                    '#f)))))))
    (define __string-rindex__0
      (lambda (_str53110_ _char53111_)
        (let ((_start53113_ '#f))
          (declare (not safe))
          (__string-rindex__% _str53110_ _char53111_ _start53113_))))
    (define __string-rindex
      (lambda _g57896_
        (let ((_g57895_ (let () (declare (not safe)) (##length _g57896_))))
          (cond ((let () (declare (not safe)) (##fx= _g57895_ 2))
                 (apply (lambda (_str53110_ _char53111_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _str53110_ _char53111_)))
                        _g57896_))
                ((let () (declare (not safe)) (##fx= _g57895_ 3))
                 (apply (lambda (_str53115_ _char53116_ _start53117_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _str53115_
                             _char53116_
                             _start53117_)))
                        _g57896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g57896_))))))
    (define string-split
      (lambda (_str53088_ _char53089_)
        (if (let () (declare (not safe)) (string? _str53088_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _str53088_)))
        (if (let () (declare (not safe)) (char? _char53089_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'char::t
                     _char53089_)))
        (let () (declare (not safe)) (__string-split _str53088_ _char53089_))))
    (define __string-split
      (lambda (_str53069_ _char53070_)
        (let ()
          (let ((_len53073_
                 (let () (declare (not safe)) (##string-length _str53069_))))
            (let _lp53075_ ((_start53077_ '0) (_r53078_ '()))
              (let ()
                (let ((_$e53081_
                       (let ()
                         (declare (not safe))
                         (string-index__%
                          _str53069_
                          _char53070_
                          _start53077_))))
                  (if _$e53081_
                      ((lambda (_end53084_)
                         (let ((_end53086_ _end53084_))
                           (let ((__tmp57898
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _end53086_ '1)))
                                 (__tmp57897
                                  (cons (let ()
                                          (declare (not safe))
                                          (##substring
                                           _str53069_
                                           _start53077_
                                           _end53086_))
                                        _r53078_)))
                             (declare (not safe))
                             (_lp53075_ __tmp57898 __tmp57897))))
                       _$e53081_)
                      (if (let ()
                            (declare (not safe))
                            (##fx< _start53077_ _len53073_))
                          (let ((__tmp57899
                                 (list (let ()
                                         (declare (not safe))
                                         (##substring
                                          _str53069_
                                          _start53077_
                                          _len53073_)))))
                            (declare (not safe))
                            (__foldl1 cons __tmp57899 _r53078_))
                          (reverse! _r53078_))))))))))
    (define string-join
      (lambda (_strs53066_ _join53067_)
        (let () (declare (not safe)) (__string-join _strs53066_ _join53067_))))
    (define __string-join
      (lambda (_strs52965_ _join52966_)
        (let ()
          (letrec ((_join-length52969_
                    (lambda (_strs53022_ _jlen53023_)
                      (let _lp53025_ ((_rest53027_ _strs53022_)
                                      (_len53028_ '0))
                        (let ()
                          (let* ((_rest5303053038_ _rest53027_)
                                 (_else5303253046_ (lambda () '0))
                                 (_K5303453054_
                                  (lambda (_rest53049_ _hd53050_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _hd53050_))
                                        (let ((_hd53052_ _hd53050_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _rest53049_))
                                              (let ((__tmp57900
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _hd53052_))
                                                          _jlen53023_
                                                          _len53028_)))
                                                (declare (not safe))
                                                (_lp53025_
                                                 _rest53049_
                                                 __tmp57900))
                                              (let ((__tmp57901
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _hd53052_))))
                                                (declare (not safe))
                                                (##fx+ __tmp57901
                                                       _len53028_))))
                                        (let ()
                                          (declare (not safe))
                                          (error '"expected string"
                                                 _hd53050_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest5303053038_))
                                (let ((_hd5303553057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest5303053038_)))
                                      (_tl5303653059_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest5303053038_))))
                                  (let* ((_hd53062_ _hd5303553057_)
                                         (_rest53064_ _tl5303653059_))
                                    (declare (not safe))
                                    (_K5303453054_ _rest53064_ _hd53062_)))
                                (let ()
                                  (declare (not safe))
                                  (_else5303253046_)))))))))
            (let* ((_join52971_
                    (if (let () (declare (not safe)) (char? _join52966_))
                        (let () (declare (not safe)) (##string _join52966_))
                        (if (let () (declare (not safe)) (string? _join52966_))
                            _join52966_
                            (let ()
                              (declare (not safe))
                              (error '"expected string or char"
                                     _join52966_)))))
                   (_jlen52973_
                    (let ()
                      (declare (not safe))
                      (##string-length _join52971_)))
                   (_olen52975_
                    (let ()
                      (declare (not safe))
                      (_join-length52969_ _strs52965_ _jlen52973_)))
                   (_ostr52977_
                    (let () (declare (not safe)) (##make-string _olen52975_))))
              (let _lp52980_ ((_rest52982_ _strs52965_) (_k52983_ '0))
                (let ()
                  (let* ((_rest5298552993_ _rest52982_)
                         (_else5298753001_ (lambda () '""))
                         (_K5298953010_
                          (lambda (_rest53004_ _hd53005_)
                            (let ()
                              (let ((_hdlen53008_
                                     (let ()
                                       (declare (not safe))
                                       (##string-length _hd53005_))))
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _rest53004_))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (##substring-move!
                                         _hd53005_
                                         '0
                                         _hdlen53008_
                                         _ostr52977_
                                         _k52983_))
                                      (let ((__tmp57902
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _k52983_ _hdlen53008_))))
                                        (declare (not safe))
                                        (##substring-move!
                                         _join52971_
                                         '0
                                         _jlen52973_
                                         _ostr52977_
                                         __tmp57902))
                                      (let ((__tmp57903
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _k52983_
                                                      _hdlen53008_
                                                      _jlen52973_))))
                                        (declare (not safe))
                                        (_lp52980_ _rest53004_ __tmp57903)))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (##substring-move!
                                         _hd53005_
                                         '0
                                         _hdlen53008_
                                         _ostr52977_
                                         _k52983_))
                                      _ostr52977_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest5298552993_))
                        (let ((_hd5299053013_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest5298552993_)))
                              (_tl5299153015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest5298552993_))))
                          (let* ((_hd53018_ _hd5299053013_)
                                 (_rest53020_ _tl5299153015_))
                            (declare (not safe))
                            (_K5298953010_ _rest53020_ _hd53018_)))
                        (let ()
                          (declare (not safe))
                          (_else5298753001_)))))))))))
    (define read-u8vector
      (lambda (_bytes52962_ _port52963_)
        (if (let () (declare (not safe)) (u8vector? _bytes52962_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'u8vector::t
                     _bytes52962_)))
        (if (input-port? _port52963_)
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'input-port?
                     _port52963_)))
        (let ()
          (declare (not safe))
          (__read-u8vector _bytes52962_ _port52963_))))
    (define __read-u8vector
      (lambda (_bytes52958_ _port52959_)
        (let ()
          (let ((__tmp57904 (u8vector-length _bytes52958_)))
            (declare (not safe))
            (##read-subu8vector _bytes52958_ '0 __tmp57904 _port52959_)))))
    (define write-u8vector
      (lambda (_bytes52955_ _port52956_)
        (if (let () (declare (not safe)) (u8vector? _bytes52955_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'u8vector::t
                     _bytes52955_)))
        (if (output-port? _port52956_)
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'output-port?
                     _port52956_)))
        (let ()
          (declare (not safe))
          (__write-u8vector _bytes52955_ _port52956_))))
    (define __write-u8vector
      (lambda (_bytes52951_ _port52952_)
        (let ()
          (let ((__tmp57905 (u8vector-length _bytes52951_)))
            (declare (not safe))
            (##write-subu8vector _bytes52951_ '0 __tmp57905 _port52952_)))))
    (define read-string
      (lambda (_str52948_ _port52949_)
        (if (let () (declare (not safe)) (string? _str52948_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _str52948_)))
        (if (input-port? _port52949_)
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'input-port?
                     _port52949_)))
        (let () (declare (not safe)) (__read-string _str52948_ _port52949_))))
    (define __read-string
      (lambda (_str52944_ _port52945_)
        (let ()
          (let ((__tmp57906
                 (let () (declare (not safe)) (##string-length _str52944_))))
            (declare (not safe))
            (##read-substring _str52944_ '0 __tmp57906 _port52945_)))))
    (define write-string
      (lambda (_str52941_ _port52942_)
        (if (let () (declare (not safe)) (string? _str52941_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _str52941_)))
        (if (output-port? _port52942_)
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'output-port?
                     _port52942_)))
        (let () (declare (not safe)) (__write-string _str52941_ _port52942_))))
    (define __write-string
      (lambda (_str52937_ _port52938_)
        (let ()
          (let ((__tmp57907
                 (let () (declare (not safe)) (##string-length _str52937_))))
            (declare (not safe))
            (##write-substring _str52937_ '0 __tmp57907 _port52938_)))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag52906_
               _dbg-exprs52907_
               _dbg-thunks52908_
               _expr52909_
               _thunk52910_)
        (letrec ((_o52912_ (current-output-port))
                 (_e52913_ (current-error-port))
                 (_p52914_ (DBG-printer))
                 (_f52915_
                  (lambda () (force-output _o52912_) (force-output _e52913_)))
                 (_d52916_ (lambda (_x52923_) (display _x52923_ _e52913_)))
                 (_w52917_ (lambda (_x52925_) (_p52914_ _x52925_ _e52913_)))
                 (_n52918_ (lambda () (newline _e52913_)))
                 (_v52919_
                  (lambda (_l52928_)
                    (for-each
                     (lambda (_x52930_)
                       (let () (declare (not safe)) (_d52916_ '" "))
                       (let () (declare (not safe)) (_w52917_ _x52930_)))
                     _l52928_)
                    (let () (declare (not safe)) (_n52918_))))
                 (_x52920_
                  (lambda (_expr52932_ _thunk52933_)
                    (let () (declare (not safe)) (_f52915_))
                    (let () (declare (not safe)) (_d52916_ '"  "))
                    (let () (declare (not safe)) (_w52917_ _expr52932_))
                    (let () (declare (not safe)) (_d52916_ '" =>"))
                    (call-with-values
                     _thunk52933_
                     (lambda _x52935_
                       (let () (declare (not safe)) (_v52919_ _x52935_))
                       (let () (declare (not safe)) (_f52915_))
                       (apply values _x52935_))))))
          (if _tag52906_
              (begin
                (if (let () (declare (not safe)) (eq? _tag52906_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f52915_))
                      (let () (declare (not safe)) (_d52916_ _tag52906_))
                      (let () (declare (not safe)) (_n52918_))))
                (for-each _x52920_ _dbg-exprs52907_ _dbg-thunks52908_)
                (if _thunk52910_
                    (let ()
                      (declare (not safe))
                      (_x52920_ _expr52909_ _thunk52910_))
                    '#!void))
              (if _thunk52910_ (_thunk52910_) '#!void)))))))
