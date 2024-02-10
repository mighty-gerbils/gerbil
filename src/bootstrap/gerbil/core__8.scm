(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g49728_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
      (lambda (_stx21600_)
        (letrec ((_body-opt?21603_
                  (lambda (_key21606_)
                    (memq (gx#stx-e _key21606_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx21600_ _body-opt?21603_))))
    (define |gerbil/core$<MOP>$<MOP:4>[1]#generate-typedef|
      (lambda (_stx19407_
               _id19409_
               _super-ref19410_
               _slots19411_
               _body19412_
               _struct?19413_)
        (letrec* ((_wrap19415_
                   (lambda (_e-stx21597_)
                     (gx#stx-wrap-source
                      _e-stx21597_
                      (gx#stx-source _stx19407_))))
                  (_make-id19417_
                   (if (uninterned-symbol? (gx#stx-e _id19409_))
                       (lambda _g49390_ (gx#genident _id19409_))
                       (lambda _args21594_
                         (apply gx#stx-identifier _id19409_ _args21594_))))
                  (_get-mixin-slots19418_
                   (lambda (_super21568_ _slots21570_)
                     (letrec* ((_tab21572_
                                (let ()
                                  (declare (not safe))
                                  (make-table 'test: eq?)))
                               (_dedup21574_
                                (lambda (_mixins21579_)
                                  (let _lp21582_ ((_rest21585_ _mixins21579_)
                                                  (_r21587_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest21585_))
                                        (let ((_slot21589_ (car _rest21585_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (table-ref
                                                 _tab21572_
                                                 _slot21589_
                                                 '#f))
                                              (let ((__tmp49393
                                                     (cdr _rest21585_)))
                                                (declare (not safe))
                                                (_lp21582_
                                                 __tmp49393
                                                 _r21587_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (table-set!
                                                   _tab21572_
                                                   _slot21589_
                                                   '#t))
                                                (let ((__tmp49392
                                                       (cdr _rest21585_))
                                                      (__tmp49391
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21589_
                                                               _r21587_))))
                                                  (declare (not safe))
                                                  (_lp21582_
                                                   __tmp49392
                                                   __tmp49391)))))
                                        (reverse _r21587_))))))
                       (gx#stx-for-each
                        (lambda (_slot21576_)
                          (let ((__tmp49394 (gx#stx-e _slot21576_)))
                            (declare (not safe))
                            (table-set! _tab21572_ __tmp49394 '#t)))
                        _slots21570_)
                       (if (let () (declare (not safe)) (not _super21568_))
                           '()
                           (if (gx#identifier? _super21568_)
                               (let ((__tmp49396
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19419_
                                         _super21568_))))
                                 (declare (not safe))
                                 (_dedup21574_ __tmp49396))
                               (let ((__tmp49395
                                      (concatenate
                                       (map _get-mixin-slots-r19419_
                                            _super21568_))))
                                 (declare (not safe))
                                 (_dedup21574_ __tmp49395)))))))
                  (_get-mixin-slots-r19419_
                   (lambda (_type-id21562_)
                     (let ((_info21565_
                            (gx#syntax-local-value _type-id21562_)))
                       (append (let ((__obj47281 _info21565_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj47281
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj47281
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj47281
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19419_
                                     (let ((__obj47282 _info21565_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj47282
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj47282
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj47282
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots19411_ _stx19407_)
          (let* ((_name19421_ (symbol->string (gx#stx-e _id19409_)))
                 (_super19424_
                  (if _struct?19413_
                      (if _super-ref19410_
                          (gx#syntax-local-value _super-ref19410_)
                          '#f)
                      (map gx#syntax-local-value _super-ref19410_)))
                 (_g1942719435_
                  (lambda (_g1942819431_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1942819431_)))
                 (_g1942621558_
                  (lambda (_g1942819439_)
                    ((lambda (_L19442_)
                       (let ()
                         (let* ((_g1945719465_
                                 (lambda (_g1945819461_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1945819461_)))
                                (_g1945621554_
                                 (lambda (_g1945819469_)
                                   ((lambda (_L19472_)
                                      (let ()
                                        (let* ((_g1948519493_
                                                (lambda (_g1948619489_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1948619489_)))
                                               (_g1948421550_
                                                (lambda (_g1948619497_)
                                                  ((lambda (_L19500_)
                                                     (let ()
                                                       (let* ((_g1951319521_
                                                               (lambda (_g1951419517_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g1951419517_)))
                      (_g1951221546_
                       (lambda (_g1951419525_)
                         ((lambda (_L19528_)
                            (let ()
                              (let* ((_g1954119549_
                                      (lambda (_g1954219545_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1954219545_)))
                                     (_g1954021542_
                                      (lambda (_g1954219553_)
                                        ((lambda (_L19556_)
                                           (let ()
                                             (let* ((_g1956919577_
                                                     (lambda (_g1957019573_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g1957019573_)))
                                                    (_g1956821538_
                                                     (lambda (_g1957019581_)
                                                       ((lambda (_L19584_)
                                                          (let ()
                                                            (let* ((_g1959719614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1959819610_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1959819610_)))
                           (_g1959621534_
                            (lambda (_g1959819618_)
                              (if (gx#stx-pair/null? _g1959819618_)
                                  (let ((_g49397_
                                         (gx#syntax-split-splice
                                          _g1959819618_
                                          '0)))
                                    (begin
                                      (let ((_g49398_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49397_)
                                                   (##vector-length _g49397_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49398_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49398_)))
                                      (let ((_target1960019621_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49397_ 0)))
                                            (_tl1960219624_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49397_ 1))))
                                        (if (gx#stx-null? _tl1960219624_)
                                            (letrec ((_loop1960319627_
                                                      (lambda (_hd1960119631_
                                                               _slot1960719634_)
                                                        (if (gx#stx-pair?
                                                             _hd1960119631_)
                                                            (let ((_e1960419637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1960119631_)))
                      (let ((_lp-hd1960519641_
                             (let ()
                               (declare (not safe))
                               (##car _e1960419637_)))
                            (_lp-tl1960619644_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1960419637_))))
                        (let ((__tmp49671
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1960519641_ _slot1960719634_))))
                          (declare (not safe))
                          (_loop1960319627_ _lp-tl1960619644_ __tmp49671))))
                    (let ((_slot1960819647_ (reverse _slot1960719634_)))
                      ((lambda (_L19651_)
                         (let ()
                           (let* ((_g1966819685_
                                   (lambda (_g1966919681_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1966919681_)))
                                  (_g1966721525_
                                   (lambda (_g1966919689_)
                                     (if (gx#stx-pair/null? _g1966919689_)
                                         (let ((_g49399_
                                                (gx#syntax-split-splice
                                                 _g1966919689_
                                                 '0)))
                                           (begin
                                             (let ((_g49400_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g49399_)
                                                          (##vector-length
                                                           _g49399_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g49400_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g49400_)))
                                             (let ((_target1967119692_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49399_
                                                       0)))
                                                   (_tl1967319695_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49399_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl1967319695_)
                                                   (letrec ((_loop1967419698_
                                                             (lambda (_hd1967219702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _getf1967819705_)
                       (if (gx#stx-pair? _hd1967219702_)
                           (let ((_e1967519708_ (gx#syntax-e _hd1967219702_)))
                             (let ((_lp-hd1967619712_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1967519708_)))
                                   (_lp-tl1967719715_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1967519708_))))
                               (let ((__tmp49669
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd1967619712_
                                              _getf1967819705_))))
                                 (declare (not safe))
                                 (_loop1967419698_
                                  _lp-tl1967719715_
                                  __tmp49669))))
                           (let ((_getf1967919718_ (reverse _getf1967819705_)))
                             ((lambda (_L19722_)
                                (let ()
                                  (let* ((_g1973919756_
                                          (lambda (_g1974019752_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g1974019752_)))
                                         (_g1973821516_
                                          (lambda (_g1974019760_)
                                            (if (gx#stx-pair/null?
                                                 _g1974019760_)
                                                (let ((_g49401_
                                                       (gx#syntax-split-splice
                                                        _g1974019760_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49401_)
                         (##vector-length _g49401_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49402_ 2)))
                  (error "Context expects 2 values" _g49402_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1974219763_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49401_
                                                              0)))
                                                          (_tl1974419766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49401_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1974419766_)
                                                          (letrec ((_loop1974519769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1974319773_ _setf1974919776_)
                              (if (gx#stx-pair? _hd1974319773_)
                                  (let ((_e1974619779_
                                         (gx#syntax-e _hd1974319773_)))
                                    (let ((_lp-hd1974719783_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1974619779_)))
                                          (_lp-tl1974819786_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1974619779_))))
                                      (let ((__tmp49667
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1974719783_
                                                     _setf1974919776_))))
                                        (declare (not safe))
                                        (_loop1974519769_
                                         _lp-tl1974819786_
                                         __tmp49667))))
                                  (let ((_setf1975019789_
                                         (reverse _setf1974919776_)))
                                    ((lambda (_L19793_)
                                       (let ()
                                         (let* ((_mixin-slots19810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (_get-mixin-slots19418_
                                                    _super-ref19410_
                                                    _slots19411_)))
                                                (_g1981319830_
                                                 (lambda (_g1981419826_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1981419826_)))
                                                (_g1981221512_
                                                 (lambda (_g1981419834_)
                                                   (if (gx#stx-pair/null?
                                                        _g1981419834_)
                                                       (let ((_g49403_
                                                              (gx#syntax-split-splice
                                                               _g1981419834_
                                                               '0)))
                                                         (begin
                                                           (let ((_g49404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g49403_)
                                (##vector-length _g49403_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g49404_ 2)))
                         (error "Context expects 2 values" _g49404_)))
                   (let ((_target1981619837_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g49403_ 0)))
                         (_tl1981819840_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g49403_ 1))))
                     (if (gx#stx-null? _tl1981819840_)
                         (letrec ((_loop1981919843_
                                   (lambda (_hd1981719847_
                                            _mixin-slot1982319850_)
                                     (if (gx#stx-pair? _hd1981719847_)
                                         (let ((_e1982019853_
                                                (gx#syntax-e _hd1981719847_)))
                                           (let ((_lp-hd1982119857_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1982019853_)))
                                                 (_lp-tl1982219860_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1982019853_))))
                                             (let ((__tmp49666
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd1982119857_
                                                            _mixin-slot1982319850_))))
                                               (declare (not safe))
                                               (_loop1981919843_
                                                _lp-tl1982219860_
                                                __tmp49666))))
                                         (let ((_mixin-slot1982419863_
                                                (reverse _mixin-slot1982319850_)))
                                           ((lambda (_L19867_)
                                              (let ()
                                                (let* ((_g1988519902_
                                                        (lambda (_g1988619898_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1988619898_)))
                                                       (_g1988421503_
                                                        (lambda (_g1988619906_)
                                                          (if (gx#stx-pair/null?
                                                               _g1988619906_)
                                                              (let ((_g49405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1988619906_ '0)))
                        (begin
                          (let ((_g49406_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g49405_)
                                       (##vector-length _g49405_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g49406_ 2)))
                                (error "Context expects 2 values" _g49406_)))
                          (let ((_target1988819909_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g49405_ 0)))
                                (_tl1989019912_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g49405_ 1))))
                            (if (gx#stx-null? _tl1989019912_)
                                (letrec ((_loop1989119915_
                                          (lambda (_hd1988919919_
                                                   _mixin-getf1989519922_)
                                            (if (gx#stx-pair? _hd1988919919_)
                                                (let ((_e1989219925_
                                                       (gx#syntax-e
                                                        _hd1988919919_)))
                                                  (let ((_lp-hd1989319929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1989219925_)))
                                                        (_lp-tl1989419932_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1989219925_))))
                                                    (let ((__tmp49664
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _lp-hd1989319929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _mixin-getf1989519922_))))
              (declare (not safe))
              (_loop1989119915_ _lp-tl1989419932_ __tmp49664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_mixin-getf1989619935_
                                                       (reverse _mixin-getf1989519922_)))
                                                  ((lambda (_L19939_)
                                                     (let ()
                                                       (let* ((_g1995619973_
                                                               (lambda (_g1995719969_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g1995719969_)))
                      (_g1995521494_
                       (lambda (_g1995719977_)
                         (if (gx#stx-pair/null? _g1995719977_)
                             (let ((_g49407_
                                    (gx#syntax-split-splice _g1995719977_ '0)))
                               (begin
                                 (let ((_g49408_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49407_)
                                              (##vector-length _g49407_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49408_ 2)))
                                       (error "Context expects 2 values"
                                              _g49408_)))
                                 (let ((_target1995919980_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49407_ 0)))
                                       (_tl1996119983_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49407_ 1))))
                                   (if (gx#stx-null? _tl1996119983_)
                                       (letrec ((_loop1996219986_
                                                 (lambda (_hd1996019990_
                                                          _mixin-setf1996619993_)
                                                   (if (gx#stx-pair?
                                                        _hd1996019990_)
                                                       (let ((_e1996319996_
                                                              (gx#syntax-e
                                                               _hd1996019990_)))
                                                         (let ((_lp-hd1996420000_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1996319996_)))
                       (_lp-tl1996520003_
                        (let () (declare (not safe)) (##cdr _e1996319996_))))
                   (let ((__tmp49662
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd1996420000_ _mixin-setf1996619993_))))
                     (declare (not safe))
                     (_loop1996219986_ _lp-tl1996520003_ __tmp49662))))
               (let ((_mixin-setf1996720006_ (reverse _mixin-setf1996619993_)))
                 ((lambda (_L20010_)
                    (let ()
                      (let* ((_g2002720044_
                              (lambda (_g2002820040_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2002820040_)))
                             (_g2002621477_
                              (lambda (_g2002820048_)
                                (if (gx#stx-pair/null? _g2002820048_)
                                    (let ((_g49409_
                                           (gx#syntax-split-splice
                                            _g2002820048_
                                            '0)))
                                      (begin
                                        (let ((_g49410_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g49409_)
                                                     (##vector-length _g49409_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g49410_ 2)))
                                              (error "Context expects 2 values"
                                                     _g49410_)))
                                        (let ((_target2003020051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g49409_ 0)))
                                              (_tl2003220054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g49409_ 1))))
                                          (if (gx#stx-null? _tl2003220054_)
                                              (letrec ((_loop2003320057_
                                                        (lambda (_hd2003120061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ugetf2003720064_)
                  (if (gx#stx-pair? _hd2003120061_)
                      (let ((_e2003420067_ (gx#syntax-e _hd2003120061_)))
                        (let ((_lp-hd2003520071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2003420067_)))
                              (_lp-tl2003620074_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2003420067_))))
                          (let ((__tmp49659
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd2003520071_
                                         _ugetf2003720064_))))
                            (declare (not safe))
                            (_loop2003320057_ _lp-tl2003620074_ __tmp49659))))
                      (let ((_ugetf2003820077_ (reverse _ugetf2003720064_)))
                        ((lambda (_L20081_)
                           (let ()
                             (let* ((_g2009820115_
                                     (lambda (_g2009920111_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g2009920111_)))
                                    (_g2009721460_
                                     (lambda (_g2009920119_)
                                       (if (gx#stx-pair/null? _g2009920119_)
                                           (let ((_g49411_
                                                  (gx#syntax-split-splice
                                                   _g2009920119_
                                                   '0)))
                                             (begin
                                               (let ((_g49412_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g49411_)
                                                            (##vector-length
                                                             _g49411_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g49412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g49412_)))
                                               (let ((_target2010120122_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g49411_
                                                         0)))
                                                     (_tl2010320125_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g49411_
                                                         1))))
                                                 (if (gx#stx-null?
                                                      _tl2010320125_)
                                                     (letrec ((_loop2010420128_
                                                               (lambda (_hd2010220132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _usetf2010820135_)
                         (if (gx#stx-pair? _hd2010220132_)
                             (let ((_e2010520138_
                                    (gx#syntax-e _hd2010220132_)))
                               (let ((_lp-hd2010620142_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2010520138_)))
                                     (_lp-tl2010720145_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2010520138_))))
                                 (let ((__tmp49656
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd2010620142_
                                                _usetf2010820135_))))
                                   (declare (not safe))
                                   (_loop2010420128_
                                    _lp-tl2010720145_
                                    __tmp49656))))
                             (let ((_usetf2010920148_
                                    (reverse _usetf2010820135_)))
                               ((lambda (_L20152_)
                                  (let ()
                                    (let* ((_g2016920186_
                                            (lambda (_g2017020182_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2017020182_)))
                                           (_g2016821443_
                                            (lambda (_g2017020190_)
                                              (if (gx#stx-pair/null?
                                                   _g2017020190_)
                                                  (let ((_g49413_
                                                         (gx#syntax-split-splice
                                                          _g2017020190_
                                                          '0)))
                                                    (begin
                                                      (let ((_g49414_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g49413_)
                           (##vector-length _g49413_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g49414_ 2)))
                    (error "Context expects 2 values" _g49414_)))
              (let ((_target2017220193_
                     (let () (declare (not safe)) (##vector-ref _g49413_ 0)))
                    (_tl2017420196_
                     (let () (declare (not safe)) (##vector-ref _g49413_ 1))))
                (if (gx#stx-null? _tl2017420196_)
                    (letrec ((_loop2017520199_
                              (lambda (_hd2017320203_ _mixin-ugetf2017920206_)
                                (if (gx#stx-pair? _hd2017320203_)
                                    (let ((_e2017620209_
                                           (gx#syntax-e _hd2017320203_)))
                                      (let ((_lp-hd2017720213_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2017620209_)))
                                            (_lp-tl2017820216_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2017620209_))))
                                        (let ((__tmp49653
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2017720213_
                                                       _mixin-ugetf2017920206_))))
                                          (declare (not safe))
                                          (_loop2017520199_
                                           _lp-tl2017820216_
                                           __tmp49653))))
                                    (let ((_mixin-ugetf2018020219_
                                           (reverse _mixin-ugetf2017920206_)))
                                      ((lambda (_L20223_)
                                         (let ()
                                           (let* ((_g2024020257_
                                                   (lambda (_g2024120253_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g2024120253_)))
                                                  (_g2023921426_
                                                   (lambda (_g2024120261_)
                                                     (if (gx#stx-pair/null?
                                                          _g2024120261_)
                                                         (let ((_g49415_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2024120261_
                         '0)))
                   (begin
                     (let ((_g49416_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g49415_)
                                  (##vector-length _g49415_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g49416_ 2)))
                           (error "Context expects 2 values" _g49416_)))
                     (let ((_target2024320264_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g49415_ 0)))
                           (_tl2024520267_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g49415_ 1))))
                       (if (gx#stx-null? _tl2024520267_)
                           (letrec ((_loop2024620270_
                                     (lambda (_hd2024420274_
                                              _mixin-usetf2025020277_)
                                       (if (gx#stx-pair? _hd2024420274_)
                                           (let ((_e2024720280_
                                                  (gx#syntax-e
                                                   _hd2024420274_)))
                                             (let ((_lp-hd2024820284_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2024720280_)))
                                                   (_lp-tl2024920287_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2024720280_))))
                                               (let ((__tmp49650
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd2024820284_
                                                              _mixin-usetf2025020277_))))
                                                 (declare (not safe))
                                                 (_loop2024620270_
                                                  _lp-tl2024920287_
                                                  __tmp49650))))
                                           (let ((_mixin-usetf2025120290_
                                                  (reverse _mixin-usetf2025020277_)))
                                             ((lambda (_L20294_)
                                                (let ()
                                                  (let* ((_type-slots20325_
                                                          (if (gx#stx-null?
                                                               _slots19411_)
                                                              '()
                                                              (let ((__tmp49417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49418
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L19793_
                                       _L19722_
                                       _L19651_)
                                      (let ((__tmp49419
                                             (lambda (_g2031020315_
                                                      _g2031120318_
                                                      _g2031220320_
                                                      _g2031320322_)
                                               (let ((__tmp49420
                                                      (let ((__tmp49421
                                                             (let ((__tmp49422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _g2031020315_ '()))))
                       (declare (not safe))
                       (cons _g2031120318_ __tmp49422))))
                (declare (not safe))
                (cons _g2031220320_ __tmp49421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49420
                                                       _g2031320322_)))))
                                        (declare (not safe))
                                        (foldr* __tmp49419
                                                '()
                                                _L19793_
                                                _L19722_
                                                _L19651_)))))
                               (declare (not safe))
                               (cons __tmp49418 '()))))
                        (declare (not safe))
                        (cons 'slots: __tmp49417))))
                 (_type-mixin-slots20342_
                  (if (gx#stx-null? _mixin-slots19810_)
                      '()
                      (let ((__tmp49423
                             (let ((__tmp49424
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20010_
                                       _L19939_
                                       _L19867_)
                                      (let ((__tmp49425
                                             (lambda (_g2032720332_
                                                      _g2032820335_
                                                      _g2032920337_
                                                      _g2033020339_)
                                               (let ((__tmp49426
                                                      (let ((__tmp49427
                                                             (let ((__tmp49428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _g2032720332_ '()))))
                       (declare (not safe))
                       (cons _g2032820335_ __tmp49428))))
                (declare (not safe))
                (cons _g2032920337_ __tmp49427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49426
                                                       _g2033020339_)))))
                                        (declare (not safe))
                                        (foldr* __tmp49425
                                                '()
                                                _L20010_
                                                _L19939_
                                                _L19867_)))))
                               (declare (not safe))
                               (cons __tmp49424 '()))))
                        (declare (not safe))
                        (cons 'mixin: __tmp49423))))
                 (_type-name20349_
                  (let ((__tmp49429
                         (let ((__tmp49430
                                (let ((_$e20345_
                                       (gx#stx-getq 'name: _body19412_)))
                                  (if _$e20345_ _$e20345_ _id19409_))))
                           (declare (not safe))
                           (cons __tmp49430 '()))))
                    (declare (not safe))
                    (cons 'name: __tmp49429)))
                 (_type-id20356_
                  (let ((__tmp49431
                         (let ((__tmp49432
                                (let ((_$e20352_
                                       (gx#stx-getq 'id: _body19412_)))
                                  (if _$e20352_
                                      _$e20352_
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                         _L19472_))))))
                           (declare (not safe))
                           (cons __tmp49432 '()))))
                    (declare (not safe))
                    (cons 'id: __tmp49431)))
                 (_type-constructor20371_
                  (let ((_$e20367_
                         (let ((_e2035820360_
                                (gx#stx-getq 'constructor: _body19412_)))
                           (if _e2035820360_
                               (let* ((_e20364_ _e2035820360_)
                                      (__tmp49433
                                       (let ()
                                         (declare (not safe))
                                         (cons _e20364_ '()))))
                                 (declare (not safe))
                                 (cons 'constructor: __tmp49433))
                               '#f))))
                    (if _$e20367_ _$e20367_ '())))
                 (_properties20405_
                  (let* ((_properties20374_
                          (if (gx#stx-e
                               (gx#stx-getq 'transparent: _body19412_))
                              (let ((__tmp49434
                                     (let ()
                                       (declare (not safe))
                                       (cons 'transparent: '#t))))
                                (declare (not safe))
                                (cons __tmp49434 '()))
                              '()))
                         (_properties20387_
                          (let ((_$e20377_
                                 (gx#stx-e (gx#stx-getq 'print: _body19412_))))
                            (if _$e20377_
                                ((lambda (_print20381_)
                                   (let* ((_print20384_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (eq? _print20381_ '#t))
                                               _slots19411_
                                               _print20381_))
                                          (__tmp49435
                                           (let ()
                                             (declare (not safe))
                                             (cons 'print: _print20384_))))
                                     (declare (not safe))
                                     (cons __tmp49435 _properties20374_)))
                                 _$e20377_)
                                _properties20374_)))
                         (_properties20400_
                          (let ((_$e20390_
                                 (gx#stx-e (gx#stx-getq 'equal: _body19412_))))
                            (if _$e20390_
                                ((lambda (_equal20394_)
                                   (let* ((_equal20397_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (eq? _equal20394_ '#t))
                                               _slots19411_
                                               _equal20394_))
                                          (__tmp49436
                                           (let ()
                                             (declare (not safe))
                                             (cons 'equal: _equal20397_))))
                                     (declare (not safe))
                                     (cons __tmp49436 _properties20387_)))
                                 _$e20390_)
                                _properties20387_))))
                    _properties20400_))
                 (_type-properties20446_
                  (if (let () (declare (not safe)) (null? _properties20405_))
                      '()
                      (let* ((_g2040820416_
                              (lambda (_g2040920412_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2040920412_)))
                             (_g2040720442_
                              (lambda (_g2040920420_)
                                ((lambda (_L20423_)
                                   (let ()
                                     (let ((__tmp49437
                                            (let ((__tmp49438
                                                   (let ((__tmp49440
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp49439
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L20423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49440
                                                           __tmp49439))))
                                              (declare (not safe))
                                              (cons __tmp49438 '()))))
                                       (declare (not safe))
                                       (cons 'properties: __tmp49437))))
                                 _g2040920420_))))
                        (declare (not safe))
                        (_g2040720442_ _properties20405_))))
                 (_final?20449_ (gx#stx-e (gx#stx-getq 'final: _body19412_)))
                 (_type-final20452_
                  (let ((__tmp49441
                         (let ()
                           (declare (not safe))
                           (cons _final?20449_ '()))))
                    (declare (not safe))
                    (cons 'final: __tmp49441)))
                 (_g2045520472_
                  (lambda (_g2045620468_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2045620468_)))
                 (_g2045421422_
                  (lambda (_g2045620476_)
                    (if (gx#stx-pair/null? _g2045620476_)
                        (let ((_g49442_
                               (gx#syntax-split-splice _g2045620476_ '0)))
                          (begin
                            (let ((_g49443_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g49442_)
                                         (##vector-length _g49442_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g49443_ 2)))
                                  (error "Context expects 2 values" _g49443_)))
                            (let ((_target2045820479_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g49442_ 0)))
                                  (_tl2046020482_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g49442_ 1))))
                              (if (gx#stx-null? _tl2046020482_)
                                  (letrec ((_loop2046120485_
                                            (lambda (_hd2045920489_
                                                     _type-body2046520492_)
                                              (if (gx#stx-pair? _hd2045920489_)
                                                  (let ((_e2046220495_
                                                         (gx#syntax-e
                                                          _hd2045920489_)))
                                                    (let ((_lp-hd2046320499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2046220495_)))
                                                          (_lp-tl2046420502_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2046220495_))))
                                                      (let ((__tmp49643
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2046320499_ _type-body2046520492_))))
                (declare (not safe))
                (_loop2046120485_ _lp-tl2046420502_ __tmp49643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_type-body2046620505_
                                                         (reverse _type-body2046520492_)))
                                                    ((lambda (_L20509_)
                                                       (let ()
                                                         (let* ((_g2052720535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2052820531_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2052820531_)))
                        (_g2052621410_
                         (lambda (_g2052820539_)
                           ((lambda (_L20542_)
                              (let ()
                                (let* ((_g2055520563_
                                        (lambda (_g2055620559_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2055620559_)))
                                       (_g2055421339_
                                        (lambda (_g2055620567_)
                                          ((lambda (_L20570_)
                                             (let ()
                                               (let* ((_g2058320591_
                                                       (lambda (_g2058420587_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2058420587_)))
                                                      (_g2058221304_
                                                       (lambda (_g2058420595_)
                                                         ((lambda (_L20598_)
                                                            (let ()
                                                              (let* ((_g2061120619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2061220615_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2061220615_)))
                             (_g2061021188_
                              (lambda (_g2061220623_)
                                ((lambda (_L20626_)
                                   (let ()
                                     (let* ((_g2063920647_
                                             (lambda (_g2064020643_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2064020643_)))
                                            (_g2063821176_
                                             (lambda (_g2064020651_)
                                               ((lambda (_L20654_)
                                                  (let ()
                                                    (let* ((_g2066720675_
                                                            (lambda (_g2066820671_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2066820671_)))
                                                           (_g2066621172_
                                                            (lambda (_g2066820679_)
                                                              ((lambda (_L20682_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2069520703_
                                   (lambda (_g2069620699_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2069620699_)))
                                  (_g2069421168_
                                   (lambda (_g2069620707_)
                                     ((lambda (_L20710_)
                                        (let ()
                                          (let* ((_g2072320731_
                                                  (lambda (_g2072420727_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2072420727_)))
                                                 (_g2072221097_
                                                  (lambda (_g2072420735_)
                                                    ((lambda (_L20738_)
                                                       (let ()
                                                         (let* ((_g2075120759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2075220755_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2075220755_)))
                        (_g2075021093_
                         (lambda (_g2075220763_)
                           ((lambda (_L20766_)
                              (let ()
                                (let* ((_g2077920787_
                                        (lambda (_g2078020783_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2078020783_)))
                                       (_g2077821089_
                                        (lambda (_g2078020791_)
                                          ((lambda (_L20794_)
                                             (let ()
                                               (let* ((_g2080720815_
                                                       (lambda (_g2080820811_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2080820811_)))
                                                      (_g2080621085_
                                                       (lambda (_g2080820819_)
                                                         ((lambda (_L20822_)
                                                            (let ()
                                                              (let* ((_g2083520843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2083620839_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2083620839_)))
                             (_g2083421059_
                              (lambda (_g2083620847_)
                                ((lambda (_L20850_)
                                   (let ()
                                     (let* ((_g2086320871_
                                             (lambda (_g2086420867_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2086420867_)))
                                            (_g2086221033_
                                             (lambda (_g2086420875_)
                                               ((lambda (_L20878_)
                                                  (let ()
                                                    (let* ((_g2089120899_
                                                            (lambda (_g2089220895_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2089220895_)))
                                                           (_g2089021007_
                                                            (lambda (_g2089220903_)
                                                              ((lambda (_L20906_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2091920927_
                                   (lambda (_g2092020923_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2092020923_)))
                                  (_g2091820981_
                                   (lambda (_g2092020931_)
                                     ((lambda (_L20934_)
                                        (let ()
                                          (let* ((_g2094720955_
                                                  (lambda (_g2094820951_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2094820951_)))
                                                 (_g2094620977_
                                                  (lambda (_g2094820959_)
                                                    ((lambda (_L20962_)
                                                       (let ()
                                                         (let ()
                                                           (let ((__tmp49444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49447 (gx#datum->syntax '#f 'begin))
                                (__tmp49445
                                 (let ((__tmp49446
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20962_ '()))))
                                   (declare (not safe))
                                   (cons _L20542_ __tmp49446))))
                            (declare (not safe))
                            (cons __tmp49447 __tmp49445))))
                     (declare (not safe))
                     (_wrap19415_ __tmp49444)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2094820959_)))
                                                 (__tmp49448
                                                  (let ((__tmp49449
                                                         (let ((__tmp49482
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp49450
                        (let ((__tmp49451
                               (let ((__tmp49452
                                      (let ((__tmp49481
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp49453
                                             (let ((__tmp49454
                                                    (let ((__tmp49455
                                                           (let ((__tmp49456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49457
                                 (let ((__tmp49458
                                        (let ((__tmp49459
                                               (let ((__tmp49460
                                                      (let ((__tmp49461
                                                             (let ((__tmp49462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49463
                                   (let ((__tmp49464
                                          (let ((__tmp49465
                                                 (let ((__tmp49466
                                                        (let ((__tmp49467
                                                               (let ((__tmp49468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49469
                                     (let ((__tmp49470
                                            (let ((__tmp49471
                                                   (let ((__tmp49472
                                                          (let ((__tmp49473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49474
                                (let ((__tmp49475
                                       (let ((__tmp49476
                                              (let ((__tmp49477
                                                     (let ((__tmp49478
                                                            (let ((__tmp49479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49480
                                  (let ()
                                    (declare (not safe))
                                    (cons _L20934_ '()))))
                             (declare (not safe))
                             (cons 'unchecked-mutators: __tmp49480))))
                      (declare (not safe))
                      (cons _L20906_ __tmp49479))))
               (declare (not safe))
               (cons 'unchecked-accessors: __tmp49478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L20878_ __tmp49477))))
                                         (declare (not safe))
                                         (cons 'mutators: __tmp49476))))
                                  (declare (not safe))
                                  (cons _L20850_ __tmp49475))))
                           (declare (not safe))
                           (cons 'accessors: __tmp49474))))
                    (declare (not safe))
                    (cons _L20822_ __tmp49473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'predicate:
                                                           __tmp49472))))
                                              (declare (not safe))
                                              (cons _L20794_ __tmp49471))))
                                       (declare (not safe))
                                       (cons 'constructor: __tmp49470))))
                                (declare (not safe))
                                (cons _L20766_ __tmp49469))))
                         (declare (not safe))
                         (cons 'type-descriptor: __tmp49468))))
                  (declare (not safe))
                  (cons _L20738_ __tmp49467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'constructor-method:
                                                         __tmp49466))))
                                            (declare (not safe))
                                            (cons _L20710_ __tmp49465))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp49464))))
                              (declare (not safe))
                              (cons _L20682_ __tmp49463))))
                       (declare (not safe))
                       (cons 'struct?: __tmp49462))))
                (declare (not safe))
                (cons _L20626_ __tmp49461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp49460))))
                                          (declare (not safe))
                                          (cons _L20654_ __tmp49459))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp49458))))
                            (declare (not safe))
                            (cons _L20598_ __tmp49457))))
                     (declare (not safe))
                     (cons 'name: __tmp49456))))
              (declare (not safe))
              (cons _L20570_ __tmp49455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp49454))))
                                        (declare (not safe))
                                        (cons __tmp49481 __tmp49453))))
                                 (declare (not safe))
                                 (cons __tmp49452 '()))))
                          (declare (not safe))
                          (cons _L19472_ __tmp49451))))
                   (declare (not safe))
                   (cons __tmp49482 __tmp49450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19415_ __tmp49449))))
                                            (declare (not safe))
                                            (_g2094620977_ __tmp49448))))
                                      _g2092020931_)))
                                  (__tmp49483
                                   (let ((__tmp49510
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp49484
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L20152_
                                             _L19651_)
                                            (let ((__tmp49498
                                                   (lambda (_g2098420991_
                                                            _g2098520994_
                                                            _g2098620996_)
                                                     (let ((__tmp49499
                                                            (let ((__tmp49509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp49500
                           (let ((__tmp49506
                                  (let ((__tmp49508
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp49507
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2098520994_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49508 __tmp49507)))
                                 (__tmp49501
                                  (let ((__tmp49502
                                         (let ((__tmp49503
                                                (let ((__tmp49505
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp49504
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2098420991_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp49505
                                                        __tmp49504))))
                                           (declare (not safe))
                                           (cons __tmp49503 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp49502))))
                             (declare (not safe))
                             (cons __tmp49506 __tmp49501))))
                      (declare (not safe))
                      (cons __tmp49509 __tmp49500))))
               (declare (not safe))
               (cons __tmp49499 _g2098620996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp49485
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L20294_
                                                      _L19867_)
                                                     (let ((__tmp49486
                                                            (lambda (_g2098720999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2098821002_
                             _g2098921004_)
                      (let ((__tmp49487
                             (let ((__tmp49497 (gx#datum->syntax '#f '@list))
                                   (__tmp49488
                                    (let ((__tmp49494
                                           (let ((__tmp49496
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp49495
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2098821002_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49496 __tmp49495)))
                                          (__tmp49489
                                           (let ((__tmp49490
                                                  (let ((__tmp49491
                                                         (let ((__tmp49493
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp49492
                        (let ()
                          (declare (not safe))
                          (cons _g2098720999_ '()))))
                   (declare (not safe))
                   (cons __tmp49493 __tmp49492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49491 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp49490))))
                                      (declare (not safe))
                                      (cons __tmp49494 __tmp49489))))
                               (declare (not safe))
                               (cons __tmp49497 __tmp49488))))
                        (declare (not safe))
                        (cons __tmp49487 _g2098921004_)))))
               (declare (not safe))
               (foldr2 __tmp49486 '() _L20294_ _L19867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldr2 __tmp49498
                                                      __tmp49485
                                                      _L20152_
                                                      _L19651_)))))
                                     (declare (not safe))
                                     (cons __tmp49510 __tmp49484))))
                             (declare (not safe))
                             (_g2091820981_ __tmp49483))))
                       _g2089220903_)))
                   (__tmp49511
                    (let ((__tmp49538 (gx#datum->syntax '#f '@list))
                          (__tmp49512
                           (begin
                             (gx#syntax-check-splice-targets _L20081_ _L19651_)
                             (let ((__tmp49526
                                    (lambda (_g2101021017_
                                             _g2101121020_
                                             _g2101221022_)
                                      (let ((__tmp49527
                                             (let ((__tmp49537
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49528
                                                    (let ((__tmp49534
                                                           (let ((__tmp49536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49535
                          (let ()
                            (declare (not safe))
                            (cons _g2101121020_ '()))))
                     (declare (not safe))
                     (cons __tmp49536 __tmp49535)))
                  (__tmp49529
                   (let ((__tmp49530
                          (let ((__tmp49531
                                 (let ((__tmp49533
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp49532
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2101021017_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49533 __tmp49532))))
                            (declare (not safe))
                            (cons __tmp49531 '()))))
                     (declare (not safe))
                     (cons ':: __tmp49530))))
              (declare (not safe))
              (cons __tmp49534 __tmp49529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49537 __tmp49528))))
                                        (declare (not safe))
                                        (cons __tmp49527 _g2101221022_))))
                                   (__tmp49513
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20223_
                                       _L19867_)
                                      (let ((__tmp49514
                                             (lambda (_g2101321025_
                                                      _g2101421028_
                                                      _g2101521030_)
                                               (let ((__tmp49515
                                                      (let ((__tmp49525
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp49516
                                                             (let ((__tmp49522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49524 (gx#datum->syntax '#f 'quote))
                                  (__tmp49523
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2101421028_ '()))))
                              (declare (not safe))
                              (cons __tmp49524 __tmp49523)))
                           (__tmp49517
                            (let ((__tmp49518
                                   (let ((__tmp49519
                                          (let ((__tmp49521
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp49520
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2101321025_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49521 __tmp49520))))
                                     (declare (not safe))
                                     (cons __tmp49519 '()))))
                              (declare (not safe))
                              (cons ':: __tmp49518))))
                       (declare (not safe))
                       (cons __tmp49522 __tmp49517))))
                (declare (not safe))
                (cons __tmp49525 __tmp49516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49515
                                                       _g2101521030_)))))
                                        (declare (not safe))
                                        (foldr2 __tmp49514
                                                '()
                                                _L20223_
                                                _L19867_)))))
                               (declare (not safe))
                               (foldr2 __tmp49526
                                       __tmp49513
                                       _L20081_
                                       _L19651_)))))
                      (declare (not safe))
                      (cons __tmp49538 __tmp49512))))
              (declare (not safe))
              (_g2089021007_ __tmp49511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2086420875_)))
                                            (__tmp49539
                                             (let ((__tmp49566
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49540
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L19793_
                                                       _L19651_)
                                                      (let ((__tmp49554
                                                             (lambda (_g2103621043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2103721046_
                              _g2103821048_)
                       (let ((__tmp49555
                              (let ((__tmp49565 (gx#datum->syntax '#f '@list))
                                    (__tmp49556
                                     (let ((__tmp49562
                                            (let ((__tmp49564
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49563
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2103721046_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp49564 __tmp49563)))
                                           (__tmp49557
                                            (let ((__tmp49558
                                                   (let ((__tmp49559
                                                          (let ((__tmp49561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp49560
                         (let ()
                           (declare (not safe))
                           (cons _g2103621043_ '()))))
                    (declare (not safe))
                    (cons __tmp49561 __tmp49560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49559 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp49558))))
                                       (declare (not safe))
                                       (cons __tmp49562 __tmp49557))))
                                (declare (not safe))
                                (cons __tmp49565 __tmp49556))))
                         (declare (not safe))
                         (cons __tmp49555 _g2103821048_))))
                    (__tmp49541
                     (begin
                       (gx#syntax-check-splice-targets _L20010_ _L19867_)
                       (let ((__tmp49542
                              (lambda (_g2103921051_
                                       _g2104021054_
                                       _g2104121056_)
                                (let ((__tmp49543
                                       (let ((__tmp49553
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp49544
                                              (let ((__tmp49550
                                                     (let ((__tmp49552
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp49551
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2104021054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp49552 __tmp49551)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49545
                                                     (let ((__tmp49546
                                                            (let ((__tmp49547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49549
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp49548
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2103921051_ '()))))
                             (declare (not safe))
                             (cons __tmp49549 __tmp49548))))
                      (declare (not safe))
                      (cons __tmp49547 '()))))
               (declare (not safe))
               (cons ':: __tmp49546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49550 __tmp49545))))
                                         (declare (not safe))
                                         (cons __tmp49553 __tmp49544))))
                                  (declare (not safe))
                                  (cons __tmp49543 _g2104121056_)))))
                         (declare (not safe))
                         (foldr2 __tmp49542 '() _L20010_ _L19867_)))))
                (declare (not safe))
                (foldr2 __tmp49554 __tmp49541 _L19793_ _L19651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49566 __tmp49540))))
                                       (declare (not safe))
                                       (_g2086221033_ __tmp49539))))
                                 _g2083620847_)))
                             (__tmp49567
                              (let ((__tmp49594 (gx#datum->syntax '#f '@list))
                                    (__tmp49568
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19722_
                                        _L19651_)
                                       (let ((__tmp49582
                                              (lambda (_g2106221069_
                                                       _g2106321072_
                                                       _g2106421074_)
                                                (let ((__tmp49583
                                                       (let ((__tmp49593
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp49584
                                                              (let ((__tmp49590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49592 (gx#datum->syntax '#f 'quote))
                                   (__tmp49591
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2106321072_ '()))))
                               (declare (not safe))
                               (cons __tmp49592 __tmp49591)))
                            (__tmp49585
                             (let ((__tmp49586
                                    (let ((__tmp49587
                                           (let ((__tmp49589
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp49588
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2106221069_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49589 __tmp49588))))
                                      (declare (not safe))
                                      (cons __tmp49587 '()))))
                               (declare (not safe))
                               (cons ':: __tmp49586))))
                        (declare (not safe))
                        (cons __tmp49590 __tmp49585))))
                 (declare (not safe))
                 (cons __tmp49593 __tmp49584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49583
                                                        _g2106421074_))))
                                             (__tmp49569
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19939_
                                                 _L19867_)
                                                (let ((__tmp49570
                                                       (lambda (_g2106521077_
                                                                _g2106621080_
                                                                _g2106721082_)
                                                         (let ((__tmp49571
                                                                (let ((__tmp49581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49572
                               (let ((__tmp49578
                                      (let ((__tmp49580
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp49579
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2106621080_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49580 __tmp49579)))
                                     (__tmp49573
                                      (let ((__tmp49574
                                             (let ((__tmp49575
                                                    (let ((__tmp49577
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp49576
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2106521077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp49577 __tmp49576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49575 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49574))))
                                 (declare (not safe))
                                 (cons __tmp49578 __tmp49573))))
                          (declare (not safe))
                          (cons __tmp49581 __tmp49572))))
                   (declare (not safe))
                   (cons __tmp49571 _g2106721082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr2 __tmp49570
                                                          '()
                                                          _L19939_
                                                          _L19867_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp49582
                                                 __tmp49569
                                                 _L19722_
                                                 _L19651_)))))
                                (declare (not safe))
                                (cons __tmp49594 __tmp49568))))
                        (declare (not safe))
                        (_g2083421059_ __tmp49567))))
                  _g2080820819_)))
              (__tmp49595
               (let ((__tmp49597 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp49596
                      (let () (declare (not safe)) (cons _L19556_ '()))))
                 (declare (not safe))
                 (cons __tmp49597 __tmp49596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2080621085_ __tmp49595))))
                                           _g2078020791_)))
                                       (__tmp49598
                                        (let ((__tmp49600
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp49599
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19528_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49600 __tmp49599))))
                                  (declare (not safe))
                                  (_g2077821089_ __tmp49598))))
                            _g2075220763_)))
                        (__tmp49601
                         (let ((__tmp49603
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp49602
                                (let ()
                                  (declare (not safe))
                                  (cons _L19500_ '()))))
                           (declare (not safe))
                           (cons __tmp49603 __tmp49602))))
                   (declare (not safe))
                   (_g2075021093_ __tmp49601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2072420735_)))
                                                 (__tmp49604
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _type-constructor20371_))
                                                      '#f
                                                      (let* ((_g2110121116_
                                                              (lambda (_g2110221112_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2110221112_)))
                     (_g2110021164_
                      (lambda (_g2110221120_)
                        (if (gx#stx-pair? _g2110221120_)
                            (let ((_e2110621123_ (gx#syntax-e _g2110221120_)))
                              (let ((_hd2110521127_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2110621123_)))
                                    (_tl2110421130_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2110621123_))))
                                (if (gx#stx-datum? _hd2110521127_)
                                    (let ((_e2110721133_
                                           (gx#stx-e _hd2110521127_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2110721133_
                                                    'constructor:))
                                          (if (gx#stx-pair? _tl2110421130_)
                                              (let ((_e2111021137_
                                                     (gx#syntax-e
                                                      _tl2110421130_)))
                                                (let ((_hd2110921141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2111021137_)))
                                                      (_tl2110821144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2111021137_))))
                                                  (if (gx#stx-null?
                                                       _tl2110821144_)
                                                      ((lambda (_L21147_)
                                                         (let ()
                                                           (let ((__tmp49606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49605
                          (let () (declare (not safe)) (cons _L21147_ '()))))
                     (declare (not safe))
                     (cons __tmp49606 __tmp49605))))
               _hd2110921141_)
              (let () (declare (not safe)) (_g2110121116_ _g2110221120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2110121116_ _g2110221120_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2110121116_ _g2110221120_))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2110121116_ _g2110221120_)))))
                            (let ()
                              (declare (not safe))
                              (_g2110121116_ _g2110221120_))))))
                (declare (not safe))
                (_g2110021164_ _type-constructor20371_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g2072221097_ __tmp49604))))
                                      _g2069620707_))))
                             (declare (not safe))
                             (_g2069421168_ _final?20449_))))
                       _g2066820679_))))
              (declare (not safe))
              (_g2066621172_ _struct?19413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2064020651_)))
                                            (__tmp49607
                                             (let ((__tmp49611
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp49608
                                                    (let ((__tmp49609
                                                           (let ((__tmp49610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2117921182_ _g2118021185_)
                            (let ()
                              (declare (not safe))
                              (cons _g2117921182_ _g2118021185_)))))
                     (declare (not safe))
                     (foldr1 __tmp49610 '() _L19651_))))
              (declare (not safe))
              (cons __tmp49609 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49611 __tmp49608))))
                                       (declare (not safe))
                                       (_g2063821176_ __tmp49607))))
                                 _g2061220623_)))
                             (__tmp49612
                              (if _struct?19413_
                                  (if _super19424_
                                      (let* ((_g2119221200_
                                              (lambda (_g2119321196_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g2119321196_)))
                                             (_g2119121219_
                                              (lambda (_g2119321204_)
                                                ((lambda (_L21207_)
                                                   (let ()
                                                     (let ((__tmp49627
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@list))
                                                           (__tmp49623
                                                            (let ((__tmp49624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49626
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp49625
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21207_ '()))))
                             (declare (not safe))
                             (cons __tmp49626 __tmp49625))))
                      (declare (not safe))
                      (cons __tmp49624 '()))))
               (declare (not safe))
               (cons __tmp49627 __tmp49623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2119321204_))))
                                        (declare (not safe))
                                        (_g2119121219_ _super-ref19410_))
                                      (let ((__tmp49622
                                             (gx#datum->syntax '#f '@list)))
                                        (declare (not safe))
                                        (cons __tmp49622 '())))
                                  (let* ((_g2122321240_
                                          (lambda (_g2122421236_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2122421236_)))
                                         (_g2122221300_
                                          (lambda (_g2122421244_)
                                            (if (gx#stx-pair/null?
                                                 _g2122421244_)
                                                (let ((_g49613_
                                                       (gx#syntax-split-splice
                                                        _g2122421244_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49614_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49613_)
                         (##vector-length _g49613_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49614_ 2)))
                  (error "Context expects 2 values" _g49614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2122621247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49613_
                                                              0)))
                                                          (_tl2122821250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49613_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2122821250_)
                                                          (letrec ((_loop2122921253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2122721257_ _super-id2123321260_)
                              (if (gx#stx-pair? _hd2122721257_)
                                  (let ((_e2123021263_
                                         (gx#syntax-e _hd2122721257_)))
                                    (let ((_lp-hd2123121267_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2123021263_)))
                                          (_lp-tl2123221270_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2123021263_))))
                                      (let ((__tmp49621
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2123121267_
                                                     _super-id2123321260_))))
                                        (declare (not safe))
                                        (_loop2122921253_
                                         _lp-tl2123221270_
                                         __tmp49621))))
                                  (let ((_super-id2123421273_
                                         (reverse _super-id2123321260_)))
                                    ((lambda (_L21277_)
                                       (let ()
                                         (let ((__tmp49620
                                                (gx#datum->syntax '#f '@list))
                                               (__tmp49615
                                                (let ((__tmp49616
                                                       (lambda (_g2129121294_
                                                                _g2129221297_)
                                                         (let ((__tmp49617
                                                                (let ((__tmp49619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote-syntax))
                              (__tmp49618
                               (let ()
                                 (declare (not safe))
                                 (cons _g2129121294_ '()))))
                          (declare (not safe))
                          (cons __tmp49619 __tmp49618))))
                   (declare (not safe))
                   (cons __tmp49617 _g2129221297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp49616
                                                          '()
                                                          _L21277_))))
                                           (declare (not safe))
                                           (cons __tmp49620 __tmp49615))))
                                     _super-id2123421273_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2122921253_ _target2122621247_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2122321240_ _g2122421244_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2122321240_
                                                   _g2122421244_))))))
                                    (declare (not safe))
                                    (_g2122221300_ _super-ref19410_)))))
                        (declare (not safe))
                        (_g2061021188_ __tmp49612))))
                  _g2058420595_)))
              (__tmp49628
               (let* ((_g2130821316_
                       (lambda (_g2130921312_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2130921312_)))
                      (_g2130721335_
                       (lambda (_g2130921320_)
                         ((lambda (_L21323_)
                            (let ()
                              (let ((__tmp49630 (gx#datum->syntax '#f 'quote))
                                    (__tmp49629
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21323_ '()))))
                                (declare (not safe))
                                (cons __tmp49630 __tmp49629))))
                          _g2130921320_)))
                      (__tmp49631 (cadr _type-name20349_)))
                 (declare (not safe))
                 (_g2130721335_ __tmp49631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2058221304_ __tmp49628))))
                                           _g2055620567_)))
                                       (__tmp49632
                                        (let* ((_g2134321358_
                                                (lambda (_g2134421354_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2134421354_)))
                                               (_g2134221406_
                                                (lambda (_g2134421362_)
                                                  (if (gx#stx-pair?
                                                       _g2134421362_)
                                                      (let ((_e2134821365_
                                                             (gx#syntax-e
                                                              _g2134421362_)))
                                                        (let ((_hd2134721369_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2134821365_)))
                      (_tl2134621372_
                       (let () (declare (not safe)) (##cdr _e2134821365_))))
                  (if (gx#stx-datum? _hd2134721369_)
                      (let ((_e2134921375_ (gx#stx-e _hd2134721369_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2134921375_ 'id:))
                            (if (gx#stx-pair? _tl2134621372_)
                                (let ((_e2135221379_
                                       (gx#syntax-e _tl2134621372_)))
                                  (let ((_hd2135121383_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2135221379_)))
                                        (_tl2135021386_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2135221379_))))
                                    (if (gx#stx-null? _tl2135021386_)
                                        ((lambda (_L21389_)
                                           (let ()
                                             (let ((__tmp49634
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp49633
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L21389_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49634 __tmp49633))))
                                         _hd2135121383_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2134321358_ _g2134421362_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2134321358_ _g2134421362_)))
                            (let ()
                              (declare (not safe))
                              (_g2134321358_ _g2134421362_))))
                      (let ()
                        (declare (not safe))
                        (_g2134321358_ _g2134421362_)))))
              (let () (declare (not safe)) (_g2134321358_ _g2134421362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_g2134221406_ _type-id20356_))))
                                  (declare (not safe))
                                  (_g2055421339_ __tmp49632))))
                            _g2052820539_)))
                        (__tmp49635
                         (let ((__tmp49636
                                (let ((__tmp49637
                                       (let ((__tmp49638
                                              (let ((__tmp49639
                                                     (let ((__tmp49640
                                                            (let ((__tmp49641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49642
                                  (lambda (_g2141321416_ _g2141421419_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2141321416_ _g2141421419_)))))
                             (declare (not safe))
                             (foldr1 __tmp49642 '() _L20509_))))
                      (declare (not safe))
                      (cons _L19556_ __tmp49641))))
               (declare (not safe))
               (cons _L19528_ __tmp49640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L19584_ __tmp49639))))
                                         (declare (not safe))
                                         (cons _L19500_ __tmp49638))))
                                  (declare (not safe))
                                  (cons _L19442_ __tmp49637))))
                           (declare (not safe))
                           (_wrap19415_ __tmp49636))))
                   (declare (not safe))
                   (_g2052621410_ __tmp49635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _type-body2046620505_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2046120485_
                                       _target2045820479_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g2045520472_ _g2045620476_))))))
                        (let ()
                          (declare (not safe))
                          (_g2045520472_ _g2045620476_)))))
                 (__tmp49644
                  (let ((__tmp49645
                         (let ((__tmp49646
                                (let ((__tmp49647
                                       (let ((__tmp49648
                                              (let ((__tmp49649
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldr1 cons
                                                               _type-mixin-slots20342_
                                                               _type-slots20325_))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp49649
                                                        _type-properties20446_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp49648
                                                 _type-final20452_))))
                                  (declare (not safe))
                                  (foldr1 cons
                                          __tmp49647
                                          _type-constructor20371_))))
                           (declare (not safe))
                           (foldr1 cons __tmp49646 _type-name20349_))))
                    (declare (not safe))
                    (foldr1 cons __tmp49645 _type-id20356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2045421422_
                                                     __tmp49644))))
                                              _mixin-usetf2025120290_))))))
                             (let ()
                               (declare (not safe))
                               (_loop2024620270_ _target2024320264_ '())))
                           (let ()
                             (declare (not safe))
                             (_g2024020257_ _g2024120261_))))))
                 (let () (declare (not safe)) (_g2024020257_ _g2024120261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp49651
                                                   (gx#stx-map
                                                    (lambda (_g2142921431_)
                                                      (_make-id19417_
                                                       '"&"
                                                       _g2142921431_))
                                                    (let ((__tmp49652
                                                           (lambda (_g2143421437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2143521440_)
                     (let ()
                       (declare (not safe))
                       (cons _g2143421437_ _g2143521440_)))))
              (declare (not safe))
              (foldr1 __tmp49652 '() _L20010_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_g2023921426_ __tmp49651))))
                                       _mixin-ugetf2018020219_))))))
                      (let ()
                        (declare (not safe))
                        (_loop2017520199_ _target2017220193_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2016920186_ _g2017020190_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2016920186_
                                                     _g2017020190_)))))
                                           (__tmp49654
                                            (gx#stx-map
                                             (lambda (_g2144621448_)
                                               (_make-id19417_
                                                '"&"
                                                _g2144621448_))
                                             (let ((__tmp49655
                                                    (lambda (_g2145121454_
                                                             _g2145221457_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g2145121454_
                                                              _g2145221457_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp49655
                                                       '()
                                                       _L19939_)))))
                                      (declare (not safe))
                                      (_g2016821443_ __tmp49654))))
                                _usetf2010920148_))))))
               (let ()
                 (declare (not safe))
                 (_loop2010420128_ _target2010120122_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2009820115_
                                                        _g2009920119_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2009820115_ _g2009920119_)))))
                                    (__tmp49657
                                     (gx#stx-map
                                      (lambda (_g2146321465_)
                                        (_make-id19417_ '"&" _g2146321465_))
                                      (let ((__tmp49658
                                             (lambda (_g2146821471_
                                                      _g2146921474_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g2146821471_
                                                       _g2146921474_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp49658 '() _L19793_)))))
                               (declare (not safe))
                               (_g2009721460_ __tmp49657))))
                         _ugetf2003820077_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop2003320057_
                                                   _target2003020051_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g2002720044_
                                                 _g2002820048_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2002720044_ _g2002820048_)))))
                             (__tmp49660
                              (gx#stx-map
                               (lambda (_g2148021482_)
                                 (_make-id19417_ '"&" _g2148021482_))
                               (let ((__tmp49661
                                      (lambda (_g2148521488_ _g2148621491_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2148521488_
                                                _g2148621491_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp49661 '() _L19722_)))))
                        (declare (not safe))
                        (_g2002621477_ __tmp49660))))
                  _mixin-setf1996720006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop1996219986_
                                            _target1995919980_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g1995619973_ _g1995719977_))))))
                             (let ()
                               (declare (not safe))
                               (_g1995619973_ _g1995719977_)))))
                      (__tmp49663
                       (gx#stx-map
                        (lambda (_g2149721499_)
                          (_make-id19417_
                           _name19421_
                           '"-"
                           _g2149721499_
                           '"-set!"))
                        _mixin-slots19810_)))
                 (declare (not safe))
                 (_g1995521494_ __tmp49663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _mixin-getf1989619935_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop1989119915_ _target1988819909_ '())))
                                (let ()
                                  (declare (not safe))
                                  (_g1988519902_ _g1988619906_))))))
                      (let ()
                        (declare (not safe))
                        (_g1988519902_ _g1988619906_)))))
               (__tmp49665
                (gx#stx-map
                 (lambda (_g2150621508_)
                   (_make-id19417_ _name19421_ '"-" _g2150621508_))
                 _mixin-slots19810_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g1988421503_ __tmp49665))))
                                            _mixin-slot1982419863_))))))
                           (let ()
                             (declare (not safe))
                             (_loop1981919843_ _target1981619837_ '())))
                         (let ()
                           (declare (not safe))
                           (_g1981319830_ _g1981419834_))))))
               (let () (declare (not safe)) (_g1981319830_ _g1981419834_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g1981221512_
                                            _mixin-slots19810_))))
                                     _setf1975019789_))))))
                    (let ()
                      (declare (not safe))
                      (_loop1974519769_ _target1974219763_ '())))
                  (let ()
                    (declare (not safe))
                    (_g1973919756_ _g1974019760_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1973919756_
                                                   _g1974019760_)))))
                                         (__tmp49668
                                          (gx#stx-map
                                           (lambda (_g2151921521_)
                                             (_make-id19417_
                                              _name19421_
                                              '"-"
                                              _g2151921521_
                                              '"-set!"))
                                           _slots19411_)))
                                    (declare (not safe))
                                    (_g1973821516_ __tmp49668))))
                              _getf1967919718_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop1967419698_
                                                        _target1967119692_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1966819685_
                                                      _g1966919689_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1966819685_ _g1966919689_)))))
                                  (__tmp49670
                                   (gx#stx-map
                                    (lambda (_g2152821530_)
                                      (_make-id19417_
                                       _name19421_
                                       '"-"
                                       _g2152821530_))
                                    _slots19411_)))
                             (declare (not safe))
                             (_g1966721525_ __tmp49670))))
                       _slot1960819647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1960319627_
                                                 _target1960019621_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g1959719614_
                                               _g1959819618_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1959719614_ _g1959819618_))))))
                      (declare (not safe))
                      (_g1959621534_ _slots19411_))))
                _g1957019581_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49672
                                                     (if _struct?19413_
                                                         (if _super19424_
                                                             (let ((__obj47283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _super19424_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj47283
                              'gerbil.core#class-type-info::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __obj47283
                              '8
                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                              '#f))
                           (class-slot-ref
                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                            __obj47283
                            'type-descriptor)))
                     '#f)
                 (map gerbil/core$<MOP>$<MOP:2>#class-type-descriptor
                      _super19424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g1956821538_ __tmp49672))))
                                         _g1954219553_)))
                                     (__tmp49673
                                      (_make-id19417_ _name19421_ '"?")))
                                (declare (not safe))
                                (_g1954021542_ __tmp49673))))
                          _g1951419525_)))
                      (__tmp49674 (_make-id19417_ '"make-" _name19421_)))
                 (declare (not safe))
                 (_g1951221546_ __tmp49674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1948619497_)))
                                               (__tmp49675
                                                (_make-id19417_
                                                 _name19421_
                                                 '"::t")))
                                          (declare (not safe))
                                          (_g1948421550_ __tmp49675))))
                                    _g1945819469_))))
                           (declare (not safe))
                           (_g1945621554_ _id19409_))))
                     _g1942819439_)))
                 (__tmp49676
                  (if _struct?19413_
                      (gx#datum->syntax '#f 'defstruct-type)
                      (gx#datum->syntax '#f 'defclass-type))))
            (declare (not safe))
            (_g1942621558_ __tmp49676)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defstruct|
      (lambda (_stx21622_)
        (letrec ((_generate21625_
                  (lambda (_hd21709_ _fields21711_ _body21712_)
                    (let* ((___stx4422044221_ _hd21709_)
                           (_g2171521730_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4422044221_))))
                      (let ((___kont4422344224_
                             (lambda (_L21768_ _L21770_)
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-typedef|
                                  _stx21622_
                                  _L21770_
                                  _L21768_
                                  _fields21711_
                                  _body21712_
                                  '#t))))
                            (___kont4422544226_
                             (lambda ()
                               (if (gx#identifier? _hd21709_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:4>[1]#generate-typedef|
                                      _stx21622_
                                      _hd21709_
                                      '#f
                                      _fields21711_
                                      _body21712_
                                      '#t))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; struct name not an identifier"
                                    _stx21622_
                                    _hd21709_)))))
                        (let ((___match4424144242_
                               (lambda (_e2172121748_
                                        _hd2172021752_
                                        _tl2171921755_
                                        _e2172421758_
                                        _hd2172321762_
                                        _tl2172221765_)
                                 (let ((_L21768_ _hd2172321762_)
                                       (_L21770_ _hd2172021752_))
                                   (if (and (gx#identifier? _L21770_)
                                            (let ()
                                              (declare (not safe))
                                              (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                               _L21768_
                                               gerbil/core$<MOP>$<MOP:2>#class-type-struct?)))
                                       (___kont4422344224_ _L21768_ _L21770_)
                                       (___kont4422544226_))))))
                          (if (gx#stx-pair? ___stx4422044221_)
                              (let ((_e2172121748_
                                     (gx#syntax-e ___stx4422044221_)))
                                (let ((_tl2171921755_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2172121748_)))
                                      (_hd2172021752_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2172121748_))))
                                  (if (gx#stx-pair? _tl2171921755_)
                                      (let ((_e2172421758_
                                             (gx#syntax-e _tl2171921755_)))
                                        (let ((_tl2172221765_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2172421758_)))
                                              (_hd2172321762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2172421758_))))
                                          (if (gx#stx-null? _tl2172221765_)
                                              (___match4424144242_
                                               _e2172121748_
                                               _hd2172021752_
                                               _tl2171921755_
                                               _e2172421758_
                                               _hd2172321762_
                                               _tl2172221765_)
                                              (___kont4422544226_))))
                                      (___kont4422544226_))))
                              (___kont4422544226_))))))))
          (let* ((_g2162821647_
                  (lambda (_g2162921643_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2162921643_)))
                 (_g2162721705_
                  (lambda (_g2162921651_)
                    (if (gx#stx-pair? _g2162921651_)
                        (let ((_e2163521654_ (gx#syntax-e _g2162921651_)))
                          (let ((_hd2163421658_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2163521654_)))
                                (_tl2163321661_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2163521654_))))
                            (if (gx#stx-pair? _tl2163321661_)
                                (let ((_e2163821664_
                                       (gx#syntax-e _tl2163321661_)))
                                  (let ((_hd2163721668_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2163821664_)))
                                        (_tl2163621671_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2163821664_))))
                                    (if (gx#stx-pair? _tl2163621671_)
                                        (let ((_e2164121674_
                                               (gx#syntax-e _tl2163621671_)))
                                          (let ((_hd2164021678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2164121674_)))
                                                (_tl2163921681_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2164121674_))))
                                            ((lambda (_L21684_
                                                      _L21686_
                                                      _L21687_)
                                               (if (and (gx#identifier-list?
                                                         _L21686_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
                                                           _L21684_)))
                                                   (_generate21625_
                                                    _L21687_
                                                    _L21686_
                                                    _L21684_)
                                                   (_g2162821647_
                                                    _g2162921651_)))
                                             _tl2163921681_
                                             _hd2164021678_
                                             _hd2163721668_)))
                                        (_g2162821647_ _g2162921651_))))
                                (_g2162821647_ _g2162921651_))))
                        (_g2162821647_ _g2162921651_)))))
            (_g2162721705_ _stx21622_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defclass|
      (lambda (_stx21789_)
        (letrec ((_generate21792_
                  (lambda (_hd21876_ _slots21878_ _body21879_)
                    (let* ((___stx4424444245_ _hd21876_)
                           (_g2188221894_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4424444245_))))
                      (let ((___kont4424744248_
                             (lambda (_L21922_ _L21924_)
                               (let ((__tmp49677 (gx#syntax->list _L21922_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-typedef|
                                  _stx21789_
                                  _L21924_
                                  __tmp49677
                                  _slots21878_
                                  _body21879_
                                  '#f))))
                            (___kont4424944250_
                             (lambda ()
                               (if (gx#identifier? _hd21876_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:4>[1]#generate-typedef|
                                      _stx21789_
                                      _hd21876_
                                      '()
                                      _slots21878_
                                      _body21879_
                                      '#f))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx21789_
                                    _hd21876_)))))
                        (let ((___match4425744258_
                               (lambda (_e2188821912_
                                        _hd2188721916_
                                        _tl2188621919_)
                                 (let ((_L21922_ _tl2188621919_)
                                       (_L21924_ _hd2188721916_))
                                   (if (and (gx#stx-list? _L21922_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21922_))
                                       (___kont4424744248_ _L21922_ _L21924_)
                                       (___kont4424944250_))))))
                          (if (gx#stx-pair? ___stx4424444245_)
                              (let ((_e2188821912_
                                     (gx#syntax-e ___stx4424444245_)))
                                (let ((_tl2188621919_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2188821912_)))
                                      (_hd2188721916_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2188821912_))))
                                  (___match4425744258_
                                   _e2188821912_
                                   _hd2188721916_
                                   _tl2188621919_)))
                              (___kont4424944250_))))))))
          (let* ((_g2179521814_
                  (lambda (_g2179621810_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2179621810_)))
                 (_g2179421872_
                  (lambda (_g2179621818_)
                    (if (gx#stx-pair? _g2179621818_)
                        (let ((_e2180221821_ (gx#syntax-e _g2179621818_)))
                          (let ((_hd2180121825_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2180221821_)))
                                (_tl2180021828_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2180221821_))))
                            (if (gx#stx-pair? _tl2180021828_)
                                (let ((_e2180521831_
                                       (gx#syntax-e _tl2180021828_)))
                                  (let ((_hd2180421835_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2180521831_)))
                                        (_tl2180321838_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2180521831_))))
                                    (if (gx#stx-pair? _tl2180321838_)
                                        (let ((_e2180821841_
                                               (gx#syntax-e _tl2180321838_)))
                                          (let ((_hd2180721845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2180821841_)))
                                                (_tl2180621848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2180821841_))))
                                            ((lambda (_L21851_
                                                      _L21853_
                                                      _L21854_)
                                               (if (and (gx#identifier-list?
                                                         _L21853_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
                                                           _L21851_)))
                                                   (_generate21792_
                                                    _L21854_
                                                    _L21853_
                                                    _L21851_)
                                                   (_g2179521814_
                                                    _g2179621818_)))
                                             _tl2180621848_
                                             _hd2180721845_
                                             _hd2180421835_)))
                                        (_g2179521814_ _g2179621818_))))
                                (_g2179521814_ _g2179621818_))))
                        (_g2179521814_ _g2179621818_)))))
            (_g2179421872_ _stx21789_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defmethod|
      (lambda (_stx21941_)
        (letrec ((_wrap21944_
                  (lambda (_e-stx22281_)
                    (gx#stx-wrap-source
                     _e-stx22281_
                     (gx#stx-source _stx21941_))))
                 (_method-opt?21946_
                  (lambda (_x22278_) (memq (gx#stx-e _x22278_) '(rebind:)))))
          (let* ((_g2194821977_
                  (lambda (_g2194921973_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2194921973_)))
                 (_g2194722274_
                  (lambda (_g2194921981_)
                    (if (gx#stx-pair? _g2194921981_)
                        (let ((_e2195621984_ (gx#syntax-e _g2194921981_)))
                          (let ((_hd2195521988_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2195621984_)))
                                (_tl2195421991_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2195621984_))))
                            (if (gx#stx-pair? _tl2195421991_)
                                (let ((_e2195921994_
                                       (gx#syntax-e _tl2195421991_)))
                                  (let ((_hd2195821998_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2195921994_)))
                                        (_tl2195722001_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2195921994_))))
                                    (if (gx#stx-pair? _hd2195821998_)
                                        (let ((_e2196222004_
                                               (gx#syntax-e _hd2195821998_)))
                                          (let ((_hd2196122008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2196222004_)))
                                                (_tl2196022011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2196222004_))))
                                            (if (gx#identifier? _hd2196122008_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g49728_|
                                                     _hd2196122008_)
                                                    (if (gx#stx-pair?
                                                         _tl2196022011_)
                                                        (let ((_e2196522014_
                                                               (gx#syntax-e
                                                                _tl2196022011_)))
                                                          (let ((_hd2196422018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2196522014_)))
                        (_tl2196322021_
                         (let () (declare (not safe)) (##cdr _e2196522014_))))
                    (if (gx#stx-pair? _tl2196322021_)
                        (let ((_e2196822024_ (gx#syntax-e _tl2196322021_)))
                          (let ((_hd2196722028_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2196822024_)))
                                (_tl2196622031_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2196822024_))))
                            (if (gx#stx-null? _tl2196622031_)
                                (if (gx#stx-pair? _tl2195722001_)
                                    (let ((_e2197122034_
                                           (gx#syntax-e _tl2195722001_)))
                                      (let ((_hd2197022038_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2197122034_)))
                                            (_tl2196922041_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2197122034_))))
                                        ((lambda (_L22044_
                                                  _L22046_
                                                  _L22047_
                                                  _L22048_)
                                           (if (and (gx#identifier? _L22048_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                                       _L22047_))
                                                    (gx#stx-plist?
                                                     _L22044_
                                                     _method-opt?21946_))
                                               (let* ((_klass22073_
                                                       (gx#syntax-local-value
                                                        _L22047_))
                                                      (_rebind?22076_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L22044_))
                                                           '#t
                                                           '#f))
                                                      (_g2207922087_
                                                       (lambda (_g2208022083_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2208022083_)))
                                                      (_g2207822270_
                                                       (lambda (_g2208022091_)
                                                         ((lambda (_L22094_)
                                                            (let ()
                                                              (let* ((_g2210822116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2210922112_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2210922112_)))
                             (_g2210722266_
                              (lambda (_g2210922120_)
                                ((lambda (_L22123_)
                                   (let ()
                                     (let* ((_g2213622144_
                                             (lambda (_g2213722140_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2213722140_)))
                                            (_g2213522262_
                                             (lambda (_g2213722148_)
                                               ((lambda (_L22151_)
                                                  (let ()
                                                    (let* ((_g2216422172_
                                                            (lambda (_g2216522168_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2216522168_)))
                                                           (_g2216322258_
                                                            (lambda (_g2216522176_)
                                                              ((lambda (_L22179_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2219222200_
                                   (lambda (_g2219322196_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2219322196_)))
                                  (_g2219122254_
                                   (lambda (_g2219322204_)
                                     ((lambda (_L22207_)
                                        (let ()
                                          (let* ((_g2222022228_
                                                  (lambda (_g2222122224_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2222122224_)))
                                                 (_g2221922250_
                                                  (lambda (_g2222122232_)
                                                    ((lambda (_L22235_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21944_
                                                            (let ((__tmp49682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp49680
                           (let ((__tmp49681
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22235_ '()))))
                             (declare (not safe))
                             (cons _L22179_ __tmp49681))))
                      (declare (not safe))
                      (cons __tmp49682 __tmp49680))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2222122232_))))
                                            (_g2221922250_
                                             (_wrap21944_
                                              (let ((__tmp49690
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp49683
                                                     (let ((__tmp49684
                                                            (let ((__tmp49687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49689 (gx#datum->syntax '#f 'quote))
                                 (__tmp49688
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22048_ '()))))
                             (declare (not safe))
                             (cons __tmp49689 __tmp49688)))
                          (__tmp49685
                           (let ((__tmp49686
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22207_ '()))))
                             (declare (not safe))
                             (cons _L22123_ __tmp49686))))
                      (declare (not safe))
                      (cons __tmp49687 __tmp49685))))
               (declare (not safe))
               (cons _L22094_ __tmp49684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49690
                                                      __tmp49683)))))))
                                      _g2219322204_))))
                             (_g2219122254_ _rebind?22076_))))
                       _g2216522176_))))
              (_g2216322258_
               (_wrap21944_
                (let ((__tmp49727 (gx#datum->syntax '#f 'def))
                      (__tmp49691
                       (let ((__tmp49692
                              (let ((__tmp49693
                                     (let ((__tmp49726
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp49694
                                            (let ((__tmp49696
                                                   (let ((__tmp49697
                                                          (let ((__tmp49698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49699
                                (let ((__tmp49725
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp49700
                                       (let ((__tmp49701
                                              (let ((__tmp49702
                                                     (let ((__tmp49717
                                                            (let ((__tmp49724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp49718
                           (let ((__tmp49723 (gx#datum->syntax '#f 'obj))
                                 (__tmp49719
                                  (let ((__tmp49722
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp49720
                                         (let ((__tmp49721
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp49721 '()))))
                                    (declare (not safe))
                                    (cons __tmp49722 __tmp49720))))
                             (declare (not safe))
                             (cons __tmp49723 __tmp49719))))
                      (declare (not safe))
                      (cons __tmp49724 __tmp49718)))
                   (__tmp49703
                    (let ((__tmp49704
                           (let ((__tmp49716
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp49705
                                  (let ((__tmp49706
                                         (let ((__tmp49715
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp49707
                                                (let ((__tmp49712
                                                       (let ((__tmp49714
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49713
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L22048_ '()))))
                 (declare (not safe))
                 (cons __tmp49714 __tmp49713)))
              (__tmp49708
               (let ((__tmp49711 (gx#datum->syntax '#f 'arg))
                     (__tmp49709
                      (let ((__tmp49710 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp49710 '()))))
                 (declare (not safe))
                 (cons __tmp49711 __tmp49709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49712
                                                        __tmp49708))))
                                           (declare (not safe))
                                           (cons __tmp49715 __tmp49707))))
                                    (declare (not safe))
                                    (cons _L22094_ __tmp49706))))
                             (declare (not safe))
                             (cons __tmp49716 __tmp49705))))
                      (declare (not safe))
                      (cons __tmp49704 '()))))
               (declare (not safe))
               (cons __tmp49717 __tmp49703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49702 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp49701))))
                                  (declare (not safe))
                                  (cons __tmp49725 __tmp49700))))
                           (declare (not safe))
                           (cons __tmp49699 '()))))
                    (declare (not safe))
                    (cons _L22151_ __tmp49698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49697 '())))
                                                  (__tmp49695
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22046_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49696 __tmp49695))))
                                       (declare (not safe))
                                       (cons __tmp49726 __tmp49694))))
                                (declare (not safe))
                                (cons __tmp49693 '()))))
                         (declare (not safe))
                         (cons _L22123_ __tmp49692))))
                  (declare (not safe))
                  (cons __tmp49727 __tmp49691)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2213722148_))))
                                       (_g2213522262_
                                        (gx#stx-identifier
                                         _L22047_
                                         '@next-method)))))
                                 _g2210922120_))))
                        (_g2210722266_
                         (gx#stx-identifier
                          _L22047_
                          _L22047_
                          '"::"
                          _L22048_)))))
                  _g2208022091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2207822270_
                                                  (let ((__obj47284
                                                         _klass22073_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj47284
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj47284
                                                           '8
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj47284
                                                         'type-descriptor)))))
                                               (if (let ((__tmp49679
                                                          (gx#identifier?
                                                           _L22048_)))
                                                     (declare (not safe))
                                                     (not __tmp49679))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21941_
                                                    _L22048_)
                                                   (if (let ((__tmp49678
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L22047_))))
                 (declare (not safe))
                 (not __tmp49678))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx21941_
                _L22047_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx21941_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2196922041_
                                         _hd2197022038_
                                         _hd2196722028_
                                         _hd2196422018_)))
                                    (_g2194821977_ _g2194921981_))
                                (_g2194821977_ _g2194921981_))))
                        (_g2194821977_ _g2194921981_))))
                (_g2194821977_ _g2194921981_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2194821977_
                                                     _g2194921981_))
                                                (_g2194821977_
                                                 _g2194921981_))))
                                        (_g2194821977_ _g2194921981_))))
                                (_g2194821977_ _g2194921981_))))
                        (_g2194821977_ _g2194921981_)))))
            (_g2194722274_ _stx21941_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@method|
      (lambda (_stx22284_)
        (letrec ((_dotted-identifier?22287_
                  (lambda (_id22920_)
                    (if (gx#identifier? _id22920_)
                        (let ((_id-str22923_
                               (symbol->string (gx#stx-e _id22920_))))
                          (if (let ()
                                (declare (not safe))
                                (string-index _id-str22923_ '#\.))
                              (let ((_split22926_
                                     (let ()
                                       (declare (not safe))
                                       (string-split _id-str22923_ '#\.))))
                                (fx= (length _split22926_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted22289_
                  (lambda (_id22909_)
                    (let* ((_id-str22912_
                            (symbol->string (gx#stx-e _id22909_)))
                           (_split22915_
                            (let ()
                              (declare (not safe))
                              (string-split _id-str22912_ '#\.))))
                      (let ((__tmp49731
                             (gx#stx-identifier _id22909_ (car _split22915_)))
                            (__tmp49729
                             (let ((__tmp49730
                                    (gx#stx-identifier
                                     _id22909_
                                     (cadr _split22915_))))
                               (declare (not safe))
                               (cons __tmp49730 '()))))
                        (declare (not safe))
                        (cons __tmp49731 __tmp49729))))))
          (let* ((___stx4426044261_ _stx22284_)
                 (_g2229422381_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4426044261_))))
            (let ((___kont4426344264_
                   (lambda (_L22802_ _L22804_ _L22805_)
                     (let* ((_g2283322848_
                             (lambda (_g2283422844_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2283422844_)))
                            (_g2283222901_
                             (lambda (_g2283422852_)
                               (if (gx#stx-pair? _g2283422852_)
                                   (let ((_e2283922855_
                                          (gx#syntax-e _g2283422852_)))
                                     (let ((_hd2283822859_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2283922855_)))
                                           (_tl2283722862_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2283922855_))))
                                       (if (gx#stx-pair? _tl2283722862_)
                                           (let ((_e2284222865_
                                                  (gx#syntax-e
                                                   _tl2283722862_)))
                                             (let ((_hd2284122869_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2284222865_)))
                                                   (_tl2284022872_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2284222865_))))
                                               (if (gx#stx-null?
                                                    _tl2284022872_)
                                                   ((lambda (_L22875_ _L22877_)
                                                      (let ()
                                                        (let ((__tmp49744
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp49732
                                                               (let ((__tmp49743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp49733
                              (let ((__tmp49734
                                     (let ((__tmp49740
                                            (let ((__tmp49742
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49741
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22875_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49742 __tmp49741)))
                                           (__tmp49735
                                            (let ((__tmp49736
                                                   (let ((__tmp49739
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp49737
                                                          (let ((__tmp49738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2289222895_ _g2289322898_)
                           (let ()
                             (declare (not safe))
                             (cons _g2289222895_ _g2289322898_)))))
                    (declare (not safe))
                    (foldr1 __tmp49738 '() _L22804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49739
                                                           __tmp49737))))
                                              (declare (not safe))
                                              (cons __tmp49736 '()))))
                                       (declare (not safe))
                                       (cons __tmp49740 __tmp49735))))
                                (declare (not safe))
                                (cons _L22877_ __tmp49734))))
                         (declare (not safe))
                         (cons __tmp49743 __tmp49733))))
                  (declare (not safe))
                  (cons __tmp49744 __tmp49732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2284122869_
                                                    _hd2283822859_)
                                                   (_g2283322848_
                                                    _g2283422852_))))
                                           (_g2283322848_ _g2283422852_))))
                                   (_g2283322848_ _g2283422852_)))))
                       (_g2283222901_ (_split-dotted22289_ _L22805_)))))
                  (___kont4426744268_
                   (lambda (_L22644_ _L22646_)
                     (let* ((_g2266322678_
                             (lambda (_g2266422674_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2266422674_)))
                            (_g2266222731_
                             (lambda (_g2266422682_)
                               (if (gx#stx-pair? _g2266422682_)
                                   (let ((_e2266922685_
                                          (gx#syntax-e _g2266422682_)))
                                     (let ((_hd2266822689_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2266922685_)))
                                           (_tl2266722692_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2266922685_))))
                                       (if (gx#stx-pair? _tl2266722692_)
                                           (let ((_e2267222695_
                                                  (gx#syntax-e
                                                   _tl2266722692_)))
                                             (let ((_hd2267122699_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2267222695_)))
                                                   (_tl2267022702_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2267222695_))))
                                               (if (gx#stx-null?
                                                    _tl2267022702_)
                                                   ((lambda (_L22705_ _L22707_)
                                                      (let ()
                                                        (let ((__tmp49752
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp49745
                                                               (let ((__tmp49746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49749
                                     (let ((__tmp49751
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp49750
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22705_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49751 __tmp49750)))
                                    (__tmp49747
                                     (let ((__tmp49748
                                            (lambda (_g2272222725_
                                                     _g2272322728_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2272222725_
                                                      _g2272322728_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp49748 '() _L22644_))))
                                (declare (not safe))
                                (cons __tmp49749 __tmp49747))))
                         (declare (not safe))
                         (cons _L22707_ __tmp49746))))
                  (declare (not safe))
                  (cons __tmp49752 __tmp49745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2267122699_
                                                    _hd2266822689_)
                                                   (_g2266322678_
                                                    _g2266422682_))))
                                           (_g2266322678_ _g2266422682_))))
                                   (_g2266322678_ _g2266422682_)))))
                       (_g2266222731_ (_split-dotted22289_ _L22646_)))))
                  (___kont4427144272_
                   (lambda (_L22548_ _L22550_ _L22551_)
                     (let ((__tmp49765 (gx#datum->syntax '#f 'apply))
                           (__tmp49753
                            (let ((__tmp49764
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp49754
                                   (let ((__tmp49755
                                          (let ((__tmp49761
                                                 (let ((__tmp49763
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49762
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22551_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49763
                                                         __tmp49762)))
                                                (__tmp49756
                                                 (let ((__tmp49757
                                                        (let ((__tmp49760
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp49758
                                                               (let ((__tmp49759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2257822581_ _g2257922584_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2257822581_ _g2257922584_)))))
                         (declare (not safe))
                         (foldr1 __tmp49759 '() _L22548_))))
                  (declare (not safe))
                  (cons __tmp49760 __tmp49758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49757 '()))))
                                            (declare (not safe))
                                            (cons __tmp49761 __tmp49756))))
                                     (declare (not safe))
                                     (cons _L22550_ __tmp49755))))
                              (declare (not safe))
                              (cons __tmp49764 __tmp49754))))
                       (declare (not safe))
                       (cons __tmp49765 __tmp49753))))
                  (___kont4427544276_
                   (lambda (_L22448_ _L22450_ _L22451_)
                     (let ((__tmp49773 (gx#datum->syntax '#f 'call-method))
                           (__tmp49766
                            (let ((__tmp49767
                                   (let ((__tmp49770
                                          (let ((__tmp49772
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp49771
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22451_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49772 __tmp49771)))
                                         (__tmp49768
                                          (let ((__tmp49769
                                                 (lambda (_g2247222475_
                                                          _g2247322478_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2247222475_
                                                           _g2247322478_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp49769 '() _L22448_))))
                                     (declare (not safe))
                                     (cons __tmp49770 __tmp49768))))
                              (declare (not safe))
                              (cons _L22450_ __tmp49767))))
                       (declare (not safe))
                       (cons __tmp49773 __tmp49766)))))
              (let* ((___match4437944380_
                      (lambda (_e2236022388_
                               _hd2235922392_
                               _tl2235822395_
                               _e2236322398_
                               _hd2236222402_
                               _tl2236122405_
                               _e2236622408_
                               _hd2236522412_
                               _tl2236422415_
                               ___splice4427744278_
                               _target2236722418_
                               _tl2236922421_)
                        (letrec ((_loop2237022424_
                                  (lambda (_hd2236822428_ _arg2237422431_)
                                    (if (gx#stx-pair? _hd2236822428_)
                                        (let ((_e2237122434_
                                               (gx#syntax-e _hd2236822428_)))
                                          (let ((_lp-tl2237322441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2237122434_)))
                                                (_lp-hd2237222438_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2237122434_))))
                                            (_loop2237022424_
                                             _lp-tl2237322441_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2237222438_
                                                     _arg2237422431_)))))
                                        (let ((_arg2237522444_
                                               (reverse _arg2237422431_)))
                                          (let ((_L22448_ _arg2237522444_)
                                                (_L22450_ _hd2236522412_)
                                                (_L22451_ _hd2236222402_))
                                            (if (gx#identifier? _L22451_)
                                                (___kont4427544276_
                                                 _L22448_
                                                 _L22450_
                                                 _L22451_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2229422381_)))))))))
                          (_loop2237022424_ _target2236722418_ '()))))
                     (___match4435344354_
                      (lambda (_e2233922488_
                               _hd2233822492_
                               _tl2233722495_
                               _e2234222498_
                               _hd2234122502_
                               _tl2234022505_
                               _e2234522508_
                               _hd2234422512_
                               _tl2234322515_
                               ___splice4427344274_
                               _target2234622518_
                               _tl2234822521_)
                        (letrec ((_loop2234922524_
                                  (lambda (_hd2234722528_ _arg2235322531_)
                                    (if (gx#stx-pair? _hd2234722528_)
                                        (let ((_e2235022534_
                                               (gx#syntax-e _hd2234722528_)))
                                          (let ((_lp-tl2235222541_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2235022534_)))
                                                (_lp-hd2235122538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2235022534_))))
                                            (_loop2234922524_
                                             _lp-tl2235222541_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2235122538_
                                                     _arg2235322531_)))))
                                        (let ((_arg2235422544_
                                               (reverse _arg2235322531_)))
                                          (let ((_L22548_ _arg2235422544_)
                                                (_L22550_ _hd2234422512_)
                                                (_L22551_ _hd2234122502_))
                                            (if (and (gx#identifier? _L22551_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp49774
                                                             (lambda (_g2257022573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2257122576_)
                       (let ()
                         (declare (not safe))
                         (cons _g2257022573_ _g2257122576_)))))
                (declare (not safe))
                (foldr1 __tmp49774 '() _L22548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4427144272_
                                                 _L22548_
                                                 _L22550_
                                                 _L22551_)
                                                (___match4437944380_
                                                 _e2233922488_
                                                 _hd2233822492_
                                                 _tl2233722495_
                                                 _e2234222498_
                                                 _hd2234122502_
                                                 _tl2234022505_
                                                 _e2234522508_
                                                 _hd2234422512_
                                                 _tl2234322515_
                                                 ___splice4427344274_
                                                 _target2234622518_
                                                 _tl2234822521_))))))))
                          (_loop2234922524_ _target2234622518_ '()))))
                     (___match4433944340_
                      (lambda (_e2233922488_
                               _hd2233822492_
                               _tl2233722495_
                               _e2234222498_
                               _hd2234122502_
                               _tl2234022505_)
                        (if (gx#stx-pair? _tl2234022505_)
                            (let ((_e2234522508_ (gx#syntax-e _tl2234022505_)))
                              (let ((_tl2234322515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2234522508_)))
                                    (_hd2234422512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2234522508_))))
                                (if (gx#stx-pair/null? _tl2234322515_)
                                    (let ((___splice4427344274_
                                           (gx#syntax-split-splice
                                            _tl2234322515_
                                            '0)))
                                      (let ((_tl2234822521_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4427344274_
                                                '1)))
                                            (_target2234622518_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4427344274_
                                                '0))))
                                        (if (gx#stx-null? _tl2234822521_)
                                            (___match4435344354_
                                             _e2233922488_
                                             _hd2233822492_
                                             _tl2233722495_
                                             _e2234222498_
                                             _hd2234122502_
                                             _tl2234022505_
                                             _e2234522508_
                                             _hd2234422512_
                                             _tl2234322515_
                                             ___splice4427344274_
                                             _target2234622518_
                                             _tl2234822521_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2229422381_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2229422381_)))))
                            (let () (declare (not safe)) (_g2229422381_)))))
                     (___match4432744328_
                      (lambda (_e2232122594_
                               _hd2232022598_
                               _tl2231922601_
                               _e2232422604_
                               _hd2232322608_
                               _tl2232222611_
                               ___splice4426944270_
                               _target2232522614_
                               _tl2232722617_)
                        (letrec ((_loop2232822620_
                                  (lambda (_hd2232622624_ _arg2233222627_)
                                    (if (gx#stx-pair? _hd2232622624_)
                                        (let ((_e2232922630_
                                               (gx#syntax-e _hd2232622624_)))
                                          (let ((_lp-tl2233122637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2232922630_)))
                                                (_lp-hd2233022634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2232922630_))))
                                            (_loop2232822620_
                                             _lp-tl2233122637_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2233022634_
                                                     _arg2233222627_)))))
                                        (let ((_arg2233322640_
                                               (reverse _arg2233222627_)))
                                          (let ((_L22644_ _arg2233322640_)
                                                (_L22646_ _hd2232322608_))
                                            (if (_dotted-identifier?22287_
                                                 _L22646_)
                                                (___kont4426744268_
                                                 _L22644_
                                                 _L22646_)
                                                (___match4433944340_
                                                 _e2232122594_
                                                 _hd2232022598_
                                                 _tl2231922601_
                                                 _e2232422604_
                                                 _hd2232322608_
                                                 _tl2232222611_))))))))
                          (_loop2232822620_ _target2232522614_ '()))))
                     (___match4432544326_
                      (lambda (_e2232122594_
                               _hd2232022598_
                               _tl2231922601_
                               _e2232422604_
                               _hd2232322608_
                               _tl2232222611_
                               ___splice4426944270_
                               _target2232522614_
                               _tl2232722617_)
                        (if (gx#stx-null? _tl2232722617_)
                            (___match4432744328_
                             _e2232122594_
                             _hd2232022598_
                             _tl2231922601_
                             _e2232422604_
                             _hd2232322608_
                             _tl2232222611_
                             ___splice4426944270_
                             _target2232522614_
                             _tl2232722617_)
                            (if (gx#stx-pair? _tl2232222611_)
                                (let ((_e2234522508_
                                       (gx#syntax-e _tl2232222611_)))
                                  (let ((_tl2234322515_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2234522508_)))
                                        (_hd2234422512_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2234522508_))))
                                    (if (gx#stx-pair/null? _tl2234322515_)
                                        (let ((___splice4427344274_
                                               (gx#syntax-split-splice
                                                _tl2234322515_
                                                '0)))
                                          (let ((_tl2234822521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4427344274_
                                                    '1)))
                                                (_target2234622518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4427344274_
                                                    '0))))
                                            (if (gx#stx-null? _tl2234822521_)
                                                (___match4435344354_
                                                 _e2232122594_
                                                 _hd2232022598_
                                                 _tl2231922601_
                                                 _e2232422604_
                                                 _hd2232322608_
                                                 _tl2232222611_
                                                 _e2234522508_
                                                 _hd2234422512_
                                                 _tl2234322515_
                                                 ___splice4427344274_
                                                 _target2234622518_
                                                 _tl2234822521_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2229422381_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2229422381_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2229422381_))))))
                     (___match4430744308_
                      (lambda (_e2230122742_
                               _hd2230022746_
                               _tl2229922749_
                               _e2230422752_
                               _hd2230322756_
                               _tl2230222759_
                               ___splice4426544266_
                               _target2230522762_
                               _tl2230722765_
                               _e2231622768_
                               _hd2231522772_
                               _tl2231422775_)
                        (letrec ((_loop2230822778_
                                  (lambda (_hd2230622782_ _arg2231222785_)
                                    (if (gx#stx-pair? _hd2230622782_)
                                        (let ((_e2230922788_
                                               (gx#syntax-e _hd2230622782_)))
                                          (let ((_lp-tl2231122795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2230922788_)))
                                                (_lp-hd2231022792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2230922788_))))
                                            (_loop2230822778_
                                             _lp-tl2231122795_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2231022792_
                                                     _arg2231222785_)))))
                                        (let ((_arg2231322798_
                                               (reverse _arg2231222785_)))
                                          (let ((_L22802_ _hd2231522772_)
                                                (_L22804_ _arg2231322798_)
                                                (_L22805_ _hd2230322756_))
                                            (if (and (_dotted-identifier?22287_
                                                      _L22805_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp49775
                                                             (lambda (_g2282422827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2282522830_)
                       (let ()
                         (declare (not safe))
                         (cons _g2282422827_ _g2282522830_)))))
                (declare (not safe))
                (foldr1 __tmp49775 '() _L22804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4426344264_
                                                 _L22802_
                                                 _L22804_
                                                 _L22805_)
                                                (let ((___splice4426944270_
                                                       (gx#syntax-split-splice
                                                        _tl2230222759_
                                                        '0)))
                                                  (let ((_tl2232722617_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4426944270_
                                                            '1)))
                                                        (_target2232522614_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4426944270_
                                                            '0))))
                                                    (___match4432544326_
                                                     _e2230122742_
                                                     _hd2230022746_
                                                     _tl2229922749_
                                                     _e2230422752_
                                                     _hd2230322756_
                                                     _tl2230222759_
                                                     ___splice4426944270_
                                                     _target2232522614_
                                                     _tl2232722617_))))))))))
                          (_loop2230822778_ _target2230522762_ '())))))
                (if (gx#stx-pair? ___stx4426044261_)
                    (let ((_e2230122742_ (gx#syntax-e ___stx4426044261_)))
                      (let ((_tl2229922749_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2230122742_)))
                            (_hd2230022746_
                             (let ()
                               (declare (not safe))
                               (##car _e2230122742_))))
                        (if (gx#stx-pair? _tl2229922749_)
                            (let ((_e2230422752_ (gx#syntax-e _tl2229922749_)))
                              (let ((_tl2230222759_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2230422752_)))
                                    (_hd2230322756_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2230422752_))))
                                (if (gx#stx-pair/null? _tl2230222759_)
                                    (if (fx>= (gx#stx-length _tl2230222759_)
                                              '1)
                                        (let ((___splice4426544266_
                                               (gx#syntax-split-splice
                                                _tl2230222759_
                                                '1)))
                                          (let ((_tl2230722765_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4426544266_
                                                    '1)))
                                                (_target2230522762_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4426544266_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2230722765_)
                                                (let ((_e2231622768_
                                                       (gx#syntax-e
                                                        _tl2230722765_)))
                                                  (let ((_tl2231422775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2231622768_)))
                                                        (_hd2231522772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2231622768_))))
                                                    (if (gx#stx-null?
                                                         _tl2231422775_)
                                                        (___match4430744308_
                                                         _e2230122742_
                                                         _hd2230022746_
                                                         _tl2229922749_
                                                         _e2230422752_
                                                         _hd2230322756_
                                                         _tl2230222759_
                                                         ___splice4426544266_
                                                         _target2230522762_
                                                         _tl2230722765_
                                                         _e2231622768_
                                                         _hd2231522772_
                                                         _tl2231422775_)
                                                        (let ((___splice4426944270_
                                                               (gx#syntax-split-splice
                                                                _tl2230222759_
                                                                '0)))
                                                          (let ((_tl2232722617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4426944270_ '1)))
                        (_target2232522614_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4426944270_ '0))))
                    (if (gx#stx-null? _tl2232722617_)
                        (___match4432744328_
                         _e2230122742_
                         _hd2230022746_
                         _tl2229922749_
                         _e2230422752_
                         _hd2230322756_
                         _tl2230222759_
                         ___splice4426944270_
                         _target2232522614_
                         _tl2232722617_)
                        (if (gx#stx-pair? _tl2230222759_)
                            (let ((_e2234522508_ (gx#syntax-e _tl2230222759_)))
                              (let ((_tl2234322515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2234522508_)))
                                    (_hd2234422512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2234522508_))))
                                (if (gx#stx-pair/null? _tl2234322515_)
                                    (let ((___splice4427344274_
                                           (gx#syntax-split-splice
                                            _tl2234322515_
                                            '0)))
                                      (let ((_tl2234822521_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4427344274_
                                                '1)))
                                            (_target2234622518_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4427344274_
                                                '0))))
                                        (if (gx#stx-null? _tl2234822521_)
                                            (___match4435344354_
                                             _e2230122742_
                                             _hd2230022746_
                                             _tl2229922749_
                                             _e2230422752_
                                             _hd2230322756_
                                             _tl2230222759_
                                             _e2234522508_
                                             _hd2234422512_
                                             _tl2234322515_
                                             ___splice4427344274_
                                             _target2234622518_
                                             _tl2234822521_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2229422381_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2229422381_)))))
                            (let ()
                              (declare (not safe))
                              (_g2229422381_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice4426944270_
                                                       (gx#syntax-split-splice
                                                        _tl2230222759_
                                                        '0)))
                                                  (let ((_tl2232722617_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4426944270_
                                                            '1)))
                                                        (_target2232522614_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4426944270_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2232722617_)
                                                        (___match4432744328_
                                                         _e2230122742_
                                                         _hd2230022746_
                                                         _tl2229922749_
                                                         _e2230422752_
                                                         _hd2230322756_
                                                         _tl2230222759_
                                                         ___splice4426944270_
                                                         _target2232522614_
                                                         _tl2232722617_)
                                                        (if (gx#stx-pair?
                                                             _tl2230222759_)
                                                            (let ((_e2234522508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2230222759_)))
                      (let ((_tl2234322515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2234522508_)))
                            (_hd2234422512_
                             (let ()
                               (declare (not safe))
                               (##car _e2234522508_))))
                        (if (gx#stx-pair/null? _tl2234322515_)
                            (let ((___splice4427344274_
                                   (gx#syntax-split-splice _tl2234322515_ '0)))
                              (let ((_tl2234822521_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4427344274_ '1)))
                                    (_target2234622518_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4427344274_
                                        '0))))
                                (if (gx#stx-null? _tl2234822521_)
                                    (___match4435344354_
                                     _e2230122742_
                                     _hd2230022746_
                                     _tl2229922749_
                                     _e2230422752_
                                     _hd2230322756_
                                     _tl2230222759_
                                     _e2234522508_
                                     _hd2234422512_
                                     _tl2234322515_
                                     ___splice4427344274_
                                     _target2234622518_
                                     _tl2234822521_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2229422381_)))))
                            (let () (declare (not safe)) (_g2229422381_)))))
                    (let () (declare (not safe)) (_g2229422381_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4426944270_
                                               (gx#syntax-split-splice
                                                _tl2230222759_
                                                '0)))
                                          (let ((_tl2232722617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4426944270_
                                                    '1)))
                                                (_target2232522614_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4426944270_
                                                    '0))))
                                            (if (gx#stx-null? _tl2232722617_)
                                                (___match4432744328_
                                                 _e2230122742_
                                                 _hd2230022746_
                                                 _tl2229922749_
                                                 _e2230422752_
                                                 _hd2230322756_
                                                 _tl2230222759_
                                                 ___splice4426944270_
                                                 _target2232522614_
                                                 _tl2232722617_)
                                                (if (gx#stx-pair?
                                                     _tl2230222759_)
                                                    (let ((_e2234522508_
                                                           (gx#syntax-e
                                                            _tl2230222759_)))
                                                      (let ((_tl2234322515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2234522508_)))
                    (_hd2234422512_
                     (let () (declare (not safe)) (##car _e2234522508_))))
                (if (gx#stx-pair/null? _tl2234322515_)
                    (let ((___splice4427344274_
                           (gx#syntax-split-splice _tl2234322515_ '0)))
                      (let ((_tl2234822521_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4427344274_ '1)))
                            (_target2234622518_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4427344274_ '0))))
                        (if (gx#stx-null? _tl2234822521_)
                            (___match4435344354_
                             _e2230122742_
                             _hd2230022746_
                             _tl2229922749_
                             _e2230422752_
                             _hd2230322756_
                             _tl2230222759_
                             _e2234522508_
                             _hd2234422512_
                             _tl2234322515_
                             ___splice4427344274_
                             _target2234622518_
                             _tl2234822521_)
                            (let () (declare (not safe)) (_g2229422381_)))))
                    (let () (declare (not safe)) (_g2229422381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2229422381_)))))))
                                    (if (gx#stx-pair? _tl2230222759_)
                                        (let ((_e2234522508_
                                               (gx#syntax-e _tl2230222759_)))
                                          (let ((_tl2234322515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2234522508_)))
                                                (_hd2234422512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2234522508_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2234322515_)
                                                (let ((___splice4427344274_
                                                       (gx#syntax-split-splice
                                                        _tl2234322515_
                                                        '0)))
                                                  (let ((_tl2234822521_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4427344274_
                                                            '1)))
                                                        (_target2234622518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4427344274_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2234822521_)
                                                        (___match4435344354_
                                                         _e2230122742_
                                                         _hd2230022746_
                                                         _tl2229922749_
                                                         _e2230422752_
                                                         _hd2230322756_
                                                         _tl2230222759_
                                                         _e2234522508_
                                                         _hd2234422512_
                                                         _tl2234322515_
                                                         ___splice4427344274_
                                                         _target2234622518_
                                                         _tl2234822521_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2229422381_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2229422381_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2229422381_))))))
                            (let () (declare (not safe)) (_g2229422381_)))))
                    (let () (declare (not safe)) (_g2229422381_)))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@|
      (lambda (_$stx22933_)
        (let* ((___stx4438244383_ _$stx22933_)
               (_g2293822978_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4438244383_))))
          (let ((___kont4438544386_
                 (lambda (_L23116_ _L23118_)
                   (let ((__tmp49781 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp49776
                          (let ((__tmp49777
                                 (let ((__tmp49778
                                        (let ((__tmp49780
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49779
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23116_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49780 __tmp49779))))
                                   (declare (not safe))
                                   (cons __tmp49778 '()))))
                            (declare (not safe))
                            (cons _L23118_ __tmp49777))))
                     (declare (not safe))
                     (cons __tmp49781 __tmp49776))))
                (___kont4438744388_
                 (lambda (_L23045_ _L23047_ _L23048_ _L23049_)
                   (let ((__tmp49782
                          (let ((__tmp49785
                                 (let ((__tmp49786
                                        (let ((__tmp49787
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23047_ '()))))
                                          (declare (not safe))
                                          (cons _L23048_ __tmp49787))))
                                   (declare (not safe))
                                   (cons _L23049_ __tmp49786)))
                                (__tmp49783
                                 (let ((__tmp49784
                                        (lambda (_g2307023073_ _g2307123076_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2307023073_
                                                  _g2307123076_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp49784 '() _L23045_))))
                            (declare (not safe))
                            (cons __tmp49785 __tmp49783))))
                     (declare (not safe))
                     (cons _L23049_ __tmp49782)))))
            (let* ((___match4443744438_
                    (lambda (_e2295722985_
                             _hd2295622989_
                             _tl2295522992_
                             _e2296022995_
                             _hd2295922999_
                             _tl2295823002_
                             _e2296323005_
                             _hd2296223009_
                             _tl2296123012_
                             ___splice4438944390_
                             _target2296423015_
                             _tl2296623018_)
                      (letrec ((_loop2296723021_
                                (lambda (_hd2296523025_ _rest2297123028_)
                                  (if (gx#stx-pair? _hd2296523025_)
                                      (let ((_e2296823031_
                                             (gx#syntax-e _hd2296523025_)))
                                        (let ((_lp-tl2297023038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2296823031_)))
                                              (_lp-hd2296923035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2296823031_))))
                                          (_loop2296723021_
                                           _lp-tl2297023038_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2296923035_
                                                   _rest2297123028_)))))
                                      (let ((_rest2297223041_
                                             (reverse _rest2297123028_)))
                                        (___kont4438744388_
                                         _rest2297223041_
                                         _hd2296223009_
                                         _hd2295922999_
                                         _hd2295622989_))))))
                        (_loop2296723021_ _target2296423015_ '()))))
                   (___match4441144412_
                    (lambda (_e2294423086_
                             _hd2294323090_
                             _tl2294223093_
                             _e2294723096_
                             _hd2294623100_
                             _tl2294523103_
                             _e2295023106_
                             _hd2294923110_
                             _tl2294823113_)
                      (let ((_L23116_ _hd2294923110_)
                            (_L23118_ _hd2294623100_))
                        (if (gx#identifier? _L23116_)
                            (___kont4438544386_ _L23116_ _L23118_)
                            (if (gx#stx-pair/null? _tl2294823113_)
                                (let ((___splice4438944390_
                                       (gx#syntax-split-splice
                                        _tl2294823113_
                                        '0)))
                                  (let ((_tl2296623018_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4438944390_
                                            '1)))
                                        (_target2296423015_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4438944390_
                                            '0))))
                                    (if (gx#stx-null? _tl2296623018_)
                                        (___match4443744438_
                                         _e2294423086_
                                         _hd2294323090_
                                         _tl2294223093_
                                         _e2294723096_
                                         _hd2294623100_
                                         _tl2294523103_
                                         _e2295023106_
                                         _hd2294923110_
                                         _tl2294823113_
                                         ___splice4438944390_
                                         _target2296423015_
                                         _tl2296623018_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2293822978_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2293822978_))))))))
              (if (gx#stx-pair? ___stx4438244383_)
                  (let ((_e2294423086_ (gx#syntax-e ___stx4438244383_)))
                    (let ((_tl2294223093_
                           (let () (declare (not safe)) (##cdr _e2294423086_)))
                          (_hd2294323090_
                           (let ()
                             (declare (not safe))
                             (##car _e2294423086_))))
                      (if (gx#stx-pair? _tl2294223093_)
                          (let ((_e2294723096_ (gx#syntax-e _tl2294223093_)))
                            (let ((_tl2294523103_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2294723096_)))
                                  (_hd2294623100_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2294723096_))))
                              (if (gx#stx-pair? _tl2294523103_)
                                  (let ((_e2295023106_
                                         (gx#syntax-e _tl2294523103_)))
                                    (let ((_tl2294823113_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2295023106_)))
                                          (_hd2294923110_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2295023106_))))
                                      (if (gx#stx-null? _tl2294823113_)
                                          (___match4441144412_
                                           _e2294423086_
                                           _hd2294323090_
                                           _tl2294223093_
                                           _e2294723096_
                                           _hd2294623100_
                                           _tl2294523103_
                                           _e2295023106_
                                           _hd2294923110_
                                           _tl2294823113_)
                                          (if (gx#stx-pair/null?
                                               _tl2294823113_)
                                              (let ((___splice4438944390_
                                                     (gx#syntax-split-splice
                                                      _tl2294823113_
                                                      '0)))
                                                (let ((_tl2296623018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4438944390_
                                                          '1)))
                                                      (_target2296423015_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4438944390_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2296623018_)
                                                      (___match4443744438_
                                                       _e2294423086_
                                                       _hd2294323090_
                                                       _tl2294223093_
                                                       _e2294723096_
                                                       _hd2294623100_
                                                       _tl2294523103_
                                                       _e2295023106_
                                                       _hd2294923110_
                                                       _tl2294823113_
                                                       ___splice4438944390_
                                                       _target2296423015_
                                                       _tl2296623018_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2293822978_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2293822978_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2293822978_)))))
                          (let () (declare (not safe)) (_g2293822978_)))))
                  (let () (declare (not safe)) (_g2293822978_))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@-set!|
      (lambda (_$stx23138_)
        (let* ((___stx4444044441_ _$stx23138_)
               (_g2314323195_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4444044441_))))
          (let ((___kont4444344444_
                 (lambda (_L23371_ _L23373_ _L23374_)
                   (let ((__tmp49794 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp49788
                          (let ((__tmp49789
                                 (let ((__tmp49791
                                        (let ((__tmp49793
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49792
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23373_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49793 __tmp49792)))
                                       (__tmp49790
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23371_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49791 __tmp49790))))
                            (declare (not safe))
                            (cons _L23374_ __tmp49789))))
                     (declare (not safe))
                     (cons __tmp49794 __tmp49788))))
                (___kont4444544446_
                 (lambda (_L23282_
                          _L23284_
                          _L23285_
                          _L23286_
                          _L23287_
                          _L23288_)
                   (let ((__tmp49795
                          (let ((__tmp49798
                                 (let ((__tmp49803 (gx#datum->syntax '#f '@))
                                       (__tmp49799
                                        (let ((__tmp49800
                                               (let ((__tmp49801
                                                      (let ((__tmp49802
                                                             (lambda (_g2331523318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2331623321_)
                       (let ()
                         (declare (not safe))
                         (cons _g2331523318_ _g2331623321_)))))
                (declare (not safe))
                (foldr1 __tmp49802 '() _L23285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L23286_ __tmp49801))))
                                          (declare (not safe))
                                          (cons _L23287_ __tmp49800))))
                                   (declare (not safe))
                                   (cons __tmp49803 __tmp49799)))
                                (__tmp49796
                                 (let ((__tmp49797
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23282_ '()))))
                                   (declare (not safe))
                                   (cons _L23284_ __tmp49797))))
                            (declare (not safe))
                            (cons __tmp49798 __tmp49796))))
                     (declare (not safe))
                     (cons _L23288_ __tmp49795)))))
            (let* ((___match4451544516_
                    (lambda (_e2316823202_
                             _hd2316723206_
                             _tl2316623209_
                             _e2317123212_
                             _hd2317023216_
                             _tl2316923219_
                             _e2317423222_
                             _hd2317323226_
                             _tl2317223229_
                             ___splice4444744448_
                             _target2317523232_
                             _tl2317723235_
                             _e2318623238_
                             _hd2318523242_
                             _tl2318423245_
                             _e2318923248_
                             _hd2318823252_
                             _tl2318723255_)
                      (letrec ((_loop2317823258_
                                (lambda (_hd2317623262_ _path2318223265_)
                                  (if (gx#stx-pair? _hd2317623262_)
                                      (let ((_e2317923268_
                                             (gx#syntax-e _hd2317623262_)))
                                        (let ((_lp-tl2318123275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2317923268_)))
                                              (_lp-hd2318023272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2317923268_))))
                                          (_loop2317823258_
                                           _lp-tl2318123275_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2318023272_
                                                   _path2318223265_)))))
                                      (let ((_path2318323278_
                                             (reverse _path2318223265_)))
                                        (___kont4444544446_
                                         _hd2318823252_
                                         _hd2318523242_
                                         _path2318323278_
                                         _hd2317323226_
                                         _hd2317023216_
                                         _hd2316723206_))))))
                        (_loop2317823258_ _target2317523232_ '()))))
                   (___match4447544476_
                    (lambda (_e2315023331_
                             _hd2314923335_
                             _tl2314823338_
                             _e2315323341_
                             _hd2315223345_
                             _tl2315123348_
                             _e2315623351_
                             _hd2315523355_
                             _tl2315423358_
                             _e2315923361_
                             _hd2315823365_
                             _tl2315723368_)
                      (let ((_L23371_ _hd2315823365_)
                            (_L23373_ _hd2315523355_)
                            (_L23374_ _hd2315223345_))
                        (if (gx#identifier? _L23373_)
                            (___kont4444344444_ _L23371_ _L23373_ _L23374_)
                            (if (gx#stx-pair/null? _tl2315423358_)
                                (if (fx>= (gx#stx-length _tl2315423358_) '2)
                                    (let ((___splice4444744448_
                                           (gx#syntax-split-splice
                                            _tl2315423358_
                                            '2)))
                                      (let ((_tl2317723235_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4444744448_
                                                '1)))
                                            (_target2317523232_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4444744448_
                                                '0))))
                                        (if (gx#stx-pair? _tl2317723235_)
                                            (let ((_e2318623238_
                                                   (gx#syntax-e
                                                    _tl2317723235_)))
                                              (let ((_tl2318423245_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2318623238_)))
                                                    (_hd2318523242_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2318623238_))))
                                                (if (gx#stx-pair?
                                                     _tl2318423245_)
                                                    (let ((_e2318923248_
                                                           (gx#syntax-e
                                                            _tl2318423245_)))
                                                      (let ((_tl2318723255_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2318923248_)))
                    (_hd2318823252_
                     (let () (declare (not safe)) (##car _e2318923248_))))
                (if (gx#stx-null? _tl2318723255_)
                    (___match4451544516_
                     _e2315023331_
                     _hd2314923335_
                     _tl2314823338_
                     _e2315323341_
                     _hd2315223345_
                     _tl2315123348_
                     _e2315623351_
                     _hd2315523355_
                     _tl2315423358_
                     ___splice4444744448_
                     _target2317523232_
                     _tl2317723235_
                     _e2318623238_
                     _hd2318523242_
                     _tl2318423245_
                     _e2318923248_
                     _hd2318823252_
                     _tl2318723255_)
                    (let () (declare (not safe)) (_g2314323195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2314323195_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2314323195_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2314323195_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2314323195_))))))))
              (if (gx#stx-pair? ___stx4444044441_)
                  (let ((_e2315023331_ (gx#syntax-e ___stx4444044441_)))
                    (let ((_tl2314823338_
                           (let () (declare (not safe)) (##cdr _e2315023331_)))
                          (_hd2314923335_
                           (let ()
                             (declare (not safe))
                             (##car _e2315023331_))))
                      (if (gx#stx-pair? _tl2314823338_)
                          (let ((_e2315323341_ (gx#syntax-e _tl2314823338_)))
                            (let ((_tl2315123348_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2315323341_)))
                                  (_hd2315223345_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2315323341_))))
                              (if (gx#stx-pair? _tl2315123348_)
                                  (let ((_e2315623351_
                                         (gx#syntax-e _tl2315123348_)))
                                    (let ((_tl2315423358_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2315623351_)))
                                          (_hd2315523355_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2315623351_))))
                                      (if (gx#stx-pair? _tl2315423358_)
                                          (let ((_e2315923361_
                                                 (gx#syntax-e _tl2315423358_)))
                                            (let ((_tl2315723368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2315923361_)))
                                                  (_hd2315823365_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2315923361_))))
                                              (if (gx#stx-null? _tl2315723368_)
                                                  (___match4447544476_
                                                   _e2315023331_
                                                   _hd2314923335_
                                                   _tl2314823338_
                                                   _e2315323341_
                                                   _hd2315223345_
                                                   _tl2315123348_
                                                   _e2315623351_
                                                   _hd2315523355_
                                                   _tl2315423358_
                                                   _e2315923361_
                                                   _hd2315823365_
                                                   _tl2315723368_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2315423358_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2315423358_)
                        '2)
                  (let ((___splice4444744448_
                         (gx#syntax-split-splice _tl2315423358_ '2)))
                    (let ((_tl2317723235_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4444744448_ '1)))
                          (_target2317523232_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4444744448_ '0))))
                      (if (gx#stx-pair? _tl2317723235_)
                          (let ((_e2318623238_ (gx#syntax-e _tl2317723235_)))
                            (let ((_tl2318423245_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2318623238_)))
                                  (_hd2318523242_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2318623238_))))
                              (if (gx#stx-pair? _tl2318423245_)
                                  (let ((_e2318923248_
                                         (gx#syntax-e _tl2318423245_)))
                                    (let ((_tl2318723255_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2318923248_)))
                                          (_hd2318823252_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2318923248_))))
                                      (if (gx#stx-null? _tl2318723255_)
                                          (___match4451544516_
                                           _e2315023331_
                                           _hd2314923335_
                                           _tl2314823338_
                                           _e2315323341_
                                           _hd2315223345_
                                           _tl2315123348_
                                           _e2315623351_
                                           _hd2315523355_
                                           _tl2315423358_
                                           ___splice4444744448_
                                           _target2317523232_
                                           _tl2317723235_
                                           _e2318623238_
                                           _hd2318523242_
                                           _tl2318423245_
                                           _e2318923248_
                                           _hd2318823252_
                                           _tl2318723255_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2314323195_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2314323195_)))))
                          (let () (declare (not safe)) (_g2314323195_)))))
                  (let () (declare (not safe)) (_g2314323195_)))
              (let () (declare (not safe)) (_g2314323195_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2315423358_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2315423358_)
                                                        '2)
                                                  (let ((___splice4444744448_
                                                         (gx#syntax-split-splice
                                                          _tl2315423358_
                                                          '2)))
                                                    (let ((_tl2317723235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4444744448_
                                                              '1)))
                                                          (_target2317523232_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4444744448_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2317723235_)
                                                          (let ((_e2318623238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2317723235_)))
                    (let ((_tl2318423245_
                           (let () (declare (not safe)) (##cdr _e2318623238_)))
                          (_hd2318523242_
                           (let ()
                             (declare (not safe))
                             (##car _e2318623238_))))
                      (if (gx#stx-pair? _tl2318423245_)
                          (let ((_e2318923248_ (gx#syntax-e _tl2318423245_)))
                            (let ((_tl2318723255_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2318923248_)))
                                  (_hd2318823252_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2318923248_))))
                              (if (gx#stx-null? _tl2318723255_)
                                  (___match4451544516_
                                   _e2315023331_
                                   _hd2314923335_
                                   _tl2314823338_
                                   _e2315323341_
                                   _hd2315223345_
                                   _tl2315123348_
                                   _e2315623351_
                                   _hd2315523355_
                                   _tl2315423358_
                                   ___splice4444744448_
                                   _target2317523232_
                                   _tl2317723235_
                                   _e2318623238_
                                   _hd2318523242_
                                   _tl2318423245_
                                   _e2318923248_
                                   _hd2318823252_
                                   _tl2318723255_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2314323195_)))))
                          (let () (declare (not safe)) (_g2314323195_)))))
                  (let () (declare (not safe)) (_g2314323195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2314323195_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2314323195_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2314323195_)))))
                          (let () (declare (not safe)) (_g2314323195_)))))
                  (let () (declare (not safe)) (_g2314323195_))))))))))
