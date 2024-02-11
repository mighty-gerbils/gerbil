(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g49992_|
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
                            struct:
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
                       (lambda _g49654_ (gx#genident _id19409_))
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
                                              (let ((__tmp49657
                                                     (cdr _rest21585_)))
                                                (declare (not safe))
                                                (_lp21582_
                                                 __tmp49657
                                                 _r21587_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (table-set!
                                                   _tab21572_
                                                   _slot21589_
                                                   '#t))
                                                (let ((__tmp49656
                                                       (cdr _rest21585_))
                                                      (__tmp49655
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21589_
                                                               _r21587_))))
                                                  (declare (not safe))
                                                  (_lp21582_
                                                   __tmp49656
                                                   __tmp49655)))))
                                        (reverse _r21587_))))))
                       (gx#stx-for-each
                        (lambda (_slot21576_)
                          (let ((__tmp49658 (gx#stx-e _slot21576_)))
                            (declare (not safe))
                            (table-set! _tab21572_ __tmp49658 '#t)))
                        _slots21570_)
                       (if (let () (declare (not safe)) (not _super21568_))
                           '()
                           (if (gx#identifier? _super21568_)
                               (let ((__tmp49660
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19419_
                                         _super21568_))))
                                 (declare (not safe))
                                 (_dedup21574_ __tmp49660))
                               (let ((__tmp49659
                                      (concatenate
                                       (map _get-mixin-slots-r19419_
                                            _super21568_))))
                                 (declare (not safe))
                                 (_dedup21574_ __tmp49659)))))))
                  (_get-mixin-slots-r19419_
                   (lambda (_type-id21562_)
                     (let ((_info21565_
                            (gx#syntax-local-value _type-id21562_)))
                       (append (let ((__obj47556 _info21565_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj47556
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj47556
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj47556
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19419_
                                     (let ((__obj47557 _info21565_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj47557
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj47557
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj47557
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
                                  (let ((_g49661_
                                         (gx#syntax-split-splice
                                          _g1959819618_
                                          '0)))
                                    (begin
                                      (let ((_g49662_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49661_)
                                                   (##vector-length _g49661_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49662_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49662_)))
                                      (let ((_target1960019621_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49661_ 0)))
                                            (_tl1960219624_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49661_ 1))))
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
                        (let ((__tmp49935
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1960519641_ _slot1960719634_))))
                          (declare (not safe))
                          (_loop1960319627_ _lp-tl1960619644_ __tmp49935))))
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
                                         (let ((_g49663_
                                                (gx#syntax-split-splice
                                                 _g1966919689_
                                                 '0)))
                                           (begin
                                             (let ((_g49664_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g49663_)
                                                          (##vector-length
                                                           _g49663_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g49664_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g49664_)))
                                             (let ((_target1967119692_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49663_
                                                       0)))
                                                   (_tl1967319695_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49663_
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
                               (let ((__tmp49933
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd1967619712_
                                              _getf1967819705_))))
                                 (declare (not safe))
                                 (_loop1967419698_
                                  _lp-tl1967719715_
                                  __tmp49933))))
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
                                                (let ((_g49665_
                                                       (gx#syntax-split-splice
                                                        _g1974019760_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49665_)
                         (##vector-length _g49665_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49666_ 2)))
                  (error "Context expects 2 values" _g49666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1974219763_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49665_
                                                              0)))
                                                          (_tl1974419766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49665_
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
                                      (let ((__tmp49931
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1974719783_
                                                     _setf1974919776_))))
                                        (declare (not safe))
                                        (_loop1974519769_
                                         _lp-tl1974819786_
                                         __tmp49931))))
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
                                                       (let ((_g49667_
                                                              (gx#syntax-split-splice
                                                               _g1981419834_
                                                               '0)))
                                                         (begin
                                                           (let ((_g49668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g49667_)
                                (##vector-length _g49667_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g49668_ 2)))
                         (error "Context expects 2 values" _g49668_)))
                   (let ((_target1981619837_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g49667_ 0)))
                         (_tl1981819840_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g49667_ 1))))
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
                                             (let ((__tmp49930
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd1982119857_
                                                            _mixin-slot1982319850_))))
                                               (declare (not safe))
                                               (_loop1981919843_
                                                _lp-tl1982219860_
                                                __tmp49930))))
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
                                                              (let ((_g49669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1988619906_ '0)))
                        (begin
                          (let ((_g49670_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g49669_)
                                       (##vector-length _g49669_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g49670_ 2)))
                                (error "Context expects 2 values" _g49670_)))
                          (let ((_target1988819909_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g49669_ 0)))
                                (_tl1989019912_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g49669_ 1))))
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
                                                    (let ((__tmp49928
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _lp-hd1989319929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _mixin-getf1989519922_))))
              (declare (not safe))
              (_loop1989119915_ _lp-tl1989419932_ __tmp49928))))
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
                             (let ((_g49671_
                                    (gx#syntax-split-splice _g1995719977_ '0)))
                               (begin
                                 (let ((_g49672_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49671_)
                                              (##vector-length _g49671_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49672_ 2)))
                                       (error "Context expects 2 values"
                                              _g49672_)))
                                 (let ((_target1995919980_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49671_ 0)))
                                       (_tl1996119983_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49671_ 1))))
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
                   (let ((__tmp49926
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd1996420000_ _mixin-setf1996619993_))))
                     (declare (not safe))
                     (_loop1996219986_ _lp-tl1996520003_ __tmp49926))))
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
                                    (let ((_g49673_
                                           (gx#syntax-split-splice
                                            _g2002820048_
                                            '0)))
                                      (begin
                                        (let ((_g49674_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g49673_)
                                                     (##vector-length _g49673_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g49674_ 2)))
                                              (error "Context expects 2 values"
                                                     _g49674_)))
                                        (let ((_target2003020051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g49673_ 0)))
                                              (_tl2003220054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g49673_ 1))))
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
                          (let ((__tmp49923
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd2003520071_
                                         _ugetf2003720064_))))
                            (declare (not safe))
                            (_loop2003320057_ _lp-tl2003620074_ __tmp49923))))
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
                                           (let ((_g49675_
                                                  (gx#syntax-split-splice
                                                   _g2009920119_
                                                   '0)))
                                             (begin
                                               (let ((_g49676_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g49675_)
                                                            (##vector-length
                                                             _g49675_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g49676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g49676_)))
                                               (let ((_target2010120122_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g49675_
                                                         0)))
                                                     (_tl2010320125_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g49675_
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
                                 (let ((__tmp49920
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd2010620142_
                                                _usetf2010820135_))))
                                   (declare (not safe))
                                   (_loop2010420128_
                                    _lp-tl2010720145_
                                    __tmp49920))))
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
                                                  (let ((_g49677_
                                                         (gx#syntax-split-splice
                                                          _g2017020190_
                                                          '0)))
                                                    (begin
                                                      (let ((_g49678_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g49677_)
                           (##vector-length _g49677_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g49678_ 2)))
                    (error "Context expects 2 values" _g49678_)))
              (let ((_target2017220193_
                     (let () (declare (not safe)) (##vector-ref _g49677_ 0)))
                    (_tl2017420196_
                     (let () (declare (not safe)) (##vector-ref _g49677_ 1))))
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
                                        (let ((__tmp49917
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2017720213_
                                                       _mixin-ugetf2017920206_))))
                                          (declare (not safe))
                                          (_loop2017520199_
                                           _lp-tl2017820216_
                                           __tmp49917))))
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
                                                         (let ((_g49679_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2024120261_
                         '0)))
                   (begin
                     (let ((_g49680_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g49679_)
                                  (##vector-length _g49679_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g49680_ 2)))
                           (error "Context expects 2 values" _g49680_)))
                     (let ((_target2024320264_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g49679_ 0)))
                           (_tl2024520267_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g49679_ 1))))
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
                                               (let ((__tmp49914
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd2024820284_
                                                              _mixin-usetf2025020277_))))
                                                 (declare (not safe))
                                                 (_loop2024620270_
                                                  _lp-tl2024920287_
                                                  __tmp49914))))
                                           (let ((_mixin-usetf2025120290_
                                                  (reverse _mixin-usetf2025020277_)))
                                             ((lambda (_L20294_)
                                                (let ()
                                                  (let* ((_type-slots20325_
                                                          (if (gx#stx-null?
                                                               _slots19411_)
                                                              '()
                                                              (let ((__tmp49681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49682
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L19793_
                                       _L19722_
                                       _L19651_)
                                      (let ((__tmp49683
                                             (lambda (_g2031020315_
                                                      _g2031120318_
                                                      _g2031220320_
                                                      _g2031320322_)
                                               (let ((__tmp49684
                                                      (let ((__tmp49685
                                                             (let ((__tmp49686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _g2031020315_ '()))))
                       (declare (not safe))
                       (cons _g2031120318_ __tmp49686))))
                (declare (not safe))
                (cons _g2031220320_ __tmp49685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49684
                                                       _g2031320322_)))))
                                        (declare (not safe))
                                        (foldr* __tmp49683
                                                '()
                                                _L19793_
                                                _L19722_
                                                _L19651_)))))
                               (declare (not safe))
                               (cons __tmp49682 '()))))
                        (declare (not safe))
                        (cons 'slots: __tmp49681))))
                 (_type-mixin-slots20342_
                  (if (gx#stx-null? _mixin-slots19810_)
                      '()
                      (let ((__tmp49687
                             (let ((__tmp49688
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20010_
                                       _L19939_
                                       _L19867_)
                                      (let ((__tmp49689
                                             (lambda (_g2032720332_
                                                      _g2032820335_
                                                      _g2032920337_
                                                      _g2033020339_)
                                               (let ((__tmp49690
                                                      (let ((__tmp49691
                                                             (let ((__tmp49692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _g2032720332_ '()))))
                       (declare (not safe))
                       (cons _g2032820335_ __tmp49692))))
                (declare (not safe))
                (cons _g2032920337_ __tmp49691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49690
                                                       _g2033020339_)))))
                                        (declare (not safe))
                                        (foldr* __tmp49689
                                                '()
                                                _L20010_
                                                _L19939_
                                                _L19867_)))))
                               (declare (not safe))
                               (cons __tmp49688 '()))))
                        (declare (not safe))
                        (cons 'mixin: __tmp49687))))
                 (_type-name20349_
                  (let ((__tmp49693
                         (let ((__tmp49694
                                (let ((_$e20345_
                                       (gx#stx-getq 'name: _body19412_)))
                                  (if _$e20345_ _$e20345_ _id19409_))))
                           (declare (not safe))
                           (cons __tmp49694 '()))))
                    (declare (not safe))
                    (cons 'name: __tmp49693)))
                 (_type-id20356_
                  (let ((__tmp49695
                         (let ((__tmp49696
                                (let ((_$e20352_
                                       (gx#stx-getq 'id: _body19412_)))
                                  (if _$e20352_
                                      _$e20352_
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                         _L19472_))))))
                           (declare (not safe))
                           (cons __tmp49696 '()))))
                    (declare (not safe))
                    (cons 'id: __tmp49695)))
                 (_type-constructor20371_
                  (let ((_$e20367_
                         (let ((_e2035820360_
                                (gx#stx-getq 'constructor: _body19412_)))
                           (if _e2035820360_
                               (let* ((_e20364_ _e2035820360_)
                                      (__tmp49697
                                       (let ()
                                         (declare (not safe))
                                         (cons _e20364_ '()))))
                                 (declare (not safe))
                                 (cons 'constructor: __tmp49697))
                               '#f))))
                    (if _$e20367_ _$e20367_ '())))
                 (_properties20405_
                  (let* ((_properties20374_
                          (if (gx#stx-e
                               (gx#stx-getq 'transparent: _body19412_))
                              (let ((__tmp49698
                                     (let ()
                                       (declare (not safe))
                                       (cons 'transparent: '#t))))
                                (declare (not safe))
                                (cons __tmp49698 '()))
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
                                          (__tmp49699
                                           (let ()
                                             (declare (not safe))
                                             (cons 'print: _print20384_))))
                                     (declare (not safe))
                                     (cons __tmp49699 _properties20374_)))
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
                                          (__tmp49700
                                           (let ()
                                             (declare (not safe))
                                             (cons 'equal: _equal20397_))))
                                     (declare (not safe))
                                     (cons __tmp49700 _properties20387_)))
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
                                     (let ((__tmp49701
                                            (let ((__tmp49702
                                                   (let ((__tmp49704
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp49703
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L20423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49704
                                                           __tmp49703))))
                                              (declare (not safe))
                                              (cons __tmp49702 '()))))
                                       (declare (not safe))
                                       (cons 'properties: __tmp49701))))
                                 _g2040920420_))))
                        (declare (not safe))
                        (_g2040720442_ _properties20405_))))
                 (_final?20449_ (gx#stx-e (gx#stx-getq 'final: _body19412_)))
                 (_type-final20452_
                  (let ((__tmp49705
                         (let ()
                           (declare (not safe))
                           (cons _final?20449_ '()))))
                    (declare (not safe))
                    (cons 'final: __tmp49705)))
                 (_g2045520472_
                  (lambda (_g2045620468_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2045620468_)))
                 (_g2045421422_
                  (lambda (_g2045620476_)
                    (if (gx#stx-pair/null? _g2045620476_)
                        (let ((_g49706_
                               (gx#syntax-split-splice _g2045620476_ '0)))
                          (begin
                            (let ((_g49707_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g49706_)
                                         (##vector-length _g49706_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g49707_ 2)))
                                  (error "Context expects 2 values" _g49707_)))
                            (let ((_target2045820479_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g49706_ 0)))
                                  (_tl2046020482_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g49706_ 1))))
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
                                                      (let ((__tmp49907
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2046320499_ _type-body2046520492_))))
                (declare (not safe))
                (_loop2046120485_ _lp-tl2046420502_ __tmp49907))))
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
                                                           (let ((__tmp49708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49711 (gx#datum->syntax '#f 'begin))
                                (__tmp49709
                                 (let ((__tmp49710
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20962_ '()))))
                                   (declare (not safe))
                                   (cons _L20542_ __tmp49710))))
                            (declare (not safe))
                            (cons __tmp49711 __tmp49709))))
                     (declare (not safe))
                     (_wrap19415_ __tmp49708)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2094820959_)))
                                                 (__tmp49712
                                                  (let ((__tmp49713
                                                         (let ((__tmp49746
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp49714
                        (let ((__tmp49715
                               (let ((__tmp49716
                                      (let ((__tmp49745
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp49717
                                             (let ((__tmp49718
                                                    (let ((__tmp49719
                                                           (let ((__tmp49720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49721
                                 (let ((__tmp49722
                                        (let ((__tmp49723
                                               (let ((__tmp49724
                                                      (let ((__tmp49725
                                                             (let ((__tmp49726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49727
                                   (let ((__tmp49728
                                          (let ((__tmp49729
                                                 (let ((__tmp49730
                                                        (let ((__tmp49731
                                                               (let ((__tmp49732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49733
                                     (let ((__tmp49734
                                            (let ((__tmp49735
                                                   (let ((__tmp49736
                                                          (let ((__tmp49737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49738
                                (let ((__tmp49739
                                       (let ((__tmp49740
                                              (let ((__tmp49741
                                                     (let ((__tmp49742
                                                            (let ((__tmp49743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49744
                                  (let ()
                                    (declare (not safe))
                                    (cons _L20934_ '()))))
                             (declare (not safe))
                             (cons 'unchecked-mutators: __tmp49744))))
                      (declare (not safe))
                      (cons _L20906_ __tmp49743))))
               (declare (not safe))
               (cons 'unchecked-accessors: __tmp49742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L20878_ __tmp49741))))
                                         (declare (not safe))
                                         (cons 'mutators: __tmp49740))))
                                  (declare (not safe))
                                  (cons _L20850_ __tmp49739))))
                           (declare (not safe))
                           (cons 'accessors: __tmp49738))))
                    (declare (not safe))
                    (cons _L20822_ __tmp49737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'predicate:
                                                           __tmp49736))))
                                              (declare (not safe))
                                              (cons _L20794_ __tmp49735))))
                                       (declare (not safe))
                                       (cons 'constructor: __tmp49734))))
                                (declare (not safe))
                                (cons _L20766_ __tmp49733))))
                         (declare (not safe))
                         (cons 'type-descriptor: __tmp49732))))
                  (declare (not safe))
                  (cons _L20738_ __tmp49731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'constructor-method:
                                                         __tmp49730))))
                                            (declare (not safe))
                                            (cons _L20710_ __tmp49729))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp49728))))
                              (declare (not safe))
                              (cons _L20682_ __tmp49727))))
                       (declare (not safe))
                       (cons 'struct?: __tmp49726))))
                (declare (not safe))
                (cons _L20626_ __tmp49725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp49724))))
                                          (declare (not safe))
                                          (cons _L20654_ __tmp49723))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp49722))))
                            (declare (not safe))
                            (cons _L20598_ __tmp49721))))
                     (declare (not safe))
                     (cons 'name: __tmp49720))))
              (declare (not safe))
              (cons _L20570_ __tmp49719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp49718))))
                                        (declare (not safe))
                                        (cons __tmp49745 __tmp49717))))
                                 (declare (not safe))
                                 (cons __tmp49716 '()))))
                          (declare (not safe))
                          (cons _L19472_ __tmp49715))))
                   (declare (not safe))
                   (cons __tmp49746 __tmp49714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19415_ __tmp49713))))
                                            (declare (not safe))
                                            (_g2094620977_ __tmp49712))))
                                      _g2092020931_)))
                                  (__tmp49747
                                   (let ((__tmp49774
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp49748
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L20152_
                                             _L19651_)
                                            (let ((__tmp49762
                                                   (lambda (_g2098420991_
                                                            _g2098520994_
                                                            _g2098620996_)
                                                     (let ((__tmp49763
                                                            (let ((__tmp49773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp49764
                           (let ((__tmp49770
                                  (let ((__tmp49772
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp49771
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2098520994_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49772 __tmp49771)))
                                 (__tmp49765
                                  (let ((__tmp49766
                                         (let ((__tmp49767
                                                (let ((__tmp49769
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp49768
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2098420991_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp49769
                                                        __tmp49768))))
                                           (declare (not safe))
                                           (cons __tmp49767 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp49766))))
                             (declare (not safe))
                             (cons __tmp49770 __tmp49765))))
                      (declare (not safe))
                      (cons __tmp49773 __tmp49764))))
               (declare (not safe))
               (cons __tmp49763 _g2098620996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp49749
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L20294_
                                                      _L19867_)
                                                     (let ((__tmp49750
                                                            (lambda (_g2098720999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2098821002_
                             _g2098921004_)
                      (let ((__tmp49751
                             (let ((__tmp49761 (gx#datum->syntax '#f '@list))
                                   (__tmp49752
                                    (let ((__tmp49758
                                           (let ((__tmp49760
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp49759
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2098821002_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49760 __tmp49759)))
                                          (__tmp49753
                                           (let ((__tmp49754
                                                  (let ((__tmp49755
                                                         (let ((__tmp49757
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp49756
                        (let ()
                          (declare (not safe))
                          (cons _g2098720999_ '()))))
                   (declare (not safe))
                   (cons __tmp49757 __tmp49756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49755 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp49754))))
                                      (declare (not safe))
                                      (cons __tmp49758 __tmp49753))))
                               (declare (not safe))
                               (cons __tmp49761 __tmp49752))))
                        (declare (not safe))
                        (cons __tmp49751 _g2098921004_)))))
               (declare (not safe))
               (foldr2 __tmp49750 '() _L20294_ _L19867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldr2 __tmp49762
                                                      __tmp49749
                                                      _L20152_
                                                      _L19651_)))))
                                     (declare (not safe))
                                     (cons __tmp49774 __tmp49748))))
                             (declare (not safe))
                             (_g2091820981_ __tmp49747))))
                       _g2089220903_)))
                   (__tmp49775
                    (let ((__tmp49802 (gx#datum->syntax '#f '@list))
                          (__tmp49776
                           (begin
                             (gx#syntax-check-splice-targets _L20081_ _L19651_)
                             (let ((__tmp49790
                                    (lambda (_g2101021017_
                                             _g2101121020_
                                             _g2101221022_)
                                      (let ((__tmp49791
                                             (let ((__tmp49801
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49792
                                                    (let ((__tmp49798
                                                           (let ((__tmp49800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49799
                          (let ()
                            (declare (not safe))
                            (cons _g2101121020_ '()))))
                     (declare (not safe))
                     (cons __tmp49800 __tmp49799)))
                  (__tmp49793
                   (let ((__tmp49794
                          (let ((__tmp49795
                                 (let ((__tmp49797
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp49796
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2101021017_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49797 __tmp49796))))
                            (declare (not safe))
                            (cons __tmp49795 '()))))
                     (declare (not safe))
                     (cons ':: __tmp49794))))
              (declare (not safe))
              (cons __tmp49798 __tmp49793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49801 __tmp49792))))
                                        (declare (not safe))
                                        (cons __tmp49791 _g2101221022_))))
                                   (__tmp49777
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20223_
                                       _L19867_)
                                      (let ((__tmp49778
                                             (lambda (_g2101321025_
                                                      _g2101421028_
                                                      _g2101521030_)
                                               (let ((__tmp49779
                                                      (let ((__tmp49789
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp49780
                                                             (let ((__tmp49786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49788 (gx#datum->syntax '#f 'quote))
                                  (__tmp49787
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2101421028_ '()))))
                              (declare (not safe))
                              (cons __tmp49788 __tmp49787)))
                           (__tmp49781
                            (let ((__tmp49782
                                   (let ((__tmp49783
                                          (let ((__tmp49785
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp49784
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2101321025_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49785 __tmp49784))))
                                     (declare (not safe))
                                     (cons __tmp49783 '()))))
                              (declare (not safe))
                              (cons ':: __tmp49782))))
                       (declare (not safe))
                       (cons __tmp49786 __tmp49781))))
                (declare (not safe))
                (cons __tmp49789 __tmp49780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49779
                                                       _g2101521030_)))))
                                        (declare (not safe))
                                        (foldr2 __tmp49778
                                                '()
                                                _L20223_
                                                _L19867_)))))
                               (declare (not safe))
                               (foldr2 __tmp49790
                                       __tmp49777
                                       _L20081_
                                       _L19651_)))))
                      (declare (not safe))
                      (cons __tmp49802 __tmp49776))))
              (declare (not safe))
              (_g2089021007_ __tmp49775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2086420875_)))
                                            (__tmp49803
                                             (let ((__tmp49830
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49804
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L19793_
                                                       _L19651_)
                                                      (let ((__tmp49818
                                                             (lambda (_g2103621043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2103721046_
                              _g2103821048_)
                       (let ((__tmp49819
                              (let ((__tmp49829 (gx#datum->syntax '#f '@list))
                                    (__tmp49820
                                     (let ((__tmp49826
                                            (let ((__tmp49828
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49827
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2103721046_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp49828 __tmp49827)))
                                           (__tmp49821
                                            (let ((__tmp49822
                                                   (let ((__tmp49823
                                                          (let ((__tmp49825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp49824
                         (let ()
                           (declare (not safe))
                           (cons _g2103621043_ '()))))
                    (declare (not safe))
                    (cons __tmp49825 __tmp49824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49823 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp49822))))
                                       (declare (not safe))
                                       (cons __tmp49826 __tmp49821))))
                                (declare (not safe))
                                (cons __tmp49829 __tmp49820))))
                         (declare (not safe))
                         (cons __tmp49819 _g2103821048_))))
                    (__tmp49805
                     (begin
                       (gx#syntax-check-splice-targets _L20010_ _L19867_)
                       (let ((__tmp49806
                              (lambda (_g2103921051_
                                       _g2104021054_
                                       _g2104121056_)
                                (let ((__tmp49807
                                       (let ((__tmp49817
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp49808
                                              (let ((__tmp49814
                                                     (let ((__tmp49816
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp49815
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2104021054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp49816 __tmp49815)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49809
                                                     (let ((__tmp49810
                                                            (let ((__tmp49811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49813
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp49812
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2103921051_ '()))))
                             (declare (not safe))
                             (cons __tmp49813 __tmp49812))))
                      (declare (not safe))
                      (cons __tmp49811 '()))))
               (declare (not safe))
               (cons ':: __tmp49810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49814 __tmp49809))))
                                         (declare (not safe))
                                         (cons __tmp49817 __tmp49808))))
                                  (declare (not safe))
                                  (cons __tmp49807 _g2104121056_)))))
                         (declare (not safe))
                         (foldr2 __tmp49806 '() _L20010_ _L19867_)))))
                (declare (not safe))
                (foldr2 __tmp49818 __tmp49805 _L19793_ _L19651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49830 __tmp49804))))
                                       (declare (not safe))
                                       (_g2086221033_ __tmp49803))))
                                 _g2083620847_)))
                             (__tmp49831
                              (let ((__tmp49858 (gx#datum->syntax '#f '@list))
                                    (__tmp49832
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19722_
                                        _L19651_)
                                       (let ((__tmp49846
                                              (lambda (_g2106221069_
                                                       _g2106321072_
                                                       _g2106421074_)
                                                (let ((__tmp49847
                                                       (let ((__tmp49857
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp49848
                                                              (let ((__tmp49854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49856 (gx#datum->syntax '#f 'quote))
                                   (__tmp49855
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2106321072_ '()))))
                               (declare (not safe))
                               (cons __tmp49856 __tmp49855)))
                            (__tmp49849
                             (let ((__tmp49850
                                    (let ((__tmp49851
                                           (let ((__tmp49853
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp49852
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2106221069_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49853 __tmp49852))))
                                      (declare (not safe))
                                      (cons __tmp49851 '()))))
                               (declare (not safe))
                               (cons ':: __tmp49850))))
                        (declare (not safe))
                        (cons __tmp49854 __tmp49849))))
                 (declare (not safe))
                 (cons __tmp49857 __tmp49848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49847
                                                        _g2106421074_))))
                                             (__tmp49833
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19939_
                                                 _L19867_)
                                                (let ((__tmp49834
                                                       (lambda (_g2106521077_
                                                                _g2106621080_
                                                                _g2106721082_)
                                                         (let ((__tmp49835
                                                                (let ((__tmp49845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49836
                               (let ((__tmp49842
                                      (let ((__tmp49844
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp49843
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2106621080_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49844 __tmp49843)))
                                     (__tmp49837
                                      (let ((__tmp49838
                                             (let ((__tmp49839
                                                    (let ((__tmp49841
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp49840
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2106521077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp49841 __tmp49840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49839 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49838))))
                                 (declare (not safe))
                                 (cons __tmp49842 __tmp49837))))
                          (declare (not safe))
                          (cons __tmp49845 __tmp49836))))
                   (declare (not safe))
                   (cons __tmp49835 _g2106721082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr2 __tmp49834
                                                          '()
                                                          _L19939_
                                                          _L19867_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp49846
                                                 __tmp49833
                                                 _L19722_
                                                 _L19651_)))))
                                (declare (not safe))
                                (cons __tmp49858 __tmp49832))))
                        (declare (not safe))
                        (_g2083421059_ __tmp49831))))
                  _g2080820819_)))
              (__tmp49859
               (let ((__tmp49861 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp49860
                      (let () (declare (not safe)) (cons _L19556_ '()))))
                 (declare (not safe))
                 (cons __tmp49861 __tmp49860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2080621085_ __tmp49859))))
                                           _g2078020791_)))
                                       (__tmp49862
                                        (let ((__tmp49864
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp49863
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19528_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49864 __tmp49863))))
                                  (declare (not safe))
                                  (_g2077821089_ __tmp49862))))
                            _g2075220763_)))
                        (__tmp49865
                         (let ((__tmp49867
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp49866
                                (let ()
                                  (declare (not safe))
                                  (cons _L19500_ '()))))
                           (declare (not safe))
                           (cons __tmp49867 __tmp49866))))
                   (declare (not safe))
                   (_g2075021093_ __tmp49865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2072420735_)))
                                                 (__tmp49868
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
                                                           (let ((__tmp49870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49869
                          (let () (declare (not safe)) (cons _L21147_ '()))))
                     (declare (not safe))
                     (cons __tmp49870 __tmp49869))))
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
                                            (_g2072221097_ __tmp49868))))
                                      _g2069620707_))))
                             (declare (not safe))
                             (_g2069421168_ _final?20449_))))
                       _g2066820679_))))
              (declare (not safe))
              (_g2066621172_ _struct?19413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2064020651_)))
                                            (__tmp49871
                                             (let ((__tmp49875
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp49872
                                                    (let ((__tmp49873
                                                           (let ((__tmp49874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2117921182_ _g2118021185_)
                            (let ()
                              (declare (not safe))
                              (cons _g2117921182_ _g2118021185_)))))
                     (declare (not safe))
                     (foldr1 __tmp49874 '() _L19651_))))
              (declare (not safe))
              (cons __tmp49873 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49875 __tmp49872))))
                                       (declare (not safe))
                                       (_g2063821176_ __tmp49871))))
                                 _g2061220623_)))
                             (__tmp49876
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
                                                     (let ((__tmp49891
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@list))
                                                           (__tmp49887
                                                            (let ((__tmp49888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49890
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp49889
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21207_ '()))))
                             (declare (not safe))
                             (cons __tmp49890 __tmp49889))))
                      (declare (not safe))
                      (cons __tmp49888 '()))))
               (declare (not safe))
               (cons __tmp49891 __tmp49887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2119321204_))))
                                        (declare (not safe))
                                        (_g2119121219_ _super-ref19410_))
                                      (let ((__tmp49886
                                             (gx#datum->syntax '#f '@list)))
                                        (declare (not safe))
                                        (cons __tmp49886 '())))
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
                                                (let ((_g49877_
                                                       (gx#syntax-split-splice
                                                        _g2122421244_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49878_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49877_)
                         (##vector-length _g49877_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49878_ 2)))
                  (error "Context expects 2 values" _g49878_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2122621247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49877_
                                                              0)))
                                                          (_tl2122821250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49877_
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
                                      (let ((__tmp49885
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2123121267_
                                                     _super-id2123321260_))))
                                        (declare (not safe))
                                        (_loop2122921253_
                                         _lp-tl2123221270_
                                         __tmp49885))))
                                  (let ((_super-id2123421273_
                                         (reverse _super-id2123321260_)))
                                    ((lambda (_L21277_)
                                       (let ()
                                         (let ((__tmp49884
                                                (gx#datum->syntax '#f '@list))
                                               (__tmp49879
                                                (let ((__tmp49880
                                                       (lambda (_g2129121294_
                                                                _g2129221297_)
                                                         (let ((__tmp49881
                                                                (let ((__tmp49883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote-syntax))
                              (__tmp49882
                               (let ()
                                 (declare (not safe))
                                 (cons _g2129121294_ '()))))
                          (declare (not safe))
                          (cons __tmp49883 __tmp49882))))
                   (declare (not safe))
                   (cons __tmp49881 _g2129221297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp49880
                                                          '()
                                                          _L21277_))))
                                           (declare (not safe))
                                           (cons __tmp49884 __tmp49879))))
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
                        (_g2061021188_ __tmp49876))))
                  _g2058420595_)))
              (__tmp49892
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
                              (let ((__tmp49894 (gx#datum->syntax '#f 'quote))
                                    (__tmp49893
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21323_ '()))))
                                (declare (not safe))
                                (cons __tmp49894 __tmp49893))))
                          _g2130921320_)))
                      (__tmp49895 (cadr _type-name20349_)))
                 (declare (not safe))
                 (_g2130721335_ __tmp49895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2058221304_ __tmp49892))))
                                           _g2055620567_)))
                                       (__tmp49896
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
                                             (let ((__tmp49898
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp49897
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L21389_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49898 __tmp49897))))
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
                                  (_g2055421339_ __tmp49896))))
                            _g2052820539_)))
                        (__tmp49899
                         (let ((__tmp49900
                                (let ((__tmp49901
                                       (let ((__tmp49902
                                              (let ((__tmp49903
                                                     (let ((__tmp49904
                                                            (let ((__tmp49905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49906
                                  (lambda (_g2141321416_ _g2141421419_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2141321416_ _g2141421419_)))))
                             (declare (not safe))
                             (foldr1 __tmp49906 '() _L20509_))))
                      (declare (not safe))
                      (cons _L19556_ __tmp49905))))
               (declare (not safe))
               (cons _L19528_ __tmp49904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L19584_ __tmp49903))))
                                         (declare (not safe))
                                         (cons _L19500_ __tmp49902))))
                                  (declare (not safe))
                                  (cons _L19442_ __tmp49901))))
                           (declare (not safe))
                           (_wrap19415_ __tmp49900))))
                   (declare (not safe))
                   (_g2052621410_ __tmp49899))))
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
                 (__tmp49908
                  (let ((__tmp49909
                         (let ((__tmp49910
                                (let ((__tmp49911
                                       (let ((__tmp49912
                                              (let ((__tmp49913
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldr1 cons
                                                               _type-mixin-slots20342_
                                                               _type-slots20325_))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp49913
                                                        _type-properties20446_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp49912
                                                 _type-final20452_))))
                                  (declare (not safe))
                                  (foldr1 cons
                                          __tmp49911
                                          _type-constructor20371_))))
                           (declare (not safe))
                           (foldr1 cons __tmp49910 _type-name20349_))))
                    (declare (not safe))
                    (foldr1 cons __tmp49909 _type-id20356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2045421422_
                                                     __tmp49908))))
                                              _mixin-usetf2025120290_))))))
                             (let ()
                               (declare (not safe))
                               (_loop2024620270_ _target2024320264_ '())))
                           (let ()
                             (declare (not safe))
                             (_g2024020257_ _g2024120261_))))))
                 (let () (declare (not safe)) (_g2024020257_ _g2024120261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp49915
                                                   (gx#stx-map
                                                    (lambda (_g2142921431_)
                                                      (_make-id19417_
                                                       '"&"
                                                       _g2142921431_))
                                                    (let ((__tmp49916
                                                           (lambda (_g2143421437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2143521440_)
                     (let ()
                       (declare (not safe))
                       (cons _g2143421437_ _g2143521440_)))))
              (declare (not safe))
              (foldr1 __tmp49916 '() _L20010_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_g2023921426_ __tmp49915))))
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
                                           (__tmp49918
                                            (gx#stx-map
                                             (lambda (_g2144621448_)
                                               (_make-id19417_
                                                '"&"
                                                _g2144621448_))
                                             (let ((__tmp49919
                                                    (lambda (_g2145121454_
                                                             _g2145221457_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g2145121454_
                                                              _g2145221457_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp49919
                                                       '()
                                                       _L19939_)))))
                                      (declare (not safe))
                                      (_g2016821443_ __tmp49918))))
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
                                    (__tmp49921
                                     (gx#stx-map
                                      (lambda (_g2146321465_)
                                        (_make-id19417_ '"&" _g2146321465_))
                                      (let ((__tmp49922
                                             (lambda (_g2146821471_
                                                      _g2146921474_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g2146821471_
                                                       _g2146921474_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp49922 '() _L19793_)))))
                               (declare (not safe))
                               (_g2009721460_ __tmp49921))))
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
                             (__tmp49924
                              (gx#stx-map
                               (lambda (_g2148021482_)
                                 (_make-id19417_ '"&" _g2148021482_))
                               (let ((__tmp49925
                                      (lambda (_g2148521488_ _g2148621491_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2148521488_
                                                _g2148621491_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp49925 '() _L19722_)))))
                        (declare (not safe))
                        (_g2002621477_ __tmp49924))))
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
                      (__tmp49927
                       (gx#stx-map
                        (lambda (_g2149721499_)
                          (_make-id19417_
                           _name19421_
                           '"-"
                           _g2149721499_
                           '"-set!"))
                        _mixin-slots19810_)))
                 (declare (not safe))
                 (_g1995521494_ __tmp49927))))
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
               (__tmp49929
                (gx#stx-map
                 (lambda (_g2150621508_)
                   (_make-id19417_ _name19421_ '"-" _g2150621508_))
                 _mixin-slots19810_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g1988421503_ __tmp49929))))
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
                                         (__tmp49932
                                          (gx#stx-map
                                           (lambda (_g2151921521_)
                                             (_make-id19417_
                                              _name19421_
                                              '"-"
                                              _g2151921521_
                                              '"-set!"))
                                           _slots19411_)))
                                    (declare (not safe))
                                    (_g1973821516_ __tmp49932))))
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
                                  (__tmp49934
                                   (gx#stx-map
                                    (lambda (_g2152821530_)
                                      (_make-id19417_
                                       _name19421_
                                       '"-"
                                       _g2152821530_))
                                    _slots19411_)))
                             (declare (not safe))
                             (_g1966721525_ __tmp49934))))
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
                                                    (__tmp49936
                                                     (if _struct?19413_
                                                         (if _super19424_
                                                             (let ((__obj47558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _super19424_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj47558
                              'gerbil.core#class-type-info::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __obj47558
                              '8
                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                              '#f))
                           (class-slot-ref
                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                            __obj47558
                            'type-descriptor)))
                     '#f)
                 (map gerbil/core$<MOP>$<MOP:2>#class-type-descriptor
                      _super19424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g1956821538_ __tmp49936))))
                                         _g1954219553_)))
                                     (__tmp49937
                                      (_make-id19417_ _name19421_ '"?")))
                                (declare (not safe))
                                (_g1954021542_ __tmp49937))))
                          _g1951419525_)))
                      (__tmp49938 (_make-id19417_ '"make-" _name19421_)))
                 (declare (not safe))
                 (_g1951221546_ __tmp49938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1948619497_)))
                                               (__tmp49939
                                                (_make-id19417_
                                                 _name19421_
                                                 '"::t")))
                                          (declare (not safe))
                                          (_g1948421550_ __tmp49939))))
                                    _g1945819469_))))
                           (declare (not safe))
                           (_g1945621554_ _id19409_))))
                     _g1942819439_)))
                 (__tmp49940
                  (if _struct?19413_
                      (gx#datum->syntax '#f 'defstruct-type)
                      (gx#datum->syntax '#f 'defclass-type))))
            (declare (not safe))
            (_g1942621558_ __tmp49940)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defstruct|
      (lambda (_stx21622_)
        (letrec ((_generate21625_
                  (lambda (_hd21709_ _fields21711_ _body21712_)
                    (let* ((___stx4449544496_ _hd21709_)
                           (_g2171521730_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4449544496_))))
                      (let ((___kont4449844499_
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
                            (___kont4450044501_
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
                        (let ((___match4451644517_
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
                                       (___kont4449844499_ _L21768_ _L21770_)
                                       (___kont4450044501_))))))
                          (if (gx#stx-pair? ___stx4449544496_)
                              (let ((_e2172121748_
                                     (gx#syntax-e ___stx4449544496_)))
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
                                              (___match4451644517_
                                               _e2172121748_
                                               _hd2172021752_
                                               _tl2171921755_
                                               _e2172421758_
                                               _hd2172321762_
                                               _tl2172221765_)
                                              (___kont4450044501_))))
                                      (___kont4450044501_))))
                              (___kont4450044501_))))))))
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
                    (let* ((___stx4451944520_ _hd21876_)
                           (_g2188221894_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4451944520_))))
                      (let ((___kont4452244523_
                             (lambda (_L21922_ _L21924_)
                               (let ((__tmp49941 (gx#syntax->list _L21922_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-typedef|
                                  _stx21789_
                                  _L21924_
                                  __tmp49941
                                  _slots21878_
                                  _body21879_
                                  '#f))))
                            (___kont4452444525_
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
                        (let ((___match4453244533_
                               (lambda (_e2188821912_
                                        _hd2188721916_
                                        _tl2188621919_)
                                 (let ((_L21922_ _tl2188621919_)
                                       (_L21924_ _hd2188721916_))
                                   (if (and (gx#stx-list? _L21922_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21922_))
                                       (___kont4452244523_ _L21922_ _L21924_)
                                       (___kont4452444525_))))))
                          (if (gx#stx-pair? ___stx4451944520_)
                              (let ((_e2188821912_
                                     (gx#syntax-e ___stx4451944520_)))
                                (let ((_tl2188621919_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2188821912_)))
                                      (_hd2188721916_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2188821912_))))
                                  (___match4453244533_
                                   _e2188821912_
                                   _hd2188721916_
                                   _tl2188621919_)))
                              (___kont4452444525_))))))))
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
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g49992_|
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
                                                            (let ((__tmp49946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp49944
                           (let ((__tmp49945
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22235_ '()))))
                             (declare (not safe))
                             (cons _L22179_ __tmp49945))))
                      (declare (not safe))
                      (cons __tmp49946 __tmp49944))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2222122232_))))
                                            (_g2221922250_
                                             (_wrap21944_
                                              (let ((__tmp49954
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp49947
                                                     (let ((__tmp49948
                                                            (let ((__tmp49951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49953 (gx#datum->syntax '#f 'quote))
                                 (__tmp49952
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22048_ '()))))
                             (declare (not safe))
                             (cons __tmp49953 __tmp49952)))
                          (__tmp49949
                           (let ((__tmp49950
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22207_ '()))))
                             (declare (not safe))
                             (cons _L22123_ __tmp49950))))
                      (declare (not safe))
                      (cons __tmp49951 __tmp49949))))
               (declare (not safe))
               (cons _L22094_ __tmp49948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49954
                                                      __tmp49947)))))))
                                      _g2219322204_))))
                             (_g2219122254_ _rebind?22076_))))
                       _g2216522176_))))
              (_g2216322258_
               (_wrap21944_
                (let ((__tmp49991 (gx#datum->syntax '#f 'def))
                      (__tmp49955
                       (let ((__tmp49956
                              (let ((__tmp49957
                                     (let ((__tmp49990
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp49958
                                            (let ((__tmp49960
                                                   (let ((__tmp49961
                                                          (let ((__tmp49962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49963
                                (let ((__tmp49989
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp49964
                                       (let ((__tmp49965
                                              (let ((__tmp49966
                                                     (let ((__tmp49981
                                                            (let ((__tmp49988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp49982
                           (let ((__tmp49987 (gx#datum->syntax '#f 'obj))
                                 (__tmp49983
                                  (let ((__tmp49986
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp49984
                                         (let ((__tmp49985
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp49985 '()))))
                                    (declare (not safe))
                                    (cons __tmp49986 __tmp49984))))
                             (declare (not safe))
                             (cons __tmp49987 __tmp49983))))
                      (declare (not safe))
                      (cons __tmp49988 __tmp49982)))
                   (__tmp49967
                    (let ((__tmp49968
                           (let ((__tmp49980
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp49969
                                  (let ((__tmp49970
                                         (let ((__tmp49979
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp49971
                                                (let ((__tmp49976
                                                       (let ((__tmp49978
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49977
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L22048_ '()))))
                 (declare (not safe))
                 (cons __tmp49978 __tmp49977)))
              (__tmp49972
               (let ((__tmp49975 (gx#datum->syntax '#f 'arg))
                     (__tmp49973
                      (let ((__tmp49974 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp49974 '()))))
                 (declare (not safe))
                 (cons __tmp49975 __tmp49973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49976
                                                        __tmp49972))))
                                           (declare (not safe))
                                           (cons __tmp49979 __tmp49971))))
                                    (declare (not safe))
                                    (cons _L22094_ __tmp49970))))
                             (declare (not safe))
                             (cons __tmp49980 __tmp49969))))
                      (declare (not safe))
                      (cons __tmp49968 '()))))
               (declare (not safe))
               (cons __tmp49981 __tmp49967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49966 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp49965))))
                                  (declare (not safe))
                                  (cons __tmp49989 __tmp49964))))
                           (declare (not safe))
                           (cons __tmp49963 '()))))
                    (declare (not safe))
                    (cons _L22151_ __tmp49962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49961 '())))
                                                  (__tmp49959
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22046_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49960 __tmp49959))))
                                       (declare (not safe))
                                       (cons __tmp49990 __tmp49958))))
                                (declare (not safe))
                                (cons __tmp49957 '()))))
                         (declare (not safe))
                         (cons _L22123_ __tmp49956))))
                  (declare (not safe))
                  (cons __tmp49991 __tmp49955)))))))
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
                                                  (let ((__obj47559
                                                         _klass22073_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj47559
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj47559
                                                           '8
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj47559
                                                         'type-descriptor)))))
                                               (if (let ((__tmp49943
                                                          (gx#identifier?
                                                           _L22048_)))
                                                     (declare (not safe))
                                                     (not __tmp49943))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21941_
                                                    _L22048_)
                                                   (if (let ((__tmp49942
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L22047_))))
                 (declare (not safe))
                 (not __tmp49942))
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
                      (let ((__tmp49995
                             (gx#stx-identifier _id22909_ (car _split22915_)))
                            (__tmp49993
                             (let ((__tmp49994
                                    (gx#stx-identifier
                                     _id22909_
                                     (cadr _split22915_))))
                               (declare (not safe))
                               (cons __tmp49994 '()))))
                        (declare (not safe))
                        (cons __tmp49995 __tmp49993))))))
          (let* ((___stx4453544536_ _stx22284_)
                 (_g2229422381_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4453544536_))))
            (let ((___kont4453844539_
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
                                                        (let ((__tmp50008
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp49996
                                                               (let ((__tmp50007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp49997
                              (let ((__tmp49998
                                     (let ((__tmp50004
                                            (let ((__tmp50006
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp50005
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22875_ '()))))
                                              (declare (not safe))
                                              (cons __tmp50006 __tmp50005)))
                                           (__tmp49999
                                            (let ((__tmp50000
                                                   (let ((__tmp50003
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp50001
                                                          (let ((__tmp50002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2289222895_ _g2289322898_)
                           (let ()
                             (declare (not safe))
                             (cons _g2289222895_ _g2289322898_)))))
                    (declare (not safe))
                    (foldr1 __tmp50002 '() _L22804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50003
                                                           __tmp50001))))
                                              (declare (not safe))
                                              (cons __tmp50000 '()))))
                                       (declare (not safe))
                                       (cons __tmp50004 __tmp49999))))
                                (declare (not safe))
                                (cons _L22877_ __tmp49998))))
                         (declare (not safe))
                         (cons __tmp50007 __tmp49997))))
                  (declare (not safe))
                  (cons __tmp50008 __tmp49996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2284122869_
                                                    _hd2283822859_)
                                                   (_g2283322848_
                                                    _g2283422852_))))
                                           (_g2283322848_ _g2283422852_))))
                                   (_g2283322848_ _g2283422852_)))))
                       (_g2283222901_ (_split-dotted22289_ _L22805_)))))
                  (___kont4454244543_
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
                                                        (let ((__tmp50016
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp50009
                                                               (let ((__tmp50010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50013
                                     (let ((__tmp50015
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp50014
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22705_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50015 __tmp50014)))
                                    (__tmp50011
                                     (let ((__tmp50012
                                            (lambda (_g2272222725_
                                                     _g2272322728_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2272222725_
                                                      _g2272322728_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50012 '() _L22644_))))
                                (declare (not safe))
                                (cons __tmp50013 __tmp50011))))
                         (declare (not safe))
                         (cons _L22707_ __tmp50010))))
                  (declare (not safe))
                  (cons __tmp50016 __tmp50009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2267122699_
                                                    _hd2266822689_)
                                                   (_g2266322678_
                                                    _g2266422682_))))
                                           (_g2266322678_ _g2266422682_))))
                                   (_g2266322678_ _g2266422682_)))))
                       (_g2266222731_ (_split-dotted22289_ _L22646_)))))
                  (___kont4454644547_
                   (lambda (_L22548_ _L22550_ _L22551_)
                     (let ((__tmp50029 (gx#datum->syntax '#f 'apply))
                           (__tmp50017
                            (let ((__tmp50028
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp50018
                                   (let ((__tmp50019
                                          (let ((__tmp50025
                                                 (let ((__tmp50027
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp50026
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22551_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50027
                                                         __tmp50026)))
                                                (__tmp50020
                                                 (let ((__tmp50021
                                                        (let ((__tmp50024
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp50022
                                                               (let ((__tmp50023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2257822581_ _g2257922584_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2257822581_ _g2257922584_)))))
                         (declare (not safe))
                         (foldr1 __tmp50023 '() _L22548_))))
                  (declare (not safe))
                  (cons __tmp50024 __tmp50022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50021 '()))))
                                            (declare (not safe))
                                            (cons __tmp50025 __tmp50020))))
                                     (declare (not safe))
                                     (cons _L22550_ __tmp50019))))
                              (declare (not safe))
                              (cons __tmp50028 __tmp50018))))
                       (declare (not safe))
                       (cons __tmp50029 __tmp50017))))
                  (___kont4455044551_
                   (lambda (_L22448_ _L22450_ _L22451_)
                     (let ((__tmp50037 (gx#datum->syntax '#f 'call-method))
                           (__tmp50030
                            (let ((__tmp50031
                                   (let ((__tmp50034
                                          (let ((__tmp50036
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp50035
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22451_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50036 __tmp50035)))
                                         (__tmp50032
                                          (let ((__tmp50033
                                                 (lambda (_g2247222475_
                                                          _g2247322478_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2247222475_
                                                           _g2247322478_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp50033 '() _L22448_))))
                                     (declare (not safe))
                                     (cons __tmp50034 __tmp50032))))
                              (declare (not safe))
                              (cons _L22450_ __tmp50031))))
                       (declare (not safe))
                       (cons __tmp50037 __tmp50030)))))
              (let* ((___match4465444655_
                      (lambda (_e2236022388_
                               _hd2235922392_
                               _tl2235822395_
                               _e2236322398_
                               _hd2236222402_
                               _tl2236122405_
                               _e2236622408_
                               _hd2236522412_
                               _tl2236422415_
                               ___splice4455244553_
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
                                                (___kont4455044551_
                                                 _L22448_
                                                 _L22450_
                                                 _L22451_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2229422381_)))))))))
                          (_loop2237022424_ _target2236722418_ '()))))
                     (___match4462844629_
                      (lambda (_e2233922488_
                               _hd2233822492_
                               _tl2233722495_
                               _e2234222498_
                               _hd2234122502_
                               _tl2234022505_
                               _e2234522508_
                               _hd2234422512_
                               _tl2234322515_
                               ___splice4454844549_
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
                                                      (let ((__tmp50038
                                                             (lambda (_g2257022573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2257122576_)
                       (let ()
                         (declare (not safe))
                         (cons _g2257022573_ _g2257122576_)))))
                (declare (not safe))
                (foldr1 __tmp50038 '() _L22548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4454644547_
                                                 _L22548_
                                                 _L22550_
                                                 _L22551_)
                                                (___match4465444655_
                                                 _e2233922488_
                                                 _hd2233822492_
                                                 _tl2233722495_
                                                 _e2234222498_
                                                 _hd2234122502_
                                                 _tl2234022505_
                                                 _e2234522508_
                                                 _hd2234422512_
                                                 _tl2234322515_
                                                 ___splice4454844549_
                                                 _target2234622518_
                                                 _tl2234822521_))))))))
                          (_loop2234922524_ _target2234622518_ '()))))
                     (___match4461444615_
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
                                    (let ((___splice4454844549_
                                           (gx#syntax-split-splice
                                            _tl2234322515_
                                            '0)))
                                      (let ((_tl2234822521_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4454844549_
                                                '1)))
                                            (_target2234622518_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4454844549_
                                                '0))))
                                        (if (gx#stx-null? _tl2234822521_)
                                            (___match4462844629_
                                             _e2233922488_
                                             _hd2233822492_
                                             _tl2233722495_
                                             _e2234222498_
                                             _hd2234122502_
                                             _tl2234022505_
                                             _e2234522508_
                                             _hd2234422512_
                                             _tl2234322515_
                                             ___splice4454844549_
                                             _target2234622518_
                                             _tl2234822521_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2229422381_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2229422381_)))))
                            (let () (declare (not safe)) (_g2229422381_)))))
                     (___match4460244603_
                      (lambda (_e2232122594_
                               _hd2232022598_
                               _tl2231922601_
                               _e2232422604_
                               _hd2232322608_
                               _tl2232222611_
                               ___splice4454444545_
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
                                                (___kont4454244543_
                                                 _L22644_
                                                 _L22646_)
                                                (___match4461444615_
                                                 _e2232122594_
                                                 _hd2232022598_
                                                 _tl2231922601_
                                                 _e2232422604_
                                                 _hd2232322608_
                                                 _tl2232222611_))))))))
                          (_loop2232822620_ _target2232522614_ '()))))
                     (___match4460044601_
                      (lambda (_e2232122594_
                               _hd2232022598_
                               _tl2231922601_
                               _e2232422604_
                               _hd2232322608_
                               _tl2232222611_
                               ___splice4454444545_
                               _target2232522614_
                               _tl2232722617_)
                        (if (gx#stx-null? _tl2232722617_)
                            (___match4460244603_
                             _e2232122594_
                             _hd2232022598_
                             _tl2231922601_
                             _e2232422604_
                             _hd2232322608_
                             _tl2232222611_
                             ___splice4454444545_
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
                                        (let ((___splice4454844549_
                                               (gx#syntax-split-splice
                                                _tl2234322515_
                                                '0)))
                                          (let ((_tl2234822521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4454844549_
                                                    '1)))
                                                (_target2234622518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4454844549_
                                                    '0))))
                                            (if (gx#stx-null? _tl2234822521_)
                                                (___match4462844629_
                                                 _e2232122594_
                                                 _hd2232022598_
                                                 _tl2231922601_
                                                 _e2232422604_
                                                 _hd2232322608_
                                                 _tl2232222611_
                                                 _e2234522508_
                                                 _hd2234422512_
                                                 _tl2234322515_
                                                 ___splice4454844549_
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
                     (___match4458244583_
                      (lambda (_e2230122742_
                               _hd2230022746_
                               _tl2229922749_
                               _e2230422752_
                               _hd2230322756_
                               _tl2230222759_
                               ___splice4454044541_
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
                                                      (let ((__tmp50039
                                                             (lambda (_g2282422827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2282522830_)
                       (let ()
                         (declare (not safe))
                         (cons _g2282422827_ _g2282522830_)))))
                (declare (not safe))
                (foldr1 __tmp50039 '() _L22804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4453844539_
                                                 _L22802_
                                                 _L22804_
                                                 _L22805_)
                                                (let ((___splice4454444545_
                                                       (gx#syntax-split-splice
                                                        _tl2230222759_
                                                        '0)))
                                                  (let ((_tl2232722617_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4454444545_
                                                            '1)))
                                                        (_target2232522614_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4454444545_
                                                            '0))))
                                                    (___match4460044601_
                                                     _e2230122742_
                                                     _hd2230022746_
                                                     _tl2229922749_
                                                     _e2230422752_
                                                     _hd2230322756_
                                                     _tl2230222759_
                                                     ___splice4454444545_
                                                     _target2232522614_
                                                     _tl2232722617_))))))))))
                          (_loop2230822778_ _target2230522762_ '())))))
                (if (gx#stx-pair? ___stx4453544536_)
                    (let ((_e2230122742_ (gx#syntax-e ___stx4453544536_)))
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
                                        (let ((___splice4454044541_
                                               (gx#syntax-split-splice
                                                _tl2230222759_
                                                '1)))
                                          (let ((_tl2230722765_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4454044541_
                                                    '1)))
                                                (_target2230522762_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4454044541_
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
                                                        (___match4458244583_
                                                         _e2230122742_
                                                         _hd2230022746_
                                                         _tl2229922749_
                                                         _e2230422752_
                                                         _hd2230322756_
                                                         _tl2230222759_
                                                         ___splice4454044541_
                                                         _target2230522762_
                                                         _tl2230722765_
                                                         _e2231622768_
                                                         _hd2231522772_
                                                         _tl2231422775_)
                                                        (let ((___splice4454444545_
                                                               (gx#syntax-split-splice
                                                                _tl2230222759_
                                                                '0)))
                                                          (let ((_tl2232722617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4454444545_ '1)))
                        (_target2232522614_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4454444545_ '0))))
                    (if (gx#stx-null? _tl2232722617_)
                        (___match4460244603_
                         _e2230122742_
                         _hd2230022746_
                         _tl2229922749_
                         _e2230422752_
                         _hd2230322756_
                         _tl2230222759_
                         ___splice4454444545_
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
                                    (let ((___splice4454844549_
                                           (gx#syntax-split-splice
                                            _tl2234322515_
                                            '0)))
                                      (let ((_tl2234822521_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4454844549_
                                                '1)))
                                            (_target2234622518_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4454844549_
                                                '0))))
                                        (if (gx#stx-null? _tl2234822521_)
                                            (___match4462844629_
                                             _e2230122742_
                                             _hd2230022746_
                                             _tl2229922749_
                                             _e2230422752_
                                             _hd2230322756_
                                             _tl2230222759_
                                             _e2234522508_
                                             _hd2234422512_
                                             _tl2234322515_
                                             ___splice4454844549_
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
                                                (let ((___splice4454444545_
                                                       (gx#syntax-split-splice
                                                        _tl2230222759_
                                                        '0)))
                                                  (let ((_tl2232722617_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4454444545_
                                                            '1)))
                                                        (_target2232522614_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4454444545_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2232722617_)
                                                        (___match4460244603_
                                                         _e2230122742_
                                                         _hd2230022746_
                                                         _tl2229922749_
                                                         _e2230422752_
                                                         _hd2230322756_
                                                         _tl2230222759_
                                                         ___splice4454444545_
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
                            (let ((___splice4454844549_
                                   (gx#syntax-split-splice _tl2234322515_ '0)))
                              (let ((_tl2234822521_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4454844549_ '1)))
                                    (_target2234622518_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4454844549_
                                        '0))))
                                (if (gx#stx-null? _tl2234822521_)
                                    (___match4462844629_
                                     _e2230122742_
                                     _hd2230022746_
                                     _tl2229922749_
                                     _e2230422752_
                                     _hd2230322756_
                                     _tl2230222759_
                                     _e2234522508_
                                     _hd2234422512_
                                     _tl2234322515_
                                     ___splice4454844549_
                                     _target2234622518_
                                     _tl2234822521_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2229422381_)))))
                            (let () (declare (not safe)) (_g2229422381_)))))
                    (let () (declare (not safe)) (_g2229422381_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4454444545_
                                               (gx#syntax-split-splice
                                                _tl2230222759_
                                                '0)))
                                          (let ((_tl2232722617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4454444545_
                                                    '1)))
                                                (_target2232522614_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4454444545_
                                                    '0))))
                                            (if (gx#stx-null? _tl2232722617_)
                                                (___match4460244603_
                                                 _e2230122742_
                                                 _hd2230022746_
                                                 _tl2229922749_
                                                 _e2230422752_
                                                 _hd2230322756_
                                                 _tl2230222759_
                                                 ___splice4454444545_
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
                    (let ((___splice4454844549_
                           (gx#syntax-split-splice _tl2234322515_ '0)))
                      (let ((_tl2234822521_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4454844549_ '1)))
                            (_target2234622518_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4454844549_ '0))))
                        (if (gx#stx-null? _tl2234822521_)
                            (___match4462844629_
                             _e2230122742_
                             _hd2230022746_
                             _tl2229922749_
                             _e2230422752_
                             _hd2230322756_
                             _tl2230222759_
                             _e2234522508_
                             _hd2234422512_
                             _tl2234322515_
                             ___splice4454844549_
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
                                                (let ((___splice4454844549_
                                                       (gx#syntax-split-splice
                                                        _tl2234322515_
                                                        '0)))
                                                  (let ((_tl2234822521_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4454844549_
                                                            '1)))
                                                        (_target2234622518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4454844549_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2234822521_)
                                                        (___match4462844629_
                                                         _e2230122742_
                                                         _hd2230022746_
                                                         _tl2229922749_
                                                         _e2230422752_
                                                         _hd2230322756_
                                                         _tl2230222759_
                                                         _e2234522508_
                                                         _hd2234422512_
                                                         _tl2234322515_
                                                         ___splice4454844549_
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
        (let* ((___stx4465744658_ _$stx22933_)
               (_g2293822978_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4465744658_))))
          (let ((___kont4466044661_
                 (lambda (_L23116_ _L23118_)
                   (let ((__tmp50045 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp50040
                          (let ((__tmp50041
                                 (let ((__tmp50042
                                        (let ((__tmp50044
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp50043
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23116_ '()))))
                                          (declare (not safe))
                                          (cons __tmp50044 __tmp50043))))
                                   (declare (not safe))
                                   (cons __tmp50042 '()))))
                            (declare (not safe))
                            (cons _L23118_ __tmp50041))))
                     (declare (not safe))
                     (cons __tmp50045 __tmp50040))))
                (___kont4466244663_
                 (lambda (_L23045_ _L23047_ _L23048_ _L23049_)
                   (let ((__tmp50046
                          (let ((__tmp50049
                                 (let ((__tmp50050
                                        (let ((__tmp50051
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23047_ '()))))
                                          (declare (not safe))
                                          (cons _L23048_ __tmp50051))))
                                   (declare (not safe))
                                   (cons _L23049_ __tmp50050)))
                                (__tmp50047
                                 (let ((__tmp50048
                                        (lambda (_g2307023073_ _g2307123076_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2307023073_
                                                  _g2307123076_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50048 '() _L23045_))))
                            (declare (not safe))
                            (cons __tmp50049 __tmp50047))))
                     (declare (not safe))
                     (cons _L23049_ __tmp50046)))))
            (let* ((___match4471244713_
                    (lambda (_e2295722985_
                             _hd2295622989_
                             _tl2295522992_
                             _e2296022995_
                             _hd2295922999_
                             _tl2295823002_
                             _e2296323005_
                             _hd2296223009_
                             _tl2296123012_
                             ___splice4466444665_
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
                                        (___kont4466244663_
                                         _rest2297223041_
                                         _hd2296223009_
                                         _hd2295922999_
                                         _hd2295622989_))))))
                        (_loop2296723021_ _target2296423015_ '()))))
                   (___match4468644687_
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
                            (___kont4466044661_ _L23116_ _L23118_)
                            (if (gx#stx-pair/null? _tl2294823113_)
                                (let ((___splice4466444665_
                                       (gx#syntax-split-splice
                                        _tl2294823113_
                                        '0)))
                                  (let ((_tl2296623018_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4466444665_
                                            '1)))
                                        (_target2296423015_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4466444665_
                                            '0))))
                                    (if (gx#stx-null? _tl2296623018_)
                                        (___match4471244713_
                                         _e2294423086_
                                         _hd2294323090_
                                         _tl2294223093_
                                         _e2294723096_
                                         _hd2294623100_
                                         _tl2294523103_
                                         _e2295023106_
                                         _hd2294923110_
                                         _tl2294823113_
                                         ___splice4466444665_
                                         _target2296423015_
                                         _tl2296623018_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2293822978_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2293822978_))))))))
              (if (gx#stx-pair? ___stx4465744658_)
                  (let ((_e2294423086_ (gx#syntax-e ___stx4465744658_)))
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
                                          (___match4468644687_
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
                                              (let ((___splice4466444665_
                                                     (gx#syntax-split-splice
                                                      _tl2294823113_
                                                      '0)))
                                                (let ((_tl2296623018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4466444665_
                                                          '1)))
                                                      (_target2296423015_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4466444665_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2296623018_)
                                                      (___match4471244713_
                                                       _e2294423086_
                                                       _hd2294323090_
                                                       _tl2294223093_
                                                       _e2294723096_
                                                       _hd2294623100_
                                                       _tl2294523103_
                                                       _e2295023106_
                                                       _hd2294923110_
                                                       _tl2294823113_
                                                       ___splice4466444665_
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
        (let* ((___stx4471544716_ _$stx23138_)
               (_g2314323195_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4471544716_))))
          (let ((___kont4471844719_
                 (lambda (_L23371_ _L23373_ _L23374_)
                   (let ((__tmp50058 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp50052
                          (let ((__tmp50053
                                 (let ((__tmp50055
                                        (let ((__tmp50057
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp50056
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23373_ '()))))
                                          (declare (not safe))
                                          (cons __tmp50057 __tmp50056)))
                                       (__tmp50054
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23371_ '()))))
                                   (declare (not safe))
                                   (cons __tmp50055 __tmp50054))))
                            (declare (not safe))
                            (cons _L23374_ __tmp50053))))
                     (declare (not safe))
                     (cons __tmp50058 __tmp50052))))
                (___kont4472044721_
                 (lambda (_L23282_
                          _L23284_
                          _L23285_
                          _L23286_
                          _L23287_
                          _L23288_)
                   (let ((__tmp50059
                          (let ((__tmp50062
                                 (let ((__tmp50067 (gx#datum->syntax '#f '@))
                                       (__tmp50063
                                        (let ((__tmp50064
                                               (let ((__tmp50065
                                                      (let ((__tmp50066
                                                             (lambda (_g2331523318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2331623321_)
                       (let ()
                         (declare (not safe))
                         (cons _g2331523318_ _g2331623321_)))))
                (declare (not safe))
                (foldr1 __tmp50066 '() _L23285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L23286_ __tmp50065))))
                                          (declare (not safe))
                                          (cons _L23287_ __tmp50064))))
                                   (declare (not safe))
                                   (cons __tmp50067 __tmp50063)))
                                (__tmp50060
                                 (let ((__tmp50061
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23282_ '()))))
                                   (declare (not safe))
                                   (cons _L23284_ __tmp50061))))
                            (declare (not safe))
                            (cons __tmp50062 __tmp50060))))
                     (declare (not safe))
                     (cons _L23288_ __tmp50059)))))
            (let* ((___match4479044791_
                    (lambda (_e2316823202_
                             _hd2316723206_
                             _tl2316623209_
                             _e2317123212_
                             _hd2317023216_
                             _tl2316923219_
                             _e2317423222_
                             _hd2317323226_
                             _tl2317223229_
                             ___splice4472244723_
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
                                        (___kont4472044721_
                                         _hd2318823252_
                                         _hd2318523242_
                                         _path2318323278_
                                         _hd2317323226_
                                         _hd2317023216_
                                         _hd2316723206_))))))
                        (_loop2317823258_ _target2317523232_ '()))))
                   (___match4475044751_
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
                            (___kont4471844719_ _L23371_ _L23373_ _L23374_)
                            (if (gx#stx-pair/null? _tl2315423358_)
                                (if (fx>= (gx#stx-length _tl2315423358_) '2)
                                    (let ((___splice4472244723_
                                           (gx#syntax-split-splice
                                            _tl2315423358_
                                            '2)))
                                      (let ((_tl2317723235_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4472244723_
                                                '1)))
                                            (_target2317523232_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4472244723_
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
                    (___match4479044791_
                     _e2315023331_
                     _hd2314923335_
                     _tl2314823338_
                     _e2315323341_
                     _hd2315223345_
                     _tl2315123348_
                     _e2315623351_
                     _hd2315523355_
                     _tl2315423358_
                     ___splice4472244723_
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
              (if (gx#stx-pair? ___stx4471544716_)
                  (let ((_e2315023331_ (gx#syntax-e ___stx4471544716_)))
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
                                                  (___match4475044751_
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
                  (let ((___splice4472244723_
                         (gx#syntax-split-splice _tl2315423358_ '2)))
                    (let ((_tl2317723235_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4472244723_ '1)))
                          (_target2317523232_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4472244723_ '0))))
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
                                          (___match4479044791_
                                           _e2315023331_
                                           _hd2314923335_
                                           _tl2314823338_
                                           _e2315323341_
                                           _hd2315223345_
                                           _tl2315123348_
                                           _e2315623351_
                                           _hd2315523355_
                                           _tl2315423358_
                                           ___splice4472244723_
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
                                                  (let ((___splice4472244723_
                                                         (gx#syntax-split-splice
                                                          _tl2315423358_
                                                          '2)))
                                                    (let ((_tl2317723235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4472244723_
                                                              '1)))
                                                          (_target2317523232_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4472244723_
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
                                  (___match4479044791_
                                   _e2315023331_
                                   _hd2314923335_
                                   _tl2314823338_
                                   _e2315323341_
                                   _hd2315223345_
                                   _tl2315123348_
                                   _e2315623351_
                                   _hd2315523355_
                                   _tl2315423358_
                                   ___splice4472244723_
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
