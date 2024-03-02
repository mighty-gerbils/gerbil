(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g51738_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
      (lambda (_stx21575_)
        (letrec ((_body-opt?21578_
                  (lambda (_key21581_)
                    (memq (gx#stx-e _key21581_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:
                            metaclass:)))))
          (gx#stx-plist? _stx21575_ _body-opt?21578_))))
    (define |gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
      (lambda (_stx19359_ _id19361_ _super-ref19362_ _slots19363_ _body19364_)
        (letrec* ((_wrap19366_
                   (lambda (_e-stx21572_)
                     (gx#stx-wrap-source
                      _e-stx21572_
                      (gx#stx-source _stx19359_))))
                  (_make-id19368_
                   (if (uninterned-symbol? (gx#stx-e _id19361_))
                       (lambda _g51420_ (gx#genident _id19361_))
                       (lambda _args21569_
                         (apply gx#stx-identifier _id19361_ _args21569_))))
                  (_get-mixin-slots19369_
                   (lambda (_super21543_ _slots21545_)
                     (letrec* ((_tab21547_
                                (let ()
                                  (declare (not safe))
                                  (make-hash-table-eq)))
                               (_dedup21549_
                                (lambda (_mixins21554_)
                                  (let _lp21557_ ((_rest21560_ _mixins21554_)
                                                  (_r21562_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest21560_))
                                        (let ((_slot21564_ (car _rest21560_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (hash-get
                                                 _tab21547_
                                                 _slot21564_))
                                              (let ((__tmp51423
                                                     (cdr _rest21560_)))
                                                (declare (not safe))
                                                (_lp21557_
                                                 __tmp51423
                                                 _r21562_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (hash-put!
                                                   _tab21547_
                                                   _slot21564_
                                                   '#t))
                                                (let ((__tmp51422
                                                       (cdr _rest21560_))
                                                      (__tmp51421
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21564_
                                                               _r21562_))))
                                                  (declare (not safe))
                                                  (_lp21557_
                                                   __tmp51422
                                                   __tmp51421)))))
                                        (reverse _r21562_))))))
                       (gx#stx-for-each
                        (lambda (_slot21551_)
                          (let ((__tmp51424 (gx#stx-e _slot21551_)))
                            (declare (not safe))
                            (hash-put! _tab21547_ __tmp51424 '#t)))
                        _slots21545_)
                       (if (let () (declare (not safe)) (not _super21543_))
                           '()
                           (if (gx#identifier? _super21543_)
                               (let ((__tmp51426
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19370_
                                         _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp51426))
                               (let ((__tmp51425
                                      (concatenate
                                       (map _get-mixin-slots-r19370_
                                            _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp51425)))))))
                  (_get-mixin-slots-r19370_
                   (lambda (_type-id21537_)
                     (let ((_info21540_
                            (gx#syntax-local-value _type-id21537_)))
                       (append (let ((__obj49629 _info21540_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj49629
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj49629
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj49629
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19370_
                                     (let ((__obj49630 _info21540_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49630
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49630
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj49630
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots19363_ _stx19359_)
          (let* ((_name19372_ (symbol->string (gx#stx-e _id19361_)))
                 (_super19375_ (map gx#syntax-local-value _super-ref19362_))
                 (_struct?19378_ (gx#stx-getq 'struct: _body19364_))
                 (_g1938119389_
                  (lambda (_g1938219385_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1938219385_)))
                 (_g1938021533_
                  (lambda (_g1938219393_)
                    ((lambda (_L19396_)
                       (let ()
                         (let* ((_g1941219420_
                                 (lambda (_g1941319416_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1941319416_)))
                                (_g1941121529_
                                 (lambda (_g1941319424_)
                                   ((lambda (_L19427_)
                                      (let ()
                                        (let* ((_g1944019448_
                                                (lambda (_g1944119444_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1944119444_)))
                                               (_g1943921525_
                                                (lambda (_g1944119452_)
                                                  ((lambda (_L19455_)
                                                     (let ()
                                                       (let* ((_g1946819476_
                                                               (lambda (_g1946919472_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g1946919472_)))
                      (_g1946721521_
                       (lambda (_g1946919480_)
                         ((lambda (_L19483_)
                            (let ()
                              (let* ((_g1949619504_
                                      (lambda (_g1949719500_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1949719500_)))
                                     (_g1949521517_
                                      (lambda (_g1949719508_)
                                        ((lambda (_L19511_)
                                           (let ()
                                             (let* ((_g1952419541_
                                                     (lambda (_g1952519537_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g1952519537_)))
                                                    (_g1952321513_
                                                     (lambda (_g1952519545_)
                                                       (if (gx#stx-pair/null?
                                                            _g1952519545_)
                                                           (let ((_g51427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g1952519545_ '0)))
                     (begin
                       (let ((_g51428_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g51427_)
                                    (##vector-length _g51427_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g51428_ 2)))
                             (error "Context expects 2 values" _g51428_)))
                       (let ((_target1952719548_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g51427_ 0)))
                             (_tl1952919551_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g51427_ 1))))
                         (if (gx#stx-null? _tl1952919551_)
                             (letrec ((_loop1953019554_
                                       (lambda (_hd1952819558_
                                                _slot1953419561_)
                                         (if (gx#stx-pair? _hd1952819558_)
                                             (let ((_e1953119564_
                                                    (gx#syntax-e
                                                     _hd1952819558_)))
                                               (let ((_lp-hd1953219568_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1953119564_)))
                                                     (_lp-tl1953319571_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1953119564_))))
                                                 (let ((__tmp51677
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1953219568_
                                                                _slot1953419561_))))
                                                   (declare (not safe))
                                                   (_loop1953019554_
                                                    _lp-tl1953319571_
                                                    __tmp51677))))
                                             (let ((_slot1953519574_
                                                    (reverse _slot1953419561_)))
                                               ((lambda (_L19578_)
                                                  (let ()
                                                    (let* ((_g1959519612_
                                                            (lambda (_g1959619608_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1959619608_)))
                                                           (_g1959421504_
                                                            (lambda (_g1959619616_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1959619616_)
                          (let ((_g51429_
                                 (gx#syntax-split-splice _g1959619616_ '0)))
                            (begin
                              (let ((_g51430_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g51429_)
                                           (##vector-length _g51429_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g51430_ 2)))
                                    (error "Context expects 2 values"
                                           _g51430_)))
                              (let ((_target1959819619_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g51429_ 0)))
                                    (_tl1960019622_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g51429_ 1))))
                                (if (gx#stx-null? _tl1960019622_)
                                    (letrec ((_loop1960119625_
                                              (lambda (_hd1959919629_
                                                       _getf1960519632_)
                                                (if (gx#stx-pair?
                                                     _hd1959919629_)
                                                    (let ((_e1960219635_
                                                           (gx#syntax-e
                                                            _hd1959919629_)))
                                                      (let ((_lp-hd1960319639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1960219635_)))
                    (_lp-tl1960419642_
                     (let () (declare (not safe)) (##cdr _e1960219635_))))
                (let ((__tmp51675
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1960319639_ _getf1960519632_))))
                  (declare (not safe))
                  (_loop1960119625_ _lp-tl1960419642_ __tmp51675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_getf1960619645_
                                                           (reverse _getf1960519632_)))
                                                      ((lambda (_L19649_)
                                                         (let ()
                                                           (let* ((_g1966619683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1966719679_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1966719679_)))
                          (_g1966521495_
                           (lambda (_g1966719687_)
                             (if (gx#stx-pair/null? _g1966719687_)
                                 (let ((_g51431_
                                        (gx#syntax-split-splice
                                         _g1966719687_
                                         '0)))
                                   (begin
                                     (let ((_g51432_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g51431_)
                                                  (##vector-length _g51431_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g51432_ 2)))
                                           (error "Context expects 2 values"
                                                  _g51432_)))
                                     (let ((_target1966919690_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g51431_ 0)))
                                           (_tl1967119693_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g51431_ 1))))
                                       (if (gx#stx-null? _tl1967119693_)
                                           (letrec ((_loop1967219696_
                                                     (lambda (_hd1967019700_
                                                              _setf1967619703_)
                                                       (if (gx#stx-pair?
                                                            _hd1967019700_)
                                                           (let ((_e1967319706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1967019700_)))
                     (let ((_lp-hd1967419710_
                            (let ()
                              (declare (not safe))
                              (##car _e1967319706_)))
                           (_lp-tl1967519713_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1967319706_))))
                       (let ((__tmp51673
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd1967419710_ _setf1967619703_))))
                         (declare (not safe))
                         (_loop1967219696_ _lp-tl1967519713_ __tmp51673))))
                   (let ((_setf1967719716_ (reverse _setf1967619703_)))
                     ((lambda (_L19720_)
                        (let ()
                          (let* ((_mixin-slots19737_
                                  (let ()
                                    (declare (not safe))
                                    (_get-mixin-slots19369_
                                     _super-ref19362_
                                     _slots19363_)))
                                 (_g1974019757_
                                  (lambda (_g1974119753_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1974119753_)))
                                 (_g1973921491_
                                  (lambda (_g1974119761_)
                                    (if (gx#stx-pair/null? _g1974119761_)
                                        (let ((_g51433_
                                               (gx#syntax-split-splice
                                                _g1974119761_
                                                '0)))
                                          (begin
                                            (let ((_g51434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g51433_)
                                                         (##vector-length
                                                          _g51433_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g51434_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g51434_)))
                                            (let ((_target1974319764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g51433_
                                                      0)))
                                                  (_tl1974519767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g51433_
                                                      1))))
                                              (if (gx#stx-null? _tl1974519767_)
                                                  (letrec ((_loop1974619770_
                                                            (lambda (_hd1974419774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _mixin-slot1975019777_)
                      (if (gx#stx-pair? _hd1974419774_)
                          (let ((_e1974719780_ (gx#syntax-e _hd1974419774_)))
                            (let ((_lp-hd1974819784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1974719780_)))
                                  (_lp-tl1974919787_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1974719780_))))
                              (let ((__tmp51672
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1974819784_
                                             _mixin-slot1975019777_))))
                                (declare (not safe))
                                (_loop1974619770_
                                 _lp-tl1974919787_
                                 __tmp51672))))
                          (let ((_mixin-slot1975119790_
                                 (reverse _mixin-slot1975019777_)))
                            ((lambda (_L19794_)
                               (let ()
                                 (let* ((_g1981219829_
                                         (lambda (_g1981319825_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1981319825_)))
                                        (_g1981121482_
                                         (lambda (_g1981319833_)
                                           (if (gx#stx-pair/null?
                                                _g1981319833_)
                                               (let ((_g51435_
                                                      (gx#syntax-split-splice
                                                       _g1981319833_
                                                       '0)))
                                                 (begin
                                                   (let ((_g51436_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g51435_)
                        (##vector-length _g51435_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g51436_ 2)))
                 (error "Context expects 2 values" _g51436_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1981519836_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g51435_
                                                             0)))
                                                         (_tl1981719839_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g51435_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl1981719839_)
                                                         (letrec ((_loop1981819842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1981619846_ _mixin-getf1982219849_)
                             (if (gx#stx-pair? _hd1981619846_)
                                 (let ((_e1981919852_
                                        (gx#syntax-e _hd1981619846_)))
                                   (let ((_lp-hd1982019856_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1981919852_)))
                                         (_lp-tl1982119859_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1981919852_))))
                                     (let ((__tmp51670
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd1982019856_
                                                    _mixin-getf1982219849_))))
                                       (declare (not safe))
                                       (_loop1981819842_
                                        _lp-tl1982119859_
                                        __tmp51670))))
                                 (let ((_mixin-getf1982319862_
                                        (reverse _mixin-getf1982219849_)))
                                   ((lambda (_L19866_)
                                      (let ()
                                        (let* ((_g1988319900_
                                                (lambda (_g1988419896_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1988419896_)))
                                               (_g1988221473_
                                                (lambda (_g1988419904_)
                                                  (if (gx#stx-pair/null?
                                                       _g1988419904_)
                                                      (let ((_g51437_
                                                             (gx#syntax-split-splice
                                                              _g1988419904_
                                                              '0)))
                                                        (begin
                                                          (let ((_g51438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g51437_)
                               (##vector-length _g51437_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g51438_ 2)))
                        (error "Context expects 2 values" _g51438_)))
                  (let ((_target1988619907_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g51437_ 0)))
                        (_tl1988819910_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g51437_ 1))))
                    (if (gx#stx-null? _tl1988819910_)
                        (letrec ((_loop1988919913_
                                  (lambda (_hd1988719917_
                                           _mixin-setf1989319920_)
                                    (if (gx#stx-pair? _hd1988719917_)
                                        (let ((_e1989019923_
                                               (gx#syntax-e _hd1988719917_)))
                                          (let ((_lp-hd1989119927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1989019923_)))
                                                (_lp-tl1989219930_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1989019923_))))
                                            (let ((__tmp51668
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd1989119927_
                                                           _mixin-setf1989319920_))))
                                              (declare (not safe))
                                              (_loop1988919913_
                                               _lp-tl1989219930_
                                               __tmp51668))))
                                        (let ((_mixin-setf1989419933_
                                               (reverse _mixin-setf1989319920_)))
                                          ((lambda (_L19937_)
                                             (let ()
                                               (let* ((_g1995419971_
                                                       (lambda (_g1995519967_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1995519967_)))
                                                      (_g1995321456_
                                                       (lambda (_g1995519975_)
                                                         (if (gx#stx-pair/null?
                                                              _g1995519975_)
                                                             (let ((_g51439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1995519975_ '0)))
                       (begin
                         (let ((_g51440_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g51439_)
                                      (##vector-length _g51439_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g51440_ 2)))
                               (error "Context expects 2 values" _g51440_)))
                         (let ((_target1995719978_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g51439_ 0)))
                               (_tl1995919981_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g51439_ 1))))
                           (if (gx#stx-null? _tl1995919981_)
                               (letrec ((_loop1996019984_
                                         (lambda (_hd1995819988_
                                                  _ugetf1996419991_)
                                           (if (gx#stx-pair? _hd1995819988_)
                                               (let ((_e1996119994_
                                                      (gx#syntax-e
                                                       _hd1995819988_)))
                                                 (let ((_lp-hd1996219998_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1996119994_)))
                                                       (_lp-tl1996320001_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1996119994_))))
                                                   (let ((__tmp51666
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _lp-hd1996219998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ugetf1996419991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop1996019984_
                                                      _lp-tl1996320001_
                                                      __tmp51666))))
                                               (let ((_ugetf1996520004_
                                                      (reverse _ugetf1996419991_)))
                                                 ((lambda (_L20008_)
                                                    (let ()
                                                      (let* ((_g2002520042_
                                                              (lambda (_g2002620038_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2002620038_)))
                     (_g2002421439_
                      (lambda (_g2002620046_)
                        (if (gx#stx-pair/null? _g2002620046_)
                            (let ((_g51441_
                                   (gx#syntax-split-splice _g2002620046_ '0)))
                              (begin
                                (let ((_g51442_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g51441_)
                                             (##vector-length _g51441_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g51442_ 2)))
                                      (error "Context expects 2 values"
                                             _g51442_)))
                                (let ((_target2002820049_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g51441_ 0)))
                                      (_tl2003020052_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g51441_ 1))))
                                  (if (gx#stx-null? _tl2003020052_)
                                      (letrec ((_loop2003120055_
                                                (lambda (_hd2002920059_
                                                         _usetf2003520062_)
                                                  (if (gx#stx-pair?
                                                       _hd2002920059_)
                                                      (let ((_e2003220065_
                                                             (gx#syntax-e
                                                              _hd2002920059_)))
                                                        (let ((_lp-hd2003320069_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2003220065_)))
                      (_lp-tl2003420072_
                       (let () (declare (not safe)) (##cdr _e2003220065_))))
                  (let ((__tmp51664
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2003320069_ _usetf2003520062_))))
                    (declare (not safe))
                    (_loop2003120055_ _lp-tl2003420072_ __tmp51664))))
              (let ((_usetf2003620075_ (reverse _usetf2003520062_)))
                ((lambda (_L20079_)
                   (let ()
                     (let* ((_g2009620113_
                             (lambda (_g2009720109_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2009720109_)))
                            (_g2009521422_
                             (lambda (_g2009720117_)
                               (if (gx#stx-pair/null? _g2009720117_)
                                   (let ((_g51443_
                                          (gx#syntax-split-splice
                                           _g2009720117_
                                           '0)))
                                     (begin
                                       (let ((_g51444_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g51443_)
                                                    (##vector-length _g51443_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g51444_ 2)))
                                             (error "Context expects 2 values"
                                                    _g51444_)))
                                       (let ((_target2009920120_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g51443_ 0)))
                                             (_tl2010120123_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g51443_ 1))))
                                         (if (gx#stx-null? _tl2010120123_)
                                             (letrec ((_loop2010220126_
                                                       (lambda (_hd2010020130_
                                                                _mixin-ugetf2010620133_)
                                                         (if (gx#stx-pair?
                                                              _hd2010020130_)
                                                             (let ((_e2010320136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd2010020130_)))
                       (let ((_lp-hd2010420140_
                              (let ()
                                (declare (not safe))
                                (##car _e2010320136_)))
                             (_lp-tl2010520143_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2010320136_))))
                         (let ((__tmp51662
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2010420140_
                                        _mixin-ugetf2010620133_))))
                           (declare (not safe))
                           (_loop2010220126_ _lp-tl2010520143_ __tmp51662))))
                     (let ((_mixin-ugetf2010720146_
                            (reverse _mixin-ugetf2010620133_)))
                       ((lambda (_L20150_)
                          (let ()
                            (let* ((_g2016720184_
                                    (lambda (_g2016820180_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2016820180_)))
                                   (_g2016621405_
                                    (lambda (_g2016820188_)
                                      (if (gx#stx-pair/null? _g2016820188_)
                                          (let ((_g51445_
                                                 (gx#syntax-split-splice
                                                  _g2016820188_
                                                  '0)))
                                            (begin
                                              (let ((_g51446_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g51445_)
                                                           (##vector-length
                                                            _g51445_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g51446_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g51446_)))
                                              (let ((_target2017020191_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g51445_
                                                        0)))
                                                    (_tl2017220194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g51445_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl2017220194_)
                                                    (letrec ((_loop2017320197_
                                                              (lambda (_hd2017120201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _mixin-usetf2017720204_)
                        (if (gx#stx-pair? _hd2017120201_)
                            (let ((_e2017420207_ (gx#syntax-e _hd2017120201_)))
                              (let ((_lp-hd2017520211_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2017420207_)))
                                    (_lp-tl2017620214_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2017420207_))))
                                (let ((__tmp51660
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2017520211_
                                               _mixin-usetf2017720204_))))
                                  (declare (not safe))
                                  (_loop2017320197_
                                   _lp-tl2017620214_
                                   __tmp51660))))
                            (let ((_mixin-usetf2017820217_
                                   (reverse _mixin-usetf2017720204_)))
                              ((lambda (_L20221_)
                                 (let ()
                                   (let* ((_type-slots20252_
                                           (if (gx#stx-null? _slots19363_)
                                               '()
                                               (let ((__tmp51447
                                                      (let ((__tmp51448
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19720_
                                                                _L19649_
                                                                _L19578_)
                                                               (foldr (lambda (_g2023720242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2023820245_
                                       _g2023920247_
                                       _g2024020249_)
                                (let ((__tmp51449
                                       (let ((__tmp51450
                                              (let ((__tmp51451
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2023720242_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2023820245_
                                                      __tmp51451))))
                                         (declare (not safe))
                                         (cons _g2023920247_ __tmp51450))))
                                  (declare (not safe))
                                  (cons __tmp51449 _g2024020249_)))
                              '()
                              _L19720_
                              _L19649_
                              _L19578_))))
                (declare (not safe))
                (cons __tmp51448 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp51447))))
                                          (_type-mixin-slots20269_
                                           (if (gx#stx-null?
                                                _mixin-slots19737_)
                                               '()
                                               (let ((__tmp51452
                                                      (let ((__tmp51453
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19937_
                                                                _L19866_
                                                                _L19794_)
                                                               (foldr (lambda (_g2025420259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2025520262_
                                       _g2025620264_
                                       _g2025720266_)
                                (let ((__tmp51454
                                       (let ((__tmp51455
                                              (let ((__tmp51456
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2025420259_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2025520262_
                                                      __tmp51456))))
                                         (declare (not safe))
                                         (cons _g2025620264_ __tmp51455))))
                                  (declare (not safe))
                                  (cons __tmp51454 _g2025720266_)))
                              '()
                              _L19937_
                              _L19866_
                              _L19794_))))
                (declare (not safe))
                (cons __tmp51453 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp51452))))
                                          (_type-name20276_
                                           (let ((__tmp51457
                                                  (let ((__tmp51458
                                                         (let ((_$e20272_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body19364_)))
                   (if _$e20272_ _$e20272_ _id19361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp51458 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp51457)))
                                          (_type-id20283_
                                           (let ((__tmp51459
                                                  (let ((__tmp51460
                                                         (let ((_$e20279_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'id:
                         _body19364_)))
                   (if _$e20279_
                       _$e20279_
                       (let ()
                         (declare (not safe))
                         (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                          _L19396_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp51460 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp51459)))
                                          (_type-constructor20298_
                                           (let ((_$e20294_
                                                  (let ((_e2028520287_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body19364_)))
                                                    (if _e2028520287_
                                                        (let* ((_e20291_
                                                                _e2028520287_)
                                                               (__tmp51461
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e20291_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp51461))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e20294_ _$e20294_ '())))
                                          (_properties20332_
                                           (let* ((_properties20301_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body19364_))
                                                       (let ((__tmp51462
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp51462 '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties20314_
                                                   (let ((_$e20304_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _body19364_))))
                                                     (if _$e20304_
                                                         ((lambda (_print20308_)
                                                            (let* ((_print20311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _print20308_ '#t))
                                _slots19363_
                                _print20308_))
                           (__tmp51463
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print20311_))))
                      (declare (not safe))
                      (cons __tmp51463 _properties20301_)))
                  _$e20304_)
                 _properties20301_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties20327_
                                                   (let ((_$e20317_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _body19364_))))
                                                     (if _$e20317_
                                                         ((lambda (_equal20321_)
                                                            (let* ((_equal20324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _equal20321_ '#t))
                                _slots19363_
                                _equal20321_))
                           (__tmp51464
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal20324_))))
                      (declare (not safe))
                      (cons __tmp51464 _properties20314_)))
                  _$e20317_)
                 _properties20314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _properties20327_))
                                          (_type-properties20373_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _properties20332_))
                                               '()
                                               (let* ((_g2033520343_
                                                       (lambda (_g2033620339_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2033620339_)))
                                                      (_g2033420369_
                                                       (lambda (_g2033620347_)
                                                         ((lambda (_L20350_)
                                                            (let ()
                                                              (let ((__tmp51465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp51466
                                    (let ((__tmp51468
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp51467
                                           (let ()
                                             (declare (not safe))
                                             (cons _L20350_ '()))))
                                      (declare (not safe))
                                      (cons __tmp51468 __tmp51467))))
                               (declare (not safe))
                               (cons __tmp51466 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp51465))))
                  _g2033620347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2033420369_
                                                  _properties20332_))))
                                          (_metaclass20383_
                                           (let ((_$e20376_
                                                  (gx#stx-getq
                                                   'metaclass:
                                                   _body19364_)))
                                             (if _$e20376_
                                                 ((lambda (_metaclass20380_)
                                                    (if (gx#identifier?
                                                         _metaclass20380_)
                                                        _metaclass20380_
                                                        '#f))
                                                  _$e20376_)
                                                 '#f)))
                                          (_type-metaclass20386_
                                           (if _metaclass20383_
                                               (let ((__tmp51469
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass20383_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp51469))
                                               '()))
                                          (_final?20389_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body19364_)))
                                          (_type-struct20392_
                                           (let ((__tmp51470
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?19378_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp51470)))
                                          (_type-final20395_
                                           (let ((__tmp51471
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?20389_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp51471)))
                                          (_g2039820415_
                                           (lambda (_g2039920411_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2039920411_)))
                                          (_g2039721401_
                                           (lambda (_g2039920419_)
                                             (if (gx#stx-pair/null?
                                                  _g2039920419_)
                                                 (let ((_g51472_
                                                        (gx#syntax-split-splice
                                                         _g2039920419_
                                                         '0)))
                                                   (begin
                                                     (let ((_g51473_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g51472_)
                          (##vector-length _g51472_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g51473_ 2)))
                   (error "Context expects 2 values" _g51473_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2040120422_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g51472_
                                                               0)))
                                                           (_tl2040320425_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g51472_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2040320425_)
                                                           (letrec ((_loop2040420428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2040220432_ _type-body2040820435_)
                               (if (gx#stx-pair? _hd2040220432_)
                                   (let ((_e2040520438_
                                          (gx#syntax-e _hd2040220432_)))
                                     (let ((_lp-hd2040620442_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2040520438_)))
                                           (_lp-tl2040720445_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2040520438_))))
                                       (let ((__tmp51658
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2040620442_
                                                      _type-body2040820435_))))
                                         (declare (not safe))
                                         (_loop2040420428_
                                          _lp-tl2040720445_
                                          __tmp51658))))
                                   (let ((_type-body2040920448_
                                          (reverse _type-body2040820435_)))
                                     ((lambda (_L20452_)
                                        (let ()
                                          (let* ((_g2047320481_
                                                  (lambda (_g2047420477_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2047420477_)))
                                                 (_g2047221389_
                                                  (lambda (_g2047420485_)
                                                    ((lambda (_L20488_)
                                                       (let ()
                                                         (let* ((_g2050120509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2050220505_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2050220505_)))
                        (_g2050021318_
                         (lambda (_g2050220513_)
                           ((lambda (_L20516_)
                              (let ()
                                (let* ((_g2052920537_
                                        (lambda (_g2053020533_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2053020533_)))
                                       (_g2052821283_
                                        (lambda (_g2053020541_)
                                          ((lambda (_L20544_)
                                             (let ()
                                               (let* ((_g2055720565_
                                                       (lambda (_g2055820561_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2055820561_)))
                                                      (_g2055621197_
                                                       (lambda (_g2055820569_)
                                                         ((lambda (_L20572_)
                                                            (let ()
                                                              (let* ((_g2058520593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2058620589_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2058620589_)))
                             (_g2058421185_
                              (lambda (_g2058620597_)
                                ((lambda (_L20600_)
                                   (let ()
                                     (let* ((_g2061320621_
                                             (lambda (_g2061420617_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2061420617_)))
                                            (_g2061221181_
                                             (lambda (_g2061420625_)
                                               ((lambda (_L20628_)
                                                  (let ()
                                                    (let* ((_g2064120649_
                                                            (lambda (_g2064220645_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2064220645_)))
                                                           (_g2064021177_
                                                            (lambda (_g2064220653_)
                                                              ((lambda (_L20656_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2066920677_
                                   (lambda (_g2067020673_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2067020673_)))
                                  (_g2066821142_
                                   (lambda (_g2067020681_)
                                     ((lambda (_L20684_)
                                        (let ()
                                          (let* ((_g2069720705_
                                                  (lambda (_g2069820701_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2069820701_)))
                                                 (_g2069621071_
                                                  (lambda (_g2069820709_)
                                                    ((lambda (_L20712_)
                                                       (let ()
                                                         (let* ((_g2072520733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2072620729_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2072620729_)))
                        (_g2072421067_
                         (lambda (_g2072620737_)
                           ((lambda (_L20740_)
                              (let ()
                                (let* ((_g2075320761_
                                        (lambda (_g2075420757_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2075420757_)))
                                       (_g2075221063_
                                        (lambda (_g2075420765_)
                                          ((lambda (_L20768_)
                                             (let ()
                                               (let* ((_g2078120789_
                                                       (lambda (_g2078220785_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2078220785_)))
                                                      (_g2078021059_
                                                       (lambda (_g2078220793_)
                                                         ((lambda (_L20796_)
                                                            (let ()
                                                              (let* ((_g2080920817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2081020813_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2081020813_)))
                             (_g2080821033_
                              (lambda (_g2081020821_)
                                ((lambda (_L20824_)
                                   (let ()
                                     (let* ((_g2083720845_
                                             (lambda (_g2083820841_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2083820841_)))
                                            (_g2083621007_
                                             (lambda (_g2083820849_)
                                               ((lambda (_L20852_)
                                                  (let ()
                                                    (let* ((_g2086520873_
                                                            (lambda (_g2086620869_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2086620869_)))
                                                           (_g2086420981_
                                                            (lambda (_g2086620877_)
                                                              ((lambda (_L20880_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2089320901_
                                   (lambda (_g2089420897_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2089420897_)))
                                  (_g2089220955_
                                   (lambda (_g2089420905_)
                                     ((lambda (_L20908_)
                                        (let ()
                                          (let* ((_g2092120929_
                                                  (lambda (_g2092220925_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2092220925_)))
                                                 (_g2092020951_
                                                  (lambda (_g2092220933_)
                                                    ((lambda (_L20936_)
                                                       (let ()
                                                         (let ()
                                                           (let ((__tmp51474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp51477 (gx#datum->syntax '#f 'begin))
                                (__tmp51475
                                 (let ((__tmp51476
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20936_ '()))))
                                   (declare (not safe))
                                   (cons _L20488_ __tmp51476))))
                            (declare (not safe))
                            (cons __tmp51477 __tmp51475))))
                     (declare (not safe))
                     (_wrap19366_ __tmp51474)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2092220933_)))
                                                 (__tmp51478
                                                  (let ((__tmp51479
                                                         (let ((__tmp51514
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp51480
                        (let ((__tmp51481
                               (let ((__tmp51482
                                      (let ((__tmp51513
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp51483
                                             (let ((__tmp51484
                                                    (let ((__tmp51485
                                                           (let ((__tmp51486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp51487
                                 (let ((__tmp51488
                                        (let ((__tmp51489
                                               (let ((__tmp51490
                                                      (let ((__tmp51491
                                                             (let ((__tmp51492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51493
                                   (let ((__tmp51494
                                          (let ((__tmp51495
                                                 (let ((__tmp51496
                                                        (let ((__tmp51497
                                                               (let ((__tmp51498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp51499
                                     (let ((__tmp51500
                                            (let ((__tmp51501
                                                   (let ((__tmp51502
                                                          (let ((__tmp51503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp51504
                                (let ((__tmp51505
                                       (let ((__tmp51506
                                              (let ((__tmp51507
                                                     (let ((__tmp51508
                                                            (let ((__tmp51509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp51510
                                  (let ((__tmp51511
                                         (let ((__tmp51512
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L20908_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp51512))))
                                    (declare (not safe))
                                    (cons _L20880_ __tmp51511))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp51510))))
                      (declare (not safe))
                      (cons _L20852_ __tmp51509))))
               (declare (not safe))
               (cons 'mutators: __tmp51508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L20824_ __tmp51507))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp51506))))
                                  (declare (not safe))
                                  (cons _L20796_ __tmp51505))))
                           (declare (not safe))
                           (cons 'predicate: __tmp51504))))
                    (declare (not safe))
                    (cons _L20768_ __tmp51503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp51502))))
                                              (declare (not safe))
                                              (cons _L20740_ __tmp51501))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp51500))))
                                (declare (not safe))
                                (cons _L20712_ __tmp51499))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp51498))))
                  (declare (not safe))
                  (cons _L20684_ __tmp51497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp51496))))
                                            (declare (not safe))
                                            (cons _L20656_ __tmp51495))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp51494))))
                              (declare (not safe))
                              (cons _L20628_ __tmp51493))))
                       (declare (not safe))
                       (cons 'struct?: __tmp51492))))
                (declare (not safe))
                (cons _L20572_ __tmp51491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp51490))))
                                          (declare (not safe))
                                          (cons _L20600_ __tmp51489))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp51488))))
                            (declare (not safe))
                            (cons _L20544_ __tmp51487))))
                     (declare (not safe))
                     (cons 'name: __tmp51486))))
              (declare (not safe))
              (cons _L20516_ __tmp51485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp51484))))
                                        (declare (not safe))
                                        (cons __tmp51513 __tmp51483))))
                                 (declare (not safe))
                                 (cons __tmp51482 '()))))
                          (declare (not safe))
                          (cons _L19396_ __tmp51481))))
                   (declare (not safe))
                   (cons __tmp51514 __tmp51480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp51479))))
                                            (declare (not safe))
                                            (_g2092020951_ __tmp51478))))
                                      _g2089420905_)))
                                  (__tmp51515
                                   (let ((__tmp51539
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp51516
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L20079_
                                             _L19578_)
                                            (foldr (lambda (_g2095820965_
                                                            _g2095920968_
                                                            _g2096020970_)
                                                     (let ((__tmp51517
                                                            (let ((__tmp51527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp51518
                           (let ((__tmp51524
                                  (let ((__tmp51526
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp51525
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2095920968_ '()))))
                                    (declare (not safe))
                                    (cons __tmp51526 __tmp51525)))
                                 (__tmp51519
                                  (let ((__tmp51520
                                         (let ((__tmp51521
                                                (let ((__tmp51523
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp51522
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2095820965_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp51523
                                                        __tmp51522))))
                                           (declare (not safe))
                                           (cons __tmp51521 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp51520))))
                             (declare (not safe))
                             (cons __tmp51524 __tmp51519))))
                      (declare (not safe))
                      (cons __tmp51527 __tmp51518))))
               (declare (not safe))
               (cons __tmp51517 _g2096020970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L20221_
                                                      _L19794_)
                                                     (foldr (lambda (_g2096120973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2096220976_
                             _g2096320978_)
                      (let ((__tmp51528
                             (let ((__tmp51538 (gx#datum->syntax '#f '@list))
                                   (__tmp51529
                                    (let ((__tmp51535
                                           (let ((__tmp51537
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp51536
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2096220976_ '()))))
                                             (declare (not safe))
                                             (cons __tmp51537 __tmp51536)))
                                          (__tmp51530
                                           (let ((__tmp51531
                                                  (let ((__tmp51532
                                                         (let ((__tmp51534
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp51533
                        (let ()
                          (declare (not safe))
                          (cons _g2096120973_ '()))))
                   (declare (not safe))
                   (cons __tmp51534 __tmp51533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp51532 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp51531))))
                                      (declare (not safe))
                                      (cons __tmp51535 __tmp51530))))
                               (declare (not safe))
                               (cons __tmp51538 __tmp51529))))
                        (declare (not safe))
                        (cons __tmp51528 _g2096320978_)))
                    '()
                    _L20221_
                    _L19794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _L20079_
                                                   _L19578_))))
                                     (declare (not safe))
                                     (cons __tmp51539 __tmp51516))))
                             (declare (not safe))
                             (_g2089220955_ __tmp51515))))
                       _g2086620877_)))
                   (__tmp51540
                    (let ((__tmp51564 (gx#datum->syntax '#f '@list))
                          (__tmp51541
                           (begin
                             (gx#syntax-check-splice-targets _L20008_ _L19578_)
                             (foldr (lambda (_g2098420991_
                                             _g2098520994_
                                             _g2098620996_)
                                      (let ((__tmp51542
                                             (let ((__tmp51552
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp51543
                                                    (let ((__tmp51549
                                                           (let ((__tmp51551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp51550
                          (let ()
                            (declare (not safe))
                            (cons _g2098520994_ '()))))
                     (declare (not safe))
                     (cons __tmp51551 __tmp51550)))
                  (__tmp51544
                   (let ((__tmp51545
                          (let ((__tmp51546
                                 (let ((__tmp51548
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp51547
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2098420991_ '()))))
                                   (declare (not safe))
                                   (cons __tmp51548 __tmp51547))))
                            (declare (not safe))
                            (cons __tmp51546 '()))))
                     (declare (not safe))
                     (cons ':: __tmp51545))))
              (declare (not safe))
              (cons __tmp51549 __tmp51544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51552 __tmp51543))))
                                        (declare (not safe))
                                        (cons __tmp51542 _g2098620996_)))
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20150_
                                       _L19794_)
                                      (foldr (lambda (_g2098720999_
                                                      _g2098821002_
                                                      _g2098921004_)
                                               (let ((__tmp51553
                                                      (let ((__tmp51563
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp51554
                                                             (let ((__tmp51560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51562 (gx#datum->syntax '#f 'quote))
                                  (__tmp51561
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2098821002_ '()))))
                              (declare (not safe))
                              (cons __tmp51562 __tmp51561)))
                           (__tmp51555
                            (let ((__tmp51556
                                   (let ((__tmp51557
                                          (let ((__tmp51559
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp51558
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2098720999_ '()))))
                                            (declare (not safe))
                                            (cons __tmp51559 __tmp51558))))
                                     (declare (not safe))
                                     (cons __tmp51557 '()))))
                              (declare (not safe))
                              (cons ':: __tmp51556))))
                       (declare (not safe))
                       (cons __tmp51560 __tmp51555))))
                (declare (not safe))
                (cons __tmp51563 __tmp51554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp51553
                                                       _g2098921004_)))
                                             '()
                                             _L20150_
                                             _L19794_))
                                    _L20008_
                                    _L19578_))))
                      (declare (not safe))
                      (cons __tmp51564 __tmp51541))))
              (declare (not safe))
              (_g2086420981_ __tmp51540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2083820849_)))
                                            (__tmp51565
                                             (let ((__tmp51589
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp51566
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L19720_
                                                       _L19578_)
                                                      (foldr (lambda (_g2101021017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2101121020_
                              _g2101221022_)
                       (let ((__tmp51567
                              (let ((__tmp51577 (gx#datum->syntax '#f '@list))
                                    (__tmp51568
                                     (let ((__tmp51574
                                            (let ((__tmp51576
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp51575
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2101121020_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp51576 __tmp51575)))
                                           (__tmp51569
                                            (let ((__tmp51570
                                                   (let ((__tmp51571
                                                          (let ((__tmp51573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp51572
                         (let ()
                           (declare (not safe))
                           (cons _g2101021017_ '()))))
                    (declare (not safe))
                    (cons __tmp51573 __tmp51572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp51571 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp51570))))
                                       (declare (not safe))
                                       (cons __tmp51574 __tmp51569))))
                                (declare (not safe))
                                (cons __tmp51577 __tmp51568))))
                         (declare (not safe))
                         (cons __tmp51567 _g2101221022_)))
                     (begin
                       (gx#syntax-check-splice-targets _L19937_ _L19794_)
                       (foldr (lambda (_g2101321025_
                                       _g2101421028_
                                       _g2101521030_)
                                (let ((__tmp51578
                                       (let ((__tmp51588
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp51579
                                              (let ((__tmp51585
                                                     (let ((__tmp51587
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp51586
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2101421028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp51587 __tmp51586)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp51580
                                                     (let ((__tmp51581
                                                            (let ((__tmp51582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp51584
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp51583
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2101321025_ '()))))
                             (declare (not safe))
                             (cons __tmp51584 __tmp51583))))
                      (declare (not safe))
                      (cons __tmp51582 '()))))
               (declare (not safe))
               (cons ':: __tmp51581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp51585 __tmp51580))))
                                         (declare (not safe))
                                         (cons __tmp51588 __tmp51579))))
                                  (declare (not safe))
                                  (cons __tmp51578 _g2101521030_)))
                              '()
                              _L19937_
                              _L19794_))
                     _L19720_
                     _L19578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51589 __tmp51566))))
                                       (declare (not safe))
                                       (_g2083621007_ __tmp51565))))
                                 _g2081020821_)))
                             (__tmp51590
                              (let ((__tmp51614 (gx#datum->syntax '#f '@list))
                                    (__tmp51591
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19649_
                                        _L19578_)
                                       (foldr (lambda (_g2103621043_
                                                       _g2103721046_
                                                       _g2103821048_)
                                                (let ((__tmp51592
                                                       (let ((__tmp51602
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp51593
                                                              (let ((__tmp51599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp51601 (gx#datum->syntax '#f 'quote))
                                   (__tmp51600
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2103721046_ '()))))
                               (declare (not safe))
                               (cons __tmp51601 __tmp51600)))
                            (__tmp51594
                             (let ((__tmp51595
                                    (let ((__tmp51596
                                           (let ((__tmp51598
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp51597
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2103621043_ '()))))
                                             (declare (not safe))
                                             (cons __tmp51598 __tmp51597))))
                                      (declare (not safe))
                                      (cons __tmp51596 '()))))
                               (declare (not safe))
                               (cons ':: __tmp51595))))
                        (declare (not safe))
                        (cons __tmp51599 __tmp51594))))
                 (declare (not safe))
                 (cons __tmp51602 __tmp51593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp51592
                                                        _g2103821048_)))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19866_
                                                 _L19794_)
                                                (foldr (lambda (_g2103921051_
                                                                _g2104021054_
                                                                _g2104121056_)
                                                         (let ((__tmp51603
                                                                (let ((__tmp51613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp51604
                               (let ((__tmp51610
                                      (let ((__tmp51612
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp51611
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2104021054_ '()))))
                                        (declare (not safe))
                                        (cons __tmp51612 __tmp51611)))
                                     (__tmp51605
                                      (let ((__tmp51606
                                             (let ((__tmp51607
                                                    (let ((__tmp51609
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp51608
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2103921051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp51609 __tmp51608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51607 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp51606))))
                                 (declare (not safe))
                                 (cons __tmp51610 __tmp51605))))
                          (declare (not safe))
                          (cons __tmp51613 __tmp51604))))
                   (declare (not safe))
                   (cons __tmp51603 _g2104121056_)))
               '()
               _L19866_
               _L19794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _L19649_
                                              _L19578_))))
                                (declare (not safe))
                                (cons __tmp51614 __tmp51591))))
                        (declare (not safe))
                        (_g2080821033_ __tmp51590))))
                  _g2078220793_)))
              (__tmp51615
               (let ((__tmp51617 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp51616
                      (let () (declare (not safe)) (cons _L19483_ '()))))
                 (declare (not safe))
                 (cons __tmp51617 __tmp51616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2078021059_ __tmp51615))))
                                           _g2075420765_)))
                                       (__tmp51618
                                        (let ((__tmp51620
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp51619
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19455_ '()))))
                                          (declare (not safe))
                                          (cons __tmp51620 __tmp51619))))
                                  (declare (not safe))
                                  (_g2075221063_ __tmp51618))))
                            _g2072620737_)))
                        (__tmp51621
                         (let ((__tmp51623
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp51622
                                (let ()
                                  (declare (not safe))
                                  (cons _L19427_ '()))))
                           (declare (not safe))
                           (cons __tmp51623 __tmp51622))))
                   (declare (not safe))
                   (_g2072421067_ __tmp51621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2069820709_)))
                                                 (__tmp51624
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _type-constructor20298_))
                                                      '#f
                                                      (let* ((_g2107521090_
                                                              (lambda (_g2107621086_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2107621086_)))
                     (_g2107421138_
                      (lambda (_g2107621094_)
                        (if (gx#stx-pair? _g2107621094_)
                            (let ((_e2108021097_ (gx#syntax-e _g2107621094_)))
                              (let ((_hd2107921101_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2108021097_)))
                                    (_tl2107821104_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2108021097_))))
                                (if (gx#stx-datum? _hd2107921101_)
                                    (let ((_e2108121107_
                                           (gx#stx-e _hd2107921101_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2108121107_
                                                    'constructor:))
                                          (if (gx#stx-pair? _tl2107821104_)
                                              (let ((_e2108421111_
                                                     (gx#syntax-e
                                                      _tl2107821104_)))
                                                (let ((_hd2108321115_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2108421111_)))
                                                      (_tl2108221118_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2108421111_))))
                                                  (if (gx#stx-null?
                                                       _tl2108221118_)
                                                      ((lambda (_L21121_)
                                                         (let ()
                                                           (let ((__tmp51626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp51625
                          (let () (declare (not safe)) (cons _L21121_ '()))))
                     (declare (not safe))
                     (cons __tmp51626 __tmp51625))))
               _hd2108321115_)
              (let () (declare (not safe)) (_g2107521090_ _g2107621094_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2107521090_ _g2107621094_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2107521090_ _g2107621094_))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2107521090_ _g2107621094_)))))
                            (let ()
                              (declare (not safe))
                              (_g2107521090_ _g2107621094_))))))
                (declare (not safe))
                (_g2107421138_ _type-constructor20298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g2069621071_ __tmp51624))))
                                      _g2067020681_)))
                                  (__tmp51627
                                   (if _metaclass20383_
                                       (let* ((_g2114621154_
                                               (lambda (_g2114721150_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g2114721150_)))
                                              (_g2114521173_
                                               (lambda (_g2114721158_)
                                                 ((lambda (_L21161_)
                                                    (let ()
                                                      (let ((__tmp51629
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp51628
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L21161_ '()))))
                (declare (not safe))
                (cons __tmp51629 __tmp51628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2114721158_))))
                                         (declare (not safe))
                                         (_g2114521173_ _metaclass20383_))
                                       '#f)))
                             (declare (not safe))
                             (_g2066821142_ __tmp51627))))
                       _g2064220653_))))
              (declare (not safe))
              (_g2064021177_ _final?20389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2061420625_))))
                                       (declare (not safe))
                                       (_g2061221181_ _struct?19378_))))
                                 _g2058620597_)))
                             (__tmp51630
                              (let ((__tmp51633 (gx#datum->syntax '#f 'quote))
                                    (__tmp51631
                                     (let ((__tmp51632
                                            (foldr (lambda (_g2118821191_
                                                            _g2118921194_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2118821191_
                                                             _g2118921194_)))
                                                   '()
                                                   _L19578_)))
                                       (declare (not safe))
                                       (cons __tmp51632 '()))))
                                (declare (not safe))
                                (cons __tmp51633 __tmp51631))))
                        (declare (not safe))
                        (_g2058421185_ __tmp51630))))
                  _g2055820569_)))
              (__tmp51634
               (let* ((_g2120121218_
                       (lambda (_g2120221214_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2120221214_)))
                      (_g2120021279_
                       (lambda (_g2120221222_)
                         (if (gx#stx-pair/null? _g2120221222_)
                             (let ((_g51635_
                                    (gx#syntax-split-splice _g2120221222_ '0)))
                               (begin
                                 (let ((_g51636_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g51635_)
                                              (##vector-length _g51635_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g51636_ 2)))
                                       (error "Context expects 2 values"
                                              _g51636_)))
                                 (let ((_target2120421225_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g51635_ 0)))
                                       (_tl2120621228_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g51635_ 1))))
                                   (if (gx#stx-null? _tl2120621228_)
                                       (letrec ((_loop2120721231_
                                                 (lambda (_hd2120521235_
                                                          _super-id2121121238_)
                                                   (if (gx#stx-pair?
                                                        _hd2120521235_)
                                                       (let ((_e2120821241_
                                                              (gx#syntax-e
                                                               _hd2120521235_)))
                                                         (let ((_lp-hd2120921245_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2120821241_)))
                       (_lp-tl2121021248_
                        (let () (declare (not safe)) (##cdr _e2120821241_))))
                   (let ((__tmp51642
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2120921245_ _super-id2121121238_))))
                     (declare (not safe))
                     (_loop2120721231_ _lp-tl2121021248_ __tmp51642))))
               (let ((_super-id2121221251_ (reverse _super-id2121121238_)))
                 ((lambda (_L21255_)
                    (let ()
                      (let ((__tmp51641 (gx#datum->syntax '#f '@list))
                            (__tmp51637
                             (foldr (lambda (_g2127021273_ _g2127121276_)
                                      (let ((__tmp51638
                                             (let ((__tmp51640
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp51639
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2127021273_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp51640 __tmp51639))))
                                        (declare (not safe))
                                        (cons __tmp51638 _g2127121276_)))
                                    '()
                                    _L21255_)))
                        (declare (not safe))
                        (cons __tmp51641 __tmp51637))))
                  _super-id2121221251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop2120721231_
                                            _target2120421225_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g2120121218_ _g2120221222_))))))
                             (let ()
                               (declare (not safe))
                               (_g2120121218_ _g2120221222_))))))
                 (declare (not safe))
                 (_g2120021279_ _super-ref19362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2055621197_ __tmp51634))))
                                           _g2053020541_)))
                                       (__tmp51643
                                        (let* ((_g2128721295_
                                                (lambda (_g2128821291_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2128821291_)))
                                               (_g2128621314_
                                                (lambda (_g2128821299_)
                                                  ((lambda (_L21302_)
                                                     (let ()
                                                       (let ((__tmp51645
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp51644
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21302_ '()))))
                 (declare (not safe))
                 (cons __tmp51645 __tmp51644))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2128821299_)))
                                               (__tmp51646
                                                (cadr _type-name20276_)))
                                          (declare (not safe))
                                          (_g2128621314_ __tmp51646))))
                                  (declare (not safe))
                                  (_g2052821283_ __tmp51643))))
                            _g2050220513_)))
                        (__tmp51647
                         (let* ((_g2132221337_
                                 (lambda (_g2132321333_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2132321333_)))
                                (_g2132121385_
                                 (lambda (_g2132321341_)
                                   (if (gx#stx-pair? _g2132321341_)
                                       (let ((_e2132721344_
                                              (gx#syntax-e _g2132321341_)))
                                         (let ((_hd2132621348_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2132721344_)))
                                               (_tl2132521351_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2132721344_))))
                                           (if (gx#stx-datum? _hd2132621348_)
                                               (let ((_e2132821354_
                                                      (gx#stx-e
                                                       _hd2132621348_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2132821354_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2132521351_)
                                                         (let ((_e2133121358_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2132521351_)))
                   (let ((_hd2133021362_
                          (let () (declare (not safe)) (##car _e2133121358_)))
                         (_tl2132921365_
                          (let () (declare (not safe)) (##cdr _e2133121358_))))
                     (if (gx#stx-null? _tl2132921365_)
                         ((lambda (_L21368_)
                            (let ()
                              (let ((__tmp51649 (gx#datum->syntax '#f 'quote))
                                    (__tmp51648
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21368_ '()))))
                                (declare (not safe))
                                (cons __tmp51649 __tmp51648))))
                          _hd2133021362_)
                         (let ()
                           (declare (not safe))
                           (_g2132221337_ _g2132321341_)))))
                 (let () (declare (not safe)) (_g2132221337_ _g2132321341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2132221337_
                                                        _g2132321341_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2132221337_
                                                  _g2132321341_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2132221337_ _g2132321341_))))))
                           (declare (not safe))
                           (_g2132121385_ _type-id20283_))))
                   (declare (not safe))
                   (_g2050021318_ __tmp51647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2047420485_)))
                                                 (__tmp51650
                                                  (let ((__tmp51651
                                                         (let ((__tmp51657
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp51652
                        (let ((__tmp51653
                               (let ((__tmp51654
                                      (let ((__tmp51655
                                             (let ((__tmp51656
                                                    (foldr (lambda (_g2139221395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2139321398_)
                     (let ()
                       (declare (not safe))
                       (cons _g2139221395_ _g2139321398_)))
                   '()
                   _L20452_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L19483_ __tmp51656))))
                                        (declare (not safe))
                                        (cons _L19455_ __tmp51655))))
                                 (declare (not safe))
                                 (cons _L19511_ __tmp51654))))
                          (declare (not safe))
                          (cons _L19427_ __tmp51653))))
                   (declare (not safe))
                   (cons __tmp51657 __tmp51652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp51651))))
                                            (declare (not safe))
                                            (_g2047221389_ __tmp51650))))
                                      _type-body2040920448_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2040420428_ _target2040120422_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2039820415_ _g2039920419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2039820415_
                                                    _g2039920419_)))))
                                          (__tmp51659
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _type-mixin-slots20269_
                                                           _type-slots20252_)
                                                    _type-properties20373_)
                                             _type-metaclass20386_)
                                      _type-final20395_)
                               _type-struct20392_)
                        _type-constructor20298_)
                 _type-name20276_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-id20283_)))
                                     (declare (not safe))
                                     (_g2039721401_ __tmp51659))))
                               _mixin-usetf2017820217_))))))
              (let ()
                (declare (not safe))
                (_loop2017320197_ _target2017020191_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2016720184_
                                                       _g2016820188_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2016720184_ _g2016820188_)))))
                                   (__tmp51661
                                    (gx#stx-map
                                     (lambda (_g2140821410_)
                                       (_make-id19368_ '"&" _g2140821410_))
                                     (foldr (lambda (_g2141321416_
                                                     _g2141421419_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2141321416_
                                                      _g2141421419_)))
                                            '()
                                            _L19937_))))
                              (declare (not safe))
                              (_g2016621405_ __tmp51661))))
                        _mixin-ugetf2010720146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_loop2010220126_
                                                  _target2009920120_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_g2009620113_
                                                _g2009720117_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2009620113_ _g2009720117_)))))
                            (__tmp51663
                             (gx#stx-map
                              (lambda (_g2142521427_)
                                (_make-id19368_ '"&" _g2142521427_))
                              (foldr (lambda (_g2143021433_ _g2143121436_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2143021433_ _g2143121436_)))
                                     '()
                                     _L19866_))))
                       (declare (not safe))
                       (_g2009521422_ __tmp51663))))
                 _usetf2003620075_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2003120055_
                                           _target2002820049_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2002520042_ _g2002620046_))))))
                            (let ()
                              (declare (not safe))
                              (_g2002520042_ _g2002620046_)))))
                     (__tmp51665
                      (gx#stx-map
                       (lambda (_g2144221444_)
                         (_make-id19368_ '"&" _g2144221444_))
                       (foldr (lambda (_g2144721450_ _g2144821453_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2144721450_ _g2144821453_)))
                              '()
                              _L19720_))))
                (declare (not safe))
                (_g2002421439_ __tmp51665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ugetf1996520004_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop1996019984_ _target1995719978_ '())))
                               (let ()
                                 (declare (not safe))
                                 (_g1995419971_ _g1995519975_))))))
                     (let ()
                       (declare (not safe))
                       (_g1995419971_ _g1995519975_)))))
              (__tmp51667
               (gx#stx-map
                (lambda (_g2145921461_) (_make-id19368_ '"&" _g2145921461_))
                (foldr (lambda (_g2146421467_ _g2146521470_)
                         (let ()
                           (declare (not safe))
                           (cons _g2146421467_ _g2146521470_)))
                       '()
                       _L19649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1995321456_ __tmp51667))))
                                           _mixin-setf1989419933_))))))
                          (let ()
                            (declare (not safe))
                            (_loop1988919913_ _target1988619907_ '())))
                        (let ()
                          (declare (not safe))
                          (_g1988319900_ _g1988419904_))))))
              (let () (declare (not safe)) (_g1988319900_ _g1988419904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp51669
                                                (gx#stx-map
                                                 (lambda (_g2147621478_)
                                                   (_make-id19368_
                                                    _name19372_
                                                    '"-"
                                                    _g2147621478_
                                                    '"-set!"))
                                                 _mixin-slots19737_)))
                                          (declare (not safe))
                                          (_g1988221473_ __tmp51669))))
                                    _mixin-getf1982319862_))))))
                   (let ()
                     (declare (not safe))
                     (_loop1981819842_ _target1981519836_ '())))
                 (let ()
                   (declare (not safe))
                   (_g1981219829_ _g1981319833_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1981219829_
                                                  _g1981319833_)))))
                                        (__tmp51671
                                         (gx#stx-map
                                          (lambda (_g2148521487_)
                                            (_make-id19368_
                                             _name19372_
                                             '"-"
                                             _g2148521487_))
                                          _mixin-slots19737_)))
                                   (declare (not safe))
                                   (_g1981121482_ __tmp51671))))
                             _mixin-slot1975119790_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop1974619770_
                                                       _target1974319764_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1974019757_
                                                     _g1974119761_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1974019757_ _g1974119761_))))))
                            (declare (not safe))
                            (_g1973921491_ _mixin-slots19737_))))
                      _setf1967719716_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop1967219696_
                                                _target1966919690_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g1966619683_ _g1966719687_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g1966619683_ _g1966719687_)))))
                          (__tmp51674
                           (gx#stx-map
                            (lambda (_g2149821500_)
                              (_make-id19368_
                               _name19372_
                               '"-"
                               _g2149821500_
                               '"-set!"))
                            _slots19363_)))
                     (declare (not safe))
                     (_g1966521495_ __tmp51674))))
               _getf1960619645_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1960119625_
                                         _target1959819619_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1959519612_ _g1959619616_))))))
                          (let ()
                            (declare (not safe))
                            (_g1959519612_ _g1959619616_)))))
                   (__tmp51676
                    (gx#stx-map
                     (lambda (_g2150721509_)
                       (_make-id19368_ _name19372_ '"-" _g2150721509_))
                     _slots19363_)))
              (declare (not safe))
              (_g1959421504_ __tmp51676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _slot1953519574_))))))
                               (let ()
                                 (declare (not safe))
                                 (_loop1953019554_ _target1952719548_ '())))
                             (let ()
                               (declare (not safe))
                               (_g1952419541_ _g1952519545_))))))
                   (let ()
                     (declare (not safe))
                     (_g1952419541_ _g1952519545_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g1952321513_ _slots19363_))))
                                         _g1949719508_)))
                                     (__tmp51678
                                      (map gerbil/core$<MOP>$<MOP:2>#!class-type-descriptor
                                           _super19375_)))
                                (declare (not safe))
                                (_g1949521517_ __tmp51678))))
                          _g1946919480_)))
                      (__tmp51679 (_make-id19368_ _name19372_ '"?")))
                 (declare (not safe))
                 (_g1946721521_ __tmp51679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1944119452_)))
                                               (__tmp51680
                                                (_make-id19368_
                                                 '"make-"
                                                 _name19372_)))
                                          (declare (not safe))
                                          (_g1943921525_ __tmp51680))))
                                    _g1941319424_)))
                                (__tmp51681
                                 (_make-id19368_ _name19372_ '"::t")))
                           (declare (not safe))
                           (_g1941121529_ __tmp51681))))
                     _g1938219393_))))
            (declare (not safe))
            (_g1938021533_ _id19361_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defstruct|
      (lambda (_$stx21597_)
        (let* ((_g2160121620_
                (lambda (_g2160221616_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2160221616_)))
               (_g2160021677_
                (lambda (_g2160221624_)
                  (if (gx#stx-pair? _g2160221624_)
                      (let ((_e2160821627_ (gx#syntax-e _g2160221624_)))
                        (let ((_hd2160721631_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2160821627_)))
                              (_tl2160621634_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2160821627_))))
                          (if (gx#stx-pair? _tl2160621634_)
                              (let ((_e2161121637_
                                     (gx#syntax-e _tl2160621634_)))
                                (let ((_hd2161021641_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2161121637_)))
                                      (_tl2160921644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2161121637_))))
                                  (if (gx#stx-pair? _tl2160921644_)
                                      (let ((_e2161421647_
                                             (gx#syntax-e _tl2160921644_)))
                                        (let ((_hd2161321651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2161421647_)))
                                              (_tl2161221654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2161421647_))))
                                          ((lambda (_L21657_ _L21659_ _L21660_)
                                             (let ((__tmp51686
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp51682
                                                    (let ((__tmp51683
                                                           (let ((__tmp51684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp51685
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L21657_))))
                            (declare (not safe))
                            (cons 'struct: __tmp51685))))
                     (declare (not safe))
                     (cons _L21659_ __tmp51684))))
              (declare (not safe))
              (cons _L21660_ __tmp51683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51686 __tmp51682)))
                                           _tl2161221654_
                                           _hd2161321651_
                                           _hd2161021641_)))
                                      (_g2160121620_ _g2160221624_))))
                              (_g2160121620_ _g2160221624_))))
                      (_g2160121620_ _g2160221624_)))))
          (_g2160021677_ _$stx21597_))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defclass|
      (lambda (_stx21681_)
        (letrec ((_generate21684_
                  (lambda (_hd21768_ _slots21770_ _body21771_)
                    (let* ((___stx4659246593_ _hd21768_)
                           (_g2177421786_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4659246593_))))
                      (let ((___kont4659546596_
                             (lambda (_L21814_ _L21816_)
                               (let ((__tmp51687 (gx#syntax->list _L21814_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                  _stx21681_
                                  _L21816_
                                  __tmp51687
                                  _slots21770_
                                  _body21771_))))
                            (___kont4659746598_
                             (lambda ()
                               (if (gx#identifier? _hd21768_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                      _stx21681_
                                      _hd21768_
                                      '()
                                      _slots21770_
                                      _body21771_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx21681_
                                    _hd21768_)))))
                        (let ((___match4660546606_
                               (lambda (_e2178021804_
                                        _hd2177921808_
                                        _tl2177821811_)
                                 (let ((_L21814_ _tl2177821811_)
                                       (_L21816_ _hd2177921808_))
                                   (if (and (gx#stx-list? _L21814_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21814_))
                                       (___kont4659546596_ _L21814_ _L21816_)
                                       (___kont4659746598_))))))
                          (if (gx#stx-pair? ___stx4659246593_)
                              (let ((_e2178021804_
                                     (gx#syntax-e ___stx4659246593_)))
                                (let ((_tl2177821811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2178021804_)))
                                      (_hd2177921808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2178021804_))))
                                  (___match4660546606_
                                   _e2178021804_
                                   _hd2177921808_
                                   _tl2177821811_)))
                              (___kont4659746598_))))))))
          (let* ((_g2168721706_
                  (lambda (_g2168821702_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2168821702_)))
                 (_g2168621764_
                  (lambda (_g2168821710_)
                    (if (gx#stx-pair? _g2168821710_)
                        (let ((_e2169421713_ (gx#syntax-e _g2168821710_)))
                          (let ((_hd2169321717_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2169421713_)))
                                (_tl2169221720_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2169421713_))))
                            (if (gx#stx-pair? _tl2169221720_)
                                (let ((_e2169721723_
                                       (gx#syntax-e _tl2169221720_)))
                                  (let ((_hd2169621727_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2169721723_)))
                                        (_tl2169521730_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2169721723_))))
                                    (if (gx#stx-pair? _tl2169521730_)
                                        (let ((_e2170021733_
                                               (gx#syntax-e _tl2169521730_)))
                                          (let ((_hd2169921737_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2170021733_)))
                                                (_tl2169821740_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2170021733_))))
                                            ((lambda (_L21743_
                                                      _L21745_
                                                      _L21746_)
                                               (if (and (gx#identifier-list?
                                                         _L21745_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
                                                           _L21743_)))
                                                   (_generate21684_
                                                    _L21746_
                                                    _L21745_
                                                    _L21743_)
                                                   (_g2168721706_
                                                    _g2168821710_)))
                                             _tl2169821740_
                                             _hd2169921737_
                                             _hd2169621727_)))
                                        (_g2168721706_ _g2168821710_))))
                                (_g2168721706_ _g2168821710_))))
                        (_g2168721706_ _g2168821710_)))))
            (_g2168621764_ _stx21681_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defmethod|
      (lambda (_stx21833_)
        (letrec ((_wrap21836_
                  (lambda (_e-stx22173_)
                    (gx#stx-wrap-source
                     _e-stx22173_
                     (gx#stx-source _stx21833_))))
                 (_method-opt?21838_
                  (lambda (_x22170_) (memq (gx#stx-e _x22170_) '(rebind:)))))
          (let* ((_g2184021869_
                  (lambda (_g2184121865_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2184121865_)))
                 (_g2183922166_
                  (lambda (_g2184121873_)
                    (if (gx#stx-pair? _g2184121873_)
                        (let ((_e2184821876_ (gx#syntax-e _g2184121873_)))
                          (let ((_hd2184721880_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2184821876_)))
                                (_tl2184621883_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2184821876_))))
                            (if (gx#stx-pair? _tl2184621883_)
                                (let ((_e2185121886_
                                       (gx#syntax-e _tl2184621883_)))
                                  (let ((_hd2185021890_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2185121886_)))
                                        (_tl2184921893_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2185121886_))))
                                    (if (gx#stx-pair? _hd2185021890_)
                                        (let ((_e2185421896_
                                               (gx#syntax-e _hd2185021890_)))
                                          (let ((_hd2185321900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2185421896_)))
                                                (_tl2185221903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2185421896_))))
                                            (if (gx#identifier? _hd2185321900_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g51738_|
                                                     _hd2185321900_)
                                                    (if (gx#stx-pair?
                                                         _tl2185221903_)
                                                        (let ((_e2185721906_
                                                               (gx#syntax-e
                                                                _tl2185221903_)))
                                                          (let ((_hd2185621910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2185721906_)))
                        (_tl2185521913_
                         (let () (declare (not safe)) (##cdr _e2185721906_))))
                    (if (gx#stx-pair? _tl2185521913_)
                        (let ((_e2186021916_ (gx#syntax-e _tl2185521913_)))
                          (let ((_hd2185921920_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2186021916_)))
                                (_tl2185821923_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2186021916_))))
                            (if (gx#stx-null? _tl2185821923_)
                                (if (gx#stx-pair? _tl2184921893_)
                                    (let ((_e2186321926_
                                           (gx#syntax-e _tl2184921893_)))
                                      (let ((_hd2186221930_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2186321926_)))
                                            (_tl2186121933_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2186321926_))))
                                        ((lambda (_L21936_
                                                  _L21938_
                                                  _L21939_
                                                  _L21940_)
                                           (if (and (gx#identifier? _L21940_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                                       _L21939_))
                                                    (gx#stx-plist?
                                                     _L21936_
                                                     _method-opt?21838_))
                                               (let* ((_klass21965_
                                                       (gx#syntax-local-value
                                                        _L21939_))
                                                      (_rebind?21968_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _L21936_)))
                                                      (_g2197121979_
                                                       (lambda (_g2197221975_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2197221975_)))
                                                      (_g2197022162_
                                                       (lambda (_g2197221983_)
                                                         ((lambda (_L21986_)
                                                            (let ()
                                                              (let* ((_g2200022008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2200122004_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2200122004_)))
                             (_g2199922158_
                              (lambda (_g2200122012_)
                                ((lambda (_L22015_)
                                   (let ()
                                     (let* ((_g2202822036_
                                             (lambda (_g2202922032_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2202922032_)))
                                            (_g2202722154_
                                             (lambda (_g2202922040_)
                                               ((lambda (_L22043_)
                                                  (let ()
                                                    (let* ((_g2205622064_
                                                            (lambda (_g2205722060_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2205722060_)))
                                                           (_g2205522150_
                                                            (lambda (_g2205722068_)
                                                              ((lambda (_L22071_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2208422092_
                                   (lambda (_g2208522088_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2208522088_)))
                                  (_g2208322146_
                                   (lambda (_g2208522096_)
                                     ((lambda (_L22099_)
                                        (let ()
                                          (let* ((_g2211222120_
                                                  (lambda (_g2211322116_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2211322116_)))
                                                 (_g2211122142_
                                                  (lambda (_g2211322124_)
                                                    ((lambda (_L22127_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21836_
                                                            (let ((__tmp51692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp51690
                           (let ((__tmp51691
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22127_ '()))))
                             (declare (not safe))
                             (cons _L22071_ __tmp51691))))
                      (declare (not safe))
                      (cons __tmp51692 __tmp51690))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2211322124_))))
                                            (_g2211122142_
                                             (_wrap21836_
                                              (let ((__tmp51700
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp51693
                                                     (let ((__tmp51694
                                                            (let ((__tmp51697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp51699 (gx#datum->syntax '#f 'quote))
                                 (__tmp51698
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21940_ '()))))
                             (declare (not safe))
                             (cons __tmp51699 __tmp51698)))
                          (__tmp51695
                           (let ((__tmp51696
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22099_ '()))))
                             (declare (not safe))
                             (cons _L22015_ __tmp51696))))
                      (declare (not safe))
                      (cons __tmp51697 __tmp51695))))
               (declare (not safe))
               (cons _L21986_ __tmp51694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp51700
                                                      __tmp51693)))))))
                                      _g2208522096_))))
                             (_g2208322146_ _rebind?21968_))))
                       _g2205722068_))))
              (_g2205522150_
               (_wrap21836_
                (let ((__tmp51737 (gx#datum->syntax '#f 'def))
                      (__tmp51701
                       (let ((__tmp51702
                              (let ((__tmp51703
                                     (let ((__tmp51736
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp51704
                                            (let ((__tmp51706
                                                   (let ((__tmp51707
                                                          (let ((__tmp51708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp51709
                                (let ((__tmp51735
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp51710
                                       (let ((__tmp51711
                                              (let ((__tmp51712
                                                     (let ((__tmp51727
                                                            (let ((__tmp51734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp51728
                           (let ((__tmp51733 (gx#datum->syntax '#f 'obj))
                                 (__tmp51729
                                  (let ((__tmp51732
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp51730
                                         (let ((__tmp51731
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp51731 '()))))
                                    (declare (not safe))
                                    (cons __tmp51732 __tmp51730))))
                             (declare (not safe))
                             (cons __tmp51733 __tmp51729))))
                      (declare (not safe))
                      (cons __tmp51734 __tmp51728)))
                   (__tmp51713
                    (let ((__tmp51714
                           (let ((__tmp51726
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp51715
                                  (let ((__tmp51716
                                         (let ((__tmp51725
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp51717
                                                (let ((__tmp51722
                                                       (let ((__tmp51724
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp51723
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21940_ '()))))
                 (declare (not safe))
                 (cons __tmp51724 __tmp51723)))
              (__tmp51718
               (let ((__tmp51721 (gx#datum->syntax '#f 'arg))
                     (__tmp51719
                      (let ((__tmp51720 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp51720 '()))))
                 (declare (not safe))
                 (cons __tmp51721 __tmp51719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp51722
                                                        __tmp51718))))
                                           (declare (not safe))
                                           (cons __tmp51725 __tmp51717))))
                                    (declare (not safe))
                                    (cons _L21986_ __tmp51716))))
                             (declare (not safe))
                             (cons __tmp51726 __tmp51715))))
                      (declare (not safe))
                      (cons __tmp51714 '()))))
               (declare (not safe))
               (cons __tmp51727 __tmp51713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp51712 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp51711))))
                                  (declare (not safe))
                                  (cons __tmp51735 __tmp51710))))
                           (declare (not safe))
                           (cons __tmp51709 '()))))
                    (declare (not safe))
                    (cons _L22043_ __tmp51708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp51707 '())))
                                                  (__tmp51705
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21938_ '()))))
                                              (declare (not safe))
                                              (cons __tmp51706 __tmp51705))))
                                       (declare (not safe))
                                       (cons __tmp51736 __tmp51704))))
                                (declare (not safe))
                                (cons __tmp51703 '()))))
                         (declare (not safe))
                         (cons _L22015_ __tmp51702))))
                  (declare (not safe))
                  (cons __tmp51737 __tmp51701)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2202922040_))))
                                       (_g2202722154_
                                        (gx#stx-identifier
                                         _L21939_
                                         '@next-method)))))
                                 _g2200122012_))))
                        (_g2199922158_
                         (gx#stx-identifier
                          _L21939_
                          _L21939_
                          '"::"
                          _L21940_)))))
                  _g2197221983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2197022162_
                                                  (let ((__obj49631
                                                         _klass21965_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49631
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49631
                                                           '9
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj49631
                                                         'type-descriptor)))))
                                               (if (let ((__tmp51689
                                                          (gx#identifier?
                                                           _L21940_)))
                                                     (declare (not safe))
                                                     (not __tmp51689))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21833_
                                                    _L21940_)
                                                   (if (let ((__tmp51688
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L21939_))))
                 (declare (not safe))
                 (not __tmp51688))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx21833_
                _L21939_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx21833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2186121933_
                                         _hd2186221930_
                                         _hd2185921920_
                                         _hd2185621910_)))
                                    (_g2184021869_ _g2184121873_))
                                (_g2184021869_ _g2184121873_))))
                        (_g2184021869_ _g2184121873_))))
                (_g2184021869_ _g2184121873_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2184021869_
                                                     _g2184121873_))
                                                (_g2184021869_
                                                 _g2184121873_))))
                                        (_g2184021869_ _g2184121873_))))
                                (_g2184021869_ _g2184121873_))))
                        (_g2184021869_ _g2184121873_)))))
            (_g2183922166_ _stx21833_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@method|
      (lambda (_stx22176_)
        (letrec ((_dotted-identifier?22179_
                  (lambda (_id22812_)
                    (if (gx#identifier? _id22812_)
                        (let ((_id-str22815_
                               (symbol->string (gx#stx-e _id22812_))))
                          (if (string-index _id-str22815_ '#\.)
                              (let ((_split22818_
                                     (string-split _id-str22815_ '#\.)))
                                (fx= (length _split22818_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted22181_
                  (lambda (_id22801_)
                    (let* ((_id-str22804_
                            (symbol->string (gx#stx-e _id22801_)))
                           (_split22807_ (string-split _id-str22804_ '#\.)))
                      (let ((__tmp51741
                             (gx#stx-identifier _id22801_ (car _split22807_)))
                            (__tmp51739
                             (let ((__tmp51740
                                    (gx#stx-identifier
                                     _id22801_
                                     (cadr _split22807_))))
                               (declare (not safe))
                               (cons __tmp51740 '()))))
                        (declare (not safe))
                        (cons __tmp51741 __tmp51739))))))
          (let* ((___stx4660846609_ _stx22176_)
                 (_g2218622273_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4660846609_))))
            (let ((___kont4661146612_
                   (lambda (_L22694_ _L22696_ _L22697_)
                     (let* ((_g2272522740_
                             (lambda (_g2272622736_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2272622736_)))
                            (_g2272422793_
                             (lambda (_g2272622744_)
                               (if (gx#stx-pair? _g2272622744_)
                                   (let ((_e2273122747_
                                          (gx#syntax-e _g2272622744_)))
                                     (let ((_hd2273022751_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2273122747_)))
                                           (_tl2272922754_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2273122747_))))
                                       (if (gx#stx-pair? _tl2272922754_)
                                           (let ((_e2273422757_
                                                  (gx#syntax-e
                                                   _tl2272922754_)))
                                             (let ((_hd2273322761_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2273422757_)))
                                                   (_tl2273222764_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2273422757_))))
                                               (if (gx#stx-null?
                                                    _tl2273222764_)
                                                   ((lambda (_L22767_ _L22769_)
                                                      (let ()
                                                        (let ((__tmp51753
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp51742
                                                               (let ((__tmp51752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp51743
                              (let ((__tmp51744
                                     (let ((__tmp51749
                                            (let ((__tmp51751
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp51750
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22767_ '()))))
                                              (declare (not safe))
                                              (cons __tmp51751 __tmp51750)))
                                           (__tmp51745
                                            (let ((__tmp51746
                                                   (let ((__tmp51748
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp51747
                                                          (foldr (lambda (_g2278422787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2278522790_)
                           (let ()
                             (declare (not safe))
                             (cons _g2278422787_ _g2278522790_)))
                         '()
                         _L22696_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp51748
                                                           __tmp51747))))
                                              (declare (not safe))
                                              (cons __tmp51746 '()))))
                                       (declare (not safe))
                                       (cons __tmp51749 __tmp51745))))
                                (declare (not safe))
                                (cons _L22769_ __tmp51744))))
                         (declare (not safe))
                         (cons __tmp51752 __tmp51743))))
                  (declare (not safe))
                  (cons __tmp51753 __tmp51742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2273322761_
                                                    _hd2273022751_)
                                                   (_g2272522740_
                                                    _g2272622744_))))
                                           (_g2272522740_ _g2272622744_))))
                                   (_g2272522740_ _g2272622744_)))))
                       (_g2272422793_ (_split-dotted22181_ _L22697_)))))
                  (___kont4661546616_
                   (lambda (_L22536_ _L22538_)
                     (let* ((_g2255522570_
                             (lambda (_g2255622566_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2255622566_)))
                            (_g2255422623_
                             (lambda (_g2255622574_)
                               (if (gx#stx-pair? _g2255622574_)
                                   (let ((_e2256122577_
                                          (gx#syntax-e _g2255622574_)))
                                     (let ((_hd2256022581_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2256122577_)))
                                           (_tl2255922584_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2256122577_))))
                                       (if (gx#stx-pair? _tl2255922584_)
                                           (let ((_e2256422587_
                                                  (gx#syntax-e
                                                   _tl2255922584_)))
                                             (let ((_hd2256322591_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2256422587_)))
                                                   (_tl2256222594_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2256422587_))))
                                               (if (gx#stx-null?
                                                    _tl2256222594_)
                                                   ((lambda (_L22597_ _L22599_)
                                                      (let ()
                                                        (let ((__tmp51760
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp51754
                                                               (let ((__tmp51755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp51757
                                     (let ((__tmp51759
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp51758
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22597_ '()))))
                                       (declare (not safe))
                                       (cons __tmp51759 __tmp51758)))
                                    (__tmp51756
                                     (foldr (lambda (_g2261422617_
                                                     _g2261522620_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2261422617_
                                                      _g2261522620_)))
                                            '()
                                            _L22536_)))
                                (declare (not safe))
                                (cons __tmp51757 __tmp51756))))
                         (declare (not safe))
                         (cons _L22599_ __tmp51755))))
                  (declare (not safe))
                  (cons __tmp51760 __tmp51754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2256322591_
                                                    _hd2256022581_)
                                                   (_g2255522570_
                                                    _g2255622574_))))
                                           (_g2255522570_ _g2255622574_))))
                                   (_g2255522570_ _g2255622574_)))))
                       (_g2255422623_ (_split-dotted22181_ _L22538_)))))
                  (___kont4661946620_
                   (lambda (_L22440_ _L22442_ _L22443_)
                     (let ((__tmp51772 (gx#datum->syntax '#f 'apply))
                           (__tmp51761
                            (let ((__tmp51771
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp51762
                                   (let ((__tmp51763
                                          (let ((__tmp51768
                                                 (let ((__tmp51770
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp51769
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22443_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp51770
                                                         __tmp51769)))
                                                (__tmp51764
                                                 (let ((__tmp51765
                                                        (let ((__tmp51767
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp51766
                                                               (foldr (lambda (_g2247022473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2247122476_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2247022473_ _g2247122476_)))
                              '()
                              _L22440_)))
                  (declare (not safe))
                  (cons __tmp51767 __tmp51766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp51765 '()))))
                                            (declare (not safe))
                                            (cons __tmp51768 __tmp51764))))
                                     (declare (not safe))
                                     (cons _L22442_ __tmp51763))))
                              (declare (not safe))
                              (cons __tmp51771 __tmp51762))))
                       (declare (not safe))
                       (cons __tmp51772 __tmp51761))))
                  (___kont4662346624_
                   (lambda (_L22340_ _L22342_ _L22343_)
                     (let ((__tmp51779 (gx#datum->syntax '#f 'call-method))
                           (__tmp51773
                            (let ((__tmp51774
                                   (let ((__tmp51776
                                          (let ((__tmp51778
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp51777
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22343_ '()))))
                                            (declare (not safe))
                                            (cons __tmp51778 __tmp51777)))
                                         (__tmp51775
                                          (foldr (lambda (_g2236422367_
                                                          _g2236522370_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2236422367_
                                                           _g2236522370_)))
                                                 '()
                                                 _L22340_)))
                                     (declare (not safe))
                                     (cons __tmp51776 __tmp51775))))
                              (declare (not safe))
                              (cons _L22342_ __tmp51774))))
                       (declare (not safe))
                       (cons __tmp51779 __tmp51773)))))
              (let* ((___match4672746728_
                      (lambda (_e2225222280_
                               _hd2225122284_
                               _tl2225022287_
                               _e2225522290_
                               _hd2225422294_
                               _tl2225322297_
                               _e2225822300_
                               _hd2225722304_
                               _tl2225622307_
                               ___splice4662546626_
                               _target2225922310_
                               _tl2226122313_)
                        (letrec ((_loop2226222316_
                                  (lambda (_hd2226022320_ _arg2226622323_)
                                    (if (gx#stx-pair? _hd2226022320_)
                                        (let ((_e2226322326_
                                               (gx#syntax-e _hd2226022320_)))
                                          (let ((_lp-tl2226522333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2226322326_)))
                                                (_lp-hd2226422330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2226322326_))))
                                            (_loop2226222316_
                                             _lp-tl2226522333_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2226422330_
                                                     _arg2226622323_)))))
                                        (let ((_arg2226722336_
                                               (reverse _arg2226622323_)))
                                          (let ((_L22340_ _arg2226722336_)
                                                (_L22342_ _hd2225722304_)
                                                (_L22343_ _hd2225422294_))
                                            (if (gx#identifier? _L22343_)
                                                (___kont4662346624_
                                                 _L22340_
                                                 _L22342_
                                                 _L22343_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2218622273_)))))))))
                          (_loop2226222316_ _target2225922310_ '()))))
                     (___match4670146702_
                      (lambda (_e2223122380_
                               _hd2223022384_
                               _tl2222922387_
                               _e2223422390_
                               _hd2223322394_
                               _tl2223222397_
                               _e2223722400_
                               _hd2223622404_
                               _tl2223522407_
                               ___splice4662146622_
                               _target2223822410_
                               _tl2224022413_)
                        (letrec ((_loop2224122416_
                                  (lambda (_hd2223922420_ _arg2224522423_)
                                    (if (gx#stx-pair? _hd2223922420_)
                                        (let ((_e2224222426_
                                               (gx#syntax-e _hd2223922420_)))
                                          (let ((_lp-tl2224422433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2224222426_)))
                                                (_lp-hd2224322430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2224222426_))))
                                            (_loop2224122416_
                                             _lp-tl2224422433_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2224322430_
                                                     _arg2224522423_)))))
                                        (let ((_arg2224622436_
                                               (reverse _arg2224522423_)))
                                          (let ((_L22440_ _arg2224622436_)
                                                (_L22442_ _hd2223622404_)
                                                (_L22443_ _hd2223322394_))
                                            (if (and (gx#identifier? _L22443_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g2246222465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2246322468_)
                       (let ()
                         (declare (not safe))
                         (cons _g2246222465_ _g2246322468_)))
                     '()
                     _L22440_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4661946620_
                                                 _L22440_
                                                 _L22442_
                                                 _L22443_)
                                                (___match4672746728_
                                                 _e2223122380_
                                                 _hd2223022384_
                                                 _tl2222922387_
                                                 _e2223422390_
                                                 _hd2223322394_
                                                 _tl2223222397_
                                                 _e2223722400_
                                                 _hd2223622404_
                                                 _tl2223522407_
                                                 ___splice4662146622_
                                                 _target2223822410_
                                                 _tl2224022413_))))))))
                          (_loop2224122416_ _target2223822410_ '()))))
                     (___match4668746688_
                      (lambda (_e2223122380_
                               _hd2223022384_
                               _tl2222922387_
                               _e2223422390_
                               _hd2223322394_
                               _tl2223222397_)
                        (if (gx#stx-pair? _tl2223222397_)
                            (let ((_e2223722400_ (gx#syntax-e _tl2223222397_)))
                              (let ((_tl2223522407_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2223722400_)))
                                    (_hd2223622404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2223722400_))))
                                (if (gx#stx-pair/null? _tl2223522407_)
                                    (let ((___splice4662146622_
                                           (gx#syntax-split-splice
                                            _tl2223522407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4662146622_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4662146622_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4670146702_
                                             _e2223122380_
                                             _hd2223022384_
                                             _tl2222922387_
                                             _e2223422390_
                                             _hd2223322394_
                                             _tl2223222397_
                                             _e2223722400_
                                             _hd2223622404_
                                             _tl2223522407_
                                             ___splice4662146622_
                                             _target2223822410_
                                             _tl2224022413_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2218622273_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                     (___match4667546676_
                      (lambda (_e2221322486_
                               _hd2221222490_
                               _tl2221122493_
                               _e2221622496_
                               _hd2221522500_
                               _tl2221422503_
                               ___splice4661746618_
                               _target2221722506_
                               _tl2221922509_)
                        (letrec ((_loop2222022512_
                                  (lambda (_hd2221822516_ _arg2222422519_)
                                    (if (gx#stx-pair? _hd2221822516_)
                                        (let ((_e2222122522_
                                               (gx#syntax-e _hd2221822516_)))
                                          (let ((_lp-tl2222322529_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2222122522_)))
                                                (_lp-hd2222222526_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2222122522_))))
                                            (_loop2222022512_
                                             _lp-tl2222322529_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2222222526_
                                                     _arg2222422519_)))))
                                        (let ((_arg2222522532_
                                               (reverse _arg2222422519_)))
                                          (let ((_L22536_ _arg2222522532_)
                                                (_L22538_ _hd2221522500_))
                                            (if (_dotted-identifier?22179_
                                                 _L22538_)
                                                (___kont4661546616_
                                                 _L22536_
                                                 _L22538_)
                                                (___match4668746688_
                                                 _e2221322486_
                                                 _hd2221222490_
                                                 _tl2221122493_
                                                 _e2221622496_
                                                 _hd2221522500_
                                                 _tl2221422503_))))))))
                          (_loop2222022512_ _target2221722506_ '()))))
                     (___match4667346674_
                      (lambda (_e2221322486_
                               _hd2221222490_
                               _tl2221122493_
                               _e2221622496_
                               _hd2221522500_
                               _tl2221422503_
                               ___splice4661746618_
                               _target2221722506_
                               _tl2221922509_)
                        (if (gx#stx-null? _tl2221922509_)
                            (___match4667546676_
                             _e2221322486_
                             _hd2221222490_
                             _tl2221122493_
                             _e2221622496_
                             _hd2221522500_
                             _tl2221422503_
                             ___splice4661746618_
                             _target2221722506_
                             _tl2221922509_)
                            (if (gx#stx-pair? _tl2221422503_)
                                (let ((_e2223722400_
                                       (gx#syntax-e _tl2221422503_)))
                                  (let ((_tl2223522407_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2223722400_)))
                                        (_hd2223622404_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2223722400_))))
                                    (if (gx#stx-pair/null? _tl2223522407_)
                                        (let ((___splice4662146622_
                                               (gx#syntax-split-splice
                                                _tl2223522407_
                                                '0)))
                                          (let ((_tl2224022413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4662146622_
                                                    '1)))
                                                (_target2223822410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4662146622_
                                                    '0))))
                                            (if (gx#stx-null? _tl2224022413_)
                                                (___match4670146702_
                                                 _e2221322486_
                                                 _hd2221222490_
                                                 _tl2221122493_
                                                 _e2221622496_
                                                 _hd2221522500_
                                                 _tl2221422503_
                                                 _e2223722400_
                                                 _hd2223622404_
                                                 _tl2223522407_
                                                 ___splice4662146622_
                                                 _target2223822410_
                                                 _tl2224022413_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2218622273_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2218622273_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2218622273_))))))
                     (___match4665546656_
                      (lambda (_e2219322634_
                               _hd2219222638_
                               _tl2219122641_
                               _e2219622644_
                               _hd2219522648_
                               _tl2219422651_
                               ___splice4661346614_
                               _target2219722654_
                               _tl2219922657_
                               _e2220822660_
                               _hd2220722664_
                               _tl2220622667_)
                        (letrec ((_loop2220022670_
                                  (lambda (_hd2219822674_ _arg2220422677_)
                                    (if (gx#stx-pair? _hd2219822674_)
                                        (let ((_e2220122680_
                                               (gx#syntax-e _hd2219822674_)))
                                          (let ((_lp-tl2220322687_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2220122680_)))
                                                (_lp-hd2220222684_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2220122680_))))
                                            (_loop2220022670_
                                             _lp-tl2220322687_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2220222684_
                                                     _arg2220422677_)))))
                                        (let ((_arg2220522690_
                                               (reverse _arg2220422677_)))
                                          (let ((_L22694_ _hd2220722664_)
                                                (_L22696_ _arg2220522690_)
                                                (_L22697_ _hd2219522648_))
                                            (if (and (_dotted-identifier?22179_
                                                      _L22697_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g2271622719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2271722722_)
                       (let ()
                         (declare (not safe))
                         (cons _g2271622719_ _g2271722722_)))
                     '()
                     _L22696_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4661146612_
                                                 _L22694_
                                                 _L22696_
                                                 _L22697_)
                                                (let ((___splice4661746618_
                                                       (gx#syntax-split-splice
                                                        _tl2219422651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4661746618_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4661746618_
                                                            '0))))
                                                    (___match4667346674_
                                                     _e2219322634_
                                                     _hd2219222638_
                                                     _tl2219122641_
                                                     _e2219622644_
                                                     _hd2219522648_
                                                     _tl2219422651_
                                                     ___splice4661746618_
                                                     _target2221722506_
                                                     _tl2221922509_))))))))))
                          (_loop2220022670_ _target2219722654_ '())))))
                (if (gx#stx-pair? ___stx4660846609_)
                    (let ((_e2219322634_ (gx#syntax-e ___stx4660846609_)))
                      (let ((_tl2219122641_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2219322634_)))
                            (_hd2219222638_
                             (let ()
                               (declare (not safe))
                               (##car _e2219322634_))))
                        (if (gx#stx-pair? _tl2219122641_)
                            (let ((_e2219622644_ (gx#syntax-e _tl2219122641_)))
                              (let ((_tl2219422651_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2219622644_)))
                                    (_hd2219522648_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2219622644_))))
                                (if (gx#stx-pair/null? _tl2219422651_)
                                    (if (fx>= (gx#stx-length _tl2219422651_)
                                              '1)
                                        (let ((___splice4661346614_
                                               (gx#syntax-split-splice
                                                _tl2219422651_
                                                '1)))
                                          (let ((_tl2219922657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4661346614_
                                                    '1)))
                                                (_target2219722654_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4661346614_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2219922657_)
                                                (let ((_e2220822660_
                                                       (gx#syntax-e
                                                        _tl2219922657_)))
                                                  (let ((_tl2220622667_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2220822660_)))
                                                        (_hd2220722664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2220822660_))))
                                                    (if (gx#stx-null?
                                                         _tl2220622667_)
                                                        (___match4665546656_
                                                         _e2219322634_
                                                         _hd2219222638_
                                                         _tl2219122641_
                                                         _e2219622644_
                                                         _hd2219522648_
                                                         _tl2219422651_
                                                         ___splice4661346614_
                                                         _target2219722654_
                                                         _tl2219922657_
                                                         _e2220822660_
                                                         _hd2220722664_
                                                         _tl2220622667_)
                                                        (let ((___splice4661746618_
                                                               (gx#syntax-split-splice
                                                                _tl2219422651_
                                                                '0)))
                                                          (let ((_tl2221922509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4661746618_ '1)))
                        (_target2221722506_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4661746618_ '0))))
                    (if (gx#stx-null? _tl2221922509_)
                        (___match4667546676_
                         _e2219322634_
                         _hd2219222638_
                         _tl2219122641_
                         _e2219622644_
                         _hd2219522648_
                         _tl2219422651_
                         ___splice4661746618_
                         _target2221722506_
                         _tl2221922509_)
                        (if (gx#stx-pair? _tl2219422651_)
                            (let ((_e2223722400_ (gx#syntax-e _tl2219422651_)))
                              (let ((_tl2223522407_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2223722400_)))
                                    (_hd2223622404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2223722400_))))
                                (if (gx#stx-pair/null? _tl2223522407_)
                                    (let ((___splice4662146622_
                                           (gx#syntax-split-splice
                                            _tl2223522407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4662146622_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4662146622_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4670146702_
                                             _e2219322634_
                                             _hd2219222638_
                                             _tl2219122641_
                                             _e2219622644_
                                             _hd2219522648_
                                             _tl2219422651_
                                             _e2223722400_
                                             _hd2223622404_
                                             _tl2223522407_
                                             ___splice4662146622_
                                             _target2223822410_
                                             _tl2224022413_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2218622273_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let ()
                              (declare (not safe))
                              (_g2218622273_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice4661746618_
                                                       (gx#syntax-split-splice
                                                        _tl2219422651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4661746618_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4661746618_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2221922509_)
                                                        (___match4667546676_
                                                         _e2219322634_
                                                         _hd2219222638_
                                                         _tl2219122641_
                                                         _e2219622644_
                                                         _hd2219522648_
                                                         _tl2219422651_
                                                         ___splice4661746618_
                                                         _target2221722506_
                                                         _tl2221922509_)
                                                        (if (gx#stx-pair?
                                                             _tl2219422651_)
                                                            (let ((_e2223722400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2219422651_)))
                      (let ((_tl2223522407_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2223722400_)))
                            (_hd2223622404_
                             (let ()
                               (declare (not safe))
                               (##car _e2223722400_))))
                        (if (gx#stx-pair/null? _tl2223522407_)
                            (let ((___splice4662146622_
                                   (gx#syntax-split-splice _tl2223522407_ '0)))
                              (let ((_tl2224022413_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4662146622_ '1)))
                                    (_target2223822410_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4662146622_
                                        '0))))
                                (if (gx#stx-null? _tl2224022413_)
                                    (___match4670146702_
                                     _e2219322634_
                                     _hd2219222638_
                                     _tl2219122641_
                                     _e2219622644_
                                     _hd2219522648_
                                     _tl2219422651_
                                     _e2223722400_
                                     _hd2223622404_
                                     _tl2223522407_
                                     ___splice4662146622_
                                     _target2223822410_
                                     _tl2224022413_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                    (let () (declare (not safe)) (_g2218622273_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4661746618_
                                               (gx#syntax-split-splice
                                                _tl2219422651_
                                                '0)))
                                          (let ((_tl2221922509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4661746618_
                                                    '1)))
                                                (_target2221722506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4661746618_
                                                    '0))))
                                            (if (gx#stx-null? _tl2221922509_)
                                                (___match4667546676_
                                                 _e2219322634_
                                                 _hd2219222638_
                                                 _tl2219122641_
                                                 _e2219622644_
                                                 _hd2219522648_
                                                 _tl2219422651_
                                                 ___splice4661746618_
                                                 _target2221722506_
                                                 _tl2221922509_)
                                                (if (gx#stx-pair?
                                                     _tl2219422651_)
                                                    (let ((_e2223722400_
                                                           (gx#syntax-e
                                                            _tl2219422651_)))
                                                      (let ((_tl2223522407_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2223722400_)))
                    (_hd2223622404_
                     (let () (declare (not safe)) (##car _e2223722400_))))
                (if (gx#stx-pair/null? _tl2223522407_)
                    (let ((___splice4662146622_
                           (gx#syntax-split-splice _tl2223522407_ '0)))
                      (let ((_tl2224022413_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4662146622_ '1)))
                            (_target2223822410_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4662146622_ '0))))
                        (if (gx#stx-null? _tl2224022413_)
                            (___match4670146702_
                             _e2219322634_
                             _hd2219222638_
                             _tl2219122641_
                             _e2219622644_
                             _hd2219522648_
                             _tl2219422651_
                             _e2223722400_
                             _hd2223622404_
                             _tl2223522407_
                             ___splice4662146622_
                             _target2223822410_
                             _tl2224022413_)
                            (let () (declare (not safe)) (_g2218622273_)))))
                    (let () (declare (not safe)) (_g2218622273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2218622273_)))))))
                                    (if (gx#stx-pair? _tl2219422651_)
                                        (let ((_e2223722400_
                                               (gx#syntax-e _tl2219422651_)))
                                          (let ((_tl2223522407_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2223722400_)))
                                                (_hd2223622404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2223722400_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2223522407_)
                                                (let ((___splice4662146622_
                                                       (gx#syntax-split-splice
                                                        _tl2223522407_
                                                        '0)))
                                                  (let ((_tl2224022413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4662146622_
                                                            '1)))
                                                        (_target2223822410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4662146622_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2224022413_)
                                                        (___match4670146702_
                                                         _e2219322634_
                                                         _hd2219222638_
                                                         _tl2219122641_
                                                         _e2219622644_
                                                         _hd2219522648_
                                                         _tl2219422651_
                                                         _e2223722400_
                                                         _hd2223622404_
                                                         _tl2223522407_
                                                         ___splice4662146622_
                                                         _target2223822410_
                                                         _tl2224022413_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2218622273_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2218622273_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2218622273_))))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                    (let () (declare (not safe)) (_g2218622273_)))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@|
      (lambda (_$stx22825_)
        (let* ((___stx4673046731_ _$stx22825_)
               (_g2283022870_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4673046731_))))
          (let ((___kont4673346734_
                 (lambda (_L23008_ _L23010_)
                   (let ((__tmp51785 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp51780
                          (let ((__tmp51781
                                 (let ((__tmp51782
                                        (let ((__tmp51784
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp51783
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23008_ '()))))
                                          (declare (not safe))
                                          (cons __tmp51784 __tmp51783))))
                                   (declare (not safe))
                                   (cons __tmp51782 '()))))
                            (declare (not safe))
                            (cons _L23010_ __tmp51781))))
                     (declare (not safe))
                     (cons __tmp51785 __tmp51780))))
                (___kont4673546736_
                 (lambda (_L22937_ _L22939_ _L22940_ _L22941_)
                   (let ((__tmp51786
                          (let ((__tmp51788
                                 (let ((__tmp51789
                                        (let ((__tmp51790
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22939_ '()))))
                                          (declare (not safe))
                                          (cons _L22940_ __tmp51790))))
                                   (declare (not safe))
                                   (cons _L22941_ __tmp51789)))
                                (__tmp51787
                                 (foldr (lambda (_g2296222965_ _g2296322968_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2296222965_
                                                  _g2296322968_)))
                                        '()
                                        _L22937_)))
                            (declare (not safe))
                            (cons __tmp51788 __tmp51787))))
                     (declare (not safe))
                     (cons _L22941_ __tmp51786)))))
            (let* ((___match4678546786_
                    (lambda (_e2284922877_
                             _hd2284822881_
                             _tl2284722884_
                             _e2285222887_
                             _hd2285122891_
                             _tl2285022894_
                             _e2285522897_
                             _hd2285422901_
                             _tl2285322904_
                             ___splice4673746738_
                             _target2285622907_
                             _tl2285822910_)
                      (letrec ((_loop2285922913_
                                (lambda (_hd2285722917_ _rest2286322920_)
                                  (if (gx#stx-pair? _hd2285722917_)
                                      (let ((_e2286022923_
                                             (gx#syntax-e _hd2285722917_)))
                                        (let ((_lp-tl2286222930_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2286022923_)))
                                              (_lp-hd2286122927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2286022923_))))
                                          (_loop2285922913_
                                           _lp-tl2286222930_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2286122927_
                                                   _rest2286322920_)))))
                                      (let ((_rest2286422933_
                                             (reverse _rest2286322920_)))
                                        (___kont4673546736_
                                         _rest2286422933_
                                         _hd2285422901_
                                         _hd2285122891_
                                         _hd2284822881_))))))
                        (_loop2285922913_ _target2285622907_ '()))))
                   (___match4675946760_
                    (lambda (_e2283622978_
                             _hd2283522982_
                             _tl2283422985_
                             _e2283922988_
                             _hd2283822992_
                             _tl2283722995_
                             _e2284222998_
                             _hd2284123002_
                             _tl2284023005_)
                      (let ((_L23008_ _hd2284123002_)
                            (_L23010_ _hd2283822992_))
                        (if (gx#identifier? _L23008_)
                            (___kont4673346734_ _L23008_ _L23010_)
                            (if (gx#stx-pair/null? _tl2284023005_)
                                (let ((___splice4673746738_
                                       (gx#syntax-split-splice
                                        _tl2284023005_
                                        '0)))
                                  (let ((_tl2285822910_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4673746738_
                                            '1)))
                                        (_target2285622907_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4673746738_
                                            '0))))
                                    (if (gx#stx-null? _tl2285822910_)
                                        (___match4678546786_
                                         _e2283622978_
                                         _hd2283522982_
                                         _tl2283422985_
                                         _e2283922988_
                                         _hd2283822992_
                                         _tl2283722995_
                                         _e2284222998_
                                         _hd2284123002_
                                         _tl2284023005_
                                         ___splice4673746738_
                                         _target2285622907_
                                         _tl2285822910_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2283022870_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2283022870_))))))))
              (if (gx#stx-pair? ___stx4673046731_)
                  (let ((_e2283622978_ (gx#syntax-e ___stx4673046731_)))
                    (let ((_tl2283422985_
                           (let () (declare (not safe)) (##cdr _e2283622978_)))
                          (_hd2283522982_
                           (let ()
                             (declare (not safe))
                             (##car _e2283622978_))))
                      (if (gx#stx-pair? _tl2283422985_)
                          (let ((_e2283922988_ (gx#syntax-e _tl2283422985_)))
                            (let ((_tl2283722995_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2283922988_)))
                                  (_hd2283822992_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2283922988_))))
                              (if (gx#stx-pair? _tl2283722995_)
                                  (let ((_e2284222998_
                                         (gx#syntax-e _tl2283722995_)))
                                    (let ((_tl2284023005_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2284222998_)))
                                          (_hd2284123002_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2284222998_))))
                                      (if (gx#stx-null? _tl2284023005_)
                                          (___match4675946760_
                                           _e2283622978_
                                           _hd2283522982_
                                           _tl2283422985_
                                           _e2283922988_
                                           _hd2283822992_
                                           _tl2283722995_
                                           _e2284222998_
                                           _hd2284123002_
                                           _tl2284023005_)
                                          (if (gx#stx-pair/null?
                                               _tl2284023005_)
                                              (let ((___splice4673746738_
                                                     (gx#syntax-split-splice
                                                      _tl2284023005_
                                                      '0)))
                                                (let ((_tl2285822910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4673746738_
                                                          '1)))
                                                      (_target2285622907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4673746738_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2285822910_)
                                                      (___match4678546786_
                                                       _e2283622978_
                                                       _hd2283522982_
                                                       _tl2283422985_
                                                       _e2283922988_
                                                       _hd2283822992_
                                                       _tl2283722995_
                                                       _e2284222998_
                                                       _hd2284123002_
                                                       _tl2284023005_
                                                       ___splice4673746738_
                                                       _target2285622907_
                                                       _tl2285822910_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2283022870_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2283022870_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2283022870_)))))
                          (let () (declare (not safe)) (_g2283022870_)))))
                  (let () (declare (not safe)) (_g2283022870_))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@-set!|
      (lambda (_$stx23030_)
        (let* ((___stx4678846789_ _$stx23030_)
               (_g2303523087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4678846789_))))
          (let ((___kont4679146792_
                 (lambda (_L23263_ _L23265_ _L23266_)
                   (let ((__tmp51797 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp51791
                          (let ((__tmp51792
                                 (let ((__tmp51794
                                        (let ((__tmp51796
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp51795
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23265_ '()))))
                                          (declare (not safe))
                                          (cons __tmp51796 __tmp51795)))
                                       (__tmp51793
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23263_ '()))))
                                   (declare (not safe))
                                   (cons __tmp51794 __tmp51793))))
                            (declare (not safe))
                            (cons _L23266_ __tmp51792))))
                     (declare (not safe))
                     (cons __tmp51797 __tmp51791))))
                (___kont4679346794_
                 (lambda (_L23174_
                          _L23176_
                          _L23177_
                          _L23178_
                          _L23179_
                          _L23180_)
                   (let ((__tmp51798
                          (let ((__tmp51801
                                 (let ((__tmp51805 (gx#datum->syntax '#f '@))
                                       (__tmp51802
                                        (let ((__tmp51803
                                               (let ((__tmp51804
                                                      (foldr (lambda (_g2320723210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2320823213_)
                       (let ()
                         (declare (not safe))
                         (cons _g2320723210_ _g2320823213_)))
                     '()
                     _L23177_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L23178_ __tmp51804))))
                                          (declare (not safe))
                                          (cons _L23179_ __tmp51803))))
                                   (declare (not safe))
                                   (cons __tmp51805 __tmp51802)))
                                (__tmp51799
                                 (let ((__tmp51800
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23174_ '()))))
                                   (declare (not safe))
                                   (cons _L23176_ __tmp51800))))
                            (declare (not safe))
                            (cons __tmp51801 __tmp51799))))
                     (declare (not safe))
                     (cons _L23180_ __tmp51798)))))
            (let* ((___match4686346864_
                    (lambda (_e2306023094_
                             _hd2305923098_
                             _tl2305823101_
                             _e2306323104_
                             _hd2306223108_
                             _tl2306123111_
                             _e2306623114_
                             _hd2306523118_
                             _tl2306423121_
                             ___splice4679546796_
                             _target2306723124_
                             _tl2306923127_
                             _e2307823130_
                             _hd2307723134_
                             _tl2307623137_
                             _e2308123140_
                             _hd2308023144_
                             _tl2307923147_)
                      (letrec ((_loop2307023150_
                                (lambda (_hd2306823154_ _path2307423157_)
                                  (if (gx#stx-pair? _hd2306823154_)
                                      (let ((_e2307123160_
                                             (gx#syntax-e _hd2306823154_)))
                                        (let ((_lp-tl2307323167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2307123160_)))
                                              (_lp-hd2307223164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2307123160_))))
                                          (_loop2307023150_
                                           _lp-tl2307323167_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2307223164_
                                                   _path2307423157_)))))
                                      (let ((_path2307523170_
                                             (reverse _path2307423157_)))
                                        (___kont4679346794_
                                         _hd2308023144_
                                         _hd2307723134_
                                         _path2307523170_
                                         _hd2306523118_
                                         _hd2306223108_
                                         _hd2305923098_))))))
                        (_loop2307023150_ _target2306723124_ '()))))
                   (___match4682346824_
                    (lambda (_e2304223223_
                             _hd2304123227_
                             _tl2304023230_
                             _e2304523233_
                             _hd2304423237_
                             _tl2304323240_
                             _e2304823243_
                             _hd2304723247_
                             _tl2304623250_
                             _e2305123253_
                             _hd2305023257_
                             _tl2304923260_)
                      (let ((_L23263_ _hd2305023257_)
                            (_L23265_ _hd2304723247_)
                            (_L23266_ _hd2304423237_))
                        (if (gx#identifier? _L23265_)
                            (___kont4679146792_ _L23263_ _L23265_ _L23266_)
                            (if (gx#stx-pair/null? _tl2304623250_)
                                (if (fx>= (gx#stx-length _tl2304623250_) '2)
                                    (let ((___splice4679546796_
                                           (gx#syntax-split-splice
                                            _tl2304623250_
                                            '2)))
                                      (let ((_tl2306923127_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4679546796_
                                                '1)))
                                            (_target2306723124_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4679546796_
                                                '0))))
                                        (if (gx#stx-pair? _tl2306923127_)
                                            (let ((_e2307823130_
                                                   (gx#syntax-e
                                                    _tl2306923127_)))
                                              (let ((_tl2307623137_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2307823130_)))
                                                    (_hd2307723134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2307823130_))))
                                                (if (gx#stx-pair?
                                                     _tl2307623137_)
                                                    (let ((_e2308123140_
                                                           (gx#syntax-e
                                                            _tl2307623137_)))
                                                      (let ((_tl2307923147_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2308123140_)))
                    (_hd2308023144_
                     (let () (declare (not safe)) (##car _e2308123140_))))
                (if (gx#stx-null? _tl2307923147_)
                    (___match4686346864_
                     _e2304223223_
                     _hd2304123227_
                     _tl2304023230_
                     _e2304523233_
                     _hd2304423237_
                     _tl2304323240_
                     _e2304823243_
                     _hd2304723247_
                     _tl2304623250_
                     ___splice4679546796_
                     _target2306723124_
                     _tl2306923127_
                     _e2307823130_
                     _hd2307723134_
                     _tl2307623137_
                     _e2308123140_
                     _hd2308023144_
                     _tl2307923147_)
                    (let () (declare (not safe)) (_g2303523087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2303523087_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2303523087_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2303523087_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2303523087_))))))))
              (if (gx#stx-pair? ___stx4678846789_)
                  (let ((_e2304223223_ (gx#syntax-e ___stx4678846789_)))
                    (let ((_tl2304023230_
                           (let () (declare (not safe)) (##cdr _e2304223223_)))
                          (_hd2304123227_
                           (let ()
                             (declare (not safe))
                             (##car _e2304223223_))))
                      (if (gx#stx-pair? _tl2304023230_)
                          (let ((_e2304523233_ (gx#syntax-e _tl2304023230_)))
                            (let ((_tl2304323240_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2304523233_)))
                                  (_hd2304423237_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2304523233_))))
                              (if (gx#stx-pair? _tl2304323240_)
                                  (let ((_e2304823243_
                                         (gx#syntax-e _tl2304323240_)))
                                    (let ((_tl2304623250_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2304823243_)))
                                          (_hd2304723247_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2304823243_))))
                                      (if (gx#stx-pair? _tl2304623250_)
                                          (let ((_e2305123253_
                                                 (gx#syntax-e _tl2304623250_)))
                                            (let ((_tl2304923260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2305123253_)))
                                                  (_hd2305023257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2305123253_))))
                                              (if (gx#stx-null? _tl2304923260_)
                                                  (___match4682346824_
                                                   _e2304223223_
                                                   _hd2304123227_
                                                   _tl2304023230_
                                                   _e2304523233_
                                                   _hd2304423237_
                                                   _tl2304323240_
                                                   _e2304823243_
                                                   _hd2304723247_
                                                   _tl2304623250_
                                                   _e2305123253_
                                                   _hd2305023257_
                                                   _tl2304923260_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2304623250_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2304623250_)
                        '2)
                  (let ((___splice4679546796_
                         (gx#syntax-split-splice _tl2304623250_ '2)))
                    (let ((_tl2306923127_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4679546796_ '1)))
                          (_target2306723124_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4679546796_ '0))))
                      (if (gx#stx-pair? _tl2306923127_)
                          (let ((_e2307823130_ (gx#syntax-e _tl2306923127_)))
                            (let ((_tl2307623137_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2307823130_)))
                                  (_hd2307723134_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2307823130_))))
                              (if (gx#stx-pair? _tl2307623137_)
                                  (let ((_e2308123140_
                                         (gx#syntax-e _tl2307623137_)))
                                    (let ((_tl2307923147_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2308123140_)))
                                          (_hd2308023144_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2308123140_))))
                                      (if (gx#stx-null? _tl2307923147_)
                                          (___match4686346864_
                                           _e2304223223_
                                           _hd2304123227_
                                           _tl2304023230_
                                           _e2304523233_
                                           _hd2304423237_
                                           _tl2304323240_
                                           _e2304823243_
                                           _hd2304723247_
                                           _tl2304623250_
                                           ___splice4679546796_
                                           _target2306723124_
                                           _tl2306923127_
                                           _e2307823130_
                                           _hd2307723134_
                                           _tl2307623137_
                                           _e2308123140_
                                           _hd2308023144_
                                           _tl2307923147_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2303523087_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2303523087_)))))
                          (let () (declare (not safe)) (_g2303523087_)))))
                  (let () (declare (not safe)) (_g2303523087_)))
              (let () (declare (not safe)) (_g2303523087_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2304623250_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2304623250_)
                                                        '2)
                                                  (let ((___splice4679546796_
                                                         (gx#syntax-split-splice
                                                          _tl2304623250_
                                                          '2)))
                                                    (let ((_tl2306923127_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4679546796_
                                                              '1)))
                                                          (_target2306723124_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4679546796_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2306923127_)
                                                          (let ((_e2307823130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2306923127_)))
                    (let ((_tl2307623137_
                           (let () (declare (not safe)) (##cdr _e2307823130_)))
                          (_hd2307723134_
                           (let ()
                             (declare (not safe))
                             (##car _e2307823130_))))
                      (if (gx#stx-pair? _tl2307623137_)
                          (let ((_e2308123140_ (gx#syntax-e _tl2307623137_)))
                            (let ((_tl2307923147_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2308123140_)))
                                  (_hd2308023144_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2308123140_))))
                              (if (gx#stx-null? _tl2307923147_)
                                  (___match4686346864_
                                   _e2304223223_
                                   _hd2304123227_
                                   _tl2304023230_
                                   _e2304523233_
                                   _hd2304423237_
                                   _tl2304323240_
                                   _e2304823243_
                                   _hd2304723247_
                                   _tl2304623250_
                                   ___splice4679546796_
                                   _target2306723124_
                                   _tl2306923127_
                                   _e2307823130_
                                   _hd2307723134_
                                   _tl2307623137_
                                   _e2308123140_
                                   _hd2308023144_
                                   _tl2307923147_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2303523087_)))))
                          (let () (declare (not safe)) (_g2303523087_)))))
                  (let () (declare (not safe)) (_g2303523087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2303523087_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2303523087_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2303523087_)))))
                          (let () (declare (not safe)) (_g2303523087_)))))
                  (let () (declare (not safe)) (_g2303523087_))))))))))
