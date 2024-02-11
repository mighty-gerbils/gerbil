(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g49762_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
      (lambda (_stx21490_)
        (letrec ((_body-opt?21493_
                  (lambda (_key21496_)
                    (memq (gx#stx-e _key21496_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx21490_ _body-opt?21493_))))
    (define |gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
      (lambda (_stx19356_ _id19358_ _super-ref19359_ _slots19360_ _body19361_)
        (letrec* ((_wrap19363_
                   (lambda (_e-stx21487_)
                     (gx#stx-wrap-source
                      _e-stx21487_
                      (gx#stx-source _stx19356_))))
                  (_make-id19365_
                   (if (uninterned-symbol? (gx#stx-e _id19358_))
                       (lambda _g49425_ (gx#genident _id19358_))
                       (lambda _args21484_
                         (apply gx#stx-identifier _id19358_ _args21484_))))
                  (_get-mixin-slots19366_
                   (lambda (_super21458_ _slots21460_)
                     (letrec* ((_tab21462_
                                (let ()
                                  (declare (not safe))
                                  (make-table 'test: eq?)))
                               (_dedup21464_
                                (lambda (_mixins21469_)
                                  (let _lp21472_ ((_rest21475_ _mixins21469_)
                                                  (_r21477_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest21475_))
                                        (let ((_slot21479_ (car _rest21475_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (table-ref
                                                 _tab21462_
                                                 _slot21479_
                                                 '#f))
                                              (let ((__tmp49428
                                                     (cdr _rest21475_)))
                                                (declare (not safe))
                                                (_lp21472_
                                                 __tmp49428
                                                 _r21477_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (table-set!
                                                   _tab21462_
                                                   _slot21479_
                                                   '#t))
                                                (let ((__tmp49427
                                                       (cdr _rest21475_))
                                                      (__tmp49426
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21479_
                                                               _r21477_))))
                                                  (declare (not safe))
                                                  (_lp21472_
                                                   __tmp49427
                                                   __tmp49426)))))
                                        (reverse _r21477_))))))
                       (gx#stx-for-each
                        (lambda (_slot21466_)
                          (let ((__tmp49429 (gx#stx-e _slot21466_)))
                            (declare (not safe))
                            (table-set! _tab21462_ __tmp49429 '#t)))
                        _slots21460_)
                       (if (let () (declare (not safe)) (not _super21458_))
                           '()
                           (if (gx#identifier? _super21458_)
                               (let ((__tmp49431
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19367_
                                         _super21458_))))
                                 (declare (not safe))
                                 (_dedup21464_ __tmp49431))
                               (let ((__tmp49430
                                      (concatenate
                                       (map _get-mixin-slots-r19367_
                                            _super21458_))))
                                 (declare (not safe))
                                 (_dedup21464_ __tmp49430)))))))
                  (_get-mixin-slots-r19367_
                   (lambda (_type-id21452_)
                     (let ((_info21455_
                            (gx#syntax-local-value _type-id21452_)))
                       (append (let ((__obj47338 _info21455_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj47338
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj47338
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj47338
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19367_
                                     (let ((__obj47339 _info21455_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj47339
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj47339
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj47339
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots19360_ _stx19356_)
          (let* ((_name19369_ (symbol->string (gx#stx-e _id19358_)))
                 (_super19372_ (map gx#syntax-local-value _super-ref19359_))
                 (_struct?19375_ (gx#stx-getq 'struct: _body19361_))
                 (_g1937819386_
                  (lambda (_g1937919382_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1937919382_)))
                 (_g1937721448_
                  (lambda (_g1937919390_)
                    ((lambda (_L19393_)
                       (let ()
                         (let* ((_g1940919417_
                                 (lambda (_g1941019413_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1941019413_)))
                                (_g1940821444_
                                 (lambda (_g1941019421_)
                                   ((lambda (_L19424_)
                                      (let ()
                                        (let* ((_g1943719445_
                                                (lambda (_g1943819441_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1943819441_)))
                                               (_g1943621440_
                                                (lambda (_g1943819449_)
                                                  ((lambda (_L19452_)
                                                     (let ()
                                                       (let* ((_g1946519473_
                                                               (lambda (_g1946619469_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g1946619469_)))
                      (_g1946421436_
                       (lambda (_g1946619477_)
                         ((lambda (_L19480_)
                            (let ()
                              (let* ((_g1949319501_
                                      (lambda (_g1949419497_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1949419497_)))
                                     (_g1949221432_
                                      (lambda (_g1949419505_)
                                        ((lambda (_L19508_)
                                           (let ()
                                             (let* ((_g1952119538_
                                                     (lambda (_g1952219534_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g1952219534_)))
                                                    (_g1952021428_
                                                     (lambda (_g1952219542_)
                                                       (if (gx#stx-pair/null?
                                                            _g1952219542_)
                                                           (let ((_g49432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g1952219542_ '0)))
                     (begin
                       (let ((_g49433_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g49432_)
                                    (##vector-length _g49432_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g49433_ 2)))
                             (error "Context expects 2 values" _g49433_)))
                       (let ((_target1952419545_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g49432_ 0)))
                             (_tl1952619548_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g49432_ 1))))
                         (if (gx#stx-null? _tl1952619548_)
                             (letrec ((_loop1952719551_
                                       (lambda (_hd1952519555_
                                                _slot1953119558_)
                                         (if (gx#stx-pair? _hd1952519555_)
                                             (let ((_e1952819561_
                                                    (gx#syntax-e
                                                     _hd1952519555_)))
                                               (let ((_lp-hd1952919565_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1952819561_)))
                                                     (_lp-tl1953019568_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1952819561_))))
                                                 (let ((__tmp49701
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1952919565_
                                                                _slot1953119558_))))
                                                   (declare (not safe))
                                                   (_loop1952719551_
                                                    _lp-tl1953019568_
                                                    __tmp49701))))
                                             (let ((_slot1953219571_
                                                    (reverse _slot1953119558_)))
                                               ((lambda (_L19575_)
                                                  (let ()
                                                    (let* ((_g1959219609_
                                                            (lambda (_g1959319605_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1959319605_)))
                                                           (_g1959121419_
                                                            (lambda (_g1959319613_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1959319613_)
                          (let ((_g49434_
                                 (gx#syntax-split-splice _g1959319613_ '0)))
                            (begin
                              (let ((_g49435_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g49434_)
                                           (##vector-length _g49434_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g49435_ 2)))
                                    (error "Context expects 2 values"
                                           _g49435_)))
                              (let ((_target1959519616_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49434_ 0)))
                                    (_tl1959719619_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49434_ 1))))
                                (if (gx#stx-null? _tl1959719619_)
                                    (letrec ((_loop1959819622_
                                              (lambda (_hd1959619626_
                                                       _getf1960219629_)
                                                (if (gx#stx-pair?
                                                     _hd1959619626_)
                                                    (let ((_e1959919632_
                                                           (gx#syntax-e
                                                            _hd1959619626_)))
                                                      (let ((_lp-hd1960019636_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1959919632_)))
                    (_lp-tl1960119639_
                     (let () (declare (not safe)) (##cdr _e1959919632_))))
                (let ((__tmp49699
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1960019636_ _getf1960219629_))))
                  (declare (not safe))
                  (_loop1959819622_ _lp-tl1960119639_ __tmp49699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_getf1960319642_
                                                           (reverse _getf1960219629_)))
                                                      ((lambda (_L19646_)
                                                         (let ()
                                                           (let* ((_g1966319680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1966419676_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1966419676_)))
                          (_g1966221410_
                           (lambda (_g1966419684_)
                             (if (gx#stx-pair/null? _g1966419684_)
                                 (let ((_g49436_
                                        (gx#syntax-split-splice
                                         _g1966419684_
                                         '0)))
                                   (begin
                                     (let ((_g49437_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g49436_)
                                                  (##vector-length _g49436_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g49437_ 2)))
                                           (error "Context expects 2 values"
                                                  _g49437_)))
                                     (let ((_target1966619687_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49436_ 0)))
                                           (_tl1966819690_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49436_ 1))))
                                       (if (gx#stx-null? _tl1966819690_)
                                           (letrec ((_loop1966919693_
                                                     (lambda (_hd1966719697_
                                                              _setf1967319700_)
                                                       (if (gx#stx-pair?
                                                            _hd1966719697_)
                                                           (let ((_e1967019703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1966719697_)))
                     (let ((_lp-hd1967119707_
                            (let ()
                              (declare (not safe))
                              (##car _e1967019703_)))
                           (_lp-tl1967219710_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1967019703_))))
                       (let ((__tmp49697
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd1967119707_ _setf1967319700_))))
                         (declare (not safe))
                         (_loop1966919693_ _lp-tl1967219710_ __tmp49697))))
                   (let ((_setf1967419713_ (reverse _setf1967319700_)))
                     ((lambda (_L19717_)
                        (let ()
                          (let* ((_mixin-slots19734_
                                  (let ()
                                    (declare (not safe))
                                    (_get-mixin-slots19366_
                                     _super-ref19359_
                                     _slots19360_)))
                                 (_g1973719754_
                                  (lambda (_g1973819750_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1973819750_)))
                                 (_g1973621406_
                                  (lambda (_g1973819758_)
                                    (if (gx#stx-pair/null? _g1973819758_)
                                        (let ((_g49438_
                                               (gx#syntax-split-splice
                                                _g1973819758_
                                                '0)))
                                          (begin
                                            (let ((_g49439_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g49438_)
                                                         (##vector-length
                                                          _g49438_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g49439_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g49439_)))
                                            (let ((_target1974019761_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g49438_
                                                      0)))
                                                  (_tl1974219764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g49438_
                                                      1))))
                                              (if (gx#stx-null? _tl1974219764_)
                                                  (letrec ((_loop1974319767_
                                                            (lambda (_hd1974119771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _mixin-slot1974719774_)
                      (if (gx#stx-pair? _hd1974119771_)
                          (let ((_e1974419777_ (gx#syntax-e _hd1974119771_)))
                            (let ((_lp-hd1974519781_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1974419777_)))
                                  (_lp-tl1974619784_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1974419777_))))
                              (let ((__tmp49696
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1974519781_
                                             _mixin-slot1974719774_))))
                                (declare (not safe))
                                (_loop1974319767_
                                 _lp-tl1974619784_
                                 __tmp49696))))
                          (let ((_mixin-slot1974819787_
                                 (reverse _mixin-slot1974719774_)))
                            ((lambda (_L19791_)
                               (let ()
                                 (let* ((_g1980919826_
                                         (lambda (_g1981019822_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1981019822_)))
                                        (_g1980821397_
                                         (lambda (_g1981019830_)
                                           (if (gx#stx-pair/null?
                                                _g1981019830_)
                                               (let ((_g49440_
                                                      (gx#syntax-split-splice
                                                       _g1981019830_
                                                       '0)))
                                                 (begin
                                                   (let ((_g49441_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g49440_)
                        (##vector-length _g49440_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g49441_ 2)))
                 (error "Context expects 2 values" _g49441_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1981219833_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49440_
                                                             0)))
                                                         (_tl1981419836_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49440_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl1981419836_)
                                                         (letrec ((_loop1981519839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1981319843_ _mixin-getf1981919846_)
                             (if (gx#stx-pair? _hd1981319843_)
                                 (let ((_e1981619849_
                                        (gx#syntax-e _hd1981319843_)))
                                   (let ((_lp-hd1981719853_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1981619849_)))
                                         (_lp-tl1981819856_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1981619849_))))
                                     (let ((__tmp49694
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd1981719853_
                                                    _mixin-getf1981919846_))))
                                       (declare (not safe))
                                       (_loop1981519839_
                                        _lp-tl1981819856_
                                        __tmp49694))))
                                 (let ((_mixin-getf1982019859_
                                        (reverse _mixin-getf1981919846_)))
                                   ((lambda (_L19863_)
                                      (let ()
                                        (let* ((_g1988019897_
                                                (lambda (_g1988119893_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1988119893_)))
                                               (_g1987921388_
                                                (lambda (_g1988119901_)
                                                  (if (gx#stx-pair/null?
                                                       _g1988119901_)
                                                      (let ((_g49442_
                                                             (gx#syntax-split-splice
                                                              _g1988119901_
                                                              '0)))
                                                        (begin
                                                          (let ((_g49443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g49442_)
                               (##vector-length _g49442_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g49443_ 2)))
                        (error "Context expects 2 values" _g49443_)))
                  (let ((_target1988319904_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g49442_ 0)))
                        (_tl1988519907_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g49442_ 1))))
                    (if (gx#stx-null? _tl1988519907_)
                        (letrec ((_loop1988619910_
                                  (lambda (_hd1988419914_
                                           _mixin-setf1989019917_)
                                    (if (gx#stx-pair? _hd1988419914_)
                                        (let ((_e1988719920_
                                               (gx#syntax-e _hd1988419914_)))
                                          (let ((_lp-hd1988819924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1988719920_)))
                                                (_lp-tl1988919927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1988719920_))))
                                            (let ((__tmp49692
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd1988819924_
                                                           _mixin-setf1989019917_))))
                                              (declare (not safe))
                                              (_loop1988619910_
                                               _lp-tl1988919927_
                                               __tmp49692))))
                                        (let ((_mixin-setf1989119930_
                                               (reverse _mixin-setf1989019917_)))
                                          ((lambda (_L19934_)
                                             (let ()
                                               (let* ((_g1995119968_
                                                       (lambda (_g1995219964_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1995219964_)))
                                                      (_g1995021371_
                                                       (lambda (_g1995219972_)
                                                         (if (gx#stx-pair/null?
                                                              _g1995219972_)
                                                             (let ((_g49444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1995219972_ '0)))
                       (begin
                         (let ((_g49445_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g49444_)
                                      (##vector-length _g49444_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g49445_ 2)))
                               (error "Context expects 2 values" _g49445_)))
                         (let ((_target1995419975_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49444_ 0)))
                               (_tl1995619978_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49444_ 1))))
                           (if (gx#stx-null? _tl1995619978_)
                               (letrec ((_loop1995719981_
                                         (lambda (_hd1995519985_
                                                  _ugetf1996119988_)
                                           (if (gx#stx-pair? _hd1995519985_)
                                               (let ((_e1995819991_
                                                      (gx#syntax-e
                                                       _hd1995519985_)))
                                                 (let ((_lp-hd1995919995_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1995819991_)))
                                                       (_lp-tl1996019998_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1995819991_))))
                                                   (let ((__tmp49689
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _lp-hd1995919995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ugetf1996119988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop1995719981_
                                                      _lp-tl1996019998_
                                                      __tmp49689))))
                                               (let ((_ugetf1996220001_
                                                      (reverse _ugetf1996119988_)))
                                                 ((lambda (_L20005_)
                                                    (let ()
                                                      (let* ((_g2002220039_
                                                              (lambda (_g2002320035_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2002320035_)))
                     (_g2002121354_
                      (lambda (_g2002320043_)
                        (if (gx#stx-pair/null? _g2002320043_)
                            (let ((_g49446_
                                   (gx#syntax-split-splice _g2002320043_ '0)))
                              (begin
                                (let ((_g49447_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g49446_)
                                             (##vector-length _g49446_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g49447_ 2)))
                                      (error "Context expects 2 values"
                                             _g49447_)))
                                (let ((_target2002520046_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49446_ 0)))
                                      (_tl2002720049_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49446_ 1))))
                                  (if (gx#stx-null? _tl2002720049_)
                                      (letrec ((_loop2002820052_
                                                (lambda (_hd2002620056_
                                                         _usetf2003220059_)
                                                  (if (gx#stx-pair?
                                                       _hd2002620056_)
                                                      (let ((_e2002920062_
                                                             (gx#syntax-e
                                                              _hd2002620056_)))
                                                        (let ((_lp-hd2003020066_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2002920062_)))
                      (_lp-tl2003120069_
                       (let () (declare (not safe)) (##cdr _e2002920062_))))
                  (let ((__tmp49686
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2003020066_ _usetf2003220059_))))
                    (declare (not safe))
                    (_loop2002820052_ _lp-tl2003120069_ __tmp49686))))
              (let ((_usetf2003320072_ (reverse _usetf2003220059_)))
                ((lambda (_L20076_)
                   (let ()
                     (let* ((_g2009320110_
                             (lambda (_g2009420106_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2009420106_)))
                            (_g2009221337_
                             (lambda (_g2009420114_)
                               (if (gx#stx-pair/null? _g2009420114_)
                                   (let ((_g49448_
                                          (gx#syntax-split-splice
                                           _g2009420114_
                                           '0)))
                                     (begin
                                       (let ((_g49449_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g49448_)
                                                    (##vector-length _g49448_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g49449_ 2)))
                                             (error "Context expects 2 values"
                                                    _g49449_)))
                                       (let ((_target2009620117_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g49448_ 0)))
                                             (_tl2009820120_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g49448_ 1))))
                                         (if (gx#stx-null? _tl2009820120_)
                                             (letrec ((_loop2009920123_
                                                       (lambda (_hd2009720127_
                                                                _mixin-ugetf2010320130_)
                                                         (if (gx#stx-pair?
                                                              _hd2009720127_)
                                                             (let ((_e2010020133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd2009720127_)))
                       (let ((_lp-hd2010120137_
                              (let ()
                                (declare (not safe))
                                (##car _e2010020133_)))
                             (_lp-tl2010220140_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2010020133_))))
                         (let ((__tmp49683
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2010120137_
                                        _mixin-ugetf2010320130_))))
                           (declare (not safe))
                           (_loop2009920123_ _lp-tl2010220140_ __tmp49683))))
                     (let ((_mixin-ugetf2010420143_
                            (reverse _mixin-ugetf2010320130_)))
                       ((lambda (_L20147_)
                          (let ()
                            (let* ((_g2016420181_
                                    (lambda (_g2016520177_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2016520177_)))
                                   (_g2016321320_
                                    (lambda (_g2016520185_)
                                      (if (gx#stx-pair/null? _g2016520185_)
                                          (let ((_g49450_
                                                 (gx#syntax-split-splice
                                                  _g2016520185_
                                                  '0)))
                                            (begin
                                              (let ((_g49451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g49450_)
                                                           (##vector-length
                                                            _g49450_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g49451_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g49451_)))
                                              (let ((_target2016720188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g49450_
                                                        0)))
                                                    (_tl2016920191_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g49450_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl2016920191_)
                                                    (letrec ((_loop2017020194_
                                                              (lambda (_hd2016820198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _mixin-usetf2017420201_)
                        (if (gx#stx-pair? _hd2016820198_)
                            (let ((_e2017120204_ (gx#syntax-e _hd2016820198_)))
                              (let ((_lp-hd2017220208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2017120204_)))
                                    (_lp-tl2017320211_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2017120204_))))
                                (let ((__tmp49680
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2017220208_
                                               _mixin-usetf2017420201_))))
                                  (declare (not safe))
                                  (_loop2017020194_
                                   _lp-tl2017320211_
                                   __tmp49680))))
                            (let ((_mixin-usetf2017520214_
                                   (reverse _mixin-usetf2017420201_)))
                              ((lambda (_L20218_)
                                 (let ()
                                   (let* ((_type-slots20249_
                                           (if (gx#stx-null? _slots19360_)
                                               '()
                                               (let ((__tmp49452
                                                      (let ((__tmp49453
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19717_
                                                                _L19646_
                                                                _L19575_)
                                                               (let ((__tmp49454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2023420239_
                                       _g2023520242_
                                       _g2023620244_
                                       _g2023720246_)
                                (let ((__tmp49455
                                       (let ((__tmp49456
                                              (let ((__tmp49457
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2023420239_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2023520242_
                                                      __tmp49457))))
                                         (declare (not safe))
                                         (cons _g2023620244_ __tmp49456))))
                                  (declare (not safe))
                                  (cons __tmp49455 _g2023720246_)))))
                         (declare (not safe))
                         (foldr* __tmp49454 '() _L19717_ _L19646_ _L19575_)))))
                (declare (not safe))
                (cons __tmp49453 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp49452))))
                                          (_type-mixin-slots20266_
                                           (if (gx#stx-null?
                                                _mixin-slots19734_)
                                               '()
                                               (let ((__tmp49458
                                                      (let ((__tmp49459
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19934_
                                                                _L19863_
                                                                _L19791_)
                                                               (let ((__tmp49460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2025120256_
                                       _g2025220259_
                                       _g2025320261_
                                       _g2025420263_)
                                (let ((__tmp49461
                                       (let ((__tmp49462
                                              (let ((__tmp49463
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2025120256_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2025220259_
                                                      __tmp49463))))
                                         (declare (not safe))
                                         (cons _g2025320261_ __tmp49462))))
                                  (declare (not safe))
                                  (cons __tmp49461 _g2025420263_)))))
                         (declare (not safe))
                         (foldr* __tmp49460 '() _L19934_ _L19863_ _L19791_)))))
                (declare (not safe))
                (cons __tmp49459 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp49458))))
                                          (_type-name20273_
                                           (let ((__tmp49464
                                                  (let ((__tmp49465
                                                         (let ((_$e20269_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body19361_)))
                   (if _$e20269_ _$e20269_ _id19358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49465 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp49464)))
                                          (_type-id20280_
                                           (let ((__tmp49466
                                                  (let ((__tmp49467
                                                         (let ((_$e20276_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'id:
                         _body19361_)))
                   (if _$e20276_
                       _$e20276_
                       (let ()
                         (declare (not safe))
                         (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                          _L19393_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49467 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp49466)))
                                          (_type-constructor20295_
                                           (let ((_$e20291_
                                                  (let ((_e2028220284_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body19361_)))
                                                    (if _e2028220284_
                                                        (let* ((_e20288_
                                                                _e2028220284_)
                                                               (__tmp49468
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e20288_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp49468))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e20291_ _$e20291_ '())))
                                          (_properties20329_
                                           (let* ((_properties20298_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body19361_))
                                                       (let ((__tmp49469
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp49469 '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties20311_
                                                   (let ((_$e20301_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _body19361_))))
                                                     (if _$e20301_
                                                         ((lambda (_print20305_)
                                                            (let* ((_print20308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _print20305_ '#t))
                                _slots19360_
                                _print20305_))
                           (__tmp49470
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print20308_))))
                      (declare (not safe))
                      (cons __tmp49470 _properties20298_)))
                  _$e20301_)
                 _properties20298_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties20324_
                                                   (let ((_$e20314_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _body19361_))))
                                                     (if _$e20314_
                                                         ((lambda (_equal20318_)
                                                            (let* ((_equal20321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _equal20318_ '#t))
                                _slots19360_
                                _equal20318_))
                           (__tmp49471
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal20321_))))
                      (declare (not safe))
                      (cons __tmp49471 _properties20311_)))
                  _$e20314_)
                 _properties20311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _properties20324_))
                                          (_type-properties20370_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _properties20329_))
                                               '()
                                               (let* ((_g2033220340_
                                                       (lambda (_g2033320336_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2033320336_)))
                                                      (_g2033120366_
                                                       (lambda (_g2033320344_)
                                                         ((lambda (_L20347_)
                                                            (let ()
                                                              (let ((__tmp49472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49473
                                    (let ((__tmp49475
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp49474
                                           (let ()
                                             (declare (not safe))
                                             (cons _L20347_ '()))))
                                      (declare (not safe))
                                      (cons __tmp49475 __tmp49474))))
                               (declare (not safe))
                               (cons __tmp49473 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp49472))))
                  _g2033320344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2033120366_
                                                  _properties20329_))))
                                          (_final?20373_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body19361_)))
                                          (_type-final20376_
                                           (let ((__tmp49476
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?20373_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp49476)))
                                          (_g2037920396_
                                           (lambda (_g2038020392_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2038020392_)))
                                          (_g2037821316_
                                           (lambda (_g2038020400_)
                                             (if (gx#stx-pair/null?
                                                  _g2038020400_)
                                                 (let ((_g49477_
                                                        (gx#syntax-split-splice
                                                         _g2038020400_
                                                         '0)))
                                                   (begin
                                                     (let ((_g49478_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g49477_)
                          (##vector-length _g49477_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g49478_ 2)))
                   (error "Context expects 2 values" _g49478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2038220403_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49477_
                                                               0)))
                                                           (_tl2038420406_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49477_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2038420406_)
                                                           (letrec ((_loop2038520409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2038320413_ _type-body2038920416_)
                               (if (gx#stx-pair? _hd2038320413_)
                                   (let ((_e2038620419_
                                          (gx#syntax-e _hd2038320413_)))
                                     (let ((_lp-hd2038720423_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2038620419_)))
                                           (_lp-tl2038820426_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2038620419_))))
                                       (let ((__tmp49673
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2038720423_
                                                      _type-body2038920416_))))
                                         (declare (not safe))
                                         (_loop2038520409_
                                          _lp-tl2038820426_
                                          __tmp49673))))
                                   (let ((_type-body2039020429_
                                          (reverse _type-body2038920416_)))
                                     ((lambda (_L20433_)
                                        (let ()
                                          (let* ((_g2045120459_
                                                  (lambda (_g2045220455_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2045220455_)))
                                                 (_g2045021304_
                                                  (lambda (_g2045220463_)
                                                    ((lambda (_L20466_)
                                                       (let ()
                                                         (let* ((_g2047920487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2048020483_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2048020483_)))
                        (_g2047821233_
                         (lambda (_g2048020491_)
                           ((lambda (_L20494_)
                              (let ()
                                (let* ((_g2050720515_
                                        (lambda (_g2050820511_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2050820511_)))
                                       (_g2050621198_
                                        (lambda (_g2050820519_)
                                          ((lambda (_L20522_)
                                             (let ()
                                               (let* ((_g2053520543_
                                                       (lambda (_g2053620539_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2053620539_)))
                                                      (_g2053421112_
                                                       (lambda (_g2053620547_)
                                                         ((lambda (_L20550_)
                                                            (let ()
                                                              (let* ((_g2056320571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2056420567_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2056420567_)))
                             (_g2056221100_
                              (lambda (_g2056420575_)
                                ((lambda (_L20578_)
                                   (let ()
                                     (let* ((_g2059120599_
                                             (lambda (_g2059220595_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2059220595_)))
                                            (_g2059021096_
                                             (lambda (_g2059220603_)
                                               ((lambda (_L20606_)
                                                  (let ()
                                                    (let* ((_g2061920627_
                                                            (lambda (_g2062020623_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2062020623_)))
                                                           (_g2061821092_
                                                            (lambda (_g2062020631_)
                                                              ((lambda (_L20634_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2064720655_
                                   (lambda (_g2064820651_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2064820651_)))
                                  (_g2064621021_
                                   (lambda (_g2064820659_)
                                     ((lambda (_L20662_)
                                        (let ()
                                          (let* ((_g2067520683_
                                                  (lambda (_g2067620679_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2067620679_)))
                                                 (_g2067421017_
                                                  (lambda (_g2067620687_)
                                                    ((lambda (_L20690_)
                                                       (let ()
                                                         (let* ((_g2070320711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2070420707_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2070420707_)))
                        (_g2070221013_
                         (lambda (_g2070420715_)
                           ((lambda (_L20718_)
                              (let ()
                                (let* ((_g2073120739_
                                        (lambda (_g2073220735_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2073220735_)))
                                       (_g2073021009_
                                        (lambda (_g2073220743_)
                                          ((lambda (_L20746_)
                                             (let ()
                                               (let* ((_g2075920767_
                                                       (lambda (_g2076020763_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2076020763_)))
                                                      (_g2075820983_
                                                       (lambda (_g2076020771_)
                                                         ((lambda (_L20774_)
                                                            (let ()
                                                              (let* ((_g2078720795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2078820791_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2078820791_)))
                             (_g2078620957_
                              (lambda (_g2078820799_)
                                ((lambda (_L20802_)
                                   (let ()
                                     (let* ((_g2081520823_
                                             (lambda (_g2081620819_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2081620819_)))
                                            (_g2081420931_
                                             (lambda (_g2081620827_)
                                               ((lambda (_L20830_)
                                                  (let ()
                                                    (let* ((_g2084320851_
                                                            (lambda (_g2084420847_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2084420847_)))
                                                           (_g2084220905_
                                                            (lambda (_g2084420855_)
                                                              ((lambda (_L20858_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2087120879_
                                   (lambda (_g2087220875_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2087220875_)))
                                  (_g2087020901_
                                   (lambda (_g2087220883_)
                                     ((lambda (_L20886_)
                                        (let ()
                                          (let ()
                                            (let ((__tmp49479
                                                   (let ((__tmp49482
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin))
                                                         (__tmp49480
                                                          (let ((__tmp49481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L20886_ '()))))
                    (declare (not safe))
                    (cons _L20466_ __tmp49481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49482
                                                           __tmp49480))))
                                              (declare (not safe))
                                              (_wrap19363_ __tmp49479)))))
                                      _g2087220883_)))
                                  (__tmp49483
                                   (let ((__tmp49484
                                          (let ((__tmp49517
                                                 (gx#datum->syntax
                                                  '#f
                                                  'defsyntax))
                                                (__tmp49485
                                                 (let ((__tmp49486
                                                        (let ((__tmp49487
                                                               (let ((__tmp49516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'make-class-type-info))
                             (__tmp49488
                              (let ((__tmp49489
                                     (let ((__tmp49490
                                            (let ((__tmp49491
                                                   (let ((__tmp49492
                                                          (let ((__tmp49493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49494
                                (let ((__tmp49495
                                       (let ((__tmp49496
                                              (let ((__tmp49497
                                                     (let ((__tmp49498
                                                            (let ((__tmp49499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49500
                                  (let ((__tmp49501
                                         (let ((__tmp49502
                                                (let ((__tmp49503
                                                       (let ((__tmp49504
                                                              (let ((__tmp49505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49506
                                    (let ((__tmp49507
                                           (let ((__tmp49508
                                                  (let ((__tmp49509
                                                         (let ((__tmp49510
                                                                (let ((__tmp49511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49512
                                      (let ((__tmp49513
                                             (let ((__tmp49514
                                                    (let ((__tmp49515
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L20858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons 'unchecked-mutators: __tmp49515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L20830_ __tmp49514))))
                                        (declare (not safe))
                                        (cons 'unchecked-accessors:
                                              __tmp49513))))
                                 (declare (not safe))
                                 (cons _L20802_ __tmp49512))))
                          (declare (not safe))
                          (cons 'mutators: __tmp49511))))
                   (declare (not safe))
                   (cons _L20774_ __tmp49510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'accessors:
                                                          __tmp49509))))
                                             (declare (not safe))
                                             (cons _L20746_ __tmp49508))))
                                      (declare (not safe))
                                      (cons 'predicate: __tmp49507))))
                               (declare (not safe))
                               (cons _L20718_ __tmp49506))))
                        (declare (not safe))
                        (cons 'constructor: __tmp49505))))
                 (declare (not safe))
                 (cons _L20690_ __tmp49504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'type-descriptor:
                                                        __tmp49503))))
                                           (declare (not safe))
                                           (cons _L20662_ __tmp49502))))
                                    (declare (not safe))
                                    (cons 'constructor-method: __tmp49501))))
                             (declare (not safe))
                             (cons _L20634_ __tmp49500))))
                      (declare (not safe))
                      (cons 'final?: __tmp49499))))
               (declare (not safe))
               (cons _L20606_ __tmp49498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'struct?: __tmp49497))))
                                         (declare (not safe))
                                         (cons _L20550_ __tmp49496))))
                                  (declare (not safe))
                                  (cons 'super: __tmp49495))))
                           (declare (not safe))
                           (cons _L20578_ __tmp49494))))
                    (declare (not safe))
                    (cons 'slots: __tmp49493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L20522_
                                                           __tmp49492))))
                                              (declare (not safe))
                                              (cons 'name: __tmp49491))))
                                       (declare (not safe))
                                       (cons _L20494_ __tmp49490))))
                                (declare (not safe))
                                (cons 'id: __tmp49489))))
                         (declare (not safe))
                         (cons __tmp49516 __tmp49488))))
                  (declare (not safe))
                  (cons __tmp49487 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L19393_
                                                         __tmp49486))))
                                            (declare (not safe))
                                            (cons __tmp49517 __tmp49485))))
                                     (declare (not safe))
                                     (_wrap19363_ __tmp49484))))
                             (declare (not safe))
                             (_g2087020901_ __tmp49483))))
                       _g2084420855_)))
                   (__tmp49518
                    (let ((__tmp49545 (gx#datum->syntax '#f '@list))
                          (__tmp49519
                           (begin
                             (gx#syntax-check-splice-targets _L20076_ _L19575_)
                             (let ((__tmp49533
                                    (lambda (_g2090820915_
                                             _g2090920918_
                                             _g2091020920_)
                                      (let ((__tmp49534
                                             (let ((__tmp49544
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49535
                                                    (let ((__tmp49541
                                                           (let ((__tmp49543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49542
                          (let ()
                            (declare (not safe))
                            (cons _g2090920918_ '()))))
                     (declare (not safe))
                     (cons __tmp49543 __tmp49542)))
                  (__tmp49536
                   (let ((__tmp49537
                          (let ((__tmp49538
                                 (let ((__tmp49540
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp49539
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2090820915_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49540 __tmp49539))))
                            (declare (not safe))
                            (cons __tmp49538 '()))))
                     (declare (not safe))
                     (cons ':: __tmp49537))))
              (declare (not safe))
              (cons __tmp49541 __tmp49536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49544 __tmp49535))))
                                        (declare (not safe))
                                        (cons __tmp49534 _g2091020920_))))
                                   (__tmp49520
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20218_
                                       _L19791_)
                                      (let ((__tmp49521
                                             (lambda (_g2091120923_
                                                      _g2091220926_
                                                      _g2091320928_)
                                               (let ((__tmp49522
                                                      (let ((__tmp49532
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp49523
                                                             (let ((__tmp49529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49531 (gx#datum->syntax '#f 'quote))
                                  (__tmp49530
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2091220926_ '()))))
                              (declare (not safe))
                              (cons __tmp49531 __tmp49530)))
                           (__tmp49524
                            (let ((__tmp49525
                                   (let ((__tmp49526
                                          (let ((__tmp49528
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp49527
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2091120923_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49528 __tmp49527))))
                                     (declare (not safe))
                                     (cons __tmp49526 '()))))
                              (declare (not safe))
                              (cons ':: __tmp49525))))
                       (declare (not safe))
                       (cons __tmp49529 __tmp49524))))
                (declare (not safe))
                (cons __tmp49532 __tmp49523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49522
                                                       _g2091320928_)))))
                                        (declare (not safe))
                                        (foldr2 __tmp49521
                                                '()
                                                _L20218_
                                                _L19791_)))))
                               (declare (not safe))
                               (foldr2 __tmp49533
                                       __tmp49520
                                       _L20076_
                                       _L19575_)))))
                      (declare (not safe))
                      (cons __tmp49545 __tmp49519))))
              (declare (not safe))
              (_g2084220905_ __tmp49518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2081620827_)))
                                            (__tmp49546
                                             (let ((__tmp49573
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49547
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L20005_
                                                       _L19575_)
                                                      (let ((__tmp49561
                                                             (lambda (_g2093420941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2093520944_
                              _g2093620946_)
                       (let ((__tmp49562
                              (let ((__tmp49572 (gx#datum->syntax '#f '@list))
                                    (__tmp49563
                                     (let ((__tmp49569
                                            (let ((__tmp49571
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49570
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2093520944_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp49571 __tmp49570)))
                                           (__tmp49564
                                            (let ((__tmp49565
                                                   (let ((__tmp49566
                                                          (let ((__tmp49568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp49567
                         (let ()
                           (declare (not safe))
                           (cons _g2093420941_ '()))))
                    (declare (not safe))
                    (cons __tmp49568 __tmp49567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49566 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp49565))))
                                       (declare (not safe))
                                       (cons __tmp49569 __tmp49564))))
                                (declare (not safe))
                                (cons __tmp49572 __tmp49563))))
                         (declare (not safe))
                         (cons __tmp49562 _g2093620946_))))
                    (__tmp49548
                     (begin
                       (gx#syntax-check-splice-targets _L20147_ _L19791_)
                       (let ((__tmp49549
                              (lambda (_g2093720949_
                                       _g2093820952_
                                       _g2093920954_)
                                (let ((__tmp49550
                                       (let ((__tmp49560
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp49551
                                              (let ((__tmp49557
                                                     (let ((__tmp49559
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp49558
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2093820952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp49559 __tmp49558)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49552
                                                     (let ((__tmp49553
                                                            (let ((__tmp49554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49556
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp49555
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2093720949_ '()))))
                             (declare (not safe))
                             (cons __tmp49556 __tmp49555))))
                      (declare (not safe))
                      (cons __tmp49554 '()))))
               (declare (not safe))
               (cons ':: __tmp49553))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49557 __tmp49552))))
                                         (declare (not safe))
                                         (cons __tmp49560 __tmp49551))))
                                  (declare (not safe))
                                  (cons __tmp49550 _g2093920954_)))))
                         (declare (not safe))
                         (foldr2 __tmp49549 '() _L20147_ _L19791_)))))
                (declare (not safe))
                (foldr2 __tmp49561 __tmp49548 _L20005_ _L19575_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49573 __tmp49547))))
                                       (declare (not safe))
                                       (_g2081420931_ __tmp49546))))
                                 _g2078820799_)))
                             (__tmp49574
                              (let ((__tmp49601 (gx#datum->syntax '#f '@list))
                                    (__tmp49575
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19717_
                                        _L19575_)
                                       (let ((__tmp49589
                                              (lambda (_g2096020967_
                                                       _g2096120970_
                                                       _g2096220972_)
                                                (let ((__tmp49590
                                                       (let ((__tmp49600
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp49591
                                                              (let ((__tmp49597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49599 (gx#datum->syntax '#f 'quote))
                                   (__tmp49598
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2096120970_ '()))))
                               (declare (not safe))
                               (cons __tmp49599 __tmp49598)))
                            (__tmp49592
                             (let ((__tmp49593
                                    (let ((__tmp49594
                                           (let ((__tmp49596
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp49595
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2096020967_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49596 __tmp49595))))
                                      (declare (not safe))
                                      (cons __tmp49594 '()))))
                               (declare (not safe))
                               (cons ':: __tmp49593))))
                        (declare (not safe))
                        (cons __tmp49597 __tmp49592))))
                 (declare (not safe))
                 (cons __tmp49600 __tmp49591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49590
                                                        _g2096220972_))))
                                             (__tmp49576
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19934_
                                                 _L19791_)
                                                (let ((__tmp49577
                                                       (lambda (_g2096320975_
                                                                _g2096420978_
                                                                _g2096520980_)
                                                         (let ((__tmp49578
                                                                (let ((__tmp49588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49579
                               (let ((__tmp49585
                                      (let ((__tmp49587
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp49586
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2096420978_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49587 __tmp49586)))
                                     (__tmp49580
                                      (let ((__tmp49581
                                             (let ((__tmp49582
                                                    (let ((__tmp49584
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp49583
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2096320975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp49584 __tmp49583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49582 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49581))))
                                 (declare (not safe))
                                 (cons __tmp49585 __tmp49580))))
                          (declare (not safe))
                          (cons __tmp49588 __tmp49579))))
                   (declare (not safe))
                   (cons __tmp49578 _g2096520980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr2 __tmp49577
                                                          '()
                                                          _L19934_
                                                          _L19791_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp49589
                                                 __tmp49576
                                                 _L19717_
                                                 _L19575_)))))
                                (declare (not safe))
                                (cons __tmp49601 __tmp49575))))
                        (declare (not safe))
                        (_g2078620957_ __tmp49574))))
                  _g2076020771_)))
              (__tmp49602
               (let ((__tmp49629 (gx#datum->syntax '#f '@list))
                     (__tmp49603
                      (begin
                        (gx#syntax-check-splice-targets _L19646_ _L19575_)
                        (let ((__tmp49617
                               (lambda (_g2098620993_
                                        _g2098720996_
                                        _g2098820998_)
                                 (let ((__tmp49618
                                        (let ((__tmp49628
                                               (gx#datum->syntax '#f '@list))
                                              (__tmp49619
                                               (let ((__tmp49625
                                                      (let ((__tmp49627
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote))
                                                            (__tmp49626
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _g2098720996_ '()))))
                (declare (not safe))
                (cons __tmp49627 __tmp49626)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49620
                                                      (let ((__tmp49621
                                                             (let ((__tmp49622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49624
                                   (gx#datum->syntax '#f 'quote-syntax))
                                  (__tmp49623
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2098620993_ '()))))
                              (declare (not safe))
                              (cons __tmp49624 __tmp49623))))
                       (declare (not safe))
                       (cons __tmp49622 '()))))
                (declare (not safe))
                (cons ':: __tmp49621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49625
                                                       __tmp49620))))
                                          (declare (not safe))
                                          (cons __tmp49628 __tmp49619))))
                                   (declare (not safe))
                                   (cons __tmp49618 _g2098820998_))))
                              (__tmp49604
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L19863_
                                  _L19791_)
                                 (let ((__tmp49605
                                        (lambda (_g2098921001_
                                                 _g2099021004_
                                                 _g2099121006_)
                                          (let ((__tmp49606
                                                 (let ((__tmp49616
                                                        (gx#datum->syntax
                                                         '#f
                                                         '@list))
                                                       (__tmp49607
                                                        (let ((__tmp49613
                                                               (let ((__tmp49615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp49614
                              (let ()
                                (declare (not safe))
                                (cons _g2099021004_ '()))))
                         (declare (not safe))
                         (cons __tmp49615 __tmp49614)))
                      (__tmp49608
                       (let ((__tmp49609
                              (let ((__tmp49610
                                     (let ((__tmp49612
                                            (gx#datum->syntax
                                             '#f
                                             'quote-syntax))
                                           (__tmp49611
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2098921001_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49612 __tmp49611))))
                                (declare (not safe))
                                (cons __tmp49610 '()))))
                         (declare (not safe))
                         (cons ':: __tmp49609))))
                  (declare (not safe))
                  (cons __tmp49613 __tmp49608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49616
                                                         __tmp49607))))
                                            (declare (not safe))
                                            (cons __tmp49606 _g2099121006_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp49605
                                           '()
                                           _L19863_
                                           _L19791_)))))
                          (declare (not safe))
                          (foldr2 __tmp49617 __tmp49604 _L19646_ _L19575_)))))
                 (declare (not safe))
                 (cons __tmp49629 __tmp49603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2075820983_ __tmp49602))))
                                           _g2073220743_)))
                                       (__tmp49630
                                        (let ((__tmp49632
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp49631
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19480_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49632 __tmp49631))))
                                  (declare (not safe))
                                  (_g2073021009_ __tmp49630))))
                            _g2070420715_)))
                        (__tmp49633
                         (let ((__tmp49635
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp49634
                                (let ()
                                  (declare (not safe))
                                  (cons _L19452_ '()))))
                           (declare (not safe))
                           (cons __tmp49635 __tmp49634))))
                   (declare (not safe))
                   (_g2070221013_ __tmp49633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2067620687_)))
                                                 (__tmp49636
                                                  (let ((__tmp49638
                                                         (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax))
                                                        (__tmp49637
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L19424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49638
                                                          __tmp49637))))
                                            (declare (not safe))
                                            (_g2067421017_ __tmp49636))))
                                      _g2064820659_)))
                                  (__tmp49639
                                   (if (let ()
                                         (declare (not safe))
                                         (null? _type-constructor20295_))
                                       '#f
                                       (let* ((_g2102521040_
                                               (lambda (_g2102621036_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g2102621036_)))
                                              (_g2102421088_
                                               (lambda (_g2102621044_)
                                                 (if (gx#stx-pair?
                                                      _g2102621044_)
                                                     (let ((_e2103021047_
                                                            (gx#syntax-e
                                                             _g2102621044_)))
                                                       (let ((_hd2102921051_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2103021047_)))
                     (_tl2102821054_
                      (let () (declare (not safe)) (##cdr _e2103021047_))))
                 (if (gx#stx-datum? _hd2102921051_)
                     (let ((_e2103121057_ (gx#stx-e _hd2102921051_)))
                       (if (let ()
                             (declare (not safe))
                             (equal? _e2103121057_ 'constructor:))
                           (if (gx#stx-pair? _tl2102821054_)
                               (let ((_e2103421061_
                                      (gx#syntax-e _tl2102821054_)))
                                 (let ((_hd2103321065_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2103421061_)))
                                       (_tl2103221068_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2103421061_))))
                                   (if (gx#stx-null? _tl2103221068_)
                                       ((lambda (_L21071_)
                                          (let ()
                                            (let ((__tmp49641
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49640
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21071_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49641 __tmp49640))))
                                        _hd2103321065_)
                                       (let ()
                                         (declare (not safe))
                                         (_g2102521040_ _g2102621044_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g2102521040_ _g2102621044_)))
                           (let ()
                             (declare (not safe))
                             (_g2102521040_ _g2102621044_))))
                     (let ()
                       (declare (not safe))
                       (_g2102521040_ _g2102621044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2102521040_
                                                        _g2102621044_))))))
                                         (declare (not safe))
                                         (_g2102421088_
                                          _type-constructor20295_)))))
                             (declare (not safe))
                             (_g2064621021_ __tmp49639))))
                       _g2062020631_))))
              (declare (not safe))
              (_g2061821092_ _final?20373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2059220603_))))
                                       (declare (not safe))
                                       (_g2059021096_ _struct?19375_))))
                                 _g2056420575_)))
                             (__tmp49642
                              (let ((__tmp49646 (gx#datum->syntax '#f 'quote))
                                    (__tmp49643
                                     (let ((__tmp49644
                                            (let ((__tmp49645
                                                   (lambda (_g2110321106_
                                                            _g2110421109_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2110321106_
                                                             _g2110421109_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49645
                                                      '()
                                                      _L19575_))))
                                       (declare (not safe))
                                       (cons __tmp49644 '()))))
                                (declare (not safe))
                                (cons __tmp49646 __tmp49643))))
                        (declare (not safe))
                        (_g2056221100_ __tmp49642))))
                  _g2053620547_)))
              (__tmp49647
               (let* ((_g2111621133_
                       (lambda (_g2111721129_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2111721129_)))
                      (_g2111521194_
                       (lambda (_g2111721137_)
                         (if (gx#stx-pair/null? _g2111721137_)
                             (let ((_g49648_
                                    (gx#syntax-split-splice _g2111721137_ '0)))
                               (begin
                                 (let ((_g49649_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49648_)
                                              (##vector-length _g49648_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49649_ 2)))
                                       (error "Context expects 2 values"
                                              _g49649_)))
                                 (let ((_target2111921140_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49648_ 0)))
                                       (_tl2112121143_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49648_ 1))))
                                   (if (gx#stx-null? _tl2112121143_)
                                       (letrec ((_loop2112221146_
                                                 (lambda (_hd2112021150_
                                                          _super-id2112621153_)
                                                   (if (gx#stx-pair?
                                                        _hd2112021150_)
                                                       (let ((_e2112321156_
                                                              (gx#syntax-e
                                                               _hd2112021150_)))
                                                         (let ((_lp-hd2112421160_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2112321156_)))
                       (_lp-tl2112521163_
                        (let () (declare (not safe)) (##cdr _e2112321156_))))
                   (let ((__tmp49656
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2112421160_ _super-id2112621153_))))
                     (declare (not safe))
                     (_loop2112221146_ _lp-tl2112521163_ __tmp49656))))
               (let ((_super-id2112721166_ (reverse _super-id2112621153_)))
                 ((lambda (_L21170_)
                    (let ()
                      (let ((__tmp49655 (gx#datum->syntax '#f '@list))
                            (__tmp49650
                             (let ((__tmp49651
                                    (lambda (_g2118521188_ _g2118621191_)
                                      (let ((__tmp49652
                                             (let ((__tmp49654
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp49653
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2118521188_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp49654 __tmp49653))))
                                        (declare (not safe))
                                        (cons __tmp49652 _g2118621191_)))))
                               (declare (not safe))
                               (foldr1 __tmp49651 '() _L21170_))))
                        (declare (not safe))
                        (cons __tmp49655 __tmp49650))))
                  _super-id2112721166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop2112221146_
                                            _target2111921140_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g2111621133_ _g2111721137_))))))
                             (let ()
                               (declare (not safe))
                               (_g2111621133_ _g2111721137_))))))
                 (declare (not safe))
                 (_g2111521194_ _super-ref19359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2053421112_ __tmp49647))))
                                           _g2050820519_)))
                                       (__tmp49657
                                        (let* ((_g2120221210_
                                                (lambda (_g2120321206_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2120321206_)))
                                               (_g2120121229_
                                                (lambda (_g2120321214_)
                                                  ((lambda (_L21217_)
                                                     (let ()
                                                       (let ((__tmp49659
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49658
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21217_ '()))))
                 (declare (not safe))
                 (cons __tmp49659 __tmp49658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2120321214_)))
                                               (__tmp49660
                                                (cadr _type-name20273_)))
                                          (declare (not safe))
                                          (_g2120121229_ __tmp49660))))
                                  (declare (not safe))
                                  (_g2050621198_ __tmp49657))))
                            _g2048020491_)))
                        (__tmp49661
                         (let* ((_g2123721252_
                                 (lambda (_g2123821248_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2123821248_)))
                                (_g2123621300_
                                 (lambda (_g2123821256_)
                                   (if (gx#stx-pair? _g2123821256_)
                                       (let ((_e2124221259_
                                              (gx#syntax-e _g2123821256_)))
                                         (let ((_hd2124121263_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2124221259_)))
                                               (_tl2124021266_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2124221259_))))
                                           (if (gx#stx-datum? _hd2124121263_)
                                               (let ((_e2124321269_
                                                      (gx#stx-e
                                                       _hd2124121263_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2124321269_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2124021266_)
                                                         (let ((_e2124621273_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2124021266_)))
                   (let ((_hd2124521277_
                          (let () (declare (not safe)) (##car _e2124621273_)))
                         (_tl2124421280_
                          (let () (declare (not safe)) (##cdr _e2124621273_))))
                     (if (gx#stx-null? _tl2124421280_)
                         ((lambda (_L21283_)
                            (let ()
                              (let ((__tmp49663 (gx#datum->syntax '#f 'quote))
                                    (__tmp49662
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21283_ '()))))
                                (declare (not safe))
                                (cons __tmp49663 __tmp49662))))
                          _hd2124521277_)
                         (let ()
                           (declare (not safe))
                           (_g2123721252_ _g2123821256_)))))
                 (let () (declare (not safe)) (_g2123721252_ _g2123821256_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2123721252_
                                                        _g2123821256_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2123721252_
                                                  _g2123821256_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2123721252_ _g2123821256_))))))
                           (declare (not safe))
                           (_g2123621300_ _type-id20280_))))
                   (declare (not safe))
                   (_g2047821233_ __tmp49661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2045220463_)))
                                                 (__tmp49664
                                                  (let ((__tmp49665
                                                         (let ((__tmp49672
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp49666
                        (let ((__tmp49667
                               (let ((__tmp49668
                                      (let ((__tmp49669
                                             (let ((__tmp49670
                                                    (let ((__tmp49671
                                                           (lambda (_g2130721310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2130821313_)
                     (let ()
                       (declare (not safe))
                       (cons _g2130721310_ _g2130821313_)))))
              (declare (not safe))
              (foldr1 __tmp49671 '() _L20433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L19480_ __tmp49670))))
                                        (declare (not safe))
                                        (cons _L19452_ __tmp49669))))
                                 (declare (not safe))
                                 (cons _L19508_ __tmp49668))))
                          (declare (not safe))
                          (cons _L19424_ __tmp49667))))
                   (declare (not safe))
                   (cons __tmp49672 __tmp49666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19363_ __tmp49665))))
                                            (declare (not safe))
                                            (_g2045021304_ __tmp49664))))
                                      _type-body2039020429_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2038520409_ _target2038220403_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2037920396_ _g2038020400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2037920396_
                                                    _g2038020400_)))))
                                          (__tmp49674
                                           (let ((__tmp49675
                                                  (let ((__tmp49676
                                                         (let ((__tmp49677
                                                                (let ((__tmp49678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49679
                                      (let ()
                                        (declare (not safe))
                                        (foldr1 cons
                                                _type-mixin-slots20266_
                                                _type-slots20249_))))
                                 (declare (not safe))
                                 (foldr1 cons
                                         __tmp49679
                                         _type-properties20370_))))
                          (declare (not safe))
                          (foldr1 cons __tmp49678 _type-final20376_))))
                   (declare (not safe))
                   (foldr1 cons __tmp49677 _type-constructor20295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            __tmp49676
                                                            _type-name20273_))))
                                             (declare (not safe))
                                             (foldr1 cons
                                                     __tmp49675
                                                     _type-id20280_))))
                                     (declare (not safe))
                                     (_g2037821316_ __tmp49674))))
                               _mixin-usetf2017520214_))))))
              (let ()
                (declare (not safe))
                (_loop2017020194_ _target2016720188_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2016420181_
                                                       _g2016520185_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2016420181_ _g2016520185_)))))
                                   (__tmp49681
                                    (gx#stx-map
                                     (lambda (_g2132321325_)
                                       (_make-id19365_ '"&" _g2132321325_))
                                     (let ((__tmp49682
                                            (lambda (_g2132821331_
                                                     _g2132921334_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2132821331_
                                                      _g2132921334_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp49682 '() _L19934_)))))
                              (declare (not safe))
                              (_g2016321320_ __tmp49681))))
                        _mixin-ugetf2010420143_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_loop2009920123_
                                                  _target2009620117_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_g2009320110_
                                                _g2009420114_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2009320110_ _g2009420114_)))))
                            (__tmp49684
                             (gx#stx-map
                              (lambda (_g2134021342_)
                                (_make-id19365_ '"&" _g2134021342_))
                              (let ((__tmp49685
                                     (lambda (_g2134521348_ _g2134621351_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2134521348_ _g2134621351_)))))
                                (declare (not safe))
                                (foldr1 __tmp49685 '() _L19863_)))))
                       (declare (not safe))
                       (_g2009221337_ __tmp49684))))
                 _usetf2003320072_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2002820052_
                                           _target2002520046_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2002220039_ _g2002320043_))))))
                            (let ()
                              (declare (not safe))
                              (_g2002220039_ _g2002320043_)))))
                     (__tmp49687
                      (gx#stx-map
                       (lambda (_g2135721359_)
                         (_make-id19365_ '"&" _g2135721359_))
                       (let ((__tmp49688
                              (lambda (_g2136221365_ _g2136321368_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2136221365_ _g2136321368_)))))
                         (declare (not safe))
                         (foldr1 __tmp49688 '() _L19717_)))))
                (declare (not safe))
                (_g2002121354_ __tmp49687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ugetf1996220001_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop1995719981_ _target1995419975_ '())))
                               (let ()
                                 (declare (not safe))
                                 (_g1995119968_ _g1995219972_))))))
                     (let ()
                       (declare (not safe))
                       (_g1995119968_ _g1995219972_)))))
              (__tmp49690
               (gx#stx-map
                (lambda (_g2137421376_) (_make-id19365_ '"&" _g2137421376_))
                (let ((__tmp49691
                       (lambda (_g2137921382_ _g2138021385_)
                         (let ()
                           (declare (not safe))
                           (cons _g2137921382_ _g2138021385_)))))
                  (declare (not safe))
                  (foldr1 __tmp49691 '() _L19646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1995021371_ __tmp49690))))
                                           _mixin-setf1989119930_))))))
                          (let ()
                            (declare (not safe))
                            (_loop1988619910_ _target1988319904_ '())))
                        (let ()
                          (declare (not safe))
                          (_g1988019897_ _g1988119901_))))))
              (let () (declare (not safe)) (_g1988019897_ _g1988119901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp49693
                                                (gx#stx-map
                                                 (lambda (_g2139121393_)
                                                   (_make-id19365_
                                                    _name19369_
                                                    '"-"
                                                    _g2139121393_
                                                    '"-set!"))
                                                 _mixin-slots19734_)))
                                          (declare (not safe))
                                          (_g1987921388_ __tmp49693))))
                                    _mixin-getf1982019859_))))))
                   (let ()
                     (declare (not safe))
                     (_loop1981519839_ _target1981219833_ '())))
                 (let ()
                   (declare (not safe))
                   (_g1980919826_ _g1981019830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1980919826_
                                                  _g1981019830_)))))
                                        (__tmp49695
                                         (gx#stx-map
                                          (lambda (_g2140021402_)
                                            (_make-id19365_
                                             _name19369_
                                             '"-"
                                             _g2140021402_))
                                          _mixin-slots19734_)))
                                   (declare (not safe))
                                   (_g1980821397_ __tmp49695))))
                             _mixin-slot1974819787_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop1974319767_
                                                       _target1974019761_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1973719754_
                                                     _g1973819758_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1973719754_ _g1973819758_))))))
                            (declare (not safe))
                            (_g1973621406_ _mixin-slots19734_))))
                      _setf1967419713_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop1966919693_
                                                _target1966619687_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g1966319680_ _g1966419684_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g1966319680_ _g1966419684_)))))
                          (__tmp49698
                           (gx#stx-map
                            (lambda (_g2141321415_)
                              (_make-id19365_
                               _name19369_
                               '"-"
                               _g2141321415_
                               '"-set!"))
                            _slots19360_)))
                     (declare (not safe))
                     (_g1966221410_ __tmp49698))))
               _getf1960319642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1959819622_
                                         _target1959519616_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1959219609_ _g1959319613_))))))
                          (let ()
                            (declare (not safe))
                            (_g1959219609_ _g1959319613_)))))
                   (__tmp49700
                    (gx#stx-map
                     (lambda (_g2142221424_)
                       (_make-id19365_ _name19369_ '"-" _g2142221424_))
                     _slots19360_)))
              (declare (not safe))
              (_g1959121419_ __tmp49700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _slot1953219571_))))))
                               (let ()
                                 (declare (not safe))
                                 (_loop1952719551_ _target1952419545_ '())))
                             (let ()
                               (declare (not safe))
                               (_g1952119538_ _g1952219542_))))))
                   (let ()
                     (declare (not safe))
                     (_g1952119538_ _g1952219542_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g1952021428_ _slots19360_))))
                                         _g1949419505_)))
                                     (__tmp49702
                                      (map gerbil/core$<MOP>$<MOP:2>#class-type-descriptor
                                           _super19372_)))
                                (declare (not safe))
                                (_g1949221432_ __tmp49702))))
                          _g1946619477_)))
                      (__tmp49703 (_make-id19365_ _name19369_ '"?")))
                 (declare (not safe))
                 (_g1946421436_ __tmp49703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1943819449_)))
                                               (__tmp49704
                                                (_make-id19365_
                                                 '"make-"
                                                 _name19369_)))
                                          (declare (not safe))
                                          (_g1943621440_ __tmp49704))))
                                    _g1941019421_)))
                                (__tmp49705
                                 (_make-id19365_ _name19369_ '"::t")))
                           (declare (not safe))
                           (_g1940821444_ __tmp49705))))
                     _g1937919390_))))
            (declare (not safe))
            (_g1937721448_ _id19358_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defstruct|
      (lambda (_$stx21512_)
        (let* ((_g2151621535_
                (lambda (_g2151721531_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2151721531_)))
               (_g2151521592_
                (lambda (_g2151721539_)
                  (if (gx#stx-pair? _g2151721539_)
                      (let ((_e2152321542_ (gx#syntax-e _g2151721539_)))
                        (let ((_hd2152221546_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2152321542_)))
                              (_tl2152121549_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2152321542_))))
                          (if (gx#stx-pair? _tl2152121549_)
                              (let ((_e2152621552_
                                     (gx#syntax-e _tl2152121549_)))
                                (let ((_hd2152521556_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2152621552_)))
                                      (_tl2152421559_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2152621552_))))
                                  (if (gx#stx-pair? _tl2152421559_)
                                      (let ((_e2152921562_
                                             (gx#syntax-e _tl2152421559_)))
                                        (let ((_hd2152821566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2152921562_)))
                                              (_tl2152721569_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2152921562_))))
                                          ((lambda (_L21572_ _L21574_ _L21575_)
                                             (let ((__tmp49710
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp49706
                                                    (let ((__tmp49707
                                                           (let ((__tmp49708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49709
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L21572_))))
                            (declare (not safe))
                            (cons 'struct: __tmp49709))))
                     (declare (not safe))
                     (cons _L21574_ __tmp49708))))
              (declare (not safe))
              (cons _L21575_ __tmp49707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49710 __tmp49706)))
                                           _tl2152721569_
                                           _hd2152821566_
                                           _hd2152521556_)))
                                      (_g2151621535_ _g2151721539_))))
                              (_g2151621535_ _g2151721539_))))
                      (_g2151621535_ _g2151721539_)))))
          (_g2151521592_ _$stx21512_))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defclass|
      (lambda (_stx21596_)
        (letrec ((_generate21599_
                  (lambda (_hd21683_ _slots21685_ _body21686_)
                    (let* ((___stx4430144302_ _hd21683_)
                           (_g2168921701_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4430144302_))))
                      (let ((___kont4430444305_
                             (lambda (_L21729_ _L21731_)
                               (let ((__tmp49711 (gx#syntax->list _L21729_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                  _stx21596_
                                  _L21731_
                                  __tmp49711
                                  _slots21685_
                                  _body21686_))))
                            (___kont4430644307_
                             (lambda ()
                               (if (gx#identifier? _hd21683_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                      _stx21596_
                                      _hd21683_
                                      '()
                                      _slots21685_
                                      _body21686_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx21596_
                                    _hd21683_)))))
                        (let ((___match4431444315_
                               (lambda (_e2169521719_
                                        _hd2169421723_
                                        _tl2169321726_)
                                 (let ((_L21729_ _tl2169321726_)
                                       (_L21731_ _hd2169421723_))
                                   (if (and (gx#stx-list? _L21729_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21729_))
                                       (___kont4430444305_ _L21729_ _L21731_)
                                       (___kont4430644307_))))))
                          (if (gx#stx-pair? ___stx4430144302_)
                              (let ((_e2169521719_
                                     (gx#syntax-e ___stx4430144302_)))
                                (let ((_tl2169321726_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2169521719_)))
                                      (_hd2169421723_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2169521719_))))
                                  (___match4431444315_
                                   _e2169521719_
                                   _hd2169421723_
                                   _tl2169321726_)))
                              (___kont4430644307_))))))))
          (let* ((_g2160221621_
                  (lambda (_g2160321617_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2160321617_)))
                 (_g2160121679_
                  (lambda (_g2160321625_)
                    (if (gx#stx-pair? _g2160321625_)
                        (let ((_e2160921628_ (gx#syntax-e _g2160321625_)))
                          (let ((_hd2160821632_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2160921628_)))
                                (_tl2160721635_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2160921628_))))
                            (if (gx#stx-pair? _tl2160721635_)
                                (let ((_e2161221638_
                                       (gx#syntax-e _tl2160721635_)))
                                  (let ((_hd2161121642_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2161221638_)))
                                        (_tl2161021645_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2161221638_))))
                                    (if (gx#stx-pair? _tl2161021645_)
                                        (let ((_e2161521648_
                                               (gx#syntax-e _tl2161021645_)))
                                          (let ((_hd2161421652_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2161521648_)))
                                                (_tl2161321655_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2161521648_))))
                                            ((lambda (_L21658_
                                                      _L21660_
                                                      _L21661_)
                                               (if (and (gx#identifier-list?
                                                         _L21660_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
                                                           _L21658_)))
                                                   (_generate21599_
                                                    _L21661_
                                                    _L21660_
                                                    _L21658_)
                                                   (_g2160221621_
                                                    _g2160321625_)))
                                             _tl2161321655_
                                             _hd2161421652_
                                             _hd2161121642_)))
                                        (_g2160221621_ _g2160321625_))))
                                (_g2160221621_ _g2160321625_))))
                        (_g2160221621_ _g2160321625_)))))
            (_g2160121679_ _stx21596_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defmethod|
      (lambda (_stx21748_)
        (letrec ((_wrap21751_
                  (lambda (_e-stx22088_)
                    (gx#stx-wrap-source
                     _e-stx22088_
                     (gx#stx-source _stx21748_))))
                 (_method-opt?21753_
                  (lambda (_x22085_) (memq (gx#stx-e _x22085_) '(rebind:)))))
          (let* ((_g2175521784_
                  (lambda (_g2175621780_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2175621780_)))
                 (_g2175422081_
                  (lambda (_g2175621788_)
                    (if (gx#stx-pair? _g2175621788_)
                        (let ((_e2176321791_ (gx#syntax-e _g2175621788_)))
                          (let ((_hd2176221795_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2176321791_)))
                                (_tl2176121798_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2176321791_))))
                            (if (gx#stx-pair? _tl2176121798_)
                                (let ((_e2176621801_
                                       (gx#syntax-e _tl2176121798_)))
                                  (let ((_hd2176521805_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2176621801_)))
                                        (_tl2176421808_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2176621801_))))
                                    (if (gx#stx-pair? _hd2176521805_)
                                        (let ((_e2176921811_
                                               (gx#syntax-e _hd2176521805_)))
                                          (let ((_hd2176821815_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2176921811_)))
                                                (_tl2176721818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2176921811_))))
                                            (if (gx#identifier? _hd2176821815_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g49762_|
                                                     _hd2176821815_)
                                                    (if (gx#stx-pair?
                                                         _tl2176721818_)
                                                        (let ((_e2177221821_
                                                               (gx#syntax-e
                                                                _tl2176721818_)))
                                                          (let ((_hd2177121825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2177221821_)))
                        (_tl2177021828_
                         (let () (declare (not safe)) (##cdr _e2177221821_))))
                    (if (gx#stx-pair? _tl2177021828_)
                        (let ((_e2177521831_ (gx#syntax-e _tl2177021828_)))
                          (let ((_hd2177421835_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2177521831_)))
                                (_tl2177321838_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2177521831_))))
                            (if (gx#stx-null? _tl2177321838_)
                                (if (gx#stx-pair? _tl2176421808_)
                                    (let ((_e2177821841_
                                           (gx#syntax-e _tl2176421808_)))
                                      (let ((_hd2177721845_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2177821841_)))
                                            (_tl2177621848_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2177821841_))))
                                        ((lambda (_L21851_
                                                  _L21853_
                                                  _L21854_
                                                  _L21855_)
                                           (if (and (gx#identifier? _L21855_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                                       _L21854_))
                                                    (gx#stx-plist?
                                                     _L21851_
                                                     _method-opt?21753_))
                                               (let* ((_klass21880_
                                                       (gx#syntax-local-value
                                                        _L21854_))
                                                      (_rebind?21883_
                                                       (if (gx#stx-getq
                                                            'rebind:
                                                            _L21851_)
                                                           '#t
                                                           '#f))
                                                      (_g2188621894_
                                                       (lambda (_g2188721890_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2188721890_)))
                                                      (_g2188522077_
                                                       (lambda (_g2188721898_)
                                                         ((lambda (_L21901_)
                                                            (let ()
                                                              (let* ((_g2191521923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2191621919_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2191621919_)))
                             (_g2191422073_
                              (lambda (_g2191621927_)
                                ((lambda (_L21930_)
                                   (let ()
                                     (let* ((_g2194321951_
                                             (lambda (_g2194421947_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2194421947_)))
                                            (_g2194222069_
                                             (lambda (_g2194421955_)
                                               ((lambda (_L21958_)
                                                  (let ()
                                                    (let* ((_g2197121979_
                                                            (lambda (_g2197221975_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2197221975_)))
                                                           (_g2197022065_
                                                            (lambda (_g2197221983_)
                                                              ((lambda (_L21986_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2199922007_
                                   (lambda (_g2200022003_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2200022003_)))
                                  (_g2199822061_
                                   (lambda (_g2200022011_)
                                     ((lambda (_L22014_)
                                        (let ()
                                          (let* ((_g2202722035_
                                                  (lambda (_g2202822031_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2202822031_)))
                                                 (_g2202622057_
                                                  (lambda (_g2202822039_)
                                                    ((lambda (_L22042_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21751_
                                                            (let ((__tmp49716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp49714
                           (let ((__tmp49715
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22042_ '()))))
                             (declare (not safe))
                             (cons _L21986_ __tmp49715))))
                      (declare (not safe))
                      (cons __tmp49716 __tmp49714))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2202822039_))))
                                            (_g2202622057_
                                             (_wrap21751_
                                              (let ((__tmp49724
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp49717
                                                     (let ((__tmp49718
                                                            (let ((__tmp49721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49723 (gx#datum->syntax '#f 'quote))
                                 (__tmp49722
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21855_ '()))))
                             (declare (not safe))
                             (cons __tmp49723 __tmp49722)))
                          (__tmp49719
                           (let ((__tmp49720
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22014_ '()))))
                             (declare (not safe))
                             (cons _L21930_ __tmp49720))))
                      (declare (not safe))
                      (cons __tmp49721 __tmp49719))))
               (declare (not safe))
               (cons _L21901_ __tmp49718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49724
                                                      __tmp49717)))))))
                                      _g2200022011_))))
                             (_g2199822061_ _rebind?21883_))))
                       _g2197221983_))))
              (_g2197022065_
               (_wrap21751_
                (let ((__tmp49761 (gx#datum->syntax '#f 'def))
                      (__tmp49725
                       (let ((__tmp49726
                              (let ((__tmp49727
                                     (let ((__tmp49760
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp49728
                                            (let ((__tmp49730
                                                   (let ((__tmp49731
                                                          (let ((__tmp49732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49733
                                (let ((__tmp49759
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp49734
                                       (let ((__tmp49735
                                              (let ((__tmp49736
                                                     (let ((__tmp49751
                                                            (let ((__tmp49758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp49752
                           (let ((__tmp49757 (gx#datum->syntax '#f 'obj))
                                 (__tmp49753
                                  (let ((__tmp49756
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp49754
                                         (let ((__tmp49755
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp49755 '()))))
                                    (declare (not safe))
                                    (cons __tmp49756 __tmp49754))))
                             (declare (not safe))
                             (cons __tmp49757 __tmp49753))))
                      (declare (not safe))
                      (cons __tmp49758 __tmp49752)))
                   (__tmp49737
                    (let ((__tmp49738
                           (let ((__tmp49750
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp49739
                                  (let ((__tmp49740
                                         (let ((__tmp49749
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp49741
                                                (let ((__tmp49746
                                                       (let ((__tmp49748
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49747
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21855_ '()))))
                 (declare (not safe))
                 (cons __tmp49748 __tmp49747)))
              (__tmp49742
               (let ((__tmp49745 (gx#datum->syntax '#f 'arg))
                     (__tmp49743
                      (let ((__tmp49744 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp49744 '()))))
                 (declare (not safe))
                 (cons __tmp49745 __tmp49743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49746
                                                        __tmp49742))))
                                           (declare (not safe))
                                           (cons __tmp49749 __tmp49741))))
                                    (declare (not safe))
                                    (cons _L21901_ __tmp49740))))
                             (declare (not safe))
                             (cons __tmp49750 __tmp49739))))
                      (declare (not safe))
                      (cons __tmp49738 '()))))
               (declare (not safe))
               (cons __tmp49751 __tmp49737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49736 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp49735))))
                                  (declare (not safe))
                                  (cons __tmp49759 __tmp49734))))
                           (declare (not safe))
                           (cons __tmp49733 '()))))
                    (declare (not safe))
                    (cons _L21958_ __tmp49732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49731 '())))
                                                  (__tmp49729
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21853_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49730 __tmp49729))))
                                       (declare (not safe))
                                       (cons __tmp49760 __tmp49728))))
                                (declare (not safe))
                                (cons __tmp49727 '()))))
                         (declare (not safe))
                         (cons _L21930_ __tmp49726))))
                  (declare (not safe))
                  (cons __tmp49761 __tmp49725)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2194421955_))))
                                       (_g2194222069_
                                        (gx#stx-identifier
                                         _L21854_
                                         '@next-method)))))
                                 _g2191621927_))))
                        (_g2191422073_
                         (gx#stx-identifier
                          _L21854_
                          _L21854_
                          '"::"
                          _L21855_)))))
                  _g2188721898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2188522077_
                                                  (let ((__obj47340
                                                         _klass21880_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj47340
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj47340
                                                           '8
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj47340
                                                         'type-descriptor)))))
                                               (if (let ((__tmp49713
                                                          (gx#identifier?
                                                           _L21855_)))
                                                     (declare (not safe))
                                                     (not __tmp49713))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21748_
                                                    _L21855_)
                                                   (if (let ((__tmp49712
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L21854_))))
                 (declare (not safe))
                 (not __tmp49712))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx21748_
                _L21854_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx21748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2177621848_
                                         _hd2177721845_
                                         _hd2177421835_
                                         _hd2177121825_)))
                                    (_g2175521784_ _g2175621788_))
                                (_g2175521784_ _g2175621788_))))
                        (_g2175521784_ _g2175621788_))))
                (_g2175521784_ _g2175621788_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2175521784_
                                                     _g2175621788_))
                                                (_g2175521784_
                                                 _g2175621788_))))
                                        (_g2175521784_ _g2175621788_))))
                                (_g2175521784_ _g2175621788_))))
                        (_g2175521784_ _g2175621788_)))))
            (_g2175422081_ _stx21748_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@method|
      (lambda (_stx22091_)
        (letrec ((_dotted-identifier?22094_
                  (lambda (_id22727_)
                    (if (gx#identifier? _id22727_)
                        (let ((_id-str22730_
                               (symbol->string (gx#stx-e _id22727_))))
                          (if (let ()
                                (declare (not safe))
                                (string-index _id-str22730_ '#\.))
                              (let ((_split22733_
                                     (let ()
                                       (declare (not safe))
                                       (string-split _id-str22730_ '#\.))))
                                (fx= (length _split22733_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted22096_
                  (lambda (_id22716_)
                    (let* ((_id-str22719_
                            (symbol->string (gx#stx-e _id22716_)))
                           (_split22722_
                            (let ()
                              (declare (not safe))
                              (string-split _id-str22719_ '#\.))))
                      (let ((__tmp49765
                             (gx#stx-identifier _id22716_ (car _split22722_)))
                            (__tmp49763
                             (let ((__tmp49764
                                    (gx#stx-identifier
                                     _id22716_
                                     (cadr _split22722_))))
                               (declare (not safe))
                               (cons __tmp49764 '()))))
                        (declare (not safe))
                        (cons __tmp49765 __tmp49763))))))
          (let* ((___stx4431744318_ _stx22091_)
                 (_g2210122188_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4431744318_))))
            (let ((___kont4432044321_
                   (lambda (_L22609_ _L22611_ _L22612_)
                     (let* ((_g2264022655_
                             (lambda (_g2264122651_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2264122651_)))
                            (_g2263922708_
                             (lambda (_g2264122659_)
                               (if (gx#stx-pair? _g2264122659_)
                                   (let ((_e2264622662_
                                          (gx#syntax-e _g2264122659_)))
                                     (let ((_hd2264522666_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2264622662_)))
                                           (_tl2264422669_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2264622662_))))
                                       (if (gx#stx-pair? _tl2264422669_)
                                           (let ((_e2264922672_
                                                  (gx#syntax-e
                                                   _tl2264422669_)))
                                             (let ((_hd2264822676_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2264922672_)))
                                                   (_tl2264722679_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2264922672_))))
                                               (if (gx#stx-null?
                                                    _tl2264722679_)
                                                   ((lambda (_L22682_ _L22684_)
                                                      (let ()
                                                        (let ((__tmp49778
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp49766
                                                               (let ((__tmp49777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp49767
                              (let ((__tmp49768
                                     (let ((__tmp49774
                                            (let ((__tmp49776
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49775
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22682_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49776 __tmp49775)))
                                           (__tmp49769
                                            (let ((__tmp49770
                                                   (let ((__tmp49773
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp49771
                                                          (let ((__tmp49772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2269922702_ _g2270022705_)
                           (let ()
                             (declare (not safe))
                             (cons _g2269922702_ _g2270022705_)))))
                    (declare (not safe))
                    (foldr1 __tmp49772 '() _L22611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49773
                                                           __tmp49771))))
                                              (declare (not safe))
                                              (cons __tmp49770 '()))))
                                       (declare (not safe))
                                       (cons __tmp49774 __tmp49769))))
                                (declare (not safe))
                                (cons _L22684_ __tmp49768))))
                         (declare (not safe))
                         (cons __tmp49777 __tmp49767))))
                  (declare (not safe))
                  (cons __tmp49778 __tmp49766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2264822676_
                                                    _hd2264522666_)
                                                   (_g2264022655_
                                                    _g2264122659_))))
                                           (_g2264022655_ _g2264122659_))))
                                   (_g2264022655_ _g2264122659_)))))
                       (_g2263922708_ (_split-dotted22096_ _L22612_)))))
                  (___kont4432444325_
                   (lambda (_L22451_ _L22453_)
                     (let* ((_g2247022485_
                             (lambda (_g2247122481_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2247122481_)))
                            (_g2246922538_
                             (lambda (_g2247122489_)
                               (if (gx#stx-pair? _g2247122489_)
                                   (let ((_e2247622492_
                                          (gx#syntax-e _g2247122489_)))
                                     (let ((_hd2247522496_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2247622492_)))
                                           (_tl2247422499_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2247622492_))))
                                       (if (gx#stx-pair? _tl2247422499_)
                                           (let ((_e2247922502_
                                                  (gx#syntax-e
                                                   _tl2247422499_)))
                                             (let ((_hd2247822506_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2247922502_)))
                                                   (_tl2247722509_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2247922502_))))
                                               (if (gx#stx-null?
                                                    _tl2247722509_)
                                                   ((lambda (_L22512_ _L22514_)
                                                      (let ()
                                                        (let ((__tmp49786
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp49779
                                                               (let ((__tmp49780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49783
                                     (let ((__tmp49785
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp49784
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22512_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49785 __tmp49784)))
                                    (__tmp49781
                                     (let ((__tmp49782
                                            (lambda (_g2252922532_
                                                     _g2253022535_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2252922532_
                                                      _g2253022535_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp49782 '() _L22451_))))
                                (declare (not safe))
                                (cons __tmp49783 __tmp49781))))
                         (declare (not safe))
                         (cons _L22514_ __tmp49780))))
                  (declare (not safe))
                  (cons __tmp49786 __tmp49779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2247822506_
                                                    _hd2247522496_)
                                                   (_g2247022485_
                                                    _g2247122489_))))
                                           (_g2247022485_ _g2247122489_))))
                                   (_g2247022485_ _g2247122489_)))))
                       (_g2246922538_ (_split-dotted22096_ _L22453_)))))
                  (___kont4432844329_
                   (lambda (_L22355_ _L22357_ _L22358_)
                     (let ((__tmp49799 (gx#datum->syntax '#f 'apply))
                           (__tmp49787
                            (let ((__tmp49798
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp49788
                                   (let ((__tmp49789
                                          (let ((__tmp49795
                                                 (let ((__tmp49797
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49796
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22358_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49797
                                                         __tmp49796)))
                                                (__tmp49790
                                                 (let ((__tmp49791
                                                        (let ((__tmp49794
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp49792
                                                               (let ((__tmp49793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2238522388_ _g2238622391_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2238522388_ _g2238622391_)))))
                         (declare (not safe))
                         (foldr1 __tmp49793 '() _L22355_))))
                  (declare (not safe))
                  (cons __tmp49794 __tmp49792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49791 '()))))
                                            (declare (not safe))
                                            (cons __tmp49795 __tmp49790))))
                                     (declare (not safe))
                                     (cons _L22357_ __tmp49789))))
                              (declare (not safe))
                              (cons __tmp49798 __tmp49788))))
                       (declare (not safe))
                       (cons __tmp49799 __tmp49787))))
                  (___kont4433244333_
                   (lambda (_L22255_ _L22257_ _L22258_)
                     (let ((__tmp49807 (gx#datum->syntax '#f 'call-method))
                           (__tmp49800
                            (let ((__tmp49801
                                   (let ((__tmp49804
                                          (let ((__tmp49806
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp49805
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22258_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49806 __tmp49805)))
                                         (__tmp49802
                                          (let ((__tmp49803
                                                 (lambda (_g2227922282_
                                                          _g2228022285_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2227922282_
                                                           _g2228022285_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp49803 '() _L22255_))))
                                     (declare (not safe))
                                     (cons __tmp49804 __tmp49802))))
                              (declare (not safe))
                              (cons _L22257_ __tmp49801))))
                       (declare (not safe))
                       (cons __tmp49807 __tmp49800)))))
              (let* ((___match4443644437_
                      (lambda (_e2216722195_
                               _hd2216622199_
                               _tl2216522202_
                               _e2217022205_
                               _hd2216922209_
                               _tl2216822212_
                               _e2217322215_
                               _hd2217222219_
                               _tl2217122222_
                               ___splice4433444335_
                               _target2217422225_
                               _tl2217622228_)
                        (letrec ((_loop2217722231_
                                  (lambda (_hd2217522235_ _arg2218122238_)
                                    (if (gx#stx-pair? _hd2217522235_)
                                        (let ((_e2217822241_
                                               (gx#syntax-e _hd2217522235_)))
                                          (let ((_lp-tl2218022248_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2217822241_)))
                                                (_lp-hd2217922245_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2217822241_))))
                                            (_loop2217722231_
                                             _lp-tl2218022248_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2217922245_
                                                     _arg2218122238_)))))
                                        (let ((_arg2218222251_
                                               (reverse _arg2218122238_)))
                                          (let ((_L22255_ _arg2218222251_)
                                                (_L22257_ _hd2217222219_)
                                                (_L22258_ _hd2216922209_))
                                            (if (gx#identifier? _L22258_)
                                                (___kont4433244333_
                                                 _L22255_
                                                 _L22257_
                                                 _L22258_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2210122188_)))))))))
                          (_loop2217722231_ _target2217422225_ '()))))
                     (___match4441044411_
                      (lambda (_e2214622295_
                               _hd2214522299_
                               _tl2214422302_
                               _e2214922305_
                               _hd2214822309_
                               _tl2214722312_
                               _e2215222315_
                               _hd2215122319_
                               _tl2215022322_
                               ___splice4433044331_
                               _target2215322325_
                               _tl2215522328_)
                        (letrec ((_loop2215622331_
                                  (lambda (_hd2215422335_ _arg2216022338_)
                                    (if (gx#stx-pair? _hd2215422335_)
                                        (let ((_e2215722341_
                                               (gx#syntax-e _hd2215422335_)))
                                          (let ((_lp-tl2215922348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2215722341_)))
                                                (_lp-hd2215822345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2215722341_))))
                                            (_loop2215622331_
                                             _lp-tl2215922348_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2215822345_
                                                     _arg2216022338_)))))
                                        (let ((_arg2216122351_
                                               (reverse _arg2216022338_)))
                                          (let ((_L22355_ _arg2216122351_)
                                                (_L22357_ _hd2215122319_)
                                                (_L22358_ _hd2214822309_))
                                            (if (and (gx#identifier? _L22358_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp49808
                                                             (lambda (_g2237722380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2237822383_)
                       (let ()
                         (declare (not safe))
                         (cons _g2237722380_ _g2237822383_)))))
                (declare (not safe))
                (foldr1 __tmp49808 '() _L22355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4432844329_
                                                 _L22355_
                                                 _L22357_
                                                 _L22358_)
                                                (___match4443644437_
                                                 _e2214622295_
                                                 _hd2214522299_
                                                 _tl2214422302_
                                                 _e2214922305_
                                                 _hd2214822309_
                                                 _tl2214722312_
                                                 _e2215222315_
                                                 _hd2215122319_
                                                 _tl2215022322_
                                                 ___splice4433044331_
                                                 _target2215322325_
                                                 _tl2215522328_))))))))
                          (_loop2215622331_ _target2215322325_ '()))))
                     (___match4439644397_
                      (lambda (_e2214622295_
                               _hd2214522299_
                               _tl2214422302_
                               _e2214922305_
                               _hd2214822309_
                               _tl2214722312_)
                        (if (gx#stx-pair? _tl2214722312_)
                            (let ((_e2215222315_ (gx#syntax-e _tl2214722312_)))
                              (let ((_tl2215022322_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2215222315_)))
                                    (_hd2215122319_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2215222315_))))
                                (if (gx#stx-pair/null? _tl2215022322_)
                                    (let ((___splice4433044331_
                                           (gx#syntax-split-splice
                                            _tl2215022322_
                                            '0)))
                                      (let ((_tl2215522328_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4433044331_
                                                '1)))
                                            (_target2215322325_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4433044331_
                                                '0))))
                                        (if (gx#stx-null? _tl2215522328_)
                                            (___match4441044411_
                                             _e2214622295_
                                             _hd2214522299_
                                             _tl2214422302_
                                             _e2214922305_
                                             _hd2214822309_
                                             _tl2214722312_
                                             _e2215222315_
                                             _hd2215122319_
                                             _tl2215022322_
                                             ___splice4433044331_
                                             _target2215322325_
                                             _tl2215522328_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2210122188_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2210122188_)))))
                            (let () (declare (not safe)) (_g2210122188_)))))
                     (___match4438444385_
                      (lambda (_e2212822401_
                               _hd2212722405_
                               _tl2212622408_
                               _e2213122411_
                               _hd2213022415_
                               _tl2212922418_
                               ___splice4432644327_
                               _target2213222421_
                               _tl2213422424_)
                        (letrec ((_loop2213522427_
                                  (lambda (_hd2213322431_ _arg2213922434_)
                                    (if (gx#stx-pair? _hd2213322431_)
                                        (let ((_e2213622437_
                                               (gx#syntax-e _hd2213322431_)))
                                          (let ((_lp-tl2213822444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2213622437_)))
                                                (_lp-hd2213722441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2213622437_))))
                                            (_loop2213522427_
                                             _lp-tl2213822444_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2213722441_
                                                     _arg2213922434_)))))
                                        (let ((_arg2214022447_
                                               (reverse _arg2213922434_)))
                                          (let ((_L22451_ _arg2214022447_)
                                                (_L22453_ _hd2213022415_))
                                            (if (_dotted-identifier?22094_
                                                 _L22453_)
                                                (___kont4432444325_
                                                 _L22451_
                                                 _L22453_)
                                                (___match4439644397_
                                                 _e2212822401_
                                                 _hd2212722405_
                                                 _tl2212622408_
                                                 _e2213122411_
                                                 _hd2213022415_
                                                 _tl2212922418_))))))))
                          (_loop2213522427_ _target2213222421_ '()))))
                     (___match4438244383_
                      (lambda (_e2212822401_
                               _hd2212722405_
                               _tl2212622408_
                               _e2213122411_
                               _hd2213022415_
                               _tl2212922418_
                               ___splice4432644327_
                               _target2213222421_
                               _tl2213422424_)
                        (if (gx#stx-null? _tl2213422424_)
                            (___match4438444385_
                             _e2212822401_
                             _hd2212722405_
                             _tl2212622408_
                             _e2213122411_
                             _hd2213022415_
                             _tl2212922418_
                             ___splice4432644327_
                             _target2213222421_
                             _tl2213422424_)
                            (if (gx#stx-pair? _tl2212922418_)
                                (let ((_e2215222315_
                                       (gx#syntax-e _tl2212922418_)))
                                  (let ((_tl2215022322_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2215222315_)))
                                        (_hd2215122319_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2215222315_))))
                                    (if (gx#stx-pair/null? _tl2215022322_)
                                        (let ((___splice4433044331_
                                               (gx#syntax-split-splice
                                                _tl2215022322_
                                                '0)))
                                          (let ((_tl2215522328_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4433044331_
                                                    '1)))
                                                (_target2215322325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4433044331_
                                                    '0))))
                                            (if (gx#stx-null? _tl2215522328_)
                                                (___match4441044411_
                                                 _e2212822401_
                                                 _hd2212722405_
                                                 _tl2212622408_
                                                 _e2213122411_
                                                 _hd2213022415_
                                                 _tl2212922418_
                                                 _e2215222315_
                                                 _hd2215122319_
                                                 _tl2215022322_
                                                 ___splice4433044331_
                                                 _target2215322325_
                                                 _tl2215522328_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2210122188_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2210122188_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2210122188_))))))
                     (___match4436444365_
                      (lambda (_e2210822549_
                               _hd2210722553_
                               _tl2210622556_
                               _e2211122559_
                               _hd2211022563_
                               _tl2210922566_
                               ___splice4432244323_
                               _target2211222569_
                               _tl2211422572_
                               _e2212322575_
                               _hd2212222579_
                               _tl2212122582_)
                        (letrec ((_loop2211522585_
                                  (lambda (_hd2211322589_ _arg2211922592_)
                                    (if (gx#stx-pair? _hd2211322589_)
                                        (let ((_e2211622595_
                                               (gx#syntax-e _hd2211322589_)))
                                          (let ((_lp-tl2211822602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2211622595_)))
                                                (_lp-hd2211722599_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2211622595_))))
                                            (_loop2211522585_
                                             _lp-tl2211822602_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2211722599_
                                                     _arg2211922592_)))))
                                        (let ((_arg2212022605_
                                               (reverse _arg2211922592_)))
                                          (let ((_L22609_ _hd2212222579_)
                                                (_L22611_ _arg2212022605_)
                                                (_L22612_ _hd2211022563_))
                                            (if (and (_dotted-identifier?22094_
                                                      _L22612_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp49809
                                                             (lambda (_g2263122634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2263222637_)
                       (let ()
                         (declare (not safe))
                         (cons _g2263122634_ _g2263222637_)))))
                (declare (not safe))
                (foldr1 __tmp49809 '() _L22611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4432044321_
                                                 _L22609_
                                                 _L22611_
                                                 _L22612_)
                                                (let ((___splice4432644327_
                                                       (gx#syntax-split-splice
                                                        _tl2210922566_
                                                        '0)))
                                                  (let ((_tl2213422424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4432644327_
                                                            '1)))
                                                        (_target2213222421_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4432644327_
                                                            '0))))
                                                    (___match4438244383_
                                                     _e2210822549_
                                                     _hd2210722553_
                                                     _tl2210622556_
                                                     _e2211122559_
                                                     _hd2211022563_
                                                     _tl2210922566_
                                                     ___splice4432644327_
                                                     _target2213222421_
                                                     _tl2213422424_))))))))))
                          (_loop2211522585_ _target2211222569_ '())))))
                (if (gx#stx-pair? ___stx4431744318_)
                    (let ((_e2210822549_ (gx#syntax-e ___stx4431744318_)))
                      (let ((_tl2210622556_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2210822549_)))
                            (_hd2210722553_
                             (let ()
                               (declare (not safe))
                               (##car _e2210822549_))))
                        (if (gx#stx-pair? _tl2210622556_)
                            (let ((_e2211122559_ (gx#syntax-e _tl2210622556_)))
                              (let ((_tl2210922566_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2211122559_)))
                                    (_hd2211022563_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2211122559_))))
                                (if (gx#stx-pair/null? _tl2210922566_)
                                    (if (fx>= (gx#stx-length _tl2210922566_)
                                              '1)
                                        (let ((___splice4432244323_
                                               (gx#syntax-split-splice
                                                _tl2210922566_
                                                '1)))
                                          (let ((_tl2211422572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4432244323_
                                                    '1)))
                                                (_target2211222569_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4432244323_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2211422572_)
                                                (let ((_e2212322575_
                                                       (gx#syntax-e
                                                        _tl2211422572_)))
                                                  (let ((_tl2212122582_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2212322575_)))
                                                        (_hd2212222579_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2212322575_))))
                                                    (if (gx#stx-null?
                                                         _tl2212122582_)
                                                        (___match4436444365_
                                                         _e2210822549_
                                                         _hd2210722553_
                                                         _tl2210622556_
                                                         _e2211122559_
                                                         _hd2211022563_
                                                         _tl2210922566_
                                                         ___splice4432244323_
                                                         _target2211222569_
                                                         _tl2211422572_
                                                         _e2212322575_
                                                         _hd2212222579_
                                                         _tl2212122582_)
                                                        (let ((___splice4432644327_
                                                               (gx#syntax-split-splice
                                                                _tl2210922566_
                                                                '0)))
                                                          (let ((_tl2213422424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4432644327_ '1)))
                        (_target2213222421_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4432644327_ '0))))
                    (if (gx#stx-null? _tl2213422424_)
                        (___match4438444385_
                         _e2210822549_
                         _hd2210722553_
                         _tl2210622556_
                         _e2211122559_
                         _hd2211022563_
                         _tl2210922566_
                         ___splice4432644327_
                         _target2213222421_
                         _tl2213422424_)
                        (if (gx#stx-pair? _tl2210922566_)
                            (let ((_e2215222315_ (gx#syntax-e _tl2210922566_)))
                              (let ((_tl2215022322_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2215222315_)))
                                    (_hd2215122319_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2215222315_))))
                                (if (gx#stx-pair/null? _tl2215022322_)
                                    (let ((___splice4433044331_
                                           (gx#syntax-split-splice
                                            _tl2215022322_
                                            '0)))
                                      (let ((_tl2215522328_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4433044331_
                                                '1)))
                                            (_target2215322325_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4433044331_
                                                '0))))
                                        (if (gx#stx-null? _tl2215522328_)
                                            (___match4441044411_
                                             _e2210822549_
                                             _hd2210722553_
                                             _tl2210622556_
                                             _e2211122559_
                                             _hd2211022563_
                                             _tl2210922566_
                                             _e2215222315_
                                             _hd2215122319_
                                             _tl2215022322_
                                             ___splice4433044331_
                                             _target2215322325_
                                             _tl2215522328_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2210122188_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2210122188_)))))
                            (let ()
                              (declare (not safe))
                              (_g2210122188_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice4432644327_
                                                       (gx#syntax-split-splice
                                                        _tl2210922566_
                                                        '0)))
                                                  (let ((_tl2213422424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4432644327_
                                                            '1)))
                                                        (_target2213222421_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4432644327_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2213422424_)
                                                        (___match4438444385_
                                                         _e2210822549_
                                                         _hd2210722553_
                                                         _tl2210622556_
                                                         _e2211122559_
                                                         _hd2211022563_
                                                         _tl2210922566_
                                                         ___splice4432644327_
                                                         _target2213222421_
                                                         _tl2213422424_)
                                                        (if (gx#stx-pair?
                                                             _tl2210922566_)
                                                            (let ((_e2215222315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2210922566_)))
                      (let ((_tl2215022322_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2215222315_)))
                            (_hd2215122319_
                             (let ()
                               (declare (not safe))
                               (##car _e2215222315_))))
                        (if (gx#stx-pair/null? _tl2215022322_)
                            (let ((___splice4433044331_
                                   (gx#syntax-split-splice _tl2215022322_ '0)))
                              (let ((_tl2215522328_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4433044331_ '1)))
                                    (_target2215322325_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4433044331_
                                        '0))))
                                (if (gx#stx-null? _tl2215522328_)
                                    (___match4441044411_
                                     _e2210822549_
                                     _hd2210722553_
                                     _tl2210622556_
                                     _e2211122559_
                                     _hd2211022563_
                                     _tl2210922566_
                                     _e2215222315_
                                     _hd2215122319_
                                     _tl2215022322_
                                     ___splice4433044331_
                                     _target2215322325_
                                     _tl2215522328_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2210122188_)))))
                            (let () (declare (not safe)) (_g2210122188_)))))
                    (let () (declare (not safe)) (_g2210122188_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4432644327_
                                               (gx#syntax-split-splice
                                                _tl2210922566_
                                                '0)))
                                          (let ((_tl2213422424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4432644327_
                                                    '1)))
                                                (_target2213222421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4432644327_
                                                    '0))))
                                            (if (gx#stx-null? _tl2213422424_)
                                                (___match4438444385_
                                                 _e2210822549_
                                                 _hd2210722553_
                                                 _tl2210622556_
                                                 _e2211122559_
                                                 _hd2211022563_
                                                 _tl2210922566_
                                                 ___splice4432644327_
                                                 _target2213222421_
                                                 _tl2213422424_)
                                                (if (gx#stx-pair?
                                                     _tl2210922566_)
                                                    (let ((_e2215222315_
                                                           (gx#syntax-e
                                                            _tl2210922566_)))
                                                      (let ((_tl2215022322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2215222315_)))
                    (_hd2215122319_
                     (let () (declare (not safe)) (##car _e2215222315_))))
                (if (gx#stx-pair/null? _tl2215022322_)
                    (let ((___splice4433044331_
                           (gx#syntax-split-splice _tl2215022322_ '0)))
                      (let ((_tl2215522328_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4433044331_ '1)))
                            (_target2215322325_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4433044331_ '0))))
                        (if (gx#stx-null? _tl2215522328_)
                            (___match4441044411_
                             _e2210822549_
                             _hd2210722553_
                             _tl2210622556_
                             _e2211122559_
                             _hd2211022563_
                             _tl2210922566_
                             _e2215222315_
                             _hd2215122319_
                             _tl2215022322_
                             ___splice4433044331_
                             _target2215322325_
                             _tl2215522328_)
                            (let () (declare (not safe)) (_g2210122188_)))))
                    (let () (declare (not safe)) (_g2210122188_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2210122188_)))))))
                                    (if (gx#stx-pair? _tl2210922566_)
                                        (let ((_e2215222315_
                                               (gx#syntax-e _tl2210922566_)))
                                          (let ((_tl2215022322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2215222315_)))
                                                (_hd2215122319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2215222315_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2215022322_)
                                                (let ((___splice4433044331_
                                                       (gx#syntax-split-splice
                                                        _tl2215022322_
                                                        '0)))
                                                  (let ((_tl2215522328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4433044331_
                                                            '1)))
                                                        (_target2215322325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4433044331_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2215522328_)
                                                        (___match4441044411_
                                                         _e2210822549_
                                                         _hd2210722553_
                                                         _tl2210622556_
                                                         _e2211122559_
                                                         _hd2211022563_
                                                         _tl2210922566_
                                                         _e2215222315_
                                                         _hd2215122319_
                                                         _tl2215022322_
                                                         ___splice4433044331_
                                                         _target2215322325_
                                                         _tl2215522328_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2210122188_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2210122188_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2210122188_))))))
                            (let () (declare (not safe)) (_g2210122188_)))))
                    (let () (declare (not safe)) (_g2210122188_)))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@|
      (lambda (_$stx22740_)
        (let* ((___stx4443944440_ _$stx22740_)
               (_g2274522785_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4443944440_))))
          (let ((___kont4444244443_
                 (lambda (_L22923_ _L22925_)
                   (let ((__tmp49815 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp49810
                          (let ((__tmp49811
                                 (let ((__tmp49812
                                        (let ((__tmp49814
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49813
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22923_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49814 __tmp49813))))
                                   (declare (not safe))
                                   (cons __tmp49812 '()))))
                            (declare (not safe))
                            (cons _L22925_ __tmp49811))))
                     (declare (not safe))
                     (cons __tmp49815 __tmp49810))))
                (___kont4444444445_
                 (lambda (_L22852_ _L22854_ _L22855_ _L22856_)
                   (let ((__tmp49816
                          (let ((__tmp49819
                                 (let ((__tmp49820
                                        (let ((__tmp49821
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22854_ '()))))
                                          (declare (not safe))
                                          (cons _L22855_ __tmp49821))))
                                   (declare (not safe))
                                   (cons _L22856_ __tmp49820)))
                                (__tmp49817
                                 (let ((__tmp49818
                                        (lambda (_g2287722880_ _g2287822883_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2287722880_
                                                  _g2287822883_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp49818 '() _L22852_))))
                            (declare (not safe))
                            (cons __tmp49819 __tmp49817))))
                     (declare (not safe))
                     (cons _L22856_ __tmp49816)))))
            (let* ((___match4449444495_
                    (lambda (_e2276422792_
                             _hd2276322796_
                             _tl2276222799_
                             _e2276722802_
                             _hd2276622806_
                             _tl2276522809_
                             _e2277022812_
                             _hd2276922816_
                             _tl2276822819_
                             ___splice4444644447_
                             _target2277122822_
                             _tl2277322825_)
                      (letrec ((_loop2277422828_
                                (lambda (_hd2277222832_ _rest2277822835_)
                                  (if (gx#stx-pair? _hd2277222832_)
                                      (let ((_e2277522838_
                                             (gx#syntax-e _hd2277222832_)))
                                        (let ((_lp-tl2277722845_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2277522838_)))
                                              (_lp-hd2277622842_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2277522838_))))
                                          (_loop2277422828_
                                           _lp-tl2277722845_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2277622842_
                                                   _rest2277822835_)))))
                                      (let ((_rest2277922848_
                                             (reverse _rest2277822835_)))
                                        (___kont4444444445_
                                         _rest2277922848_
                                         _hd2276922816_
                                         _hd2276622806_
                                         _hd2276322796_))))))
                        (_loop2277422828_ _target2277122822_ '()))))
                   (___match4446844469_
                    (lambda (_e2275122893_
                             _hd2275022897_
                             _tl2274922900_
                             _e2275422903_
                             _hd2275322907_
                             _tl2275222910_
                             _e2275722913_
                             _hd2275622917_
                             _tl2275522920_)
                      (let ((_L22923_ _hd2275622917_)
                            (_L22925_ _hd2275322907_))
                        (if (gx#identifier? _L22923_)
                            (___kont4444244443_ _L22923_ _L22925_)
                            (if (gx#stx-pair/null? _tl2275522920_)
                                (let ((___splice4444644447_
                                       (gx#syntax-split-splice
                                        _tl2275522920_
                                        '0)))
                                  (let ((_tl2277322825_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4444644447_
                                            '1)))
                                        (_target2277122822_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4444644447_
                                            '0))))
                                    (if (gx#stx-null? _tl2277322825_)
                                        (___match4449444495_
                                         _e2275122893_
                                         _hd2275022897_
                                         _tl2274922900_
                                         _e2275422903_
                                         _hd2275322907_
                                         _tl2275222910_
                                         _e2275722913_
                                         _hd2275622917_
                                         _tl2275522920_
                                         ___splice4444644447_
                                         _target2277122822_
                                         _tl2277322825_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2274522785_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2274522785_))))))))
              (if (gx#stx-pair? ___stx4443944440_)
                  (let ((_e2275122893_ (gx#syntax-e ___stx4443944440_)))
                    (let ((_tl2274922900_
                           (let () (declare (not safe)) (##cdr _e2275122893_)))
                          (_hd2275022897_
                           (let ()
                             (declare (not safe))
                             (##car _e2275122893_))))
                      (if (gx#stx-pair? _tl2274922900_)
                          (let ((_e2275422903_ (gx#syntax-e _tl2274922900_)))
                            (let ((_tl2275222910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2275422903_)))
                                  (_hd2275322907_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2275422903_))))
                              (if (gx#stx-pair? _tl2275222910_)
                                  (let ((_e2275722913_
                                         (gx#syntax-e _tl2275222910_)))
                                    (let ((_tl2275522920_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2275722913_)))
                                          (_hd2275622917_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2275722913_))))
                                      (if (gx#stx-null? _tl2275522920_)
                                          (___match4446844469_
                                           _e2275122893_
                                           _hd2275022897_
                                           _tl2274922900_
                                           _e2275422903_
                                           _hd2275322907_
                                           _tl2275222910_
                                           _e2275722913_
                                           _hd2275622917_
                                           _tl2275522920_)
                                          (if (gx#stx-pair/null?
                                               _tl2275522920_)
                                              (let ((___splice4444644447_
                                                     (gx#syntax-split-splice
                                                      _tl2275522920_
                                                      '0)))
                                                (let ((_tl2277322825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4444644447_
                                                          '1)))
                                                      (_target2277122822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4444644447_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2277322825_)
                                                      (___match4449444495_
                                                       _e2275122893_
                                                       _hd2275022897_
                                                       _tl2274922900_
                                                       _e2275422903_
                                                       _hd2275322907_
                                                       _tl2275222910_
                                                       _e2275722913_
                                                       _hd2275622917_
                                                       _tl2275522920_
                                                       ___splice4444644447_
                                                       _target2277122822_
                                                       _tl2277322825_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2274522785_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2274522785_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2274522785_)))))
                          (let () (declare (not safe)) (_g2274522785_)))))
                  (let () (declare (not safe)) (_g2274522785_))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@-set!|
      (lambda (_$stx22945_)
        (let* ((___stx4449744498_ _$stx22945_)
               (_g2295023002_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4449744498_))))
          (let ((___kont4450044501_
                 (lambda (_L23178_ _L23180_ _L23181_)
                   (let ((__tmp49828 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp49822
                          (let ((__tmp49823
                                 (let ((__tmp49825
                                        (let ((__tmp49827
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49826
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23180_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49827 __tmp49826)))
                                       (__tmp49824
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23178_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49825 __tmp49824))))
                            (declare (not safe))
                            (cons _L23181_ __tmp49823))))
                     (declare (not safe))
                     (cons __tmp49828 __tmp49822))))
                (___kont4450244503_
                 (lambda (_L23089_
                          _L23091_
                          _L23092_
                          _L23093_
                          _L23094_
                          _L23095_)
                   (let ((__tmp49829
                          (let ((__tmp49832
                                 (let ((__tmp49837 (gx#datum->syntax '#f '@))
                                       (__tmp49833
                                        (let ((__tmp49834
                                               (let ((__tmp49835
                                                      (let ((__tmp49836
                                                             (lambda (_g2312223125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2312323128_)
                       (let ()
                         (declare (not safe))
                         (cons _g2312223125_ _g2312323128_)))))
                (declare (not safe))
                (foldr1 __tmp49836 '() _L23092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L23093_ __tmp49835))))
                                          (declare (not safe))
                                          (cons _L23094_ __tmp49834))))
                                   (declare (not safe))
                                   (cons __tmp49837 __tmp49833)))
                                (__tmp49830
                                 (let ((__tmp49831
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23089_ '()))))
                                   (declare (not safe))
                                   (cons _L23091_ __tmp49831))))
                            (declare (not safe))
                            (cons __tmp49832 __tmp49830))))
                     (declare (not safe))
                     (cons _L23095_ __tmp49829)))))
            (let* ((___match4457244573_
                    (lambda (_e2297523009_
                             _hd2297423013_
                             _tl2297323016_
                             _e2297823019_
                             _hd2297723023_
                             _tl2297623026_
                             _e2298123029_
                             _hd2298023033_
                             _tl2297923036_
                             ___splice4450444505_
                             _target2298223039_
                             _tl2298423042_
                             _e2299323045_
                             _hd2299223049_
                             _tl2299123052_
                             _e2299623055_
                             _hd2299523059_
                             _tl2299423062_)
                      (letrec ((_loop2298523065_
                                (lambda (_hd2298323069_ _path2298923072_)
                                  (if (gx#stx-pair? _hd2298323069_)
                                      (let ((_e2298623075_
                                             (gx#syntax-e _hd2298323069_)))
                                        (let ((_lp-tl2298823082_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2298623075_)))
                                              (_lp-hd2298723079_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2298623075_))))
                                          (_loop2298523065_
                                           _lp-tl2298823082_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2298723079_
                                                   _path2298923072_)))))
                                      (let ((_path2299023085_
                                             (reverse _path2298923072_)))
                                        (___kont4450244503_
                                         _hd2299523059_
                                         _hd2299223049_
                                         _path2299023085_
                                         _hd2298023033_
                                         _hd2297723023_
                                         _hd2297423013_))))))
                        (_loop2298523065_ _target2298223039_ '()))))
                   (___match4453244533_
                    (lambda (_e2295723138_
                             _hd2295623142_
                             _tl2295523145_
                             _e2296023148_
                             _hd2295923152_
                             _tl2295823155_
                             _e2296323158_
                             _hd2296223162_
                             _tl2296123165_
                             _e2296623168_
                             _hd2296523172_
                             _tl2296423175_)
                      (let ((_L23178_ _hd2296523172_)
                            (_L23180_ _hd2296223162_)
                            (_L23181_ _hd2295923152_))
                        (if (gx#identifier? _L23180_)
                            (___kont4450044501_ _L23178_ _L23180_ _L23181_)
                            (if (gx#stx-pair/null? _tl2296123165_)
                                (if (fx>= (gx#stx-length _tl2296123165_) '2)
                                    (let ((___splice4450444505_
                                           (gx#syntax-split-splice
                                            _tl2296123165_
                                            '2)))
                                      (let ((_tl2298423042_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4450444505_
                                                '1)))
                                            (_target2298223039_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4450444505_
                                                '0))))
                                        (if (gx#stx-pair? _tl2298423042_)
                                            (let ((_e2299323045_
                                                   (gx#syntax-e
                                                    _tl2298423042_)))
                                              (let ((_tl2299123052_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2299323045_)))
                                                    (_hd2299223049_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2299323045_))))
                                                (if (gx#stx-pair?
                                                     _tl2299123052_)
                                                    (let ((_e2299623055_
                                                           (gx#syntax-e
                                                            _tl2299123052_)))
                                                      (let ((_tl2299423062_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2299623055_)))
                    (_hd2299523059_
                     (let () (declare (not safe)) (##car _e2299623055_))))
                (if (gx#stx-null? _tl2299423062_)
                    (___match4457244573_
                     _e2295723138_
                     _hd2295623142_
                     _tl2295523145_
                     _e2296023148_
                     _hd2295923152_
                     _tl2295823155_
                     _e2296323158_
                     _hd2296223162_
                     _tl2296123165_
                     ___splice4450444505_
                     _target2298223039_
                     _tl2298423042_
                     _e2299323045_
                     _hd2299223049_
                     _tl2299123052_
                     _e2299623055_
                     _hd2299523059_
                     _tl2299423062_)
                    (let () (declare (not safe)) (_g2295023002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2295023002_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2295023002_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2295023002_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2295023002_))))))))
              (if (gx#stx-pair? ___stx4449744498_)
                  (let ((_e2295723138_ (gx#syntax-e ___stx4449744498_)))
                    (let ((_tl2295523145_
                           (let () (declare (not safe)) (##cdr _e2295723138_)))
                          (_hd2295623142_
                           (let ()
                             (declare (not safe))
                             (##car _e2295723138_))))
                      (if (gx#stx-pair? _tl2295523145_)
                          (let ((_e2296023148_ (gx#syntax-e _tl2295523145_)))
                            (let ((_tl2295823155_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2296023148_)))
                                  (_hd2295923152_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2296023148_))))
                              (if (gx#stx-pair? _tl2295823155_)
                                  (let ((_e2296323158_
                                         (gx#syntax-e _tl2295823155_)))
                                    (let ((_tl2296123165_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2296323158_)))
                                          (_hd2296223162_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2296323158_))))
                                      (if (gx#stx-pair? _tl2296123165_)
                                          (let ((_e2296623168_
                                                 (gx#syntax-e _tl2296123165_)))
                                            (let ((_tl2296423175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2296623168_)))
                                                  (_hd2296523172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2296623168_))))
                                              (if (gx#stx-null? _tl2296423175_)
                                                  (___match4453244533_
                                                   _e2295723138_
                                                   _hd2295623142_
                                                   _tl2295523145_
                                                   _e2296023148_
                                                   _hd2295923152_
                                                   _tl2295823155_
                                                   _e2296323158_
                                                   _hd2296223162_
                                                   _tl2296123165_
                                                   _e2296623168_
                                                   _hd2296523172_
                                                   _tl2296423175_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2296123165_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2296123165_)
                        '2)
                  (let ((___splice4450444505_
                         (gx#syntax-split-splice _tl2296123165_ '2)))
                    (let ((_tl2298423042_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4450444505_ '1)))
                          (_target2298223039_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4450444505_ '0))))
                      (if (gx#stx-pair? _tl2298423042_)
                          (let ((_e2299323045_ (gx#syntax-e _tl2298423042_)))
                            (let ((_tl2299123052_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2299323045_)))
                                  (_hd2299223049_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2299323045_))))
                              (if (gx#stx-pair? _tl2299123052_)
                                  (let ((_e2299623055_
                                         (gx#syntax-e _tl2299123052_)))
                                    (let ((_tl2299423062_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2299623055_)))
                                          (_hd2299523059_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2299623055_))))
                                      (if (gx#stx-null? _tl2299423062_)
                                          (___match4457244573_
                                           _e2295723138_
                                           _hd2295623142_
                                           _tl2295523145_
                                           _e2296023148_
                                           _hd2295923152_
                                           _tl2295823155_
                                           _e2296323158_
                                           _hd2296223162_
                                           _tl2296123165_
                                           ___splice4450444505_
                                           _target2298223039_
                                           _tl2298423042_
                                           _e2299323045_
                                           _hd2299223049_
                                           _tl2299123052_
                                           _e2299623055_
                                           _hd2299523059_
                                           _tl2299423062_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2295023002_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2295023002_)))))
                          (let () (declare (not safe)) (_g2295023002_)))))
                  (let () (declare (not safe)) (_g2295023002_)))
              (let () (declare (not safe)) (_g2295023002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2296123165_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2296123165_)
                                                        '2)
                                                  (let ((___splice4450444505_
                                                         (gx#syntax-split-splice
                                                          _tl2296123165_
                                                          '2)))
                                                    (let ((_tl2298423042_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4450444505_
                                                              '1)))
                                                          (_target2298223039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4450444505_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2298423042_)
                                                          (let ((_e2299323045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2298423042_)))
                    (let ((_tl2299123052_
                           (let () (declare (not safe)) (##cdr _e2299323045_)))
                          (_hd2299223049_
                           (let ()
                             (declare (not safe))
                             (##car _e2299323045_))))
                      (if (gx#stx-pair? _tl2299123052_)
                          (let ((_e2299623055_ (gx#syntax-e _tl2299123052_)))
                            (let ((_tl2299423062_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2299623055_)))
                                  (_hd2299523059_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2299623055_))))
                              (if (gx#stx-null? _tl2299423062_)
                                  (___match4457244573_
                                   _e2295723138_
                                   _hd2295623142_
                                   _tl2295523145_
                                   _e2296023148_
                                   _hd2295923152_
                                   _tl2295823155_
                                   _e2296323158_
                                   _hd2296223162_
                                   _tl2296123165_
                                   ___splice4450444505_
                                   _target2298223039_
                                   _tl2298423042_
                                   _e2299323045_
                                   _hd2299223049_
                                   _tl2299123052_
                                   _e2299623055_
                                   _hd2299523059_
                                   _tl2299423062_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2295023002_)))))
                          (let () (declare (not safe)) (_g2295023002_)))))
                  (let () (declare (not safe)) (_g2295023002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2295023002_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2295023002_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2295023002_)))))
                          (let () (declare (not safe)) (_g2295023002_)))))
                  (let () (declare (not safe)) (_g2295023002_))))))))))
