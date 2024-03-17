(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx160407_)
      (let* ((_g160411160429_
              (lambda (_g160412160425_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160412160425_))))
             (_g160410160484_
              (lambda (_g160412160433_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160412160433_))
                    (let ((_e160417160436_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160412160433_))))
                      (let ((_hd160416160440_
                             (let ()
                               (declare (not safe))
                               (##car _e160417160436_)))
                            (_tl160415160443_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160417160436_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160415160443_))
                            (let ((_e160420160446_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160415160443_))))
                              (let ((_hd160419160450_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160420160446_)))
                                    (_tl160418160453_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160420160446_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160418160453_))
                                    (let ((_e160423160456_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160418160453_))))
                                      (let ((_hd160422160460_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160423160456_)))
                                            (_tl160421160463_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160423160456_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160421160463_))
                                            ((lambda (_L160466_ _L160468_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L160468_))
                                                   (let ((__tmp163966
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp163961
                                                          (let ((__tmp163963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp163965
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp163964
                                (let ()
                                  (declare (not safe))
                                  (cons _L160468_ '()))))
                           (declare (not safe))
                           (cons __tmp163965 __tmp163964)))
                        (__tmp163962
                         (let () (declare (not safe)) (cons _L160466_ '()))))
                    (declare (not safe))
                    (cons __tmp163963 __tmp163962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp163966
                                                           __tmp163961))
                                                   (_g160411160429_
                                                    _g160412160433_)))
                                             _hd160422160460_
                                             _hd160419160450_)
                                            (_g160411160429_
                                             _g160412160433_))))
                                    (_g160411160429_ _g160412160433_))))
                            (_g160411160429_ _g160412160433_))))
                    (_g160411160429_ _g160412160433_)))))
        (_g160410160484_ _$stx160407_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx160488_)
      (let* ((_g160492160521_
              (lambda (_g160493160517_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160493160517_))))
             (_g160491160621_
              (lambda (_g160493160525_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160493160525_))
                    (let ((_e160498160528_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160493160525_))))
                      (let ((_hd160497160532_
                             (let ()
                               (declare (not safe))
                               (##car _e160498160528_)))
                            (_tl160496160535_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160498160528_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160496160535_))
                            (let ((_g163967_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160496160535_
                                      '0))))
                              (begin
                                (let ((_g163968_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163967_)
                                             (##vector-length _g163967_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163968_ 2)))
                                      (error "Context expects 2 values"
                                             _g163968_)))
                                (let ((_target160499160538_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163967_ 0)))
                                      (_tl160501160541_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163967_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160501160541_))
                                      (letrec ((_loop160502160544_
                                                (lambda (_hd160500160548_
                                                         _type160506160551_
                                                         _symbol160507160553_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160500160548_))
                                                      (let ((_e160503160556_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160500160548_))))
                (let ((_lp-hd160504160560_
                       (let () (declare (not safe)) (##car _e160503160556_)))
                      (_lp-tl160505160563_
                       (let () (declare (not safe)) (##cdr _e160503160556_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160504160560_))
                      (let ((_e160512160566_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160504160560_))))
                        (let ((_hd160511160570_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160512160566_)))
                              (_tl160510160573_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160512160566_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160510160573_))
                              (let ((_e160515160576_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160510160573_))))
                                (let ((_hd160514160580_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160515160576_)))
                                      (_tl160513160583_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160515160576_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160513160583_))
                                      (_loop160502160544_
                                       _lp-tl160505160563_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160514160580_
                                               _type160506160551_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160511160570_
                                               _symbol160507160553_)))
                                      (_g160492160521_ _g160493160525_))))
                              (_g160492160521_ _g160493160525_))))
                      (_g160492160521_ _g160493160525_))))
              (let ((_type160508160586_ (reverse _type160506160551_))
                    (_symbol160509160589_ (reverse _symbol160507160553_)))
                ((lambda (_L160592_ _L160594_)
                   (let ((__tmp163975
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163969
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160592_
                               _L160594_))
                            (let ((__tmp163970
                                   (lambda (_g160609160613_
                                            _g160610160616_
                                            _g160611160618_)
                                     (let ((__tmp163971
                                            (let ((__tmp163974
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp163972
                                                   (let ((__tmp163973
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g160609160613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160610160616_
                                                           __tmp163973))))
                                              (declare (not safe))
                                              (cons __tmp163974 __tmp163972))))
                                       (declare (not safe))
                                       (cons __tmp163971 _g160611160618_)))))
                              (declare (not safe))
                              (foldr2 __tmp163970 '() _L160592_ _L160594_)))))
                     (declare (not safe))
                     (cons __tmp163975 __tmp163969)))
                 _type160508160586_
                 _symbol160509160589_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160502160544_
                                         _target160499160538_
                                         '()
                                         '()))
                                      (_g160492160521_ _g160493160525_)))))
                            (_g160492160521_ _g160493160525_))))
                    (_g160492160521_ _g160493160525_)))))
        (_g160491160621_ _$stx160488_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx160626_)
      (let* ((___stx163526163527_ _$stx160626_)
             (_g160631160673_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163526163527_)))))
        (let ((___kont163529163530_
               (lambda (_L160801_ _L160803_ _L160804_ _L160805_)
                 (let ((__tmp163989
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp163976
                        (let ((__tmp163986
                               (let ((__tmp163988
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163987
                                      (let ()
                                        (declare (not safe))
                                        (cons _L160805_ '()))))
                                 (declare (not safe))
                                 (cons __tmp163988 __tmp163987)))
                              (__tmp163977
                               (let ((__tmp163983
                                      (let ((__tmp163985
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163984
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160804_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163985 __tmp163984)))
                                     (__tmp163978
                                      (let ((__tmp163980
                                             (let ((__tmp163982
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163981
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160803_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163982 __tmp163981)))
                                            (__tmp163979
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160801_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163980 __tmp163979))))
                                 (declare (not safe))
                                 (cons __tmp163983 __tmp163978))))
                          (declare (not safe))
                          (cons __tmp163986 __tmp163977))))
                   (declare (not safe))
                   (cons __tmp163989 __tmp163976))))
              (___kont163531163532_
               (lambda (_L160720_ _L160722_ _L160723_ _L160724_)
                 (let ((__tmp163990
                        (let ((__tmp163991
                               (let ((__tmp163992
                                      (let ((__tmp163993
                                             (let ((__tmp163994
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp163994 '()))))
                                        (declare (not safe))
                                        (cons _L160720_ __tmp163993))))
                                 (declare (not safe))
                                 (cons _L160722_ __tmp163992))))
                          (declare (not safe))
                          (cons _L160723_ __tmp163991))))
                   (declare (not safe))
                   (cons _L160724_ __tmp163990)))))
          (let ((___match163565163566_
                 (lambda (_e160639160751_
                          _hd160638160755_
                          _tl160637160758_
                          _e160642160761_
                          _hd160641160765_
                          _tl160640160768_
                          _e160645160771_
                          _hd160644160775_
                          _tl160643160778_
                          _e160648160781_
                          _hd160647160785_
                          _tl160646160788_
                          _e160651160791_
                          _hd160650160795_
                          _tl160649160798_)
                   (let ((_L160801_ _hd160650160795_)
                         (_L160803_ _hd160647160785_)
                         (_L160804_ _hd160644160775_)
                         (_L160805_ _hd160641160765_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L160805_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L160804_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L160803_)))
                         (___kont163529163530_
                          _L160801_
                          _L160803_
                          _L160804_
                          _L160805_)
                         (let () (declare (not safe)) (_g160631160673_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163526163527_))
                (let ((_e160639160751_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163526163527_))))
                  (let ((_tl160637160758_
                         (let () (declare (not safe)) (##cdr _e160639160751_)))
                        (_hd160638160755_
                         (let ()
                           (declare (not safe))
                           (##car _e160639160751_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160637160758_))
                        (let ((_e160642160761_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160637160758_))))
                          (let ((_tl160640160768_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160642160761_)))
                                (_hd160641160765_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160642160761_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160640160768_))
                                (let ((_e160645160771_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160640160768_))))
                                  (let ((_tl160643160778_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160645160771_)))
                                        (_hd160644160775_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160645160771_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl160643160778_))
                                        (let ((_e160648160781_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl160643160778_))))
                                          (let ((_tl160646160788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e160648160781_)))
                                                (_hd160647160785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e160648160781_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160646160788_))
                                                (let ((_e160651160791_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160646160788_))))
                                                  (let ((_tl160649160798_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160651160791_)))
                                                        (_hd160650160795_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160651160791_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160649160798_))
                                                        (___match163565163566_
                                                         _e160639160751_
                                                         _hd160638160755_
                                                         _tl160637160758_
                                                         _e160642160761_
                                                         _hd160641160765_
                                                         _tl160640160768_
                                                         _e160645160771_
                                                         _hd160644160775_
                                                         _tl160643160778_
                                                         _e160648160781_
                                                         _hd160647160785_
                                                         _tl160646160788_
                                                         _e160651160791_
                                                         _hd160650160795_
                                                         _tl160649160798_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160631160673_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160646160788_))
                                                    (___kont163531163532_
                                                     _hd160647160785_
                                                     _hd160644160775_
                                                     _hd160641160765_
                                                     _hd160638160755_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160631160673_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g160631160673_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g160631160673_)))))
                        (let () (declare (not safe)) (_g160631160673_)))))
                (let () (declare (not safe)) (_g160631160673_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx160830_)
      (let* ((_g160834160869_
              (lambda (_g160835160865_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160835160865_))))
             (_g160833160988_
              (lambda (_g160835160873_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160835160873_))
                    (let ((_e160841160876_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160835160873_))))
                      (let ((_hd160840160880_
                             (let ()
                               (declare (not safe))
                               (##car _e160841160876_)))
                            (_tl160839160883_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160841160876_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160839160883_))
                            (let ((_g163995_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160839160883_
                                      '0))))
                              (begin
                                (let ((_g163996_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163995_)
                                             (##vector-length _g163995_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163996_ 2)))
                                      (error "Context expects 2 values"
                                             _g163996_)))
                                (let ((_target160842160886_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163995_ 0)))
                                      (_tl160844160889_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163995_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160844160889_))
                                      (letrec ((_loop160845160892_
                                                (lambda (_hd160843160896_
                                                         _symbol160849160899_
                                                         _method160850160901_
                                                         _type-t160851160903_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160843160896_))
                                                      (let ((_e160846160906_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160843160896_))))
                (let ((_lp-hd160847160910_
                       (let () (declare (not safe)) (##car _e160846160906_)))
                      (_lp-tl160848160913_
                       (let () (declare (not safe)) (##cdr _e160846160906_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160847160910_))
                      (let ((_e160857160916_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160847160910_))))
                        (let ((_hd160856160920_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160857160916_)))
                              (_tl160855160923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160857160916_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160855160923_))
                              (let ((_e160860160926_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160855160923_))))
                                (let ((_hd160859160930_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160860160926_)))
                                      (_tl160858160933_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160860160926_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160858160933_))
                                      (let ((_e160863160936_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160858160933_))))
                                        (let ((_hd160862160940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160863160936_)))
                                              (_tl160861160943_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160863160936_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160861160943_))
                                              (_loop160845160892_
                                               _lp-tl160848160913_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160862160940_
                                                       _symbol160849160899_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160859160930_
                                                       _method160850160901_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160856160920_
                                                       _type-t160851160903_)))
                                              (_g160834160869_
                                               _g160835160873_))))
                                      (_g160834160869_ _g160835160873_))))
                              (_g160834160869_ _g160835160873_))))
                      (_g160834160869_ _g160835160873_))))
              (let ((_symbol160852160946_ (reverse _symbol160849160899_))
                    (_method160853160949_ (reverse _method160850160901_))
                    (_type-t160854160951_ (reverse _type-t160851160903_)))
                ((lambda (_L160954_ _L160956_ _L160957_)
                   (let ((__tmp164004
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163997
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160954_
                               _L160956_
                               _L160957_))
                            (let ((__tmp163998
                                   (lambda (_g160973160978_
                                            _g160974160981_
                                            _g160975160983_
                                            _g160976160985_)
                                     (let ((__tmp163999
                                            (let ((__tmp164003
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp164000
                                                   (let ((__tmp164001
                                                          (let ((__tmp164002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g160973160978_ '()))))
                    (declare (not safe))
                    (cons _g160974160981_ __tmp164002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160975160983_
                                                           __tmp164001))))
                                              (declare (not safe))
                                              (cons __tmp164003 __tmp164000))))
                                       (declare (not safe))
                                       (cons __tmp163999 _g160976160985_)))))
                              (declare (not safe))
                              (foldr* __tmp163998
                                      '()
                                      _L160954_
                                      _L160956_
                                      _L160957_)))))
                     (declare (not safe))
                     (cons __tmp164004 __tmp163997)))
                 _symbol160852160946_
                 _method160853160949_
                 _type-t160854160951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160845160892_
                                         _target160842160886_
                                         '()
                                         '()
                                         '()))
                                      (_g160834160869_ _g160835160873_)))))
                            (_g160834160869_ _g160835160873_))))
                    (_g160834160869_ _g160835160873_)))))
        (_g160833160988_ _$stx160830_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx160993_)
      (let* ((_g160997161030_
              (lambda (_g160998161026_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160998161026_))))
             (_g160996161144_
              (lambda (_g160998161034_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160998161034_))
                    (let ((_e161004161037_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160998161034_))))
                      (let ((_hd161003161041_
                             (let ()
                               (declare (not safe))
                               (##car _e161004161037_)))
                            (_tl161002161044_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161004161037_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161002161044_))
                            (let ((_e161007161047_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161002161044_))))
                              (let ((_hd161006161051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161007161047_)))
                                    (_tl161005161054_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161007161047_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161005161054_))
                                    (let ((_g164005_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161005161054_
                                              '0))))
                                      (begin
                                        (let ((_g164006_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g164005_)
                                                     (##vector-length
                                                      _g164005_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g164006_ 2)))
                                              (error "Context expects 2 values"
                                                     _g164006_)))
                                        (let ((_target161008161057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164005_ 0)))
                                              (_tl161010161060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164005_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161010161060_))
                                              (letrec ((_loop161011161063_
                                                        (lambda (_hd161009161067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol161015161070_
                         _method161016161072_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd161009161067_))
                      (let ((_e161012161075_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd161009161067_))))
                        (let ((_lp-hd161013161079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161012161075_)))
                              (_lp-tl161014161082_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161012161075_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd161013161079_))
                              (let ((_e161021161085_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd161013161079_))))
                                (let ((_hd161020161089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161021161085_)))
                                      (_tl161019161092_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161021161085_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161019161092_))
                                      (let ((_e161024161095_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161019161092_))))
                                        (let ((_hd161023161099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161024161095_)))
                                              (_tl161022161102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161024161095_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161022161102_))
                                              (_loop161011161063_
                                               _lp-tl161014161082_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161023161099_
                                                       _symbol161015161070_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161020161089_
                                                       _method161016161072_)))
                                              (_g160997161030_
                                               _g160998161034_))))
                                      (_g160997161030_ _g160998161034_))))
                              (_g160997161030_ _g160998161034_))))
                      (let ((_symbol161017161105_
                             (reverse _symbol161015161070_))
                            (_method161018161108_
                             (reverse _method161016161072_)))
                        ((lambda (_L161111_ _L161113_ _L161114_)
                           (let ((__tmp164014
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp164007
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L161111_
                                       _L161113_))
                                    (let ((__tmp164008
                                           (lambda (_g161132161136_
                                                    _g161133161139_
                                                    _g161134161141_)
                                             (let ((__tmp164009
                                                    (let ((__tmp164013
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp164010
                                                           (let ((__tmp164011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp164012
                                 (let ()
                                   (declare (not safe))
                                   (cons _g161132161136_ '()))))
                            (declare (not safe))
                            (cons _g161133161139_ __tmp164012))))
                     (declare (not safe))
                     (cons _L161114_ __tmp164011))))
              (declare (not safe))
              (cons __tmp164013 __tmp164010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp164009
                                                     _g161134161141_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp164008
                                              '()
                                              _L161111_
                                              _L161113_)))))
                             (declare (not safe))
                             (cons __tmp164014 __tmp164007)))
                         _symbol161017161105_
                         _method161018161108_
                         _hd161006161051_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop161011161063_
                                                 _target161008161057_
                                                 '()
                                                 '()))
                                              (_g160997161030_
                                               _g160998161034_)))))
                                    (_g160997161030_ _g160998161034_))))
                            (_g160997161030_ _g160998161034_))))
                    (_g160997161030_ _g160998161034_)))))
        (_g160996161144_ _$stx160993_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx161149_)
      (let* ((_g161153161167_
              (lambda (_g161154161163_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161154161163_))))
             (_g161152161208_
              (lambda (_g161154161171_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161154161171_))
                    (let ((_e161158161174_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161154161171_))))
                      (let ((_hd161157161178_
                             (let ()
                               (declare (not safe))
                               (##car _e161158161174_)))
                            (_tl161156161181_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161158161174_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161156161181_))
                            (let ((_e161161161184_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161156161181_))))
                              (let ((_hd161160161188_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161161161184_)))
                                    (_tl161159161191_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161161161184_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161159161191_))
                                    ((lambda (_L161194_)
                                       (let ((__tmp164019
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp164015
                                              (let ((__tmp164016
                                                     (let ((__tmp164018
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164017
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164018 __tmp164017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164016 '()))))
                                         (declare (not safe))
                                         (cons __tmp164019 __tmp164015)))
                                     _hd161160161188_)
                                    (_g161153161167_ _g161154161171_))))
                            (_g161153161167_ _g161154161171_))))
                    (_g161153161167_ _g161154161171_)))))
        (_g161152161208_ _$stx161149_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx161212_)
      (let* ((_g161216161270_
              (lambda (_g161217161266_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161217161266_))))
             (_g161215161451_
              (lambda (_g161217161274_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161217161274_))
                    (let ((_e161231161277_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161217161274_))))
                      (let ((_hd161230161281_
                             (let ()
                               (declare (not safe))
                               (##car _e161231161277_)))
                            (_tl161229161284_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161231161277_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161229161284_))
                            (let ((_e161234161287_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161229161284_))))
                              (let ((_hd161233161291_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161234161287_)))
                                    (_tl161232161294_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161234161287_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161232161294_))
                                    (let ((_e161237161297_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161232161294_))))
                                      (let ((_hd161236161301_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161237161297_)))
                                            (_tl161235161304_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161237161297_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161235161304_))
                                            (let ((_e161240161307_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161235161304_))))
                                              (let ((_hd161239161311_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161240161307_)))
                                                    (_tl161238161314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161240161307_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161238161314_))
                                                    (let ((_e161243161317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161238161314_))))
                                                      (let ((_hd161242161321_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161243161317_)))
                    (_tl161241161324_
                     (let () (declare (not safe)) (##cdr _e161243161317_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161241161324_))
                    (let ((_e161246161327_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161241161324_))))
                      (let ((_hd161245161331_
                             (let ()
                               (declare (not safe))
                               (##car _e161246161327_)))
                            (_tl161244161334_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161246161327_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161244161334_))
                            (let ((_e161249161337_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161244161334_))))
                              (let ((_hd161248161341_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161249161337_)))
                                    (_tl161247161344_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161249161337_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161247161344_))
                                    (let ((_e161252161347_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161247161344_))))
                                      (let ((_hd161251161351_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161252161347_)))
                                            (_tl161250161354_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161252161347_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161250161354_))
                                            (let ((_e161255161357_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161250161354_))))
                                              (let ((_hd161254161361_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161255161357_)))
                                                    (_tl161253161364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161255161357_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161253161364_))
                                                    (let ((_e161258161367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161253161364_))))
                                                      (let ((_hd161257161371_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161258161367_)))
                    (_tl161256161374_
                     (let () (declare (not safe)) (##cdr _e161258161367_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161256161374_))
                    (let ((_e161261161377_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161256161374_))))
                      (let ((_hd161260161381_
                             (let ()
                               (declare (not safe))
                               (##car _e161261161377_)))
                            (_tl161259161384_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161261161377_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161259161384_))
                            (let ((_e161264161387_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161259161384_))))
                              (let ((_hd161263161391_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161264161387_)))
                                    (_tl161262161394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161264161387_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161262161394_))
                                    ((lambda (_L161397_
                                              _L161399_
                                              _L161400_
                                              _L161401_
                                              _L161402_
                                              _L161403_
                                              _L161404_
                                              _L161405_
                                              _L161406_
                                              _L161407_
                                              _L161408_)
                                       (let ((__tmp164055
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp164020
                                              (let ((__tmp164052
                                                     (let ((__tmp164054
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164053
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164054 __tmp164053)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp164021
                                                     (let ((__tmp164049
                                                            (let ((__tmp164051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp164050
                           (let () (declare (not safe)) (cons _L161407_ '()))))
                      (declare (not safe))
                      (cons __tmp164051 __tmp164050)))
                   (__tmp164022
                    (let ((__tmp164046
                           (let ((__tmp164048
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp164047
                                  (let ()
                                    (declare (not safe))
                                    (cons _L161406_ '()))))
                             (declare (not safe))
                             (cons __tmp164048 __tmp164047)))
                          (__tmp164023
                           (let ((__tmp164043
                                  (let ((__tmp164045
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp164044
                                         (let ()
                                           (declare (not safe))
                                           (cons _L161405_ '()))))
                                    (declare (not safe))
                                    (cons __tmp164045 __tmp164044)))
                                 (__tmp164024
                                  (let ((__tmp164040
                                         (let ((__tmp164042
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp164041
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L161404_ '()))))
                                           (declare (not safe))
                                           (cons __tmp164042 __tmp164041)))
                                        (__tmp164025
                                         (let ((__tmp164037
                                                (let ((__tmp164039
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp164038
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L161403_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp164039
                                                        __tmp164038)))
                                               (__tmp164026
                                                (let ((__tmp164027
                                                       (let ((__tmp164028
                                                              (let ((__tmp164029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp164034
                                    (let ((__tmp164036
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164035
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161399_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164036 __tmp164035)))
                                   (__tmp164030
                                    (let ((__tmp164031
                                           (let ((__tmp164033
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp164032
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L161397_ '()))))
                                             (declare (not safe))
                                             (cons __tmp164033 __tmp164032))))
                                      (declare (not safe))
                                      (cons __tmp164031 '()))))
                               (declare (not safe))
                               (cons __tmp164034 __tmp164030))))
                        (declare (not safe))
                        (cons _L161400_ __tmp164029))))
                 (declare (not safe))
                 (cons _L161401_ __tmp164028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L161402_
                                                        __tmp164027))))
                                           (declare (not safe))
                                           (cons __tmp164037 __tmp164026))))
                                    (declare (not safe))
                                    (cons __tmp164040 __tmp164025))))
                             (declare (not safe))
                             (cons __tmp164043 __tmp164024))))
                      (declare (not safe))
                      (cons __tmp164046 __tmp164023))))
               (declare (not safe))
               (cons __tmp164049 __tmp164022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164052
                                                      __tmp164021))))
                                         (declare (not safe))
                                         (cons __tmp164055 __tmp164020)))
                                     _hd161263161391_
                                     _hd161260161381_
                                     _hd161257161371_
                                     _hd161254161361_
                                     _hd161251161351_
                                     _hd161248161341_
                                     _hd161245161331_
                                     _hd161242161321_
                                     _hd161239161311_
                                     _hd161236161301_
                                     _hd161233161291_)
                                    (_g161216161270_ _g161217161274_))))
                            (_g161216161270_ _g161217161274_))))
                    (_g161216161270_ _g161217161274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161216161270_
                                                     _g161217161274_))))
                                            (_g161216161270_
                                             _g161217161274_))))
                                    (_g161216161270_ _g161217161274_))))
                            (_g161216161270_ _g161217161274_))))
                    (_g161216161270_ _g161217161274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161216161270_
                                                     _g161217161274_))))
                                            (_g161216161270_
                                             _g161217161274_))))
                                    (_g161216161270_ _g161217161274_))))
                            (_g161216161270_ _g161217161274_))))
                    (_g161216161270_ _g161217161274_)))))
        (_g161215161451_ _$stx161212_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx161455_)
      (let* ((_g161459161473_
              (lambda (_g161460161469_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161460161469_))))
             (_g161458161514_
              (lambda (_g161460161477_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161460161477_))
                    (let ((_e161464161480_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161460161477_))))
                      (let ((_hd161463161484_
                             (let ()
                               (declare (not safe))
                               (##car _e161464161480_)))
                            (_tl161462161487_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161464161480_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161462161487_))
                            (let ((_e161467161490_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161462161487_))))
                              (let ((_hd161466161494_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161467161490_)))
                                    (_tl161465161497_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161467161490_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161465161497_))
                                    ((lambda (_L161500_)
                                       (let ((__tmp164060
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp164056
                                              (let ((__tmp164057
                                                     (let ((__tmp164059
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164058
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164059 __tmp164058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164057 '()))))
                                         (declare (not safe))
                                         (cons __tmp164060 __tmp164056)))
                                     _hd161466161494_)
                                    (_g161459161473_ _g161460161477_))))
                            (_g161459161473_ _g161460161477_))))
                    (_g161459161473_ _g161460161477_)))))
        (_g161458161514_ _$stx161455_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx161518_)
      (let* ((_g161522161536_
              (lambda (_g161523161532_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161523161532_))))
             (_g161521161577_
              (lambda (_g161523161540_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161523161540_))
                    (let ((_e161527161543_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161523161540_))))
                      (let ((_hd161526161547_
                             (let ()
                               (declare (not safe))
                               (##car _e161527161543_)))
                            (_tl161525161550_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161527161543_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161525161550_))
                            (let ((_e161530161553_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161525161550_))))
                              (let ((_hd161529161557_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161530161553_)))
                                    (_tl161528161560_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161530161553_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161528161560_))
                                    ((lambda (_L161563_)
                                       (let ((__tmp164065
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp164061
                                              (let ((__tmp164062
                                                     (let ((__tmp164064
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164063
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164064 __tmp164063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164062 '()))))
                                         (declare (not safe))
                                         (cons __tmp164065 __tmp164061)))
                                     _hd161529161557_)
                                    (_g161522161536_ _g161523161540_))))
                            (_g161522161536_ _g161523161540_))))
                    (_g161522161536_ _g161523161540_)))))
        (_g161521161577_ _$stx161518_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx161581_)
      (let* ((_g161585161607_
              (lambda (_g161586161603_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161586161603_))))
             (_g161584161676_
              (lambda (_g161586161611_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161586161611_))
                    (let ((_e161592161614_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161586161611_))))
                      (let ((_hd161591161618_
                             (let ()
                               (declare (not safe))
                               (##car _e161592161614_)))
                            (_tl161590161621_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161592161614_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161590161621_))
                            (let ((_e161595161624_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161590161621_))))
                              (let ((_hd161594161628_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161595161624_)))
                                    (_tl161593161631_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161595161624_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161593161631_))
                                    (let ((_e161598161634_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161593161631_))))
                                      (let ((_hd161597161638_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161598161634_)))
                                            (_tl161596161641_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161598161634_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161596161641_))
                                            (let ((_e161601161644_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161596161641_))))
                                              (let ((_hd161600161648_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161601161644_)))
                                                    (_tl161599161651_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161601161644_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161599161651_))
                                                    ((lambda (_L161654_
                                                              _L161656_
                                                              _L161657_)
                                                       (let ((__tmp164075
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp164066
                      (let ((__tmp164072
                             (let ((__tmp164074
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164073
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161657_ '()))))
                               (declare (not safe))
                               (cons __tmp164074 __tmp164073)))
                            (__tmp164067
                             (let ((__tmp164069
                                    (let ((__tmp164071
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164070
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161656_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164071 __tmp164070)))
                                   (__tmp164068
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161654_ '()))))
                               (declare (not safe))
                               (cons __tmp164069 __tmp164068))))
                        (declare (not safe))
                        (cons __tmp164072 __tmp164067))))
                 (declare (not safe))
                 (cons __tmp164075 __tmp164066)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161600161648_
                                                     _hd161597161638_
                                                     _hd161594161628_)
                                                    (_g161585161607_
                                                     _g161586161611_))))
                                            (_g161585161607_
                                             _g161586161611_))))
                                    (_g161585161607_ _g161586161611_))))
                            (_g161585161607_ _g161586161611_))))
                    (_g161585161607_ _g161586161611_)))))
        (_g161584161676_ _$stx161581_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx161680_)
      (let* ((_g161684161706_
              (lambda (_g161685161702_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161685161702_))))
             (_g161683161775_
              (lambda (_g161685161710_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161685161710_))
                    (let ((_e161691161713_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161685161710_))))
                      (let ((_hd161690161717_
                             (let ()
                               (declare (not safe))
                               (##car _e161691161713_)))
                            (_tl161689161720_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161691161713_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161689161720_))
                            (let ((_e161694161723_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161689161720_))))
                              (let ((_hd161693161727_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161694161723_)))
                                    (_tl161692161730_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161694161723_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161692161730_))
                                    (let ((_e161697161733_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161692161730_))))
                                      (let ((_hd161696161737_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161697161733_)))
                                            (_tl161695161740_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161697161733_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161695161740_))
                                            (let ((_e161700161743_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161695161740_))))
                                              (let ((_hd161699161747_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161700161743_)))
                                                    (_tl161698161750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161700161743_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161698161750_))
                                                    ((lambda (_L161753_
                                                              _L161755_
                                                              _L161756_)
                                                       (let ((__tmp164085
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp164076
                      (let ((__tmp164082
                             (let ((__tmp164084
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164083
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161756_ '()))))
                               (declare (not safe))
                               (cons __tmp164084 __tmp164083)))
                            (__tmp164077
                             (let ((__tmp164079
                                    (let ((__tmp164081
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164080
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161755_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164081 __tmp164080)))
                                   (__tmp164078
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161753_ '()))))
                               (declare (not safe))
                               (cons __tmp164079 __tmp164078))))
                        (declare (not safe))
                        (cons __tmp164082 __tmp164077))))
                 (declare (not safe))
                 (cons __tmp164085 __tmp164076)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161699161747_
                                                     _hd161696161737_
                                                     _hd161693161727_)
                                                    (_g161684161706_
                                                     _g161685161710_))))
                                            (_g161684161706_
                                             _g161685161710_))))
                                    (_g161684161706_ _g161685161710_))))
                            (_g161684161706_ _g161685161710_))))
                    (_g161684161706_ _g161685161710_)))))
        (_g161683161775_ _$stx161680_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx161779_)
      (let* ((___stx163594163595_ _$stx161779_)
             (_g161787161855_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163594163595_)))))
        (let ((___kont163597163598_
               (lambda (_L162133_ _L162135_)
                 (let ((__tmp164106
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164086
                        (let ((__tmp164102
                               (let ((__tmp164105
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164103
                                      (let ((__tmp164104
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164104 '()))))
                                 (declare (not safe))
                                 (cons __tmp164105 __tmp164103)))
                              (__tmp164087
                               (let ((__tmp164099
                                      (let ((__tmp164101
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164100
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162135_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164101 __tmp164100)))
                                     (__tmp164088
                                      (let ((__tmp164089
                                             (let ((__tmp164090
                                                    (let ((__tmp164091
                                                           (let ((__tmp164098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp164092
                          (let ((__tmp164093
                                 (let ((__tmp164097
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp164094
                                        (let ((__tmp164095
                                               (let ((__tmp164096
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L162133_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp164096))))
                                          (declare (not safe))
                                          (cons _L162135_ __tmp164095))))
                                   (declare (not safe))
                                   (cons __tmp164097 __tmp164094))))
                            (declare (not safe))
                            (cons __tmp164093 '()))))
                     (declare (not safe))
                     (cons __tmp164098 __tmp164092))))
              (declare (not safe))
              (cons __tmp164091 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L162133_ __tmp164090))))
                                        (declare (not safe))
                                        (cons '#f __tmp164089))))
                                 (declare (not safe))
                                 (cons __tmp164099 __tmp164088))))
                          (declare (not safe))
                          (cons __tmp164102 __tmp164087))))
                   (declare (not safe))
                   (cons __tmp164106 __tmp164086))))
              (___kont163599163600_
               (lambda (_L162064_ _L162066_)
                 (let ((__tmp164107
                        (let ((__tmp164108
                               (let ((__tmp164109
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L162064_ __tmp164109))))
                          (declare (not safe))
                          (cons 'primitive: __tmp164108))))
                   (declare (not safe))
                   (cons _L162066_ __tmp164107))))
              (___kont163601163602_
               (lambda (_L162003_ _L162005_)
                 (let ((__tmp164123
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp164110
                        (let ((__tmp164119
                               (let ((__tmp164122
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164120
                                      (let ((__tmp164121
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164121 '()))))
                                 (declare (not safe))
                                 (cons __tmp164122 __tmp164120)))
                              (__tmp164111
                               (let ((__tmp164116
                                      (let ((__tmp164118
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164117
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162005_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164118 __tmp164117)))
                                     (__tmp164112
                                      (let ((__tmp164113
                                             (let ((__tmp164115
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164114
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162003_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164115
                                                     __tmp164114))))
                                        (declare (not safe))
                                        (cons __tmp164113 '()))))
                                 (declare (not safe))
                                 (cons __tmp164116 __tmp164112))))
                          (declare (not safe))
                          (cons __tmp164119 __tmp164111))))
                   (declare (not safe))
                   (cons __tmp164123 __tmp164110))))
              (___kont163603163604_
               (lambda (_L161935_ _L161937_)
                 (let ((__tmp164137
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164124
                        (let ((__tmp164133
                               (let ((__tmp164136
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164134
                                      (let ((__tmp164135
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164135 '()))))
                                 (declare (not safe))
                                 (cons __tmp164136 __tmp164134)))
                              (__tmp164125
                               (let ((__tmp164130
                                      (let ((__tmp164132
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164131
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161937_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164132 __tmp164131)))
                                     (__tmp164126
                                      (let ((__tmp164127
                                             (let ((__tmp164129
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164128
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161935_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164129
                                                     __tmp164128))))
                                        (declare (not safe))
                                        (cons __tmp164127 '()))))
                                 (declare (not safe))
                                 (cons __tmp164130 __tmp164126))))
                          (declare (not safe))
                          (cons __tmp164133 __tmp164125))))
                   (declare (not safe))
                   (cons __tmp164137 __tmp164124))))
              (___kont163605163606_
               (lambda (_L161882_ _L161884_)
                 (let ((__tmp164138
                        (let ((__tmp164139
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L161882_ __tmp164139))))
                   (declare (not safe))
                   (cons _L161884_ __tmp164138)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx163594163595_))
              (let ((_e161793162089_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx163594163595_))))
                (let ((_tl161791162096_
                       (let () (declare (not safe)) (##cdr _e161793162089_)))
                      (_hd161792162093_
                       (let () (declare (not safe)) (##car _e161793162089_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl161791162096_))
                      (let ((_e161796162099_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl161791162096_))))
                        (let ((_tl161794162106_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161796162099_)))
                              (_hd161795162103_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161796162099_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161794162106_))
                              (let ((_e161799162109_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161794162106_))))
                                (let ((_tl161797162116_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161799162109_)))
                                      (_hd161798162113_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161799162109_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd161798162113_))
                                      (let ((_e161800162119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd161798162113_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e161800162119_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl161797162116_))
                                                (let ((_e161803162123_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl161797162116_))))
                                                  (let ((_tl161801162130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e161803162123_)))
                                                        (_hd161802162127_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e161803162123_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161801162130_))
                                                        (___kont163597163598_
                                                         _hd161802162127_
                                                         _hd161795162103_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd161795162103_))
                                                            (let ((_e161812162050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd161795162103_))))
                      (declare (not safe))
                      (_g161787161855_))
                    (let () (declare (not safe)) (_g161787161855_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd161795162103_))
                                                    (let ((_e161812162050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd161795162103_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e161812162050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161797162116_))
                      (___kont163599163600_ _hd161798162113_ _hd161792162093_)
                      (let () (declare (not safe)) (_g161787161855_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161797162116_))
                      (___kont163603163604_ _hd161798162113_ _hd161795162103_)
                      (let () (declare (not safe)) (_g161787161855_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161797162116_))
                                                        (___kont163603163604_
                                                         _hd161798162113_
                                                         _hd161795162103_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161787161855_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd161795162103_))
                                                (let ((_e161812162050_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd161795162103_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e161812162050_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161797162116_))
                                                          (___kont163599163600_
                                                           _hd161798162113_
                                                           _hd161792162093_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl161797162116_))
                      (let ((_e161830161993_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl161797162116_))))
                        (let ((_tl161828162000_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161830161993_)))
                              (_hd161829161997_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161830161993_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161828162000_))
                              (___kont163601163602_
                               _hd161829161997_
                               _hd161798162113_)
                              (let ()
                                (declare (not safe))
                                (_g161787161855_)))))
                      (let () (declare (not safe)) (_g161787161855_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161797162116_))
                  (___kont163603163604_ _hd161798162113_ _hd161795162103_)
                  (let () (declare (not safe)) (_g161787161855_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161797162116_))
                                                    (___kont163603163604_
                                                     _hd161798162113_
                                                     _hd161795162103_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161787161855_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd161795162103_))
                                          (let ((_e161812162050_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd161795162103_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e161812162050_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161797162116_))
                                                    (___kont163599163600_
                                                     _hd161798162113_
                                                     _hd161792162093_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl161797162116_))
                                                        (let ((_e161830161993_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl161797162116_))))
                  (let ((_tl161828162000_
                         (let () (declare (not safe)) (##cdr _e161830161993_)))
                        (_hd161829161997_
                         (let ()
                           (declare (not safe))
                           (##car _e161830161993_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl161828162000_))
                        (___kont163601163602_
                         _hd161829161997_
                         _hd161798162113_)
                        (let () (declare (not safe)) (_g161787161855_)))))
                (let () (declare (not safe)) (_g161787161855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161797162116_))
                                                    (___kont163603163604_
                                                     _hd161798162113_
                                                     _hd161795162103_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161787161855_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161797162116_))
                                              (___kont163603163604_
                                               _hd161798162113_
                                               _hd161795162103_)
                                              (let ()
                                                (declare (not safe))
                                                (_g161787161855_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd161795162103_))
                                  (let ((_e161812162050_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd161795162103_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161794162106_))
                                        (___kont163605163606_
                                         _hd161795162103_
                                         _hd161792162093_)
                                        (let ()
                                          (declare (not safe))
                                          (_g161787161855_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161794162106_))
                                      (___kont163605163606_
                                       _hd161795162103_
                                       _hd161792162093_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161787161855_)))))))
                      (let () (declare (not safe)) (_g161787161855_)))))
              (let () (declare (not safe)) (_g161787161855_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx162157_)
      (let* ((___stx163734163735_ _$stx162157_)
             (_g162162162217_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163734163735_)))))
        (let ((___kont163737163738_
               (lambda (_L162402_ _L162404_)
                 (let ((__tmp164155
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp164140
                        (let ((__tmp164151
                               (let ((__tmp164154
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164152
                                      (let ((__tmp164153
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164153 '()))))
                                 (declare (not safe))
                                 (cons __tmp164154 __tmp164152)))
                              (__tmp164141
                               (let ((__tmp164142
                                      (let ((__tmp164150
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164143
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162402_
                                                  _L162404_))
                                               (let ((__tmp164144
                                                      (lambda (_g162421162425_
                                                               _g162422162428_
                                                               _g162423162430_)
                                                        (let ((__tmp164145
                                                               (let ((__tmp164149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164146
                              (let ((__tmp164147
                                     (let ((__tmp164148
                                            (let ()
                                              (declare (not safe))
                                              (cons _g162421162425_ '()))))
                                       (declare (not safe))
                                       (cons _g162422162428_ __tmp164148))))
                                (declare (not safe))
                                (cons 'primitive: __tmp164147))))
                         (declare (not safe))
                         (cons __tmp164149 __tmp164146))))
                  (declare (not safe))
                  (cons __tmp164145 _g162423162430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164144
                                                         '()
                                                         _L162402_
                                                         _L162404_)))))
                                        (declare (not safe))
                                        (cons __tmp164150 __tmp164143))))
                                 (declare (not safe))
                                 (cons __tmp164142 '()))))
                          (declare (not safe))
                          (cons __tmp164151 __tmp164141))))
                   (declare (not safe))
                   (cons __tmp164155 __tmp164140))))
              (___kont163741163742_
               (lambda (_L162288_ _L162290_)
                 (let ((__tmp164170
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp164156
                        (let ((__tmp164166
                               (let ((__tmp164169
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164167
                                      (let ((__tmp164168
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164168 '()))))
                                 (declare (not safe))
                                 (cons __tmp164169 __tmp164167)))
                              (__tmp164157
                               (let ((__tmp164158
                                      (let ((__tmp164165
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164159
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162288_
                                                  _L162290_))
                                               (let ((__tmp164160
                                                      (lambda (_g162305162309_
                                                               _g162306162312_
                                                               _g162307162314_)
                                                        (let ((__tmp164161
                                                               (let ((__tmp164164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164162
                              (let ((__tmp164163
                                     (let ()
                                       (declare (not safe))
                                       (cons _g162305162309_ '()))))
                                (declare (not safe))
                                (cons _g162306162312_ __tmp164163))))
                         (declare (not safe))
                         (cons __tmp164164 __tmp164162))))
                  (declare (not safe))
                  (cons __tmp164161 _g162307162314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164160
                                                         '()
                                                         _L162288_
                                                         _L162290_)))))
                                        (declare (not safe))
                                        (cons __tmp164165 __tmp164159))))
                                 (declare (not safe))
                                 (cons __tmp164158 '()))))
                          (declare (not safe))
                          (cons __tmp164166 __tmp164157))))
                   (declare (not safe))
                   (cons __tmp164170 __tmp164156)))))
          (let* ((___match163785163786_
                  (lambda (_e162194162224_
                           _hd162193162228_
                           _tl162192162231_
                           ___splice163743163744_
                           _target162195162234_
                           _tl162197162237_)
                    (letrec ((_loop162198162240_
                              (lambda (_hd162196162244_
                                       _dispatch162202162247_
                                       _arity162203162249_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162196162244_))
                                    (let ((_e162199162252_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162196162244_))))
                                      (let ((_lp-tl162201162259_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162199162252_)))
                                            (_lp-hd162200162256_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162199162252_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162200162256_))
                                            (let ((_e162208162262_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162200162256_))))
                                              (let ((_tl162206162269_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162208162262_)))
                                                    (_hd162207162266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162208162262_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162206162269_))
                                                    (let ((_e162211162272_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162206162269_))))
                                                      (let ((_tl162209162279_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162211162272_)))
                    (_hd162210162276_
                     (let () (declare (not safe)) (##car _e162211162272_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162209162279_))
                    (_loop162198162240_
                     _lp-tl162201162259_
                     (let ()
                       (declare (not safe))
                       (cons _hd162210162276_ _dispatch162202162247_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162207162266_ _arity162203162249_)))
                    (let () (declare (not safe)) (_g162162162217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162162162217_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162162162217_)))))
                                    (let ((_arity162205162285_
                                           (reverse _arity162203162249_))
                                          (_dispatch162204162282_
                                           (reverse _dispatch162202162247_)))
                                      (___kont163741163742_
                                       _dispatch162204162282_
                                       _arity162205162285_))))))
                      (_loop162198162240_ _target162195162234_ '() '()))))
                 (___match163777163778_
                  (lambda (_e162194162224_ _hd162193162228_ _tl162192162231_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl162192162231_))
                        (let ((___splice163743163744_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl162192162231_
                                  '0))))
                          (let ((_tl162197162237_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163743163744_ '1)))
                                (_target162195162234_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163743163744_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl162197162237_))
                                (___match163785163786_
                                 _e162194162224_
                                 _hd162193162228_
                                 _tl162192162231_
                                 ___splice163743163744_
                                 _target162195162234_
                                 _tl162197162237_)
                                (let ()
                                  (declare (not safe))
                                  (_g162162162217_)))))
                        (let () (declare (not safe)) (_g162162162217_)))))
                 (___match163771163772_
                  (lambda (_e162168162324_
                           _hd162167162328_
                           _tl162166162331_
                           _e162171162334_
                           _hd162170162338_
                           _tl162169162341_
                           _e162172162344_
                           ___splice163739163740_
                           _target162173162348_
                           _tl162175162351_)
                    (letrec ((_loop162176162354_
                              (lambda (_hd162174162358_
                                       _dispatch162180162361_
                                       _arity162181162363_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162174162358_))
                                    (let ((_e162177162366_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162174162358_))))
                                      (let ((_lp-tl162179162373_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162177162366_)))
                                            (_lp-hd162178162370_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162177162366_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162178162370_))
                                            (let ((_e162186162376_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162178162370_))))
                                              (let ((_tl162184162383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162186162376_)))
                                                    (_hd162185162380_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162186162376_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162184162383_))
                                                    (let ((_e162189162386_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162184162383_))))
                                                      (let ((_tl162187162393_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162189162386_)))
                    (_hd162188162390_
                     (let () (declare (not safe)) (##car _e162189162386_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162187162393_))
                    (_loop162176162354_
                     _lp-tl162179162373_
                     (let ()
                       (declare (not safe))
                       (cons _hd162188162390_ _dispatch162180162361_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162185162380_ _arity162181162363_)))
                    (___match163777163778_
                     _e162168162324_
                     _hd162167162328_
                     _tl162166162331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match163777163778_
                                                     _e162168162324_
                                                     _hd162167162328_
                                                     _tl162166162331_))))
                                            (___match163777163778_
                                             _e162168162324_
                                             _hd162167162328_
                                             _tl162166162331_))))
                                    (let ((_arity162183162399_
                                           (reverse _arity162181162363_))
                                          (_dispatch162182162396_
                                           (reverse _dispatch162180162361_)))
                                      (___kont163737163738_
                                       _dispatch162182162396_
                                       _arity162183162399_))))))
                      (_loop162176162354_ _target162173162348_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163734163735_))
                (let ((_e162168162324_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163734163735_))))
                  (let ((_tl162166162331_
                         (let () (declare (not safe)) (##cdr _e162168162324_)))
                        (_hd162167162328_
                         (let ()
                           (declare (not safe))
                           (##car _e162168162324_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162166162331_))
                        (let ((_e162171162334_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162166162331_))))
                          (let ((_tl162169162341_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162171162334_)))
                                (_hd162170162338_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162171162334_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd162170162338_))
                                (let ((_e162172162344_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd162170162338_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e162172162344_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162169162341_))
                                          (let ((___splice163739163740_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162169162341_
                                                    '0))))
                                            (let ((_tl162175162351_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163739163740_
                                                      '1)))
                                                  (_target162173162348_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163739163740_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162175162351_))
                                                  (___match163771163772_
                                                   _e162168162324_
                                                   _hd162167162328_
                                                   _tl162166162331_
                                                   _e162171162334_
                                                   _hd162170162338_
                                                   _tl162169162341_
                                                   _e162172162344_
                                                   ___splice163739163740_
                                                   _target162173162348_
                                                   _tl162175162351_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162166162331_))
                                                      (let ((___splice163743163744_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162166162331_ '0))))
                (let ((_tl162197162237_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163743163744_ '1)))
                      (_target162195162234_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163743163744_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162197162237_))
                      (___match163785163786_
                       _e162168162324_
                       _hd162167162328_
                       _tl162166162331_
                       ___splice163743163744_
                       _target162195162234_
                       _tl162197162237_)
                      (let () (declare (not safe)) (_g162162162217_)))))
              (let () (declare (not safe)) (_g162162162217_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl162166162331_))
                                              (let ((___splice163743163744_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl162166162331_
                                                        '0))))
                                                (let ((_tl162197162237_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163743163744_
                                                          '1)))
                                                      (_target162195162234_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163743163744_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl162197162237_))
                                                      (___match163785163786_
                                                       _e162168162324_
                                                       _hd162167162328_
                                                       _tl162166162331_
                                                       ___splice163743163744_
                                                       _target162195162234_
                                                       _tl162197162237_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g162162162217_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g162162162217_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162166162331_))
                                          (let ((___splice163743163744_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162166162331_
                                                    '0))))
                                            (let ((_tl162197162237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163743163744_
                                                      '1)))
                                                  (_target162195162234_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163743163744_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162197162237_))
                                                  (___match163785163786_
                                                   _e162168162324_
                                                   _hd162167162328_
                                                   _tl162166162331_
                                                   ___splice163743163744_
                                                   _target162195162234_
                                                   _tl162197162237_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g162162162217_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g162162162217_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162166162331_))
                                    (let ((___splice163743163744_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162166162331_
                                              '0))))
                                      (let ((_tl162197162237_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163743163744_
                                                '1)))
                                            (_target162195162234_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163743163744_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162197162237_))
                                            (___match163785163786_
                                             _e162168162324_
                                             _hd162167162328_
                                             _tl162166162331_
                                             ___splice163743163744_
                                             _target162195162234_
                                             _tl162197162237_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162162162217_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162162162217_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162166162331_))
                            (let ((___splice163743163744_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162166162331_
                                      '0))))
                              (let ((_tl162197162237_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163743163744_
                                        '1)))
                                    (_target162195162234_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163743163744_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl162197162237_))
                                    (___match163785163786_
                                     _e162168162324_
                                     _hd162167162328_
                                     _tl162166162331_
                                     ___splice163743163744_
                                     _target162195162234_
                                     _tl162197162237_)
                                    (let ()
                                      (declare (not safe))
                                      (_g162162162217_)))))
                            (let () (declare (not safe)) (_g162162162217_))))))
                (let () (declare (not safe)) (_g162162162217_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx162439_)
      (let* ((_g162443162461_
              (lambda (_g162444162457_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162444162457_))))
             (_g162442162516_
              (lambda (_g162444162465_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162444162465_))
                    (let ((_e162449162468_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162444162465_))))
                      (let ((_hd162448162472_
                             (let ()
                               (declare (not safe))
                               (##car _e162449162468_)))
                            (_tl162447162475_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162449162468_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162447162475_))
                            (let ((_e162452162478_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162447162475_))))
                              (let ((_hd162451162482_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162452162478_)))
                                    (_tl162450162485_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162452162478_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162450162485_))
                                    (let ((_e162455162488_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162450162485_))))
                                      (let ((_hd162454162492_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162455162488_)))
                                            (_tl162453162495_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162455162488_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162453162495_))
                                            ((lambda (_L162498_ _L162500_)
                                               (let ((__tmp164184
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp164171
                                                      (let ((__tmp164180
                                                             (let ((__tmp164183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164181
                            (let ((__tmp164182
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp164182 '()))))
                       (declare (not safe))
                       (cons __tmp164183 __tmp164181)))
                    (__tmp164172
                     (let ((__tmp164177
                            (let ((__tmp164179
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164178
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162500_ '()))))
                              (declare (not safe))
                              (cons __tmp164179 __tmp164178)))
                           (__tmp164173
                            (let ((__tmp164174
                                   (let ((__tmp164176
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164175
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162498_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164176 __tmp164175))))
                              (declare (not safe))
                              (cons __tmp164174 '()))))
                       (declare (not safe))
                       (cons __tmp164177 __tmp164173))))
                (declare (not safe))
                (cons __tmp164180 __tmp164172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164184
                                                       __tmp164171)))
                                             _hd162454162492_
                                             _hd162451162482_)
                                            (_g162443162461_
                                             _g162444162465_))))
                                    (_g162443162461_ _g162444162465_))))
                            (_g162443162461_ _g162444162465_))))
                    (_g162443162461_ _g162444162465_)))))
        (_g162442162516_ _$stx162439_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx162520_)
      (let* ((_g162524162542_
              (lambda (_g162525162538_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162525162538_))))
             (_g162523162597_
              (lambda (_g162525162546_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162525162546_))
                    (let ((_e162530162549_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162525162546_))))
                      (let ((_hd162529162553_
                             (let ()
                               (declare (not safe))
                               (##car _e162530162549_)))
                            (_tl162528162556_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162530162549_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162528162556_))
                            (let ((_e162533162559_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162528162556_))))
                              (let ((_hd162532162563_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162533162559_)))
                                    (_tl162531162566_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162533162559_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162531162566_))
                                    (let ((_e162536162569_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162531162566_))))
                                      (let ((_hd162535162573_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162536162569_)))
                                            (_tl162534162576_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162536162569_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162534162576_))
                                            ((lambda (_L162579_ _L162581_)
                                               (let ((__tmp164198
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp164185
                                                      (let ((__tmp164194
                                                             (let ((__tmp164197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164195
                            (let ((__tmp164196
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp164196 '()))))
                       (declare (not safe))
                       (cons __tmp164197 __tmp164195)))
                    (__tmp164186
                     (let ((__tmp164191
                            (let ((__tmp164193
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164192
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162581_ '()))))
                              (declare (not safe))
                              (cons __tmp164193 __tmp164192)))
                           (__tmp164187
                            (let ((__tmp164188
                                   (let ((__tmp164190
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164189
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162579_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164190 __tmp164189))))
                              (declare (not safe))
                              (cons __tmp164188 '()))))
                       (declare (not safe))
                       (cons __tmp164191 __tmp164187))))
                (declare (not safe))
                (cons __tmp164194 __tmp164186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164198
                                                       __tmp164185)))
                                             _hd162535162573_
                                             _hd162532162563_)
                                            (_g162524162542_
                                             _g162525162546_))))
                                    (_g162524162542_ _g162525162546_))))
                            (_g162524162542_ _g162525162546_))))
                    (_g162524162542_ _g162525162546_)))))
        (_g162523162597_ _$stx162520_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx162601_)
      (let* ((___stx163788163789_ _$stx162601_)
             (_g162608162679_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163788163789_)))))
        (let ((___kont163791163792_
               (lambda (_L162970_ _L162972_)
                 (let ((__tmp164204
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164199
                        (let ((__tmp164200
                               (let ((__tmp164201
                                      (let ((__tmp164203
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164202
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162970_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164203 __tmp164202))))
                                 (declare (not safe))
                                 (cons __tmp164201 '()))))
                          (declare (not safe))
                          (cons _L162972_ __tmp164200))))
                   (declare (not safe))
                   (cons __tmp164204 __tmp164199))))
              (___kont163793163794_
               (lambda (_L162889_ _L162891_)
                 (let ((__tmp164213
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164205
                        (let ((__tmp164206
                               (let ((__tmp164207
                                      (let ((__tmp164212
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164208
                                             (let ((__tmp164209
                                                    (lambda (_g162910162913_
                                                             _g162911162916_)
                                                      (let ((__tmp164210
                                                             (let ((__tmp164211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g162910162913_ __tmp164211))))
                (declare (not safe))
                (cons __tmp164210 _g162911162916_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164209
                                                       '()
                                                       _L162889_))))
                                        (declare (not safe))
                                        (cons __tmp164212 __tmp164208))))
                                 (declare (not safe))
                                 (cons __tmp164207 '()))))
                          (declare (not safe))
                          (cons _L162891_ __tmp164206))))
                   (declare (not safe))
                   (cons __tmp164213 __tmp164205))))
              (___kont163797163798_
               (lambda (_L162801_ _L162803_)
                 (let ((__tmp164220
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164214
                        (let ((__tmp164215
                               (let ((__tmp164216
                                      (let ((__tmp164219
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164217
                                             (let ((__tmp164218
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162801_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164218))))
                                        (declare (not safe))
                                        (cons __tmp164219 __tmp164217))))
                                 (declare (not safe))
                                 (cons __tmp164216 '()))))
                          (declare (not safe))
                          (cons _L162803_ __tmp164215))))
                   (declare (not safe))
                   (cons __tmp164220 __tmp164214))))
              (___kont163799163800_
               (lambda (_L162736_ _L162738_)
                 (let ((__tmp164230
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164221
                        (let ((__tmp164222
                               (let ((__tmp164223
                                      (let ((__tmp164229
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164224
                                             (let ((__tmp164225
                                                    (let ((__tmp164226
                                                           (lambda (_g162755162758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g162756162761_)
                     (let ((__tmp164227
                            (let ((__tmp164228
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g162755162758_ __tmp164228))))
                       (declare (not safe))
                       (cons __tmp164227 _g162756162761_)))))
              (declare (not safe))
              (foldr1 __tmp164226 '() _L162736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164225))))
                                        (declare (not safe))
                                        (cons __tmp164229 __tmp164224))))
                                 (declare (not safe))
                                 (cons __tmp164223 '()))))
                          (declare (not safe))
                          (cons _L162738_ __tmp164222))))
                   (declare (not safe))
                   (cons __tmp164230 __tmp164221)))))
          (let* ((___match163907163908_
                  (lambda (_e162661162686_
                           _hd162660162690_
                           _tl162659162693_
                           _e162664162696_
                           _hd162663162700_
                           _tl162662162703_
                           ___splice163801163802_
                           _target162665162706_
                           _tl162667162709_)
                    (letrec ((_loop162668162712_
                              (lambda (_hd162666162716_ _arity162672162719_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162666162716_))
                                    (let ((_e162669162722_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162666162716_))))
                                      (let ((_lp-tl162671162729_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162669162722_)))
                                            (_lp-hd162670162726_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162669162722_))))
                                        (_loop162668162712_
                                         _lp-tl162671162729_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162670162726_
                                                 _arity162672162719_)))))
                                    (let ((_arity162673162732_
                                           (reverse _arity162672162719_)))
                                      (___kont163799163800_
                                       _arity162673162732_
                                       _hd162663162700_))))))
                      (_loop162668162712_ _target162665162706_ '()))))
                 (___match163867163868_
                  (lambda (_e162629162825_
                           _hd162628162829_
                           _tl162627162832_
                           _e162632162835_
                           _hd162631162839_
                           _tl162630162842_
                           _e162635162845_
                           _hd162634162849_
                           _tl162633162852_
                           _e162636162855_
                           ___splice163795163796_
                           _target162637162859_
                           _tl162639162862_)
                    (letrec ((_loop162640162865_
                              (lambda (_hd162638162869_ _arity162644162872_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162638162869_))
                                    (let ((_e162641162875_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162638162869_))))
                                      (let ((_lp-tl162643162882_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162641162875_)))
                                            (_lp-hd162642162879_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162641162875_))))
                                        (_loop162640162865_
                                         _lp-tl162643162882_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162642162879_
                                                 _arity162644162872_)))))
                                    (let ((_arity162645162885_
                                           (reverse _arity162644162872_)))
                                      (___kont163793163794_
                                       _arity162645162885_
                                       _hd162631162839_))))))
                      (_loop162640162865_ _target162637162859_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163788163789_))
                (let ((_e162614162926_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163788163789_))))
                  (let ((_tl162612162933_
                         (let () (declare (not safe)) (##cdr _e162614162926_)))
                        (_hd162613162930_
                         (let ()
                           (declare (not safe))
                           (##car _e162614162926_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162612162933_))
                        (let ((_e162617162936_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162612162933_))))
                          (let ((_tl162615162943_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162617162936_)))
                                (_hd162616162940_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162617162936_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162615162943_))
                                (let ((_e162620162946_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162615162943_))))
                                  (let ((_tl162618162953_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162620162946_)))
                                        (_hd162619162950_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162620162946_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd162619162950_))
                                        (let ((_e162621162956_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd162619162950_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e162621162956_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl162618162953_))
                                                  (let ((_e162624162960_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl162618162953_))))
                                                    (let ((_tl162622162967_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e162624162960_)))
                                                          (_hd162623162964_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e162624162960_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162622162967_))
                                                          (___kont163791163792_
                                                           _hd162623162964_
                                                           _hd162616162940_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl162618162953_))
                      (let ((___splice163795163796_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162618162953_ '0))))
                        (let ((_tl162639162862_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163795163796_ '1)))
                              (_target162637162859_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163795163796_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162639162862_))
                              (___match163867163868_
                               _e162614162926_
                               _hd162613162930_
                               _tl162612162933_
                               _e162617162936_
                               _hd162616162940_
                               _tl162615162943_
                               _e162620162946_
                               _hd162619162950_
                               _tl162618162953_
                               _e162621162956_
                               ___splice163795163796_
                               _target162637162859_
                               _tl162639162862_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl162615162943_))
                                  (let ((___splice163801163802_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl162615162943_
                                            '0))))
                                    (let ((_tl162667162709_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice163801163802_
                                              '1)))
                                          (_target162665162706_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice163801163802_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl162667162709_))
                                          (___match163907163908_
                                           _e162614162926_
                                           _hd162613162930_
                                           _tl162612162933_
                                           _e162617162936_
                                           _hd162616162940_
                                           _tl162615162943_
                                           ___splice163801163802_
                                           _target162665162706_
                                           _tl162667162709_)
                                          (let ()
                                            (declare (not safe))
                                            (_g162608162679_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g162608162679_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl162615162943_))
                          (let ((___splice163801163802_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl162615162943_
                                    '0))))
                            (let ((_tl162667162709_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice163801163802_ '1)))
                                  (_target162665162706_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice163801163802_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl162667162709_))
                                  (___match163907163908_
                                   _e162614162926_
                                   _hd162613162930_
                                   _tl162612162933_
                                   _e162617162936_
                                   _hd162616162940_
                                   _tl162615162943_
                                   ___splice163801163802_
                                   _target162665162706_
                                   _tl162667162709_)
                                  (let ()
                                    (declare (not safe))
                                    (_g162608162679_)))))
                          (let () (declare (not safe)) (_g162608162679_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162618162953_))
                                                      (let ((___splice163795163796_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162618162953_ '0))))
                (let ((_tl162639162862_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163795163796_ '1)))
                      (_target162637162859_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163795163796_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162639162862_))
                      (___match163867163868_
                       _e162614162926_
                       _hd162613162930_
                       _tl162612162933_
                       _e162617162936_
                       _hd162616162940_
                       _tl162615162943_
                       _e162620162946_
                       _hd162619162950_
                       _tl162618162953_
                       _e162621162956_
                       ___splice163795163796_
                       _target162637162859_
                       _tl162639162862_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl162618162953_))
                          (___kont163797163798_
                           _hd162619162950_
                           _hd162616162940_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162615162943_))
                              (let ((___splice163801163802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162615162943_
                                        '0))))
                                (let ((_tl162667162709_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice163801163802_
                                          '1)))
                                      (_target162665162706_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice163801163802_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162667162709_))
                                      (___match163907163908_
                                       _e162614162926_
                                       _hd162613162930_
                                       _tl162612162933_
                                       _e162617162936_
                                       _hd162616162940_
                                       _tl162615162943_
                                       ___splice163801163802_
                                       _target162665162706_
                                       _tl162667162709_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162608162679_)))))
                              (let ()
                                (declare (not safe))
                                (_g162608162679_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162618162953_))
                  (___kont163797163798_ _hd162619162950_ _hd162616162940_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl162615162943_))
                      (let ((___splice163801163802_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162615162943_ '0))))
                        (let ((_tl162667162709_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163801163802_ '1)))
                              (_target162665162706_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163801163802_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162667162709_))
                              (___match163907163908_
                               _e162614162926_
                               _hd162613162930_
                               _tl162612162933_
                               _e162617162936_
                               _hd162616162940_
                               _tl162615162943_
                               ___splice163801163802_
                               _target162665162706_
                               _tl162667162709_)
                              (let ()
                                (declare (not safe))
                                (_g162608162679_)))))
                      (let () (declare (not safe)) (_g162608162679_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162618162953_))
                                                  (___kont163797163798_
                                                   _hd162619162950_
                                                   _hd162616162940_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162615162943_))
                                                      (let ((___splice163801163802_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162615162943_ '0))))
                (let ((_tl162667162709_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163801163802_ '1)))
                      (_target162665162706_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163801163802_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162667162709_))
                      (___match163907163908_
                       _e162614162926_
                       _hd162613162930_
                       _tl162612162933_
                       _e162617162936_
                       _hd162616162940_
                       _tl162615162943_
                       ___splice163801163802_
                       _target162665162706_
                       _tl162667162709_)
                      (let () (declare (not safe)) (_g162608162679_)))))
              (let () (declare (not safe)) (_g162608162679_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162618162953_))
                                            (___kont163797163798_
                                             _hd162619162950_
                                             _hd162616162940_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl162615162943_))
                                                (let ((___splice163801163802_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl162615162943_
                                                          '0))))
                                                  (let ((_tl162667162709_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice163801163802_
                                                            '1)))
                                                        (_target162665162706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice163801163802_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162667162709_))
                                                        (___match163907163908_
                                                         _e162614162926_
                                                         _hd162613162930_
                                                         _tl162612162933_
                                                         _e162617162936_
                                                         _hd162616162940_
                                                         _tl162615162943_
                                                         ___splice163801163802_
                                                         _target162665162706_
                                                         _tl162667162709_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162608162679_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g162608162679_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162615162943_))
                                    (let ((___splice163801163802_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162615162943_
                                              '0))))
                                      (let ((_tl162667162709_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163801163802_
                                                '1)))
                                            (_target162665162706_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163801163802_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162667162709_))
                                            (___match163907163908_
                                             _e162614162926_
                                             _hd162613162930_
                                             _tl162612162933_
                                             _e162617162936_
                                             _hd162616162940_
                                             _tl162615162943_
                                             ___splice163801163802_
                                             _target162665162706_
                                             _tl162667162709_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162608162679_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162608162679_))))))
                        (let () (declare (not safe)) (_g162608162679_)))))
                (let () (declare (not safe)) (_g162608162679_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx162996_)
      (let* ((___stx163910163911_ _$stx162996_)
             (_g163001163036_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163910163911_)))))
        (let ((___kont163913163914_
               (lambda (_L163158_ _L163160_)
                 (let ((__tmp164236
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164231
                        (let ((__tmp164232
                               (let ((__tmp164233
                                      (let ((__tmp164235
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164234
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163158_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164235 __tmp164234))))
                                 (declare (not safe))
                                 (cons __tmp164233 '()))))
                          (declare (not safe))
                          (cons _L163160_ __tmp164232))))
                   (declare (not safe))
                   (cons __tmp164236 __tmp164231))))
              (___kont163915163916_
               (lambda (_L163093_ _L163095_)
                 (let ((__tmp164245
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164237
                        (let ((__tmp164238
                               (let ((__tmp164239
                                      (let ((__tmp164244
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164240
                                             (let ((__tmp164241
                                                    (lambda (_g163112163115_
                                                             _g163113163118_)
                                                      (let ((__tmp164242
                                                             (let ((__tmp164243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163112163115_ __tmp164243))))
                (declare (not safe))
                (cons __tmp164242 _g163113163118_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164241
                                                       '()
                                                       _L163093_))))
                                        (declare (not safe))
                                        (cons __tmp164244 __tmp164240))))
                                 (declare (not safe))
                                 (cons __tmp164239 '()))))
                          (declare (not safe))
                          (cons _L163095_ __tmp164238))))
                   (declare (not safe))
                   (cons __tmp164245 __tmp164237)))))
          (let ((___match163959163960_
                 (lambda (_e163018163043_
                          _hd163017163047_
                          _tl163016163050_
                          _e163021163053_
                          _hd163020163057_
                          _tl163019163060_
                          ___splice163917163918_
                          _target163022163063_
                          _tl163024163066_)
                   (letrec ((_loop163025163069_
                             (lambda (_hd163023163073_ _arity163029163076_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd163023163073_))
                                   (let ((_e163026163079_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd163023163073_))))
                                     (let ((_lp-tl163028163086_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e163026163079_)))
                                           (_lp-hd163027163083_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e163026163079_))))
                                       (_loop163025163069_
                                        _lp-tl163028163086_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd163027163083_
                                                _arity163029163076_)))))
                                   (let ((_arity163030163089_
                                          (reverse _arity163029163076_)))
                                     (___kont163915163916_
                                      _arity163030163089_
                                      _hd163020163057_))))))
                     (_loop163025163069_ _target163022163063_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163910163911_))
                (let ((_e163007163128_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163910163911_))))
                  (let ((_tl163005163135_
                         (let () (declare (not safe)) (##cdr _e163007163128_)))
                        (_hd163006163132_
                         (let ()
                           (declare (not safe))
                           (##car _e163007163128_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl163005163135_))
                        (let ((_e163010163138_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl163005163135_))))
                          (let ((_tl163008163145_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e163010163138_)))
                                (_hd163009163142_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e163010163138_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl163008163145_))
                                (let ((_e163013163148_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl163008163145_))))
                                  (let ((_tl163011163155_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e163013163148_)))
                                        (_hd163012163152_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e163013163148_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163011163155_))
                                        (___kont163913163914_
                                         _hd163012163152_
                                         _hd163009163142_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl163008163145_))
                                            (let ((___splice163917163918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl163008163145_
                                                      '0))))
                                              (let ((_tl163024163066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice163917163918_
                                                        '1)))
                                                    (_target163022163063_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice163917163918_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl163024163066_))
                                                    (___match163959163960_
                                                     _e163007163128_
                                                     _hd163006163132_
                                                     _tl163005163135_
                                                     _e163010163138_
                                                     _hd163009163142_
                                                     _tl163008163145_
                                                     ___splice163917163918_
                                                     _target163022163063_
                                                     _tl163024163066_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g163001163036_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g163001163036_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl163008163145_))
                                    (let ((___splice163917163918_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl163008163145_
                                              '0))))
                                      (let ((_tl163024163066_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163917163918_
                                                '1)))
                                            (_target163022163063_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163917163918_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl163024163066_))
                                            (___match163959163960_
                                             _e163007163128_
                                             _hd163006163132_
                                             _tl163005163135_
                                             _e163010163138_
                                             _hd163009163142_
                                             _tl163008163145_
                                             ___splice163917163918_
                                             _target163022163063_
                                             _tl163024163066_)
                                            (let ()
                                              (declare (not safe))
                                              (_g163001163036_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g163001163036_))))))
                        (let () (declare (not safe)) (_g163001163036_)))))
                (let () (declare (not safe)) (_g163001163036_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx163180_)
      (let* ((_g163184163219_
              (lambda (_g163185163215_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163185163215_))))
             (_g163183163347_
              (lambda (_g163185163223_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163185163223_))
                    (let ((_e163190163226_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163185163223_))))
                      (let ((_hd163189163230_
                             (let ()
                               (declare (not safe))
                               (##car _e163190163226_)))
                            (_tl163188163233_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163190163226_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163188163233_))
                            (let ((_g164246_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163188163233_
                                      '0))))
                              (begin
                                (let ((_g164247_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164246_)
                                             (##vector-length _g164246_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164247_ 2)))
                                      (error "Context expects 2 values"
                                             _g164247_)))
                                (let ((_target163191163236_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164246_ 0)))
                                      (_tl163193163239_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164246_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163193163239_))
                                      (letrec ((_loop163194163242_
                                                (lambda (_hd163192163246_
                                                         _arity163198163249_
                                                         _prim163199163251_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163192163246_))
                                                      (let ((_e163195163254_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163192163246_))))
                (let ((_lp-hd163196163258_
                       (let () (declare (not safe)) (##car _e163195163254_)))
                      (_lp-tl163197163261_
                       (let () (declare (not safe)) (##cdr _e163195163254_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163196163258_))
                      (let ((_e163204163264_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163196163258_))))
                        (let ((_hd163203163268_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163204163264_)))
                              (_tl163202163271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163204163264_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163202163271_))
                              (let ((_g164256_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163202163271_
                                        '0))))
                                (begin
                                  (let ((_g164257_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164256_)
                                               (##vector-length _g164256_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164257_ 2)))
                                        (error "Context expects 2 values"
                                               _g164257_)))
                                  (let ((_target163205163274_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164256_ 0)))
                                        (_tl163207163277_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164256_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163207163277_))
                                        (letrec ((_loop163208163280_
                                                  (lambda (_hd163206163284_
                                                           _arity163212163287_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163206163284_))
                                                        (let ((_e163209163290_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163206163284_))))
                  (let ((_lp-hd163210163294_
                         (let () (declare (not safe)) (##car _e163209163290_)))
                        (_lp-tl163211163297_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163209163290_))))
                    (_loop163208163280_
                     _lp-tl163211163297_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163210163294_ _arity163212163287_)))))
                (let ((_arity163213163300_ (reverse _arity163212163287_)))
                  (_loop163194163242_
                   _lp-tl163197163261_
                   (let ()
                     (declare (not safe))
                     (cons _arity163213163300_ _arity163198163249_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163203163268_ _prim163199163251_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163208163280_
                                           _target163205163274_
                                           '()))
                                        (_g163184163219_ _g163185163223_)))))
                              (_g163184163219_ _g163185163223_))))
                      (_g163184163219_ _g163185163223_))))
              (let ((_arity163200163304_ (reverse _arity163198163249_))
                    (_prim163201163307_ (reverse _prim163199163251_)))
                ((lambda (_L163310_ _L163312_)
                   (let ((__tmp164255
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164248
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163310_
                               _L163312_))
                            (let ((__tmp164249
                                   (lambda (_g163327163333_
                                            _g163328163336_
                                            _g163329163338_)
                                     (let ((__tmp164250
                                            (let ((__tmp164254
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp164251
                                                   (let ((__tmp164252
                                                          (let ((__tmp164253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163330163341_ _g163331163344_)
                           (let ()
                             (declare (not safe))
                             (cons _g163330163341_ _g163331163344_)))))
                    (declare (not safe))
                    (foldr1 __tmp164253 '() _g163327163333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163328163336_
                                                           __tmp164252))))
                                              (declare (not safe))
                                              (cons __tmp164254 __tmp164251))))
                                       (declare (not safe))
                                       (cons __tmp164250 _g163329163338_)))))
                              (declare (not safe))
                              (foldr2 __tmp164249 '() _L163310_ _L163312_)))))
                     (declare (not safe))
                     (cons __tmp164255 __tmp164248)))
                 _arity163200163304_
                 _prim163201163307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163194163242_
                                         _target163191163236_
                                         '()
                                         '()))
                                      (_g163184163219_ _g163185163223_)))))
                            (_g163184163219_ _g163185163223_))))
                    (_g163184163219_ _g163185163223_)))))
        (_g163183163347_ _$stx163180_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx163353_)
      (let* ((_g163357163392_
              (lambda (_g163358163388_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163358163388_))))
             (_g163356163520_
              (lambda (_g163358163396_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163358163396_))
                    (let ((_e163363163399_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163358163396_))))
                      (let ((_hd163362163403_
                             (let ()
                               (declare (not safe))
                               (##car _e163363163399_)))
                            (_tl163361163406_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163363163399_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163361163406_))
                            (let ((_g164258_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163361163406_
                                      '0))))
                              (begin
                                (let ((_g164259_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164258_)
                                             (##vector-length _g164258_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164259_ 2)))
                                      (error "Context expects 2 values"
                                             _g164259_)))
                                (let ((_target163364163409_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164258_ 0)))
                                      (_tl163366163412_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164258_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163366163412_))
                                      (letrec ((_loop163367163415_
                                                (lambda (_hd163365163419_
                                                         _arity163371163422_
                                                         _prim163372163424_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163365163419_))
                                                      (let ((_e163368163427_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163365163419_))))
                (let ((_lp-hd163369163431_
                       (let () (declare (not safe)) (##car _e163368163427_)))
                      (_lp-tl163370163434_
                       (let () (declare (not safe)) (##cdr _e163368163427_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163369163431_))
                      (let ((_e163377163437_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163369163431_))))
                        (let ((_hd163376163441_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163377163437_)))
                              (_tl163375163444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163377163437_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163375163444_))
                              (let ((_g164268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163375163444_
                                        '0))))
                                (begin
                                  (let ((_g164269_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164268_)
                                               (##vector-length _g164268_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164269_ 2)))
                                        (error "Context expects 2 values"
                                               _g164269_)))
                                  (let ((_target163378163447_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164268_ 0)))
                                        (_tl163380163450_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164268_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163380163450_))
                                        (letrec ((_loop163381163453_
                                                  (lambda (_hd163379163457_
                                                           _arity163385163460_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163379163457_))
                                                        (let ((_e163382163463_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163379163457_))))
                  (let ((_lp-hd163383163467_
                         (let () (declare (not safe)) (##car _e163382163463_)))
                        (_lp-tl163384163470_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163382163463_))))
                    (_loop163381163453_
                     _lp-tl163384163470_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163383163467_ _arity163385163460_)))))
                (let ((_arity163386163473_ (reverse _arity163385163460_)))
                  (_loop163367163415_
                   _lp-tl163370163434_
                   (let ()
                     (declare (not safe))
                     (cons _arity163386163473_ _arity163371163422_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163376163441_ _prim163372163424_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163381163453_
                                           _target163378163447_
                                           '()))
                                        (_g163357163392_ _g163358163396_)))))
                              (_g163357163392_ _g163358163396_))))
                      (_g163357163392_ _g163358163396_))))
              (let ((_arity163373163477_ (reverse _arity163371163422_))
                    (_prim163374163480_ (reverse _prim163372163424_)))
                ((lambda (_L163483_ _L163485_)
                   (let ((__tmp164267
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164260
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163483_
                               _L163485_))
                            (let ((__tmp164261
                                   (lambda (_g163500163506_
                                            _g163501163509_
                                            _g163502163511_)
                                     (let ((__tmp164262
                                            (let ((__tmp164266
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp164263
                                                   (let ((__tmp164264
                                                          (let ((__tmp164265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163503163514_ _g163504163517_)
                           (let ()
                             (declare (not safe))
                             (cons _g163503163514_ _g163504163517_)))))
                    (declare (not safe))
                    (foldr1 __tmp164265 '() _g163500163506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163501163509_
                                                           __tmp164264))))
                                              (declare (not safe))
                                              (cons __tmp164266 __tmp164263))))
                                       (declare (not safe))
                                       (cons __tmp164262 _g163502163511_)))))
                              (declare (not safe))
                              (foldr2 __tmp164261 '() _L163483_ _L163485_)))))
                     (declare (not safe))
                     (cons __tmp164267 __tmp164260)))
                 _arity163373163477_
                 _prim163374163480_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163367163415_
                                         _target163364163409_
                                         '()
                                         '()))
                                      (_g163357163392_ _g163358163396_)))))
                            (_g163357163392_ _g163358163396_))))
                    (_g163357163392_ _g163358163396_)))))
        (_g163356163520_ _$stx163353_)))))
