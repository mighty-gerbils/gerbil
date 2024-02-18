(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g48756_|
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
                       (lambda _g48461_ (gx#genident _id19361_))
                       (lambda _args21569_
                         (apply gx#stx-identifier _id19361_ _args21569_))))
                  (_get-mixin-slots19369_
                   (lambda (_super21543_ _slots21545_)
                     (letrec* ((_tab21547_ (make-hash-table-eq))
                               (_dedup21549_
                                (lambda (_mixins21554_)
                                  (let _lp21557_ ((_rest21560_ _mixins21554_)
                                                  (_r21562_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest21560_))
                                        (let ((_slot21564_ (car _rest21560_)))
                                          (if (hash-get _tab21547_ _slot21564_)
                                              (let ((__tmp48462
                                                     (cdr _rest21560_)))
                                                (declare (not safe))
                                                (_lp21557_
                                                 __tmp48462
                                                 _r21562_))
                                              (begin
                                                (hash-put!
                                                 _tab21547_
                                                 _slot21564_
                                                 '#t)
                                                (let ((__tmp48464
                                                       (cdr _rest21560_))
                                                      (__tmp48463
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21564_
                                                               _r21562_))))
                                                  (declare (not safe))
                                                  (_lp21557_
                                                   __tmp48464
                                                   __tmp48463)))))
                                        (reverse _r21562_))))))
                       (gx#stx-for-each
                        (lambda (_slot21551_)
                          (hash-put! _tab21547_ (gx#stx-e _slot21551_) '#t))
                        _slots21545_)
                       (if (let () (declare (not safe)) (not _super21543_))
                           '()
                           (if (gx#identifier? _super21543_)
                               (let ((__tmp48465
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19370_
                                         _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp48465))
                               (let ((__tmp48466
                                      (concatenate
                                       (map _get-mixin-slots-r19370_
                                            _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp48466)))))))
                  (_get-mixin-slots-r19370_
                   (lambda (_type-id21537_)
                     (let ((_info21540_
                            (gx#syntax-local-value _type-id21537_)))
                       (append (let ((__obj47023 _info21540_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj47023
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj47023
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj47023
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19370_
                                     (let ((__obj47024 _info21540_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj47024
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj47024
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj47024
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
                                                           (let ((_g48467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g1952519545_ '0)))
                     (begin
                       (let ((_g48468_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g48467_)
                                    (##vector-length _g48467_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g48468_ 2)))
                             (error "Context expects 2 values" _g48468_)))
                       (let ((_target1952719548_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g48467_ 0)))
                             (_tl1952919551_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g48467_ 1))))
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
                                                 (let ((__tmp48469
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1953219568_
                                                                _slot1953419561_))))
                                                   (declare (not safe))
                                                   (_loop1953019554_
                                                    _lp-tl1953319571_
                                                    __tmp48469))))
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
                          (let ((_g48470_
                                 (gx#syntax-split-splice _g1959619616_ '0)))
                            (begin
                              (let ((_g48471_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g48470_)
                                           (##vector-length _g48470_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g48471_ 2)))
                                    (error "Context expects 2 values"
                                           _g48471_)))
                              (let ((_target1959819619_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g48470_ 0)))
                                    (_tl1960019622_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g48470_ 1))))
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
                (let ((__tmp48472
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1960319639_ _getf1960519632_))))
                  (declare (not safe))
                  (_loop1960119625_ _lp-tl1960419642_ __tmp48472))))
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
                                 (let ((_g48473_
                                        (gx#syntax-split-splice
                                         _g1966719687_
                                         '0)))
                                   (begin
                                     (let ((_g48474_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g48473_)
                                                  (##vector-length _g48473_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g48474_ 2)))
                                           (error "Context expects 2 values"
                                                  _g48474_)))
                                     (let ((_target1966919690_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g48473_ 0)))
                                           (_tl1967119693_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g48473_ 1))))
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
                       (let ((__tmp48475
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd1967419710_ _setf1967619703_))))
                         (declare (not safe))
                         (_loop1967219696_ _lp-tl1967519713_ __tmp48475))))
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
                                        (let ((_g48476_
                                               (gx#syntax-split-splice
                                                _g1974119761_
                                                '0)))
                                          (begin
                                            (let ((_g48477_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g48476_)
                                                         (##vector-length
                                                          _g48476_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g48477_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g48477_)))
                                            (let ((_target1974319764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g48476_
                                                      0)))
                                                  (_tl1974519767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g48476_
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
                              (let ((__tmp48478
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1974819784_
                                             _mixin-slot1975019777_))))
                                (declare (not safe))
                                (_loop1974619770_
                                 _lp-tl1974919787_
                                 __tmp48478))))
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
                                               (let ((_g48479_
                                                      (gx#syntax-split-splice
                                                       _g1981319833_
                                                       '0)))
                                                 (begin
                                                   (let ((_g48480_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g48479_)
                        (##vector-length _g48479_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g48480_ 2)))
                 (error "Context expects 2 values" _g48480_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1981519836_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g48479_
                                                             0)))
                                                         (_tl1981719839_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g48479_
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
                                     (let ((__tmp48481
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd1982019856_
                                                    _mixin-getf1982219849_))))
                                       (declare (not safe))
                                       (_loop1981819842_
                                        _lp-tl1982119859_
                                        __tmp48481))))
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
                                                      (let ((_g48482_
                                                             (gx#syntax-split-splice
                                                              _g1988419904_
                                                              '0)))
                                                        (begin
                                                          (let ((_g48483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g48482_)
                               (##vector-length _g48482_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g48483_ 2)))
                        (error "Context expects 2 values" _g48483_)))
                  (let ((_target1988619907_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g48482_ 0)))
                        (_tl1988819910_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g48482_ 1))))
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
                                            (let ((__tmp48484
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd1989119927_
                                                           _mixin-setf1989319920_))))
                                              (declare (not safe))
                                              (_loop1988919913_
                                               _lp-tl1989219930_
                                               __tmp48484))))
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
                                                             (let ((_g48485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1995519975_ '0)))
                       (begin
                         (let ((_g48486_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g48485_)
                                      (##vector-length _g48485_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g48486_ 2)))
                               (error "Context expects 2 values" _g48486_)))
                         (let ((_target1995719978_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48485_ 0)))
                               (_tl1995919981_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48485_ 1))))
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
                                                   (let ((__tmp48487
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
                                                      __tmp48487))))
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
                            (let ((_g48488_
                                   (gx#syntax-split-splice _g2002620046_ '0)))
                              (begin
                                (let ((_g48489_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48488_)
                                             (##vector-length _g48488_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48489_ 2)))
                                      (error "Context expects 2 values"
                                             _g48489_)))
                                (let ((_target2002820049_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48488_ 0)))
                                      (_tl2003020052_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48488_ 1))))
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
                  (let ((__tmp48490
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2003320069_ _usetf2003520062_))))
                    (declare (not safe))
                    (_loop2003120055_ _lp-tl2003420072_ __tmp48490))))
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
                                   (let ((_g48491_
                                          (gx#syntax-split-splice
                                           _g2009720117_
                                           '0)))
                                     (begin
                                       (let ((_g48492_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g48491_)
                                                    (##vector-length _g48491_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g48492_ 2)))
                                             (error "Context expects 2 values"
                                                    _g48492_)))
                                       (let ((_target2009920120_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48491_ 0)))
                                             (_tl2010120123_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48491_ 1))))
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
                         (let ((__tmp48493
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2010420140_
                                        _mixin-ugetf2010620133_))))
                           (declare (not safe))
                           (_loop2010220126_ _lp-tl2010520143_ __tmp48493))))
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
                                          (let ((_g48494_
                                                 (gx#syntax-split-splice
                                                  _g2016820188_
                                                  '0)))
                                            (begin
                                              (let ((_g48495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g48494_)
                                                           (##vector-length
                                                            _g48494_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g48495_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g48495_)))
                                              (let ((_target2017020191_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g48494_
                                                        0)))
                                                    (_tl2017220194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g48494_
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
                                (let ((__tmp48496
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2017520211_
                                               _mixin-usetf2017720204_))))
                                  (declare (not safe))
                                  (_loop2017320197_
                                   _lp-tl2017620214_
                                   __tmp48496))))
                            (let ((_mixin-usetf2017820217_
                                   (reverse _mixin-usetf2017720204_)))
                              ((lambda (_L20221_)
                                 (let ()
                                   (let* ((_type-slots20252_
                                           (if (gx#stx-null? _slots19363_)
                                               '()
                                               (let ((__tmp48497
                                                      (let ((__tmp48498
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19720_
                                                                _L19649_
                                                                _L19578_)
                                                               (let ((__tmp48499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2023720242_
                                       _g2023820245_
                                       _g2023920247_
                                       _g2024020249_)
                                (let ((__tmp48500
                                       (let ((__tmp48501
                                              (let ((__tmp48502
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2023720242_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2023820245_
                                                      __tmp48502))))
                                         (declare (not safe))
                                         (cons _g2023920247_ __tmp48501))))
                                  (declare (not safe))
                                  (cons __tmp48500 _g2024020249_)))))
                         (declare (not safe))
                         (foldr* __tmp48499 '() _L19720_ _L19649_ _L19578_)))))
                (declare (not safe))
                (cons __tmp48498 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp48497))))
                                          (_type-mixin-slots20269_
                                           (if (gx#stx-null?
                                                _mixin-slots19737_)
                                               '()
                                               (let ((__tmp48503
                                                      (let ((__tmp48504
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19937_
                                                                _L19866_
                                                                _L19794_)
                                                               (let ((__tmp48505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2025420259_
                                       _g2025520262_
                                       _g2025620264_
                                       _g2025720266_)
                                (let ((__tmp48506
                                       (let ((__tmp48507
                                              (let ((__tmp48508
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2025420259_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2025520262_
                                                      __tmp48508))))
                                         (declare (not safe))
                                         (cons _g2025620264_ __tmp48507))))
                                  (declare (not safe))
                                  (cons __tmp48506 _g2025720266_)))))
                         (declare (not safe))
                         (foldr* __tmp48505 '() _L19937_ _L19866_ _L19794_)))))
                (declare (not safe))
                (cons __tmp48504 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp48503))))
                                          (_type-name20276_
                                           (let ((__tmp48509
                                                  (let ((__tmp48510
                                                         (let ((_$e20272_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body19364_)))
                   (if _$e20272_ _$e20272_ _id19361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48510 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp48509)))
                                          (_type-id20283_
                                           (let ((__tmp48511
                                                  (let ((__tmp48512
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
                                                    (cons __tmp48512 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp48511)))
                                          (_type-constructor20298_
                                           (let ((_$e20294_
                                                  (let ((_e2028520287_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body19364_)))
                                                    (if _e2028520287_
                                                        (let* ((_e20291_
                                                                _e2028520287_)
                                                               (__tmp48513
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e20291_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp48513))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e20294_ _$e20294_ '())))
                                          (_properties20332_
                                           (let* ((_properties20301_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body19364_))
                                                       (let ((__tmp48514
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp48514 '()))
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
                           (__tmp48515
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print20311_))))
                      (declare (not safe))
                      (cons __tmp48515 _properties20301_)))
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
                           (__tmp48516
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal20324_))))
                      (declare (not safe))
                      (cons __tmp48516 _properties20314_)))
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
                                                              (let ((__tmp48517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48518
                                    (let ((__tmp48520
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp48519
                                           (let ()
                                             (declare (not safe))
                                             (cons _L20350_ '()))))
                                      (declare (not safe))
                                      (cons __tmp48520 __tmp48519))))
                               (declare (not safe))
                               (cons __tmp48518 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp48517))))
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
                                               (let ((__tmp48521
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass20383_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp48521))
                                               '()))
                                          (_final?20389_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body19364_)))
                                          (_type-struct20392_
                                           (let ((__tmp48522
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?19378_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp48522)))
                                          (_type-final20395_
                                           (let ((__tmp48523
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?20389_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp48523)))
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
                                                 (let ((_g48524_
                                                        (gx#syntax-split-splice
                                                         _g2039920419_
                                                         '0)))
                                                   (begin
                                                     (let ((_g48525_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g48524_)
                          (##vector-length _g48524_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g48525_ 2)))
                   (error "Context expects 2 values" _g48525_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2040120422_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48524_
                                                               0)))
                                                           (_tl2040320425_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48524_
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
                                       (let ((__tmp48526
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2040620442_
                                                      _type-body2040820435_))))
                                         (declare (not safe))
                                         (_loop2040420428_
                                          _lp-tl2040720445_
                                          __tmp48526))))
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
                                                           (let ((__tmp48527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48530 (gx#datum->syntax '#f 'begin))
                                (__tmp48528
                                 (let ((__tmp48529
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20936_ '()))))
                                   (declare (not safe))
                                   (cons _L20488_ __tmp48529))))
                            (declare (not safe))
                            (cons __tmp48530 __tmp48528))))
                     (declare (not safe))
                     (_wrap19366_ __tmp48527)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2092220933_)))
                                                 (__tmp48531
                                                  (let ((__tmp48532
                                                         (let ((__tmp48567
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp48533
                        (let ((__tmp48534
                               (let ((__tmp48535
                                      (let ((__tmp48566
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp48536
                                             (let ((__tmp48537
                                                    (let ((__tmp48538
                                                           (let ((__tmp48539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48540
                                 (let ((__tmp48541
                                        (let ((__tmp48542
                                               (let ((__tmp48543
                                                      (let ((__tmp48544
                                                             (let ((__tmp48545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48546
                                   (let ((__tmp48547
                                          (let ((__tmp48548
                                                 (let ((__tmp48549
                                                        (let ((__tmp48550
                                                               (let ((__tmp48551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48552
                                     (let ((__tmp48553
                                            (let ((__tmp48554
                                                   (let ((__tmp48555
                                                          (let ((__tmp48556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48557
                                (let ((__tmp48558
                                       (let ((__tmp48559
                                              (let ((__tmp48560
                                                     (let ((__tmp48561
                                                            (let ((__tmp48562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48563
                                  (let ((__tmp48564
                                         (let ((__tmp48565
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L20908_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp48565))))
                                    (declare (not safe))
                                    (cons _L20880_ __tmp48564))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp48563))))
                      (declare (not safe))
                      (cons _L20852_ __tmp48562))))
               (declare (not safe))
               (cons 'mutators: __tmp48561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L20824_ __tmp48560))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp48559))))
                                  (declare (not safe))
                                  (cons _L20796_ __tmp48558))))
                           (declare (not safe))
                           (cons 'predicate: __tmp48557))))
                    (declare (not safe))
                    (cons _L20768_ __tmp48556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp48555))))
                                              (declare (not safe))
                                              (cons _L20740_ __tmp48554))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp48553))))
                                (declare (not safe))
                                (cons _L20712_ __tmp48552))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp48551))))
                  (declare (not safe))
                  (cons _L20684_ __tmp48550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp48549))))
                                            (declare (not safe))
                                            (cons _L20656_ __tmp48548))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp48547))))
                              (declare (not safe))
                              (cons _L20628_ __tmp48546))))
                       (declare (not safe))
                       (cons 'struct?: __tmp48545))))
                (declare (not safe))
                (cons _L20572_ __tmp48544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp48543))))
                                          (declare (not safe))
                                          (cons _L20600_ __tmp48542))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp48541))))
                            (declare (not safe))
                            (cons _L20544_ __tmp48540))))
                     (declare (not safe))
                     (cons 'name: __tmp48539))))
              (declare (not safe))
              (cons _L20516_ __tmp48538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp48537))))
                                        (declare (not safe))
                                        (cons __tmp48566 __tmp48536))))
                                 (declare (not safe))
                                 (cons __tmp48535 '()))))
                          (declare (not safe))
                          (cons _L19396_ __tmp48534))))
                   (declare (not safe))
                   (cons __tmp48567 __tmp48533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp48532))))
                                            (declare (not safe))
                                            (_g2092020951_ __tmp48531))))
                                      _g2089420905_)))
                                  (__tmp48568
                                   (let ((__tmp48595
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp48569
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L20079_
                                             _L19578_)
                                            (let ((__tmp48583
                                                   (lambda (_g2095820965_
                                                            _g2095920968_
                                                            _g2096020970_)
                                                     (let ((__tmp48584
                                                            (let ((__tmp48594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp48585
                           (let ((__tmp48591
                                  (let ((__tmp48593
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp48592
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2095920968_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48593 __tmp48592)))
                                 (__tmp48586
                                  (let ((__tmp48587
                                         (let ((__tmp48588
                                                (let ((__tmp48590
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp48589
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2095820965_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp48590
                                                        __tmp48589))))
                                           (declare (not safe))
                                           (cons __tmp48588 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp48587))))
                             (declare (not safe))
                             (cons __tmp48591 __tmp48586))))
                      (declare (not safe))
                      (cons __tmp48594 __tmp48585))))
               (declare (not safe))
               (cons __tmp48584 _g2096020970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp48570
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L20221_
                                                      _L19794_)
                                                     (let ((__tmp48571
                                                            (lambda (_g2096120973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2096220976_
                             _g2096320978_)
                      (let ((__tmp48572
                             (let ((__tmp48582 (gx#datum->syntax '#f '@list))
                                   (__tmp48573
                                    (let ((__tmp48579
                                           (let ((__tmp48581
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp48580
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2096220976_ '()))))
                                             (declare (not safe))
                                             (cons __tmp48581 __tmp48580)))
                                          (__tmp48574
                                           (let ((__tmp48575
                                                  (let ((__tmp48576
                                                         (let ((__tmp48578
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp48577
                        (let ()
                          (declare (not safe))
                          (cons _g2096120973_ '()))))
                   (declare (not safe))
                   (cons __tmp48578 __tmp48577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48576 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp48575))))
                                      (declare (not safe))
                                      (cons __tmp48579 __tmp48574))))
                               (declare (not safe))
                               (cons __tmp48582 __tmp48573))))
                        (declare (not safe))
                        (cons __tmp48572 _g2096320978_)))))
               (declare (not safe))
               (foldr2 __tmp48571 '() _L20221_ _L19794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldr2 __tmp48583
                                                      __tmp48570
                                                      _L20079_
                                                      _L19578_)))))
                                     (declare (not safe))
                                     (cons __tmp48595 __tmp48569))))
                             (declare (not safe))
                             (_g2089220955_ __tmp48568))))
                       _g2086620877_)))
                   (__tmp48596
                    (let ((__tmp48623 (gx#datum->syntax '#f '@list))
                          (__tmp48597
                           (begin
                             (gx#syntax-check-splice-targets _L20008_ _L19578_)
                             (let ((__tmp48611
                                    (lambda (_g2098420991_
                                             _g2098520994_
                                             _g2098620996_)
                                      (let ((__tmp48612
                                             (let ((__tmp48622
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp48613
                                                    (let ((__tmp48619
                                                           (let ((__tmp48621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp48620
                          (let ()
                            (declare (not safe))
                            (cons _g2098520994_ '()))))
                     (declare (not safe))
                     (cons __tmp48621 __tmp48620)))
                  (__tmp48614
                   (let ((__tmp48615
                          (let ((__tmp48616
                                 (let ((__tmp48618
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp48617
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2098420991_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48618 __tmp48617))))
                            (declare (not safe))
                            (cons __tmp48616 '()))))
                     (declare (not safe))
                     (cons ':: __tmp48615))))
              (declare (not safe))
              (cons __tmp48619 __tmp48614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48622 __tmp48613))))
                                        (declare (not safe))
                                        (cons __tmp48612 _g2098620996_))))
                                   (__tmp48598
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20150_
                                       _L19794_)
                                      (let ((__tmp48599
                                             (lambda (_g2098720999_
                                                      _g2098821002_
                                                      _g2098921004_)
                                               (let ((__tmp48600
                                                      (let ((__tmp48610
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp48601
                                                             (let ((__tmp48607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48609 (gx#datum->syntax '#f 'quote))
                                  (__tmp48608
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2098821002_ '()))))
                              (declare (not safe))
                              (cons __tmp48609 __tmp48608)))
                           (__tmp48602
                            (let ((__tmp48603
                                   (let ((__tmp48604
                                          (let ((__tmp48606
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp48605
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2098720999_ '()))))
                                            (declare (not safe))
                                            (cons __tmp48606 __tmp48605))))
                                     (declare (not safe))
                                     (cons __tmp48604 '()))))
                              (declare (not safe))
                              (cons ':: __tmp48603))))
                       (declare (not safe))
                       (cons __tmp48607 __tmp48602))))
                (declare (not safe))
                (cons __tmp48610 __tmp48601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48600
                                                       _g2098921004_)))))
                                        (declare (not safe))
                                        (foldr2 __tmp48599
                                                '()
                                                _L20150_
                                                _L19794_)))))
                               (declare (not safe))
                               (foldr2 __tmp48611
                                       __tmp48598
                                       _L20008_
                                       _L19578_)))))
                      (declare (not safe))
                      (cons __tmp48623 __tmp48597))))
              (declare (not safe))
              (_g2086420981_ __tmp48596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2083820849_)))
                                            (__tmp48624
                                             (let ((__tmp48651
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp48625
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L19720_
                                                       _L19578_)
                                                      (let ((__tmp48639
                                                             (lambda (_g2101021017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2101121020_
                              _g2101221022_)
                       (let ((__tmp48640
                              (let ((__tmp48650 (gx#datum->syntax '#f '@list))
                                    (__tmp48641
                                     (let ((__tmp48647
                                            (let ((__tmp48649
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp48648
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2101121020_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp48649 __tmp48648)))
                                           (__tmp48642
                                            (let ((__tmp48643
                                                   (let ((__tmp48644
                                                          (let ((__tmp48646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp48645
                         (let ()
                           (declare (not safe))
                           (cons _g2101021017_ '()))))
                    (declare (not safe))
                    (cons __tmp48646 __tmp48645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48644 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp48643))))
                                       (declare (not safe))
                                       (cons __tmp48647 __tmp48642))))
                                (declare (not safe))
                                (cons __tmp48650 __tmp48641))))
                         (declare (not safe))
                         (cons __tmp48640 _g2101221022_))))
                    (__tmp48626
                     (begin
                       (gx#syntax-check-splice-targets _L19937_ _L19794_)
                       (let ((__tmp48627
                              (lambda (_g2101321025_
                                       _g2101421028_
                                       _g2101521030_)
                                (let ((__tmp48628
                                       (let ((__tmp48638
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp48629
                                              (let ((__tmp48635
                                                     (let ((__tmp48637
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp48636
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2101421028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp48637 __tmp48636)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp48630
                                                     (let ((__tmp48631
                                                            (let ((__tmp48632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48634
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp48633
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2101321025_ '()))))
                             (declare (not safe))
                             (cons __tmp48634 __tmp48633))))
                      (declare (not safe))
                      (cons __tmp48632 '()))))
               (declare (not safe))
               (cons ':: __tmp48631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48635 __tmp48630))))
                                         (declare (not safe))
                                         (cons __tmp48638 __tmp48629))))
                                  (declare (not safe))
                                  (cons __tmp48628 _g2101521030_)))))
                         (declare (not safe))
                         (foldr2 __tmp48627 '() _L19937_ _L19794_)))))
                (declare (not safe))
                (foldr2 __tmp48639 __tmp48626 _L19720_ _L19578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48651 __tmp48625))))
                                       (declare (not safe))
                                       (_g2083621007_ __tmp48624))))
                                 _g2081020821_)))
                             (__tmp48652
                              (let ((__tmp48679 (gx#datum->syntax '#f '@list))
                                    (__tmp48653
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19649_
                                        _L19578_)
                                       (let ((__tmp48667
                                              (lambda (_g2103621043_
                                                       _g2103721046_
                                                       _g2103821048_)
                                                (let ((__tmp48668
                                                       (let ((__tmp48678
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp48669
                                                              (let ((__tmp48675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48677 (gx#datum->syntax '#f 'quote))
                                   (__tmp48676
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2103721046_ '()))))
                               (declare (not safe))
                               (cons __tmp48677 __tmp48676)))
                            (__tmp48670
                             (let ((__tmp48671
                                    (let ((__tmp48672
                                           (let ((__tmp48674
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp48673
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2103621043_ '()))))
                                             (declare (not safe))
                                             (cons __tmp48674 __tmp48673))))
                                      (declare (not safe))
                                      (cons __tmp48672 '()))))
                               (declare (not safe))
                               (cons ':: __tmp48671))))
                        (declare (not safe))
                        (cons __tmp48675 __tmp48670))))
                 (declare (not safe))
                 (cons __tmp48678 __tmp48669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48668
                                                        _g2103821048_))))
                                             (__tmp48654
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19866_
                                                 _L19794_)
                                                (let ((__tmp48655
                                                       (lambda (_g2103921051_
                                                                _g2104021054_
                                                                _g2104121056_)
                                                         (let ((__tmp48656
                                                                (let ((__tmp48666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp48657
                               (let ((__tmp48663
                                      (let ((__tmp48665
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp48664
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2104021054_ '()))))
                                        (declare (not safe))
                                        (cons __tmp48665 __tmp48664)))
                                     (__tmp48658
                                      (let ((__tmp48659
                                             (let ((__tmp48660
                                                    (let ((__tmp48662
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp48661
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2103921051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp48662 __tmp48661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48660 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp48659))))
                                 (declare (not safe))
                                 (cons __tmp48663 __tmp48658))))
                          (declare (not safe))
                          (cons __tmp48666 __tmp48657))))
                   (declare (not safe))
                   (cons __tmp48656 _g2104121056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr2 __tmp48655
                                                          '()
                                                          _L19866_
                                                          _L19794_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp48667
                                                 __tmp48654
                                                 _L19649_
                                                 _L19578_)))))
                                (declare (not safe))
                                (cons __tmp48679 __tmp48653))))
                        (declare (not safe))
                        (_g2080821033_ __tmp48652))))
                  _g2078220793_)))
              (__tmp48680
               (let ((__tmp48682 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp48681
                      (let () (declare (not safe)) (cons _L19483_ '()))))
                 (declare (not safe))
                 (cons __tmp48682 __tmp48681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2078021059_ __tmp48680))))
                                           _g2075420765_)))
                                       (__tmp48683
                                        (let ((__tmp48685
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp48684
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19455_ '()))))
                                          (declare (not safe))
                                          (cons __tmp48685 __tmp48684))))
                                  (declare (not safe))
                                  (_g2075221063_ __tmp48683))))
                            _g2072620737_)))
                        (__tmp48686
                         (let ((__tmp48688
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp48687
                                (let ()
                                  (declare (not safe))
                                  (cons _L19427_ '()))))
                           (declare (not safe))
                           (cons __tmp48688 __tmp48687))))
                   (declare (not safe))
                   (_g2072421067_ __tmp48686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2069820709_)))
                                                 (__tmp48689
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
                            (let ((_e2107821097_ (gx#syntax-e _g2107621094_)))
                              (let ((_hd2107921101_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2107821097_)))
                                    (_tl2108021104_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2107821097_))))
                                (if (gx#stx-datum? _hd2107921101_)
                                    (let ((_e2108121107_
                                           (gx#stx-e _hd2107921101_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2108121107_
                                                    'constructor:))
                                          (if (gx#stx-pair? _tl2108021104_)
                                              (let ((_e2108221111_
                                                     (gx#syntax-e
                                                      _tl2108021104_)))
                                                (let ((_hd2108321115_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2108221111_)))
                                                      (_tl2108421118_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2108221111_))))
                                                  (if (gx#stx-null?
                                                       _tl2108421118_)
                                                      ((lambda (_L21121_)
                                                         (let ()
                                                           (let ((__tmp48691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp48690
                          (let () (declare (not safe)) (cons _L21121_ '()))))
                     (declare (not safe))
                     (cons __tmp48691 __tmp48690))))
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
                                            (_g2069621071_ __tmp48689))))
                                      _g2067020681_)))
                                  (__tmp48692
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
                                                      (let ((__tmp48694
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp48693
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L21161_ '()))))
                (declare (not safe))
                (cons __tmp48694 __tmp48693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2114721158_))))
                                         (declare (not safe))
                                         (_g2114521173_ _metaclass20383_))
                                       '#f)))
                             (declare (not safe))
                             (_g2066821142_ __tmp48692))))
                       _g2064220653_))))
              (declare (not safe))
              (_g2064021177_ _final?20389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2061420625_))))
                                       (declare (not safe))
                                       (_g2061221181_ _struct?19378_))))
                                 _g2058620597_)))
                             (__tmp48695
                              (let ((__tmp48699 (gx#datum->syntax '#f 'quote))
                                    (__tmp48696
                                     (let ((__tmp48697
                                            (let ((__tmp48698
                                                   (lambda (_g2118821191_
                                                            _g2118921194_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2118821191_
                                                             _g2118921194_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp48698
                                                      '()
                                                      _L19578_))))
                                       (declare (not safe))
                                       (cons __tmp48697 '()))))
                                (declare (not safe))
                                (cons __tmp48699 __tmp48696))))
                        (declare (not safe))
                        (_g2058421185_ __tmp48695))))
                  _g2055820569_)))
              (__tmp48700
               (let* ((_g2120121218_
                       (lambda (_g2120221214_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2120221214_)))
                      (_g2120021279_
                       (lambda (_g2120221222_)
                         (if (gx#stx-pair/null? _g2120221222_)
                             (let ((_g48701_
                                    (gx#syntax-split-splice _g2120221222_ '0)))
                               (begin
                                 (let ((_g48702_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48701_)
                                              (##vector-length _g48701_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48702_ 2)))
                                       (error "Context expects 2 values"
                                              _g48702_)))
                                 (let ((_target2120421225_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g48701_ 0)))
                                       (_tl2120621228_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g48701_ 1))))
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
                   (let ((__tmp48703
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2120921245_ _super-id2121121238_))))
                     (declare (not safe))
                     (_loop2120721231_ _lp-tl2121021248_ __tmp48703))))
               (let ((_super-id2121221251_ (reverse _super-id2121121238_)))
                 ((lambda (_L21255_)
                    (let ()
                      (let ((__tmp48709 (gx#datum->syntax '#f '@list))
                            (__tmp48704
                             (let ((__tmp48705
                                    (lambda (_g2127021273_ _g2127121276_)
                                      (let ((__tmp48706
                                             (let ((__tmp48708
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp48707
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2127021273_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp48708 __tmp48707))))
                                        (declare (not safe))
                                        (cons __tmp48706 _g2127121276_)))))
                               (declare (not safe))
                               (foldr1 __tmp48705 '() _L21255_))))
                        (declare (not safe))
                        (cons __tmp48709 __tmp48704))))
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
                                                 (_g2055621197_ __tmp48700))))
                                           _g2053020541_)))
                                       (__tmp48710
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
                                                       (let ((__tmp48712
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp48711
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21302_ '()))))
                 (declare (not safe))
                 (cons __tmp48712 __tmp48711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2128821299_)))
                                               (__tmp48713
                                                (cadr _type-name20276_)))
                                          (declare (not safe))
                                          (_g2128621314_ __tmp48713))))
                                  (declare (not safe))
                                  (_g2052821283_ __tmp48710))))
                            _g2050220513_)))
                        (__tmp48714
                         (let* ((_g2132221337_
                                 (lambda (_g2132321333_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2132321333_)))
                                (_g2132121385_
                                 (lambda (_g2132321341_)
                                   (if (gx#stx-pair? _g2132321341_)
                                       (let ((_e2132521344_
                                              (gx#syntax-e _g2132321341_)))
                                         (let ((_hd2132621348_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2132521344_)))
                                               (_tl2132721351_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2132521344_))))
                                           (if (gx#stx-datum? _hd2132621348_)
                                               (let ((_e2132821354_
                                                      (gx#stx-e
                                                       _hd2132621348_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2132821354_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2132721351_)
                                                         (let ((_e2132921358_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2132721351_)))
                   (let ((_hd2133021362_
                          (let () (declare (not safe)) (##car _e2132921358_)))
                         (_tl2133121365_
                          (let () (declare (not safe)) (##cdr _e2132921358_))))
                     (if (gx#stx-null? _tl2133121365_)
                         ((lambda (_L21368_)
                            (let ()
                              (let ((__tmp48716 (gx#datum->syntax '#f 'quote))
                                    (__tmp48715
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21368_ '()))))
                                (declare (not safe))
                                (cons __tmp48716 __tmp48715))))
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
                   (_g2050021318_ __tmp48714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2047420485_)))
                                                 (__tmp48717
                                                  (let ((__tmp48718
                                                         (let ((__tmp48725
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp48719
                        (let ((__tmp48720
                               (let ((__tmp48721
                                      (let ((__tmp48722
                                             (let ((__tmp48723
                                                    (let ((__tmp48724
                                                           (lambda (_g2139221395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2139321398_)
                     (let ()
                       (declare (not safe))
                       (cons _g2139221395_ _g2139321398_)))))
              (declare (not safe))
              (foldr1 __tmp48724 '() _L20452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L19483_ __tmp48723))))
                                        (declare (not safe))
                                        (cons _L19455_ __tmp48722))))
                                 (declare (not safe))
                                 (cons _L19511_ __tmp48721))))
                          (declare (not safe))
                          (cons _L19427_ __tmp48720))))
                   (declare (not safe))
                   (cons __tmp48725 __tmp48719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp48718))))
                                            (declare (not safe))
                                            (_g2047221389_ __tmp48717))))
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
                                          (__tmp48726
                                           (let ((__tmp48727
                                                  (let ((__tmp48728
                                                         (let ((__tmp48729
                                                                (let ((__tmp48730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp48731
                                      (let ((__tmp48732
                                             (let ((__tmp48733
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr1 cons
                                                              _type-mixin-slots20269_
                                                              _type-slots20252_))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp48733
                                                       _type-properties20373_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp48732
                                                _type-metaclass20386_))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp48731 _type-final20395_))))
                          (declare (not safe))
                          (foldr1 cons __tmp48730 _type-struct20392_))))
                   (declare (not safe))
                   (foldr1 cons __tmp48729 _type-constructor20298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            __tmp48728
                                                            _type-name20276_))))
                                             (declare (not safe))
                                             (foldr1 cons
                                                     __tmp48727
                                                     _type-id20283_))))
                                     (declare (not safe))
                                     (_g2039721401_ __tmp48726))))
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
                                   (__tmp48734
                                    (gx#stx-map
                                     (lambda (_g2140821410_)
                                       (_make-id19368_ '"&" _g2140821410_))
                                     (let ((__tmp48735
                                            (lambda (_g2141321416_
                                                     _g2141421419_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2141321416_
                                                      _g2141421419_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp48735 '() _L19937_)))))
                              (declare (not safe))
                              (_g2016621405_ __tmp48734))))
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
                            (__tmp48736
                             (gx#stx-map
                              (lambda (_g2142521427_)
                                (_make-id19368_ '"&" _g2142521427_))
                              (let ((__tmp48737
                                     (lambda (_g2143021433_ _g2143121436_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2143021433_ _g2143121436_)))))
                                (declare (not safe))
                                (foldr1 __tmp48737 '() _L19866_)))))
                       (declare (not safe))
                       (_g2009521422_ __tmp48736))))
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
                     (__tmp48738
                      (gx#stx-map
                       (lambda (_g2144221444_)
                         (_make-id19368_ '"&" _g2144221444_))
                       (let ((__tmp48739
                              (lambda (_g2144721450_ _g2144821453_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2144721450_ _g2144821453_)))))
                         (declare (not safe))
                         (foldr1 __tmp48739 '() _L19720_)))))
                (declare (not safe))
                (_g2002421439_ __tmp48738))))
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
              (__tmp48740
               (gx#stx-map
                (lambda (_g2145921461_) (_make-id19368_ '"&" _g2145921461_))
                (let ((__tmp48741
                       (lambda (_g2146421467_ _g2146521470_)
                         (let ()
                           (declare (not safe))
                           (cons _g2146421467_ _g2146521470_)))))
                  (declare (not safe))
                  (foldr1 __tmp48741 '() _L19649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1995321456_ __tmp48740))))
                                           _mixin-setf1989419933_))))))
                          (let ()
                            (declare (not safe))
                            (_loop1988919913_ _target1988619907_ '())))
                        (let ()
                          (declare (not safe))
                          (_g1988319900_ _g1988419904_))))))
              (let () (declare (not safe)) (_g1988319900_ _g1988419904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp48742
                                                (gx#stx-map
                                                 (lambda (_g2147621478_)
                                                   (_make-id19368_
                                                    _name19372_
                                                    '"-"
                                                    _g2147621478_
                                                    '"-set!"))
                                                 _mixin-slots19737_)))
                                          (declare (not safe))
                                          (_g1988221473_ __tmp48742))))
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
                                        (__tmp48743
                                         (gx#stx-map
                                          (lambda (_g2148521487_)
                                            (_make-id19368_
                                             _name19372_
                                             '"-"
                                             _g2148521487_))
                                          _mixin-slots19737_)))
                                   (declare (not safe))
                                   (_g1981121482_ __tmp48743))))
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
                          (__tmp48744
                           (gx#stx-map
                            (lambda (_g2149821500_)
                              (_make-id19368_
                               _name19372_
                               '"-"
                               _g2149821500_
                               '"-set!"))
                            _slots19363_)))
                     (declare (not safe))
                     (_g1966521495_ __tmp48744))))
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
                   (__tmp48745
                    (gx#stx-map
                     (lambda (_g2150721509_)
                       (_make-id19368_ _name19372_ '"-" _g2150721509_))
                     _slots19363_)))
              (declare (not safe))
              (_g1959421504_ __tmp48745))))
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
                                     (__tmp48746
                                      (map gerbil/core$<MOP>$<MOP:2>#!class-type-descriptor
                                           _super19375_)))
                                (declare (not safe))
                                (_g1949521517_ __tmp48746))))
                          _g1946919480_)))
                      (__tmp48747 (_make-id19368_ _name19372_ '"?")))
                 (declare (not safe))
                 (_g1946721521_ __tmp48747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1944119452_)))
                                               (__tmp48748
                                                (_make-id19368_
                                                 '"make-"
                                                 _name19372_)))
                                          (declare (not safe))
                                          (_g1943921525_ __tmp48748))))
                                    _g1941319424_)))
                                (__tmp48749
                                 (_make-id19368_ _name19372_ '"::t")))
                           (declare (not safe))
                           (_g1941121529_ __tmp48749))))
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
                      (let ((_e2160621627_ (gx#syntax-e _g2160221624_)))
                        (let ((_hd2160721631_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2160621627_)))
                              (_tl2160821634_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2160621627_))))
                          (if (gx#stx-pair? _tl2160821634_)
                              (let ((_e2160921637_
                                     (gx#syntax-e _tl2160821634_)))
                                (let ((_hd2161021641_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2160921637_)))
                                      (_tl2161121644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2160921637_))))
                                  (if (gx#stx-pair? _tl2161121644_)
                                      (let ((_e2161221647_
                                             (gx#syntax-e _tl2161121644_)))
                                        (let ((_hd2161321651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2161221647_)))
                                              (_tl2161421654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2161221647_))))
                                          ((lambda (_L21657_ _L21659_ _L21660_)
                                             (let ((__tmp48754
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp48750
                                                    (let ((__tmp48751
                                                           (let ((__tmp48752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48753
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L21657_))))
                            (declare (not safe))
                            (cons 'struct: __tmp48753))))
                     (declare (not safe))
                     (cons _L21659_ __tmp48752))))
              (declare (not safe))
              (cons _L21660_ __tmp48751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48754 __tmp48750)))
                                           _tl2161421654_
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
                    (let* ((___stx4398643987_ _hd21768_)
                           (_g2177421786_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4398643987_))))
                      (let ((___kont4398943990_
                             (lambda (_L21814_ _L21816_)
                               (let ((__tmp48755 (gx#syntax->list _L21814_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                  _stx21681_
                                  _L21816_
                                  __tmp48755
                                  _slots21770_
                                  _body21771_))))
                            (___kont4399143992_
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
                        (let ((___match4399944000_
                               (lambda (_e2177821804_
                                        _hd2177921808_
                                        _tl2178021811_)
                                 (let ((_L21814_ _tl2178021811_)
                                       (_L21816_ _hd2177921808_))
                                   (if (and (gx#stx-list? _L21814_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21814_))
                                       (___kont4398943990_ _L21814_ _L21816_)
                                       (___kont4399143992_))))))
                          (if (gx#stx-pair? ___stx4398643987_)
                              (let ((_e2177821804_
                                     (gx#syntax-e ___stx4398643987_)))
                                (let ((_tl2178021811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2177821804_)))
                                      (_hd2177921808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2177821804_))))
                                  (___match4399944000_
                                   _e2177821804_
                                   _hd2177921808_
                                   _tl2178021811_)))
                              (___kont4399143992_))))))))
          (let* ((_g2168721706_
                  (lambda (_g2168821702_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2168821702_)))
                 (_g2168621764_
                  (lambda (_g2168821710_)
                    (if (gx#stx-pair? _g2168821710_)
                        (let ((_e2169221713_ (gx#syntax-e _g2168821710_)))
                          (let ((_hd2169321717_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2169221713_)))
                                (_tl2169421720_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2169221713_))))
                            (if (gx#stx-pair? _tl2169421720_)
                                (let ((_e2169521723_
                                       (gx#syntax-e _tl2169421720_)))
                                  (let ((_hd2169621727_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2169521723_)))
                                        (_tl2169721730_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2169521723_))))
                                    (if (gx#stx-pair? _tl2169721730_)
                                        (let ((_e2169821733_
                                               (gx#syntax-e _tl2169721730_)))
                                          (let ((_hd2169921737_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2169821733_)))
                                                (_tl2170021740_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2169821733_))))
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
                                             _tl2170021740_
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
                        (let ((_e2184621876_ (gx#syntax-e _g2184121873_)))
                          (let ((_hd2184721880_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2184621876_)))
                                (_tl2184821883_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2184621876_))))
                            (if (gx#stx-pair? _tl2184821883_)
                                (let ((_e2184921886_
                                       (gx#syntax-e _tl2184821883_)))
                                  (let ((_hd2185021890_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2184921886_)))
                                        (_tl2185121893_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2184921886_))))
                                    (if (gx#stx-pair? _hd2185021890_)
                                        (let ((_e2185221896_
                                               (gx#syntax-e _hd2185021890_)))
                                          (let ((_hd2185321900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2185221896_)))
                                                (_tl2185421903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2185221896_))))
                                            (if (gx#identifier? _hd2185321900_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g48756_|
                                                     _hd2185321900_)
                                                    (if (gx#stx-pair?
                                                         _tl2185421903_)
                                                        (let ((_e2185521906_
                                                               (gx#syntax-e
                                                                _tl2185421903_)))
                                                          (let ((_hd2185621910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2185521906_)))
                        (_tl2185721913_
                         (let () (declare (not safe)) (##cdr _e2185521906_))))
                    (if (gx#stx-pair? _tl2185721913_)
                        (let ((_e2185821916_ (gx#syntax-e _tl2185721913_)))
                          (let ((_hd2185921920_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2185821916_)))
                                (_tl2186021923_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2185821916_))))
                            (if (gx#stx-null? _tl2186021923_)
                                (if (gx#stx-pair? _tl2185121893_)
                                    (let ((_e2186121926_
                                           (gx#syntax-e _tl2185121893_)))
                                      (let ((_hd2186221930_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2186121926_)))
                                            (_tl2186321933_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2186121926_))))
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
                                                            (let ((__tmp48759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp48757
                           (let ((__tmp48758
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22127_ '()))))
                             (declare (not safe))
                             (cons _L22071_ __tmp48758))))
                      (declare (not safe))
                      (cons __tmp48759 __tmp48757))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2211322124_))))
                                            (_g2211122142_
                                             (_wrap21836_
                                              (let ((__tmp48767
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp48760
                                                     (let ((__tmp48761
                                                            (let ((__tmp48764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48766 (gx#datum->syntax '#f 'quote))
                                 (__tmp48765
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21940_ '()))))
                             (declare (not safe))
                             (cons __tmp48766 __tmp48765)))
                          (__tmp48762
                           (let ((__tmp48763
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22099_ '()))))
                             (declare (not safe))
                             (cons _L22015_ __tmp48763))))
                      (declare (not safe))
                      (cons __tmp48764 __tmp48762))))
               (declare (not safe))
               (cons _L21986_ __tmp48761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48767
                                                      __tmp48760)))))))
                                      _g2208522096_))))
                             (_g2208322146_ _rebind?21968_))))
                       _g2205722068_))))
              (_g2205522150_
               (_wrap21836_
                (let ((__tmp48804 (gx#datum->syntax '#f 'def))
                      (__tmp48768
                       (let ((__tmp48769
                              (let ((__tmp48770
                                     (let ((__tmp48803
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp48771
                                            (let ((__tmp48773
                                                   (let ((__tmp48774
                                                          (let ((__tmp48775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48776
                                (let ((__tmp48802
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp48777
                                       (let ((__tmp48778
                                              (let ((__tmp48779
                                                     (let ((__tmp48794
                                                            (let ((__tmp48801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp48795
                           (let ((__tmp48800 (gx#datum->syntax '#f 'obj))
                                 (__tmp48796
                                  (let ((__tmp48799
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp48797
                                         (let ((__tmp48798
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp48798 '()))))
                                    (declare (not safe))
                                    (cons __tmp48799 __tmp48797))))
                             (declare (not safe))
                             (cons __tmp48800 __tmp48796))))
                      (declare (not safe))
                      (cons __tmp48801 __tmp48795)))
                   (__tmp48780
                    (let ((__tmp48781
                           (let ((__tmp48793
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp48782
                                  (let ((__tmp48783
                                         (let ((__tmp48792
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp48784
                                                (let ((__tmp48789
                                                       (let ((__tmp48791
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp48790
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21940_ '()))))
                 (declare (not safe))
                 (cons __tmp48791 __tmp48790)))
              (__tmp48785
               (let ((__tmp48788 (gx#datum->syntax '#f 'arg))
                     (__tmp48786
                      (let ((__tmp48787 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp48787 '()))))
                 (declare (not safe))
                 (cons __tmp48788 __tmp48786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48789
                                                        __tmp48785))))
                                           (declare (not safe))
                                           (cons __tmp48792 __tmp48784))))
                                    (declare (not safe))
                                    (cons _L21986_ __tmp48783))))
                             (declare (not safe))
                             (cons __tmp48793 __tmp48782))))
                      (declare (not safe))
                      (cons __tmp48781 '()))))
               (declare (not safe))
               (cons __tmp48794 __tmp48780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48779 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp48778))))
                                  (declare (not safe))
                                  (cons __tmp48802 __tmp48777))))
                           (declare (not safe))
                           (cons __tmp48776 '()))))
                    (declare (not safe))
                    (cons _L22043_ __tmp48775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48774 '())))
                                                  (__tmp48772
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21938_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48773 __tmp48772))))
                                       (declare (not safe))
                                       (cons __tmp48803 __tmp48771))))
                                (declare (not safe))
                                (cons __tmp48770 '()))))
                         (declare (not safe))
                         (cons _L22015_ __tmp48769))))
                  (declare (not safe))
                  (cons __tmp48804 __tmp48768)))))))
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
                                                  (let ((__obj47025
                                                         _klass21965_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj47025
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj47025
                                                           '9
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj47025
                                                         'type-descriptor)))))
                                               (if (let ((__tmp48805
                                                          (gx#identifier?
                                                           _L21940_)))
                                                     (declare (not safe))
                                                     (not __tmp48805))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21833_
                                                    _L21940_)
                                                   (if (let ((__tmp48806
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L21939_))))
                 (declare (not safe))
                 (not __tmp48806))
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
                                         _tl2186321933_
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
                          (if (let ()
                                (declare (not safe))
                                (string-index _id-str22815_ '#\.))
                              (let ((_split22818_
                                     (let ()
                                       (declare (not safe))
                                       (string-split _id-str22815_ '#\.))))
                                (fx= (length _split22818_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted22181_
                  (lambda (_id22801_)
                    (let* ((_id-str22804_
                            (symbol->string (gx#stx-e _id22801_)))
                           (_split22807_
                            (let ()
                              (declare (not safe))
                              (string-split _id-str22804_ '#\.))))
                      (let ((__tmp48809
                             (gx#stx-identifier _id22801_ (car _split22807_)))
                            (__tmp48807
                             (let ((__tmp48808
                                    (gx#stx-identifier
                                     _id22801_
                                     (cadr _split22807_))))
                               (declare (not safe))
                               (cons __tmp48808 '()))))
                        (declare (not safe))
                        (cons __tmp48809 __tmp48807))))))
          (let* ((___stx4400244003_ _stx22176_)
                 (_g2218622273_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4400244003_))))
            (let ((___kont4400544006_
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
                                   (let ((_e2272922747_
                                          (gx#syntax-e _g2272622744_)))
                                     (let ((_hd2273022751_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2272922747_)))
                                           (_tl2273122754_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2272922747_))))
                                       (if (gx#stx-pair? _tl2273122754_)
                                           (let ((_e2273222757_
                                                  (gx#syntax-e
                                                   _tl2273122754_)))
                                             (let ((_hd2273322761_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2273222757_)))
                                                   (_tl2273422764_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2273222757_))))
                                               (if (gx#stx-null?
                                                    _tl2273422764_)
                                                   ((lambda (_L22767_ _L22769_)
                                                      (let ()
                                                        (let ((__tmp48822
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp48810
                                                               (let ((__tmp48821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp48811
                              (let ((__tmp48812
                                     (let ((__tmp48818
                                            (let ((__tmp48820
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp48819
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22767_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48820 __tmp48819)))
                                           (__tmp48813
                                            (let ((__tmp48814
                                                   (let ((__tmp48817
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp48815
                                                          (let ((__tmp48816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2278422787_ _g2278522790_)
                           (let ()
                             (declare (not safe))
                             (cons _g2278422787_ _g2278522790_)))))
                    (declare (not safe))
                    (foldr1 __tmp48816 '() _L22696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48817
                                                           __tmp48815))))
                                              (declare (not safe))
                                              (cons __tmp48814 '()))))
                                       (declare (not safe))
                                       (cons __tmp48818 __tmp48813))))
                                (declare (not safe))
                                (cons _L22769_ __tmp48812))))
                         (declare (not safe))
                         (cons __tmp48821 __tmp48811))))
                  (declare (not safe))
                  (cons __tmp48822 __tmp48810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2273322761_
                                                    _hd2273022751_)
                                                   (_g2272522740_
                                                    _g2272622744_))))
                                           (_g2272522740_ _g2272622744_))))
                                   (_g2272522740_ _g2272622744_)))))
                       (_g2272422793_ (_split-dotted22181_ _L22697_)))))
                  (___kont4400944010_
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
                                   (let ((_e2255922577_
                                          (gx#syntax-e _g2255622574_)))
                                     (let ((_hd2256022581_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2255922577_)))
                                           (_tl2256122584_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2255922577_))))
                                       (if (gx#stx-pair? _tl2256122584_)
                                           (let ((_e2256222587_
                                                  (gx#syntax-e
                                                   _tl2256122584_)))
                                             (let ((_hd2256322591_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2256222587_)))
                                                   (_tl2256422594_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2256222587_))))
                                               (if (gx#stx-null?
                                                    _tl2256422594_)
                                                   ((lambda (_L22597_ _L22599_)
                                                      (let ()
                                                        (let ((__tmp48830
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp48823
                                                               (let ((__tmp48824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48827
                                     (let ((__tmp48829
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp48828
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22597_ '()))))
                                       (declare (not safe))
                                       (cons __tmp48829 __tmp48828)))
                                    (__tmp48825
                                     (let ((__tmp48826
                                            (lambda (_g2261422617_
                                                     _g2261522620_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2261422617_
                                                      _g2261522620_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp48826 '() _L22536_))))
                                (declare (not safe))
                                (cons __tmp48827 __tmp48825))))
                         (declare (not safe))
                         (cons _L22599_ __tmp48824))))
                  (declare (not safe))
                  (cons __tmp48830 __tmp48823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2256322591_
                                                    _hd2256022581_)
                                                   (_g2255522570_
                                                    _g2255622574_))))
                                           (_g2255522570_ _g2255622574_))))
                                   (_g2255522570_ _g2255622574_)))))
                       (_g2255422623_ (_split-dotted22181_ _L22538_)))))
                  (___kont4401344014_
                   (lambda (_L22440_ _L22442_ _L22443_)
                     (let ((__tmp48843 (gx#datum->syntax '#f 'apply))
                           (__tmp48831
                            (let ((__tmp48842
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp48832
                                   (let ((__tmp48833
                                          (let ((__tmp48839
                                                 (let ((__tmp48841
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp48840
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22443_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48841
                                                         __tmp48840)))
                                                (__tmp48834
                                                 (let ((__tmp48835
                                                        (let ((__tmp48838
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp48836
                                                               (let ((__tmp48837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2247022473_ _g2247122476_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2247022473_ _g2247122476_)))))
                         (declare (not safe))
                         (foldr1 __tmp48837 '() _L22440_))))
                  (declare (not safe))
                  (cons __tmp48838 __tmp48836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48835 '()))))
                                            (declare (not safe))
                                            (cons __tmp48839 __tmp48834))))
                                     (declare (not safe))
                                     (cons _L22442_ __tmp48833))))
                              (declare (not safe))
                              (cons __tmp48842 __tmp48832))))
                       (declare (not safe))
                       (cons __tmp48843 __tmp48831))))
                  (___kont4401744018_
                   (lambda (_L22340_ _L22342_ _L22343_)
                     (let ((__tmp48851 (gx#datum->syntax '#f 'call-method))
                           (__tmp48844
                            (let ((__tmp48845
                                   (let ((__tmp48848
                                          (let ((__tmp48850
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp48849
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22343_ '()))))
                                            (declare (not safe))
                                            (cons __tmp48850 __tmp48849)))
                                         (__tmp48846
                                          (let ((__tmp48847
                                                 (lambda (_g2236422367_
                                                          _g2236522370_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2236422367_
                                                           _g2236522370_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp48847 '() _L22340_))))
                                     (declare (not safe))
                                     (cons __tmp48848 __tmp48846))))
                              (declare (not safe))
                              (cons _L22342_ __tmp48845))))
                       (declare (not safe))
                       (cons __tmp48851 __tmp48844)))))
              (let* ((___match4412144122_
                      (lambda (_e2225022280_
                               _hd2225122284_
                               _tl2225222287_
                               _e2225322290_
                               _hd2225422294_
                               _tl2225522297_
                               _e2225622300_
                               _hd2225722304_
                               _tl2225822307_
                               ___splice4401944020_
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
                                                (___kont4401744018_
                                                 _L22340_
                                                 _L22342_
                                                 _L22343_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2218622273_)))))))))
                          (_loop2226222316_ _target2225922310_ '()))))
                     (___match4409544096_
                      (lambda (_e2222922380_
                               _hd2223022384_
                               _tl2223122387_
                               _e2223222390_
                               _hd2223322394_
                               _tl2223422397_
                               _e2223522400_
                               _hd2223622404_
                               _tl2223722407_
                               ___splice4401544016_
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
                                                      (let ((__tmp48852
                                                             (lambda (_g2246222465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2246322468_)
                       (let ()
                         (declare (not safe))
                         (cons _g2246222465_ _g2246322468_)))))
                (declare (not safe))
                (foldr1 __tmp48852 '() _L22440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4401344014_
                                                 _L22440_
                                                 _L22442_
                                                 _L22443_)
                                                (___match4412144122_
                                                 _e2222922380_
                                                 _hd2223022384_
                                                 _tl2223122387_
                                                 _e2223222390_
                                                 _hd2223322394_
                                                 _tl2223422397_
                                                 _e2223522400_
                                                 _hd2223622404_
                                                 _tl2223722407_
                                                 ___splice4401544016_
                                                 _target2223822410_
                                                 _tl2224022413_))))))))
                          (_loop2224122416_ _target2223822410_ '()))))
                     (___match4408144082_
                      (lambda (_e2222922380_
                               _hd2223022384_
                               _tl2223122387_
                               _e2223222390_
                               _hd2223322394_
                               _tl2223422397_)
                        (if (gx#stx-pair? _tl2223422397_)
                            (let ((_e2223522400_ (gx#syntax-e _tl2223422397_)))
                              (let ((_tl2223722407_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2223522400_)))
                                    (_hd2223622404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2223522400_))))
                                (if (gx#stx-pair/null? _tl2223722407_)
                                    (let ((___splice4401544016_
                                           (gx#syntax-split-splice
                                            _tl2223722407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4401544016_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4401544016_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4409544096_
                                             _e2222922380_
                                             _hd2223022384_
                                             _tl2223122387_
                                             _e2223222390_
                                             _hd2223322394_
                                             _tl2223422397_
                                             _e2223522400_
                                             _hd2223622404_
                                             _tl2223722407_
                                             ___splice4401544016_
                                             _target2223822410_
                                             _tl2224022413_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2218622273_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                     (___match4406944070_
                      (lambda (_e2221122486_
                               _hd2221222490_
                               _tl2221322493_
                               _e2221422496_
                               _hd2221522500_
                               _tl2221622503_
                               ___splice4401144012_
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
                                                (___kont4400944010_
                                                 _L22536_
                                                 _L22538_)
                                                (___match4408144082_
                                                 _e2221122486_
                                                 _hd2221222490_
                                                 _tl2221322493_
                                                 _e2221422496_
                                                 _hd2221522500_
                                                 _tl2221622503_))))))))
                          (_loop2222022512_ _target2221722506_ '()))))
                     (___match4406744068_
                      (lambda (_e2221122486_
                               _hd2221222490_
                               _tl2221322493_
                               _e2221422496_
                               _hd2221522500_
                               _tl2221622503_
                               ___splice4401144012_
                               _target2221722506_
                               _tl2221922509_)
                        (if (gx#stx-null? _tl2221922509_)
                            (___match4406944070_
                             _e2221122486_
                             _hd2221222490_
                             _tl2221322493_
                             _e2221422496_
                             _hd2221522500_
                             _tl2221622503_
                             ___splice4401144012_
                             _target2221722506_
                             _tl2221922509_)
                            (if (gx#stx-pair? _tl2221622503_)
                                (let ((_e2223522400_
                                       (gx#syntax-e _tl2221622503_)))
                                  (let ((_tl2223722407_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2223522400_)))
                                        (_hd2223622404_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2223522400_))))
                                    (if (gx#stx-pair/null? _tl2223722407_)
                                        (let ((___splice4401544016_
                                               (gx#syntax-split-splice
                                                _tl2223722407_
                                                '0)))
                                          (let ((_tl2224022413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4401544016_
                                                    '1)))
                                                (_target2223822410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4401544016_
                                                    '0))))
                                            (if (gx#stx-null? _tl2224022413_)
                                                (___match4409544096_
                                                 _e2221122486_
                                                 _hd2221222490_
                                                 _tl2221322493_
                                                 _e2221422496_
                                                 _hd2221522500_
                                                 _tl2221622503_
                                                 _e2223522400_
                                                 _hd2223622404_
                                                 _tl2223722407_
                                                 ___splice4401544016_
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
                     (___match4404944050_
                      (lambda (_e2219122634_
                               _hd2219222638_
                               _tl2219322641_
                               _e2219422644_
                               _hd2219522648_
                               _tl2219622651_
                               ___splice4400744008_
                               _target2219722654_
                               _tl2219922657_
                               _e2220622660_
                               _hd2220722664_
                               _tl2220822667_)
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
                                                      (let ((__tmp48853
                                                             (lambda (_g2271622719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2271722722_)
                       (let ()
                         (declare (not safe))
                         (cons _g2271622719_ _g2271722722_)))))
                (declare (not safe))
                (foldr1 __tmp48853 '() _L22696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4400544006_
                                                 _L22694_
                                                 _L22696_
                                                 _L22697_)
                                                (let ((___splice4401144012_
                                                       (gx#syntax-split-splice
                                                        _tl2219622651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4401144012_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4401144012_
                                                            '0))))
                                                    (___match4406744068_
                                                     _e2219122634_
                                                     _hd2219222638_
                                                     _tl2219322641_
                                                     _e2219422644_
                                                     _hd2219522648_
                                                     _tl2219622651_
                                                     ___splice4401144012_
                                                     _target2221722506_
                                                     _tl2221922509_))))))))))
                          (_loop2220022670_ _target2219722654_ '())))))
                (if (gx#stx-pair? ___stx4400244003_)
                    (let ((_e2219122634_ (gx#syntax-e ___stx4400244003_)))
                      (let ((_tl2219322641_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2219122634_)))
                            (_hd2219222638_
                             (let ()
                               (declare (not safe))
                               (##car _e2219122634_))))
                        (if (gx#stx-pair? _tl2219322641_)
                            (let ((_e2219422644_ (gx#syntax-e _tl2219322641_)))
                              (let ((_tl2219622651_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2219422644_)))
                                    (_hd2219522648_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2219422644_))))
                                (if (gx#stx-pair/null? _tl2219622651_)
                                    (if (fx>= (gx#stx-length _tl2219622651_)
                                              '1)
                                        (let ((___splice4400744008_
                                               (gx#syntax-split-splice
                                                _tl2219622651_
                                                '1)))
                                          (let ((_tl2219922657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4400744008_
                                                    '1)))
                                                (_target2219722654_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4400744008_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2219922657_)
                                                (let ((_e2220622660_
                                                       (gx#syntax-e
                                                        _tl2219922657_)))
                                                  (let ((_tl2220822667_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2220622660_)))
                                                        (_hd2220722664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2220622660_))))
                                                    (if (gx#stx-null?
                                                         _tl2220822667_)
                                                        (___match4404944050_
                                                         _e2219122634_
                                                         _hd2219222638_
                                                         _tl2219322641_
                                                         _e2219422644_
                                                         _hd2219522648_
                                                         _tl2219622651_
                                                         ___splice4400744008_
                                                         _target2219722654_
                                                         _tl2219922657_
                                                         _e2220622660_
                                                         _hd2220722664_
                                                         _tl2220822667_)
                                                        (let ((___splice4401144012_
                                                               (gx#syntax-split-splice
                                                                _tl2219622651_
                                                                '0)))
                                                          (let ((_tl2221922509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4401144012_ '1)))
                        (_target2221722506_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4401144012_ '0))))
                    (if (gx#stx-null? _tl2221922509_)
                        (___match4406944070_
                         _e2219122634_
                         _hd2219222638_
                         _tl2219322641_
                         _e2219422644_
                         _hd2219522648_
                         _tl2219622651_
                         ___splice4401144012_
                         _target2221722506_
                         _tl2221922509_)
                        (if (gx#stx-pair? _tl2219622651_)
                            (let ((_e2223522400_ (gx#syntax-e _tl2219622651_)))
                              (let ((_tl2223722407_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2223522400_)))
                                    (_hd2223622404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2223522400_))))
                                (if (gx#stx-pair/null? _tl2223722407_)
                                    (let ((___splice4401544016_
                                           (gx#syntax-split-splice
                                            _tl2223722407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4401544016_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4401544016_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4409544096_
                                             _e2219122634_
                                             _hd2219222638_
                                             _tl2219322641_
                                             _e2219422644_
                                             _hd2219522648_
                                             _tl2219622651_
                                             _e2223522400_
                                             _hd2223622404_
                                             _tl2223722407_
                                             ___splice4401544016_
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
                                                (let ((___splice4401144012_
                                                       (gx#syntax-split-splice
                                                        _tl2219622651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4401144012_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4401144012_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2221922509_)
                                                        (___match4406944070_
                                                         _e2219122634_
                                                         _hd2219222638_
                                                         _tl2219322641_
                                                         _e2219422644_
                                                         _hd2219522648_
                                                         _tl2219622651_
                                                         ___splice4401144012_
                                                         _target2221722506_
                                                         _tl2221922509_)
                                                        (if (gx#stx-pair?
                                                             _tl2219622651_)
                                                            (let ((_e2223522400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2219622651_)))
                      (let ((_tl2223722407_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2223522400_)))
                            (_hd2223622404_
                             (let ()
                               (declare (not safe))
                               (##car _e2223522400_))))
                        (if (gx#stx-pair/null? _tl2223722407_)
                            (let ((___splice4401544016_
                                   (gx#syntax-split-splice _tl2223722407_ '0)))
                              (let ((_tl2224022413_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4401544016_ '1)))
                                    (_target2223822410_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4401544016_
                                        '0))))
                                (if (gx#stx-null? _tl2224022413_)
                                    (___match4409544096_
                                     _e2219122634_
                                     _hd2219222638_
                                     _tl2219322641_
                                     _e2219422644_
                                     _hd2219522648_
                                     _tl2219622651_
                                     _e2223522400_
                                     _hd2223622404_
                                     _tl2223722407_
                                     ___splice4401544016_
                                     _target2223822410_
                                     _tl2224022413_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                    (let () (declare (not safe)) (_g2218622273_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4401144012_
                                               (gx#syntax-split-splice
                                                _tl2219622651_
                                                '0)))
                                          (let ((_tl2221922509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4401144012_
                                                    '1)))
                                                (_target2221722506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4401144012_
                                                    '0))))
                                            (if (gx#stx-null? _tl2221922509_)
                                                (___match4406944070_
                                                 _e2219122634_
                                                 _hd2219222638_
                                                 _tl2219322641_
                                                 _e2219422644_
                                                 _hd2219522648_
                                                 _tl2219622651_
                                                 ___splice4401144012_
                                                 _target2221722506_
                                                 _tl2221922509_)
                                                (if (gx#stx-pair?
                                                     _tl2219622651_)
                                                    (let ((_e2223522400_
                                                           (gx#syntax-e
                                                            _tl2219622651_)))
                                                      (let ((_tl2223722407_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2223522400_)))
                    (_hd2223622404_
                     (let () (declare (not safe)) (##car _e2223522400_))))
                (if (gx#stx-pair/null? _tl2223722407_)
                    (let ((___splice4401544016_
                           (gx#syntax-split-splice _tl2223722407_ '0)))
                      (let ((_tl2224022413_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4401544016_ '1)))
                            (_target2223822410_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4401544016_ '0))))
                        (if (gx#stx-null? _tl2224022413_)
                            (___match4409544096_
                             _e2219122634_
                             _hd2219222638_
                             _tl2219322641_
                             _e2219422644_
                             _hd2219522648_
                             _tl2219622651_
                             _e2223522400_
                             _hd2223622404_
                             _tl2223722407_
                             ___splice4401544016_
                             _target2223822410_
                             _tl2224022413_)
                            (let () (declare (not safe)) (_g2218622273_)))))
                    (let () (declare (not safe)) (_g2218622273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2218622273_)))))))
                                    (if (gx#stx-pair? _tl2219622651_)
                                        (let ((_e2223522400_
                                               (gx#syntax-e _tl2219622651_)))
                                          (let ((_tl2223722407_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2223522400_)))
                                                (_hd2223622404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2223522400_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2223722407_)
                                                (let ((___splice4401544016_
                                                       (gx#syntax-split-splice
                                                        _tl2223722407_
                                                        '0)))
                                                  (let ((_tl2224022413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4401544016_
                                                            '1)))
                                                        (_target2223822410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4401544016_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2224022413_)
                                                        (___match4409544096_
                                                         _e2219122634_
                                                         _hd2219222638_
                                                         _tl2219322641_
                                                         _e2219422644_
                                                         _hd2219522648_
                                                         _tl2219622651_
                                                         _e2223522400_
                                                         _hd2223622404_
                                                         _tl2223722407_
                                                         ___splice4401544016_
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
        (let* ((___stx4412444125_ _$stx22825_)
               (_g2283022870_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4412444125_))))
          (let ((___kont4412744128_
                 (lambda (_L23008_ _L23010_)
                   (let ((__tmp48859 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp48854
                          (let ((__tmp48855
                                 (let ((__tmp48856
                                        (let ((__tmp48858
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp48857
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23008_ '()))))
                                          (declare (not safe))
                                          (cons __tmp48858 __tmp48857))))
                                   (declare (not safe))
                                   (cons __tmp48856 '()))))
                            (declare (not safe))
                            (cons _L23010_ __tmp48855))))
                     (declare (not safe))
                     (cons __tmp48859 __tmp48854))))
                (___kont4412944130_
                 (lambda (_L22937_ _L22939_ _L22940_ _L22941_)
                   (let ((__tmp48860
                          (let ((__tmp48863
                                 (let ((__tmp48864
                                        (let ((__tmp48865
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22939_ '()))))
                                          (declare (not safe))
                                          (cons _L22940_ __tmp48865))))
                                   (declare (not safe))
                                   (cons _L22941_ __tmp48864)))
                                (__tmp48861
                                 (let ((__tmp48862
                                        (lambda (_g2296222965_ _g2296322968_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2296222965_
                                                  _g2296322968_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp48862 '() _L22937_))))
                            (declare (not safe))
                            (cons __tmp48863 __tmp48861))))
                     (declare (not safe))
                     (cons _L22941_ __tmp48860)))))
            (let* ((___match4417944180_
                    (lambda (_e2284722877_
                             _hd2284822881_
                             _tl2284922884_
                             _e2285022887_
                             _hd2285122891_
                             _tl2285222894_
                             _e2285322897_
                             _hd2285422901_
                             _tl2285522904_
                             ___splice4413144132_
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
                                        (___kont4412944130_
                                         _rest2286422933_
                                         _hd2285422901_
                                         _hd2285122891_
                                         _hd2284822881_))))))
                        (_loop2285922913_ _target2285622907_ '()))))
                   (___match4415344154_
                    (lambda (_e2283422978_
                             _hd2283522982_
                             _tl2283622985_
                             _e2283722988_
                             _hd2283822992_
                             _tl2283922995_
                             _e2284022998_
                             _hd2284123002_
                             _tl2284223005_)
                      (let ((_L23008_ _hd2284123002_)
                            (_L23010_ _hd2283822992_))
                        (if (gx#identifier? _L23008_)
                            (___kont4412744128_ _L23008_ _L23010_)
                            (if (gx#stx-pair/null? _tl2284223005_)
                                (let ((___splice4413144132_
                                       (gx#syntax-split-splice
                                        _tl2284223005_
                                        '0)))
                                  (let ((_tl2285822910_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4413144132_
                                            '1)))
                                        (_target2285622907_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4413144132_
                                            '0))))
                                    (if (gx#stx-null? _tl2285822910_)
                                        (___match4417944180_
                                         _e2283422978_
                                         _hd2283522982_
                                         _tl2283622985_
                                         _e2283722988_
                                         _hd2283822992_
                                         _tl2283922995_
                                         _e2284022998_
                                         _hd2284123002_
                                         _tl2284223005_
                                         ___splice4413144132_
                                         _target2285622907_
                                         _tl2285822910_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2283022870_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2283022870_))))))))
              (if (gx#stx-pair? ___stx4412444125_)
                  (let ((_e2283422978_ (gx#syntax-e ___stx4412444125_)))
                    (let ((_tl2283622985_
                           (let () (declare (not safe)) (##cdr _e2283422978_)))
                          (_hd2283522982_
                           (let ()
                             (declare (not safe))
                             (##car _e2283422978_))))
                      (if (gx#stx-pair? _tl2283622985_)
                          (let ((_e2283722988_ (gx#syntax-e _tl2283622985_)))
                            (let ((_tl2283922995_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2283722988_)))
                                  (_hd2283822992_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2283722988_))))
                              (if (gx#stx-pair? _tl2283922995_)
                                  (let ((_e2284022998_
                                         (gx#syntax-e _tl2283922995_)))
                                    (let ((_tl2284223005_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2284022998_)))
                                          (_hd2284123002_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2284022998_))))
                                      (if (gx#stx-null? _tl2284223005_)
                                          (___match4415344154_
                                           _e2283422978_
                                           _hd2283522982_
                                           _tl2283622985_
                                           _e2283722988_
                                           _hd2283822992_
                                           _tl2283922995_
                                           _e2284022998_
                                           _hd2284123002_
                                           _tl2284223005_)
                                          (if (gx#stx-pair/null?
                                               _tl2284223005_)
                                              (let ((___splice4413144132_
                                                     (gx#syntax-split-splice
                                                      _tl2284223005_
                                                      '0)))
                                                (let ((_tl2285822910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4413144132_
                                                          '1)))
                                                      (_target2285622907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4413144132_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2285822910_)
                                                      (___match4417944180_
                                                       _e2283422978_
                                                       _hd2283522982_
                                                       _tl2283622985_
                                                       _e2283722988_
                                                       _hd2283822992_
                                                       _tl2283922995_
                                                       _e2284022998_
                                                       _hd2284123002_
                                                       _tl2284223005_
                                                       ___splice4413144132_
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
        (let* ((___stx4418244183_ _$stx23030_)
               (_g2303523087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4418244183_))))
          (let ((___kont4418544186_
                 (lambda (_L23263_ _L23265_ _L23266_)
                   (let ((__tmp48872 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp48866
                          (let ((__tmp48867
                                 (let ((__tmp48869
                                        (let ((__tmp48871
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp48870
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23265_ '()))))
                                          (declare (not safe))
                                          (cons __tmp48871 __tmp48870)))
                                       (__tmp48868
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23263_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48869 __tmp48868))))
                            (declare (not safe))
                            (cons _L23266_ __tmp48867))))
                     (declare (not safe))
                     (cons __tmp48872 __tmp48866))))
                (___kont4418744188_
                 (lambda (_L23174_
                          _L23176_
                          _L23177_
                          _L23178_
                          _L23179_
                          _L23180_)
                   (let ((__tmp48873
                          (let ((__tmp48876
                                 (let ((__tmp48881 (gx#datum->syntax '#f '@))
                                       (__tmp48877
                                        (let ((__tmp48878
                                               (let ((__tmp48879
                                                      (let ((__tmp48880
                                                             (lambda (_g2320723210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2320823213_)
                       (let ()
                         (declare (not safe))
                         (cons _g2320723210_ _g2320823213_)))))
                (declare (not safe))
                (foldr1 __tmp48880 '() _L23177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L23178_ __tmp48879))))
                                          (declare (not safe))
                                          (cons _L23179_ __tmp48878))))
                                   (declare (not safe))
                                   (cons __tmp48881 __tmp48877)))
                                (__tmp48874
                                 (let ((__tmp48875
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23174_ '()))))
                                   (declare (not safe))
                                   (cons _L23176_ __tmp48875))))
                            (declare (not safe))
                            (cons __tmp48876 __tmp48874))))
                     (declare (not safe))
                     (cons _L23180_ __tmp48873)))))
            (let* ((___match4425744258_
                    (lambda (_e2305823094_
                             _hd2305923098_
                             _tl2306023101_
                             _e2306123104_
                             _hd2306223108_
                             _tl2306323111_
                             _e2306423114_
                             _hd2306523118_
                             _tl2306623121_
                             ___splice4418944190_
                             _target2306723124_
                             _tl2306923127_
                             _e2307623130_
                             _hd2307723134_
                             _tl2307823137_
                             _e2307923140_
                             _hd2308023144_
                             _tl2308123147_)
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
                                        (___kont4418744188_
                                         _hd2308023144_
                                         _hd2307723134_
                                         _path2307523170_
                                         _hd2306523118_
                                         _hd2306223108_
                                         _hd2305923098_))))))
                        (_loop2307023150_ _target2306723124_ '()))))
                   (___match4421744218_
                    (lambda (_e2304023223_
                             _hd2304123227_
                             _tl2304223230_
                             _e2304323233_
                             _hd2304423237_
                             _tl2304523240_
                             _e2304623243_
                             _hd2304723247_
                             _tl2304823250_
                             _e2304923253_
                             _hd2305023257_
                             _tl2305123260_)
                      (let ((_L23263_ _hd2305023257_)
                            (_L23265_ _hd2304723247_)
                            (_L23266_ _hd2304423237_))
                        (if (gx#identifier? _L23265_)
                            (___kont4418544186_ _L23263_ _L23265_ _L23266_)
                            (if (gx#stx-pair/null? _tl2304823250_)
                                (if (fx>= (gx#stx-length _tl2304823250_) '2)
                                    (let ((___splice4418944190_
                                           (gx#syntax-split-splice
                                            _tl2304823250_
                                            '2)))
                                      (let ((_tl2306923127_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4418944190_
                                                '1)))
                                            (_target2306723124_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4418944190_
                                                '0))))
                                        (if (gx#stx-pair? _tl2306923127_)
                                            (let ((_e2307623130_
                                                   (gx#syntax-e
                                                    _tl2306923127_)))
                                              (let ((_tl2307823137_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2307623130_)))
                                                    (_hd2307723134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2307623130_))))
                                                (if (gx#stx-pair?
                                                     _tl2307823137_)
                                                    (let ((_e2307923140_
                                                           (gx#syntax-e
                                                            _tl2307823137_)))
                                                      (let ((_tl2308123147_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2307923140_)))
                    (_hd2308023144_
                     (let () (declare (not safe)) (##car _e2307923140_))))
                (if (gx#stx-null? _tl2308123147_)
                    (___match4425744258_
                     _e2304023223_
                     _hd2304123227_
                     _tl2304223230_
                     _e2304323233_
                     _hd2304423237_
                     _tl2304523240_
                     _e2304623243_
                     _hd2304723247_
                     _tl2304823250_
                     ___splice4418944190_
                     _target2306723124_
                     _tl2306923127_
                     _e2307623130_
                     _hd2307723134_
                     _tl2307823137_
                     _e2307923140_
                     _hd2308023144_
                     _tl2308123147_)
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
              (if (gx#stx-pair? ___stx4418244183_)
                  (let ((_e2304023223_ (gx#syntax-e ___stx4418244183_)))
                    (let ((_tl2304223230_
                           (let () (declare (not safe)) (##cdr _e2304023223_)))
                          (_hd2304123227_
                           (let ()
                             (declare (not safe))
                             (##car _e2304023223_))))
                      (if (gx#stx-pair? _tl2304223230_)
                          (let ((_e2304323233_ (gx#syntax-e _tl2304223230_)))
                            (let ((_tl2304523240_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2304323233_)))
                                  (_hd2304423237_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2304323233_))))
                              (if (gx#stx-pair? _tl2304523240_)
                                  (let ((_e2304623243_
                                         (gx#syntax-e _tl2304523240_)))
                                    (let ((_tl2304823250_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2304623243_)))
                                          (_hd2304723247_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2304623243_))))
                                      (if (gx#stx-pair? _tl2304823250_)
                                          (let ((_e2304923253_
                                                 (gx#syntax-e _tl2304823250_)))
                                            (let ((_tl2305123260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2304923253_)))
                                                  (_hd2305023257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2304923253_))))
                                              (if (gx#stx-null? _tl2305123260_)
                                                  (___match4421744218_
                                                   _e2304023223_
                                                   _hd2304123227_
                                                   _tl2304223230_
                                                   _e2304323233_
                                                   _hd2304423237_
                                                   _tl2304523240_
                                                   _e2304623243_
                                                   _hd2304723247_
                                                   _tl2304823250_
                                                   _e2304923253_
                                                   _hd2305023257_
                                                   _tl2305123260_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2304823250_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2304823250_)
                        '2)
                  (let ((___splice4418944190_
                         (gx#syntax-split-splice _tl2304823250_ '2)))
                    (let ((_tl2306923127_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4418944190_ '1)))
                          (_target2306723124_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4418944190_ '0))))
                      (if (gx#stx-pair? _tl2306923127_)
                          (let ((_e2307623130_ (gx#syntax-e _tl2306923127_)))
                            (let ((_tl2307823137_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2307623130_)))
                                  (_hd2307723134_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2307623130_))))
                              (if (gx#stx-pair? _tl2307823137_)
                                  (let ((_e2307923140_
                                         (gx#syntax-e _tl2307823137_)))
                                    (let ((_tl2308123147_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2307923140_)))
                                          (_hd2308023144_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2307923140_))))
                                      (if (gx#stx-null? _tl2308123147_)
                                          (___match4425744258_
                                           _e2304023223_
                                           _hd2304123227_
                                           _tl2304223230_
                                           _e2304323233_
                                           _hd2304423237_
                                           _tl2304523240_
                                           _e2304623243_
                                           _hd2304723247_
                                           _tl2304823250_
                                           ___splice4418944190_
                                           _target2306723124_
                                           _tl2306923127_
                                           _e2307623130_
                                           _hd2307723134_
                                           _tl2307823137_
                                           _e2307923140_
                                           _hd2308023144_
                                           _tl2308123147_)
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
                                               _tl2304823250_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2304823250_)
                                                        '2)
                                                  (let ((___splice4418944190_
                                                         (gx#syntax-split-splice
                                                          _tl2304823250_
                                                          '2)))
                                                    (let ((_tl2306923127_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4418944190_
                                                              '1)))
                                                          (_target2306723124_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4418944190_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2306923127_)
                                                          (let ((_e2307623130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2306923127_)))
                    (let ((_tl2307823137_
                           (let () (declare (not safe)) (##cdr _e2307623130_)))
                          (_hd2307723134_
                           (let ()
                             (declare (not safe))
                             (##car _e2307623130_))))
                      (if (gx#stx-pair? _tl2307823137_)
                          (let ((_e2307923140_ (gx#syntax-e _tl2307823137_)))
                            (let ((_tl2308123147_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2307923140_)))
                                  (_hd2308023144_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2307923140_))))
                              (if (gx#stx-null? _tl2308123147_)
                                  (___match4425744258_
                                   _e2304023223_
                                   _hd2304123227_
                                   _tl2304223230_
                                   _e2304323233_
                                   _hd2304423237_
                                   _tl2304523240_
                                   _e2304623243_
                                   _hd2304723247_
                                   _tl2304823250_
                                   ___splice4418944190_
                                   _target2306723124_
                                   _tl2306923127_
                                   _e2307623130_
                                   _hd2307723134_
                                   _tl2307823137_
                                   _e2307923140_
                                   _hd2308023144_
                                   _tl2308123147_)
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
