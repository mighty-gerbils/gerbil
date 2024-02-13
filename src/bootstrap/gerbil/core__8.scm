(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g49666_|
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
                       (lambda _g49370_ (gx#genident _id19361_))
                       (lambda _args21569_
                         (apply gx#stx-identifier _id19361_ _args21569_))))
                  (_get-mixin-slots19369_
                   (lambda (_super21543_ _slots21545_)
                     (letrec* ((_tab21547_
                                (let ()
                                  (declare (not safe))
                                  (make-table 'test: eq?)))
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
                                                (table-ref
                                                 _tab21547_
                                                 _slot21564_
                                                 '#f))
                                              (let ((__tmp49371
                                                     (cdr _rest21560_)))
                                                (declare (not safe))
                                                (_lp21557_
                                                 __tmp49371
                                                 _r21562_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (table-set!
                                                   _tab21547_
                                                   _slot21564_
                                                   '#t))
                                                (let ((__tmp49373
                                                       (cdr _rest21560_))
                                                      (__tmp49372
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21564_
                                                               _r21562_))))
                                                  (declare (not safe))
                                                  (_lp21557_
                                                   __tmp49373
                                                   __tmp49372)))))
                                        (reverse _r21562_))))))
                       (gx#stx-for-each
                        (lambda (_slot21551_)
                          (let ((__tmp49374 (gx#stx-e _slot21551_)))
                            (declare (not safe))
                            (table-set! _tab21547_ __tmp49374 '#t)))
                        _slots21545_)
                       (if (let () (declare (not safe)) (not _super21543_))
                           '()
                           (if (gx#identifier? _super21543_)
                               (let ((__tmp49375
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19370_
                                         _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp49375))
                               (let ((__tmp49376
                                      (concatenate
                                       (map _get-mixin-slots-r19370_
                                            _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp49376)))))))
                  (_get-mixin-slots-r19370_
                   (lambda (_type-id21537_)
                     (let ((_info21540_
                            (gx#syntax-local-value _type-id21537_)))
                       (append (let ((__obj47524 _info21540_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj47524
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj47524
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj47524
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19370_
                                     (let ((__obj47525 _info21540_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj47525
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj47525
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj47525
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
                                                           (let ((_g49377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g1952519545_ '0)))
                     (begin
                       (let ((_g49378_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g49377_)
                                    (##vector-length _g49377_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g49378_ 2)))
                             (error "Context expects 2 values" _g49378_)))
                       (let ((_target1952719548_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g49377_ 0)))
                             (_tl1952919551_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g49377_ 1))))
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
                                                 (let ((__tmp49379
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1953219568_
                                                                _slot1953419561_))))
                                                   (declare (not safe))
                                                   (_loop1953019554_
                                                    _lp-tl1953319571_
                                                    __tmp49379))))
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
                          (let ((_g49380_
                                 (gx#syntax-split-splice _g1959619616_ '0)))
                            (begin
                              (let ((_g49381_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g49380_)
                                           (##vector-length _g49380_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g49381_ 2)))
                                    (error "Context expects 2 values"
                                           _g49381_)))
                              (let ((_target1959819619_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49380_ 0)))
                                    (_tl1960019622_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49380_ 1))))
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
                (let ((__tmp49382
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1960319639_ _getf1960519632_))))
                  (declare (not safe))
                  (_loop1960119625_ _lp-tl1960419642_ __tmp49382))))
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
                                 (let ((_g49383_
                                        (gx#syntax-split-splice
                                         _g1966719687_
                                         '0)))
                                   (begin
                                     (let ((_g49384_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g49383_)
                                                  (##vector-length _g49383_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g49384_ 2)))
                                           (error "Context expects 2 values"
                                                  _g49384_)))
                                     (let ((_target1966919690_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49383_ 0)))
                                           (_tl1967119693_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49383_ 1))))
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
                       (let ((__tmp49385
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd1967419710_ _setf1967619703_))))
                         (declare (not safe))
                         (_loop1967219696_ _lp-tl1967519713_ __tmp49385))))
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
                                        (let ((_g49386_
                                               (gx#syntax-split-splice
                                                _g1974119761_
                                                '0)))
                                          (begin
                                            (let ((_g49387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g49386_)
                                                         (##vector-length
                                                          _g49386_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g49387_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g49387_)))
                                            (let ((_target1974319764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g49386_
                                                      0)))
                                                  (_tl1974519767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g49386_
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
                              (let ((__tmp49388
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1974819784_
                                             _mixin-slot1975019777_))))
                                (declare (not safe))
                                (_loop1974619770_
                                 _lp-tl1974919787_
                                 __tmp49388))))
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
                                               (let ((_g49389_
                                                      (gx#syntax-split-splice
                                                       _g1981319833_
                                                       '0)))
                                                 (begin
                                                   (let ((_g49390_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g49389_)
                        (##vector-length _g49389_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g49390_ 2)))
                 (error "Context expects 2 values" _g49390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1981519836_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49389_
                                                             0)))
                                                         (_tl1981719839_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49389_
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
                                     (let ((__tmp49391
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd1982019856_
                                                    _mixin-getf1982219849_))))
                                       (declare (not safe))
                                       (_loop1981819842_
                                        _lp-tl1982119859_
                                        __tmp49391))))
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
                                                      (let ((_g49392_
                                                             (gx#syntax-split-splice
                                                              _g1988419904_
                                                              '0)))
                                                        (begin
                                                          (let ((_g49393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g49392_)
                               (##vector-length _g49392_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g49393_ 2)))
                        (error "Context expects 2 values" _g49393_)))
                  (let ((_target1988619907_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g49392_ 0)))
                        (_tl1988819910_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g49392_ 1))))
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
                                            (let ((__tmp49394
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd1989119927_
                                                           _mixin-setf1989319920_))))
                                              (declare (not safe))
                                              (_loop1988919913_
                                               _lp-tl1989219930_
                                               __tmp49394))))
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
                                                             (let ((_g49395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1995519975_ '0)))
                       (begin
                         (let ((_g49396_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g49395_)
                                      (##vector-length _g49395_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g49396_ 2)))
                               (error "Context expects 2 values" _g49396_)))
                         (let ((_target1995719978_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49395_ 0)))
                               (_tl1995919981_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49395_ 1))))
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
                                                   (let ((__tmp49397
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
                                                      __tmp49397))))
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
                            (let ((_g49398_
                                   (gx#syntax-split-splice _g2002620046_ '0)))
                              (begin
                                (let ((_g49399_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g49398_)
                                             (##vector-length _g49398_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g49399_ 2)))
                                      (error "Context expects 2 values"
                                             _g49399_)))
                                (let ((_target2002820049_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49398_ 0)))
                                      (_tl2003020052_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49398_ 1))))
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
                  (let ((__tmp49400
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2003320069_ _usetf2003520062_))))
                    (declare (not safe))
                    (_loop2003120055_ _lp-tl2003420072_ __tmp49400))))
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
                                   (let ((_g49401_
                                          (gx#syntax-split-splice
                                           _g2009720117_
                                           '0)))
                                     (begin
                                       (let ((_g49402_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g49401_)
                                                    (##vector-length _g49401_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g49402_ 2)))
                                             (error "Context expects 2 values"
                                                    _g49402_)))
                                       (let ((_target2009920120_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g49401_ 0)))
                                             (_tl2010120123_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g49401_ 1))))
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
                         (let ((__tmp49403
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2010420140_
                                        _mixin-ugetf2010620133_))))
                           (declare (not safe))
                           (_loop2010220126_ _lp-tl2010520143_ __tmp49403))))
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
                                          (let ((_g49404_
                                                 (gx#syntax-split-splice
                                                  _g2016820188_
                                                  '0)))
                                            (begin
                                              (let ((_g49405_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g49404_)
                                                           (##vector-length
                                                            _g49404_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g49405_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g49405_)))
                                              (let ((_target2017020191_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g49404_
                                                        0)))
                                                    (_tl2017220194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g49404_
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
                                (let ((__tmp49406
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2017520211_
                                               _mixin-usetf2017720204_))))
                                  (declare (not safe))
                                  (_loop2017320197_
                                   _lp-tl2017620214_
                                   __tmp49406))))
                            (let ((_mixin-usetf2017820217_
                                   (reverse _mixin-usetf2017720204_)))
                              ((lambda (_L20221_)
                                 (let ()
                                   (let* ((_type-slots20252_
                                           (if (gx#stx-null? _slots19363_)
                                               '()
                                               (let ((__tmp49407
                                                      (let ((__tmp49408
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19720_
                                                                _L19649_
                                                                _L19578_)
                                                               (let ((__tmp49409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2023720242_
                                       _g2023820245_
                                       _g2023920247_
                                       _g2024020249_)
                                (let ((__tmp49410
                                       (let ((__tmp49411
                                              (let ((__tmp49412
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2023720242_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2023820245_
                                                      __tmp49412))))
                                         (declare (not safe))
                                         (cons _g2023920247_ __tmp49411))))
                                  (declare (not safe))
                                  (cons __tmp49410 _g2024020249_)))))
                         (declare (not safe))
                         (foldr* __tmp49409 '() _L19720_ _L19649_ _L19578_)))))
                (declare (not safe))
                (cons __tmp49408 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp49407))))
                                          (_type-mixin-slots20269_
                                           (if (gx#stx-null?
                                                _mixin-slots19737_)
                                               '()
                                               (let ((__tmp49413
                                                      (let ((__tmp49414
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19937_
                                                                _L19866_
                                                                _L19794_)
                                                               (let ((__tmp49415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2025420259_
                                       _g2025520262_
                                       _g2025620264_
                                       _g2025720266_)
                                (let ((__tmp49416
                                       (let ((__tmp49417
                                              (let ((__tmp49418
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2025420259_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2025520262_
                                                      __tmp49418))))
                                         (declare (not safe))
                                         (cons _g2025620264_ __tmp49417))))
                                  (declare (not safe))
                                  (cons __tmp49416 _g2025720266_)))))
                         (declare (not safe))
                         (foldr* __tmp49415 '() _L19937_ _L19866_ _L19794_)))))
                (declare (not safe))
                (cons __tmp49414 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp49413))))
                                          (_type-name20276_
                                           (let ((__tmp49419
                                                  (let ((__tmp49420
                                                         (let ((_$e20272_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body19364_)))
                   (if _$e20272_ _$e20272_ _id19361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49420 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp49419)))
                                          (_type-id20283_
                                           (let ((__tmp49421
                                                  (let ((__tmp49422
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
                                                    (cons __tmp49422 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp49421)))
                                          (_type-constructor20298_
                                           (let ((_$e20294_
                                                  (let ((_e2028520287_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body19364_)))
                                                    (if _e2028520287_
                                                        (let* ((_e20291_
                                                                _e2028520287_)
                                                               (__tmp49423
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e20291_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp49423))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e20294_ _$e20294_ '())))
                                          (_properties20332_
                                           (let* ((_properties20301_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body19364_))
                                                       (let ((__tmp49424
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp49424 '()))
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
                           (__tmp49425
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print20311_))))
                      (declare (not safe))
                      (cons __tmp49425 _properties20301_)))
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
                           (__tmp49426
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal20324_))))
                      (declare (not safe))
                      (cons __tmp49426 _properties20314_)))
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
                                                              (let ((__tmp49427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49428
                                    (let ((__tmp49430
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp49429
                                           (let ()
                                             (declare (not safe))
                                             (cons _L20350_ '()))))
                                      (declare (not safe))
                                      (cons __tmp49430 __tmp49429))))
                               (declare (not safe))
                               (cons __tmp49428 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp49427))))
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
                                               (let ((__tmp49431
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass20383_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp49431))
                                               '()))
                                          (_final?20389_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body19364_)))
                                          (_type-struct20392_
                                           (let ((__tmp49432
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?19378_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp49432)))
                                          (_type-final20395_
                                           (let ((__tmp49433
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?20389_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp49433)))
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
                                                 (let ((_g49434_
                                                        (gx#syntax-split-splice
                                                         _g2039920419_
                                                         '0)))
                                                   (begin
                                                     (let ((_g49435_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g49434_)
                          (##vector-length _g49434_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g49435_ 2)))
                   (error "Context expects 2 values" _g49435_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2040120422_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49434_
                                                               0)))
                                                           (_tl2040320425_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49434_
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
                                       (let ((__tmp49436
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2040620442_
                                                      _type-body2040820435_))))
                                         (declare (not safe))
                                         (_loop2040420428_
                                          _lp-tl2040720445_
                                          __tmp49436))))
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
                                                           (let ((__tmp49437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49440 (gx#datum->syntax '#f 'begin))
                                (__tmp49438
                                 (let ((__tmp49439
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20936_ '()))))
                                   (declare (not safe))
                                   (cons _L20488_ __tmp49439))))
                            (declare (not safe))
                            (cons __tmp49440 __tmp49438))))
                     (declare (not safe))
                     (_wrap19366_ __tmp49437)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2092220933_)))
                                                 (__tmp49441
                                                  (let ((__tmp49442
                                                         (let ((__tmp49477
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp49443
                        (let ((__tmp49444
                               (let ((__tmp49445
                                      (let ((__tmp49476
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp49446
                                             (let ((__tmp49447
                                                    (let ((__tmp49448
                                                           (let ((__tmp49449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49450
                                 (let ((__tmp49451
                                        (let ((__tmp49452
                                               (let ((__tmp49453
                                                      (let ((__tmp49454
                                                             (let ((__tmp49455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49456
                                   (let ((__tmp49457
                                          (let ((__tmp49458
                                                 (let ((__tmp49459
                                                        (let ((__tmp49460
                                                               (let ((__tmp49461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49462
                                     (let ((__tmp49463
                                            (let ((__tmp49464
                                                   (let ((__tmp49465
                                                          (let ((__tmp49466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49467
                                (let ((__tmp49468
                                       (let ((__tmp49469
                                              (let ((__tmp49470
                                                     (let ((__tmp49471
                                                            (let ((__tmp49472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49473
                                  (let ((__tmp49474
                                         (let ((__tmp49475
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L20908_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp49475))))
                                    (declare (not safe))
                                    (cons _L20880_ __tmp49474))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp49473))))
                      (declare (not safe))
                      (cons _L20852_ __tmp49472))))
               (declare (not safe))
               (cons 'mutators: __tmp49471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L20824_ __tmp49470))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp49469))))
                                  (declare (not safe))
                                  (cons _L20796_ __tmp49468))))
                           (declare (not safe))
                           (cons 'predicate: __tmp49467))))
                    (declare (not safe))
                    (cons _L20768_ __tmp49466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp49465))))
                                              (declare (not safe))
                                              (cons _L20740_ __tmp49464))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp49463))))
                                (declare (not safe))
                                (cons _L20712_ __tmp49462))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp49461))))
                  (declare (not safe))
                  (cons _L20684_ __tmp49460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp49459))))
                                            (declare (not safe))
                                            (cons _L20656_ __tmp49458))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp49457))))
                              (declare (not safe))
                              (cons _L20628_ __tmp49456))))
                       (declare (not safe))
                       (cons 'struct?: __tmp49455))))
                (declare (not safe))
                (cons _L20572_ __tmp49454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp49453))))
                                          (declare (not safe))
                                          (cons _L20600_ __tmp49452))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp49451))))
                            (declare (not safe))
                            (cons _L20544_ __tmp49450))))
                     (declare (not safe))
                     (cons 'name: __tmp49449))))
              (declare (not safe))
              (cons _L20516_ __tmp49448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp49447))))
                                        (declare (not safe))
                                        (cons __tmp49476 __tmp49446))))
                                 (declare (not safe))
                                 (cons __tmp49445 '()))))
                          (declare (not safe))
                          (cons _L19396_ __tmp49444))))
                   (declare (not safe))
                   (cons __tmp49477 __tmp49443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp49442))))
                                            (declare (not safe))
                                            (_g2092020951_ __tmp49441))))
                                      _g2089420905_)))
                                  (__tmp49478
                                   (let ((__tmp49505
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp49479
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L20079_
                                             _L19578_)
                                            (let ((__tmp49493
                                                   (lambda (_g2095820965_
                                                            _g2095920968_
                                                            _g2096020970_)
                                                     (let ((__tmp49494
                                                            (let ((__tmp49504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp49495
                           (let ((__tmp49501
                                  (let ((__tmp49503
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp49502
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2095920968_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49503 __tmp49502)))
                                 (__tmp49496
                                  (let ((__tmp49497
                                         (let ((__tmp49498
                                                (let ((__tmp49500
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp49499
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2095820965_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp49500
                                                        __tmp49499))))
                                           (declare (not safe))
                                           (cons __tmp49498 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp49497))))
                             (declare (not safe))
                             (cons __tmp49501 __tmp49496))))
                      (declare (not safe))
                      (cons __tmp49504 __tmp49495))))
               (declare (not safe))
               (cons __tmp49494 _g2096020970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp49480
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L20221_
                                                      _L19794_)
                                                     (let ((__tmp49481
                                                            (lambda (_g2096120973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2096220976_
                             _g2096320978_)
                      (let ((__tmp49482
                             (let ((__tmp49492 (gx#datum->syntax '#f '@list))
                                   (__tmp49483
                                    (let ((__tmp49489
                                           (let ((__tmp49491
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp49490
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2096220976_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49491 __tmp49490)))
                                          (__tmp49484
                                           (let ((__tmp49485
                                                  (let ((__tmp49486
                                                         (let ((__tmp49488
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp49487
                        (let ()
                          (declare (not safe))
                          (cons _g2096120973_ '()))))
                   (declare (not safe))
                   (cons __tmp49488 __tmp49487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49486 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp49485))))
                                      (declare (not safe))
                                      (cons __tmp49489 __tmp49484))))
                               (declare (not safe))
                               (cons __tmp49492 __tmp49483))))
                        (declare (not safe))
                        (cons __tmp49482 _g2096320978_)))))
               (declare (not safe))
               (foldr2 __tmp49481 '() _L20221_ _L19794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldr2 __tmp49493
                                                      __tmp49480
                                                      _L20079_
                                                      _L19578_)))))
                                     (declare (not safe))
                                     (cons __tmp49505 __tmp49479))))
                             (declare (not safe))
                             (_g2089220955_ __tmp49478))))
                       _g2086620877_)))
                   (__tmp49506
                    (let ((__tmp49533 (gx#datum->syntax '#f '@list))
                          (__tmp49507
                           (begin
                             (gx#syntax-check-splice-targets _L20008_ _L19578_)
                             (let ((__tmp49521
                                    (lambda (_g2098420991_
                                             _g2098520994_
                                             _g2098620996_)
                                      (let ((__tmp49522
                                             (let ((__tmp49532
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49523
                                                    (let ((__tmp49529
                                                           (let ((__tmp49531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49530
                          (let ()
                            (declare (not safe))
                            (cons _g2098520994_ '()))))
                     (declare (not safe))
                     (cons __tmp49531 __tmp49530)))
                  (__tmp49524
                   (let ((__tmp49525
                          (let ((__tmp49526
                                 (let ((__tmp49528
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp49527
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2098420991_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49528 __tmp49527))))
                            (declare (not safe))
                            (cons __tmp49526 '()))))
                     (declare (not safe))
                     (cons ':: __tmp49525))))
              (declare (not safe))
              (cons __tmp49529 __tmp49524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49532 __tmp49523))))
                                        (declare (not safe))
                                        (cons __tmp49522 _g2098620996_))))
                                   (__tmp49508
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20150_
                                       _L19794_)
                                      (let ((__tmp49509
                                             (lambda (_g2098720999_
                                                      _g2098821002_
                                                      _g2098921004_)
                                               (let ((__tmp49510
                                                      (let ((__tmp49520
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp49511
                                                             (let ((__tmp49517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49519 (gx#datum->syntax '#f 'quote))
                                  (__tmp49518
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2098821002_ '()))))
                              (declare (not safe))
                              (cons __tmp49519 __tmp49518)))
                           (__tmp49512
                            (let ((__tmp49513
                                   (let ((__tmp49514
                                          (let ((__tmp49516
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp49515
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2098720999_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49516 __tmp49515))))
                                     (declare (not safe))
                                     (cons __tmp49514 '()))))
                              (declare (not safe))
                              (cons ':: __tmp49513))))
                       (declare (not safe))
                       (cons __tmp49517 __tmp49512))))
                (declare (not safe))
                (cons __tmp49520 __tmp49511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49510
                                                       _g2098921004_)))))
                                        (declare (not safe))
                                        (foldr2 __tmp49509
                                                '()
                                                _L20150_
                                                _L19794_)))))
                               (declare (not safe))
                               (foldr2 __tmp49521
                                       __tmp49508
                                       _L20008_
                                       _L19578_)))))
                      (declare (not safe))
                      (cons __tmp49533 __tmp49507))))
              (declare (not safe))
              (_g2086420981_ __tmp49506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2083820849_)))
                                            (__tmp49534
                                             (let ((__tmp49561
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49535
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L19720_
                                                       _L19578_)
                                                      (let ((__tmp49549
                                                             (lambda (_g2101021017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2101121020_
                              _g2101221022_)
                       (let ((__tmp49550
                              (let ((__tmp49560 (gx#datum->syntax '#f '@list))
                                    (__tmp49551
                                     (let ((__tmp49557
                                            (let ((__tmp49559
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49558
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2101121020_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp49559 __tmp49558)))
                                           (__tmp49552
                                            (let ((__tmp49553
                                                   (let ((__tmp49554
                                                          (let ((__tmp49556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp49555
                         (let ()
                           (declare (not safe))
                           (cons _g2101021017_ '()))))
                    (declare (not safe))
                    (cons __tmp49556 __tmp49555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49554 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp49553))))
                                       (declare (not safe))
                                       (cons __tmp49557 __tmp49552))))
                                (declare (not safe))
                                (cons __tmp49560 __tmp49551))))
                         (declare (not safe))
                         (cons __tmp49550 _g2101221022_))))
                    (__tmp49536
                     (begin
                       (gx#syntax-check-splice-targets _L19937_ _L19794_)
                       (let ((__tmp49537
                              (lambda (_g2101321025_
                                       _g2101421028_
                                       _g2101521030_)
                                (let ((__tmp49538
                                       (let ((__tmp49548
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp49539
                                              (let ((__tmp49545
                                                     (let ((__tmp49547
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp49546
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2101421028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp49547 __tmp49546)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49540
                                                     (let ((__tmp49541
                                                            (let ((__tmp49542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49544
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp49543
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2101321025_ '()))))
                             (declare (not safe))
                             (cons __tmp49544 __tmp49543))))
                      (declare (not safe))
                      (cons __tmp49542 '()))))
               (declare (not safe))
               (cons ':: __tmp49541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49545 __tmp49540))))
                                         (declare (not safe))
                                         (cons __tmp49548 __tmp49539))))
                                  (declare (not safe))
                                  (cons __tmp49538 _g2101521030_)))))
                         (declare (not safe))
                         (foldr2 __tmp49537 '() _L19937_ _L19794_)))))
                (declare (not safe))
                (foldr2 __tmp49549 __tmp49536 _L19720_ _L19578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49561 __tmp49535))))
                                       (declare (not safe))
                                       (_g2083621007_ __tmp49534))))
                                 _g2081020821_)))
                             (__tmp49562
                              (let ((__tmp49589 (gx#datum->syntax '#f '@list))
                                    (__tmp49563
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19649_
                                        _L19578_)
                                       (let ((__tmp49577
                                              (lambda (_g2103621043_
                                                       _g2103721046_
                                                       _g2103821048_)
                                                (let ((__tmp49578
                                                       (let ((__tmp49588
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp49579
                                                              (let ((__tmp49585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49587 (gx#datum->syntax '#f 'quote))
                                   (__tmp49586
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2103721046_ '()))))
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
                                                    (declare (not safe))
                                                    (cons _g2103621043_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49584 __tmp49583))))
                                      (declare (not safe))
                                      (cons __tmp49582 '()))))
                               (declare (not safe))
                               (cons ':: __tmp49581))))
                        (declare (not safe))
                        (cons __tmp49585 __tmp49580))))
                 (declare (not safe))
                 (cons __tmp49588 __tmp49579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49578
                                                        _g2103821048_))))
                                             (__tmp49564
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19866_
                                                 _L19794_)
                                                (let ((__tmp49565
                                                       (lambda (_g2103921051_
                                                                _g2104021054_
                                                                _g2104121056_)
                                                         (let ((__tmp49566
                                                                (let ((__tmp49576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49567
                               (let ((__tmp49573
                                      (let ((__tmp49575
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp49574
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2104021054_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49575 __tmp49574)))
                                     (__tmp49568
                                      (let ((__tmp49569
                                             (let ((__tmp49570
                                                    (let ((__tmp49572
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp49571
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2103921051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp49572 __tmp49571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49570 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49569))))
                                 (declare (not safe))
                                 (cons __tmp49573 __tmp49568))))
                          (declare (not safe))
                          (cons __tmp49576 __tmp49567))))
                   (declare (not safe))
                   (cons __tmp49566 _g2104121056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr2 __tmp49565
                                                          '()
                                                          _L19866_
                                                          _L19794_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp49577
                                                 __tmp49564
                                                 _L19649_
                                                 _L19578_)))))
                                (declare (not safe))
                                (cons __tmp49589 __tmp49563))))
                        (declare (not safe))
                        (_g2080821033_ __tmp49562))))
                  _g2078220793_)))
              (__tmp49590
               (let ((__tmp49592 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp49591
                      (let () (declare (not safe)) (cons _L19483_ '()))))
                 (declare (not safe))
                 (cons __tmp49592 __tmp49591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2078021059_ __tmp49590))))
                                           _g2075420765_)))
                                       (__tmp49593
                                        (let ((__tmp49595
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp49594
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19455_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49595 __tmp49594))))
                                  (declare (not safe))
                                  (_g2075221063_ __tmp49593))))
                            _g2072620737_)))
                        (__tmp49596
                         (let ((__tmp49598
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp49597
                                (let ()
                                  (declare (not safe))
                                  (cons _L19427_ '()))))
                           (declare (not safe))
                           (cons __tmp49598 __tmp49597))))
                   (declare (not safe))
                   (_g2072421067_ __tmp49596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2069820709_)))
                                                 (__tmp49599
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
                                                           (let ((__tmp49601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49600
                          (let () (declare (not safe)) (cons _L21121_ '()))))
                     (declare (not safe))
                     (cons __tmp49601 __tmp49600))))
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
                                            (_g2069621071_ __tmp49599))))
                                      _g2067020681_)))
                                  (__tmp49602
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
                                                      (let ((__tmp49604
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp49603
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L21161_ '()))))
                (declare (not safe))
                (cons __tmp49604 __tmp49603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2114721158_))))
                                         (declare (not safe))
                                         (_g2114521173_ _metaclass20383_))
                                       '#f)))
                             (declare (not safe))
                             (_g2066821142_ __tmp49602))))
                       _g2064220653_))))
              (declare (not safe))
              (_g2064021177_ _final?20389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2061420625_))))
                                       (declare (not safe))
                                       (_g2061221181_ _struct?19378_))))
                                 _g2058620597_)))
                             (__tmp49605
                              (let ((__tmp49609 (gx#datum->syntax '#f 'quote))
                                    (__tmp49606
                                     (let ((__tmp49607
                                            (let ((__tmp49608
                                                   (lambda (_g2118821191_
                                                            _g2118921194_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2118821191_
                                                             _g2118921194_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49608
                                                      '()
                                                      _L19578_))))
                                       (declare (not safe))
                                       (cons __tmp49607 '()))))
                                (declare (not safe))
                                (cons __tmp49609 __tmp49606))))
                        (declare (not safe))
                        (_g2058421185_ __tmp49605))))
                  _g2055820569_)))
              (__tmp49610
               (let* ((_g2120121218_
                       (lambda (_g2120221214_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2120221214_)))
                      (_g2120021279_
                       (lambda (_g2120221222_)
                         (if (gx#stx-pair/null? _g2120221222_)
                             (let ((_g49611_
                                    (gx#syntax-split-splice _g2120221222_ '0)))
                               (begin
                                 (let ((_g49612_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49611_)
                                              (##vector-length _g49611_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49612_ 2)))
                                       (error "Context expects 2 values"
                                              _g49612_)))
                                 (let ((_target2120421225_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49611_ 0)))
                                       (_tl2120621228_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49611_ 1))))
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
                   (let ((__tmp49613
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2120921245_ _super-id2121121238_))))
                     (declare (not safe))
                     (_loop2120721231_ _lp-tl2121021248_ __tmp49613))))
               (let ((_super-id2121221251_ (reverse _super-id2121121238_)))
                 ((lambda (_L21255_)
                    (let ()
                      (let ((__tmp49619 (gx#datum->syntax '#f '@list))
                            (__tmp49614
                             (let ((__tmp49615
                                    (lambda (_g2127021273_ _g2127121276_)
                                      (let ((__tmp49616
                                             (let ((__tmp49618
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp49617
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2127021273_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp49618 __tmp49617))))
                                        (declare (not safe))
                                        (cons __tmp49616 _g2127121276_)))))
                               (declare (not safe))
                               (foldr1 __tmp49615 '() _L21255_))))
                        (declare (not safe))
                        (cons __tmp49619 __tmp49614))))
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
                                                 (_g2055621197_ __tmp49610))))
                                           _g2053020541_)))
                                       (__tmp49620
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
                                                       (let ((__tmp49622
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49621
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21302_ '()))))
                 (declare (not safe))
                 (cons __tmp49622 __tmp49621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2128821299_)))
                                               (__tmp49623
                                                (cadr _type-name20276_)))
                                          (declare (not safe))
                                          (_g2128621314_ __tmp49623))))
                                  (declare (not safe))
                                  (_g2052821283_ __tmp49620))))
                            _g2050220513_)))
                        (__tmp49624
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
                              (let ((__tmp49626 (gx#datum->syntax '#f 'quote))
                                    (__tmp49625
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21368_ '()))))
                                (declare (not safe))
                                (cons __tmp49626 __tmp49625))))
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
                   (_g2050021318_ __tmp49624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2047420485_)))
                                                 (__tmp49627
                                                  (let ((__tmp49628
                                                         (let ((__tmp49635
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp49629
                        (let ((__tmp49630
                               (let ((__tmp49631
                                      (let ((__tmp49632
                                             (let ((__tmp49633
                                                    (let ((__tmp49634
                                                           (lambda (_g2139221395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2139321398_)
                     (let ()
                       (declare (not safe))
                       (cons _g2139221395_ _g2139321398_)))))
              (declare (not safe))
              (foldr1 __tmp49634 '() _L20452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L19483_ __tmp49633))))
                                        (declare (not safe))
                                        (cons _L19455_ __tmp49632))))
                                 (declare (not safe))
                                 (cons _L19511_ __tmp49631))))
                          (declare (not safe))
                          (cons _L19427_ __tmp49630))))
                   (declare (not safe))
                   (cons __tmp49635 __tmp49629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp49628))))
                                            (declare (not safe))
                                            (_g2047221389_ __tmp49627))))
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
                                          (__tmp49636
                                           (let ((__tmp49637
                                                  (let ((__tmp49638
                                                         (let ((__tmp49639
                                                                (let ((__tmp49640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49641
                                      (let ((__tmp49642
                                             (let ((__tmp49643
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr1 cons
                                                              _type-mixin-slots20269_
                                                              _type-slots20252_))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp49643
                                                       _type-properties20373_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp49642
                                                _type-metaclass20386_))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp49641 _type-final20395_))))
                          (declare (not safe))
                          (foldr1 cons __tmp49640 _type-struct20392_))))
                   (declare (not safe))
                   (foldr1 cons __tmp49639 _type-constructor20298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            __tmp49638
                                                            _type-name20276_))))
                                             (declare (not safe))
                                             (foldr1 cons
                                                     __tmp49637
                                                     _type-id20283_))))
                                     (declare (not safe))
                                     (_g2039721401_ __tmp49636))))
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
                                   (__tmp49644
                                    (gx#stx-map
                                     (lambda (_g2140821410_)
                                       (_make-id19368_ '"&" _g2140821410_))
                                     (let ((__tmp49645
                                            (lambda (_g2141321416_
                                                     _g2141421419_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2141321416_
                                                      _g2141421419_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp49645 '() _L19937_)))))
                              (declare (not safe))
                              (_g2016621405_ __tmp49644))))
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
                            (__tmp49646
                             (gx#stx-map
                              (lambda (_g2142521427_)
                                (_make-id19368_ '"&" _g2142521427_))
                              (let ((__tmp49647
                                     (lambda (_g2143021433_ _g2143121436_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2143021433_ _g2143121436_)))))
                                (declare (not safe))
                                (foldr1 __tmp49647 '() _L19866_)))))
                       (declare (not safe))
                       (_g2009521422_ __tmp49646))))
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
                     (__tmp49648
                      (gx#stx-map
                       (lambda (_g2144221444_)
                         (_make-id19368_ '"&" _g2144221444_))
                       (let ((__tmp49649
                              (lambda (_g2144721450_ _g2144821453_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2144721450_ _g2144821453_)))))
                         (declare (not safe))
                         (foldr1 __tmp49649 '() _L19720_)))))
                (declare (not safe))
                (_g2002421439_ __tmp49648))))
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
              (__tmp49650
               (gx#stx-map
                (lambda (_g2145921461_) (_make-id19368_ '"&" _g2145921461_))
                (let ((__tmp49651
                       (lambda (_g2146421467_ _g2146521470_)
                         (let ()
                           (declare (not safe))
                           (cons _g2146421467_ _g2146521470_)))))
                  (declare (not safe))
                  (foldr1 __tmp49651 '() _L19649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1995321456_ __tmp49650))))
                                           _mixin-setf1989419933_))))))
                          (let ()
                            (declare (not safe))
                            (_loop1988919913_ _target1988619907_ '())))
                        (let ()
                          (declare (not safe))
                          (_g1988319900_ _g1988419904_))))))
              (let () (declare (not safe)) (_g1988319900_ _g1988419904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp49652
                                                (gx#stx-map
                                                 (lambda (_g2147621478_)
                                                   (_make-id19368_
                                                    _name19372_
                                                    '"-"
                                                    _g2147621478_
                                                    '"-set!"))
                                                 _mixin-slots19737_)))
                                          (declare (not safe))
                                          (_g1988221473_ __tmp49652))))
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
                                        (__tmp49653
                                         (gx#stx-map
                                          (lambda (_g2148521487_)
                                            (_make-id19368_
                                             _name19372_
                                             '"-"
                                             _g2148521487_))
                                          _mixin-slots19737_)))
                                   (declare (not safe))
                                   (_g1981121482_ __tmp49653))))
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
                          (__tmp49654
                           (gx#stx-map
                            (lambda (_g2149821500_)
                              (_make-id19368_
                               _name19372_
                               '"-"
                               _g2149821500_
                               '"-set!"))
                            _slots19363_)))
                     (declare (not safe))
                     (_g1966521495_ __tmp49654))))
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
                   (__tmp49655
                    (gx#stx-map
                     (lambda (_g2150721509_)
                       (_make-id19368_ _name19372_ '"-" _g2150721509_))
                     _slots19363_)))
              (declare (not safe))
              (_g1959421504_ __tmp49655))))
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
                                     (__tmp49656
                                      (map gerbil/core$<MOP>$<MOP:2>#!class-type-descriptor
                                           _super19375_)))
                                (declare (not safe))
                                (_g1949521517_ __tmp49656))))
                          _g1946919480_)))
                      (__tmp49657 (_make-id19368_ _name19372_ '"?")))
                 (declare (not safe))
                 (_g1946721521_ __tmp49657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1944119452_)))
                                               (__tmp49658
                                                (_make-id19368_
                                                 '"make-"
                                                 _name19372_)))
                                          (declare (not safe))
                                          (_g1943921525_ __tmp49658))))
                                    _g1941319424_)))
                                (__tmp49659
                                 (_make-id19368_ _name19372_ '"::t")))
                           (declare (not safe))
                           (_g1941121529_ __tmp49659))))
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
                                             (let ((__tmp49664
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp49660
                                                    (let ((__tmp49661
                                                           (let ((__tmp49662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49663
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L21657_))))
                            (declare (not safe))
                            (cons 'struct: __tmp49663))))
                     (declare (not safe))
                     (cons _L21659_ __tmp49662))))
              (declare (not safe))
              (cons _L21660_ __tmp49661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49664 __tmp49660)))
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
                    (let* ((___stx4448744488_ _hd21768_)
                           (_g2177421786_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4448744488_))))
                      (let ((___kont4449044491_
                             (lambda (_L21814_ _L21816_)
                               (let ((__tmp49665 (gx#syntax->list _L21814_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                  _stx21681_
                                  _L21816_
                                  __tmp49665
                                  _slots21770_
                                  _body21771_))))
                            (___kont4449244493_
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
                        (let ((___match4450044501_
                               (lambda (_e2177821804_
                                        _hd2177921808_
                                        _tl2178021811_)
                                 (let ((_L21814_ _tl2178021811_)
                                       (_L21816_ _hd2177921808_))
                                   (if (and (gx#stx-list? _L21814_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21814_))
                                       (___kont4449044491_ _L21814_ _L21816_)
                                       (___kont4449244493_))))))
                          (if (gx#stx-pair? ___stx4448744488_)
                              (let ((_e2177821804_
                                     (gx#syntax-e ___stx4448744488_)))
                                (let ((_tl2178021811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2177821804_)))
                                      (_hd2177921808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2177821804_))))
                                  (___match4450044501_
                                   _e2177821804_
                                   _hd2177921808_
                                   _tl2178021811_)))
                              (___kont4449244493_))))))))
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
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g49666_|
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
                                                            (let ((__tmp49669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp49667
                           (let ((__tmp49668
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22127_ '()))))
                             (declare (not safe))
                             (cons _L22071_ __tmp49668))))
                      (declare (not safe))
                      (cons __tmp49669 __tmp49667))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2211322124_))))
                                            (_g2211122142_
                                             (_wrap21836_
                                              (let ((__tmp49677
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp49670
                                                     (let ((__tmp49671
                                                            (let ((__tmp49674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49676 (gx#datum->syntax '#f 'quote))
                                 (__tmp49675
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21940_ '()))))
                             (declare (not safe))
                             (cons __tmp49676 __tmp49675)))
                          (__tmp49672
                           (let ((__tmp49673
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22099_ '()))))
                             (declare (not safe))
                             (cons _L22015_ __tmp49673))))
                      (declare (not safe))
                      (cons __tmp49674 __tmp49672))))
               (declare (not safe))
               (cons _L21986_ __tmp49671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49677
                                                      __tmp49670)))))))
                                      _g2208522096_))))
                             (_g2208322146_ _rebind?21968_))))
                       _g2205722068_))))
              (_g2205522150_
               (_wrap21836_
                (let ((__tmp49714 (gx#datum->syntax '#f 'def))
                      (__tmp49678
                       (let ((__tmp49679
                              (let ((__tmp49680
                                     (let ((__tmp49713
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp49681
                                            (let ((__tmp49683
                                                   (let ((__tmp49684
                                                          (let ((__tmp49685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49686
                                (let ((__tmp49712
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp49687
                                       (let ((__tmp49688
                                              (let ((__tmp49689
                                                     (let ((__tmp49704
                                                            (let ((__tmp49711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp49705
                           (let ((__tmp49710 (gx#datum->syntax '#f 'obj))
                                 (__tmp49706
                                  (let ((__tmp49709
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp49707
                                         (let ((__tmp49708
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp49708 '()))))
                                    (declare (not safe))
                                    (cons __tmp49709 __tmp49707))))
                             (declare (not safe))
                             (cons __tmp49710 __tmp49706))))
                      (declare (not safe))
                      (cons __tmp49711 __tmp49705)))
                   (__tmp49690
                    (let ((__tmp49691
                           (let ((__tmp49703
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp49692
                                  (let ((__tmp49693
                                         (let ((__tmp49702
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp49694
                                                (let ((__tmp49699
                                                       (let ((__tmp49701
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49700
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21940_ '()))))
                 (declare (not safe))
                 (cons __tmp49701 __tmp49700)))
              (__tmp49695
               (let ((__tmp49698 (gx#datum->syntax '#f 'arg))
                     (__tmp49696
                      (let ((__tmp49697 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp49697 '()))))
                 (declare (not safe))
                 (cons __tmp49698 __tmp49696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49699
                                                        __tmp49695))))
                                           (declare (not safe))
                                           (cons __tmp49702 __tmp49694))))
                                    (declare (not safe))
                                    (cons _L21986_ __tmp49693))))
                             (declare (not safe))
                             (cons __tmp49703 __tmp49692))))
                      (declare (not safe))
                      (cons __tmp49691 '()))))
               (declare (not safe))
               (cons __tmp49704 __tmp49690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49689 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp49688))))
                                  (declare (not safe))
                                  (cons __tmp49712 __tmp49687))))
                           (declare (not safe))
                           (cons __tmp49686 '()))))
                    (declare (not safe))
                    (cons _L22043_ __tmp49685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49684 '())))
                                                  (__tmp49682
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21938_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49683 __tmp49682))))
                                       (declare (not safe))
                                       (cons __tmp49713 __tmp49681))))
                                (declare (not safe))
                                (cons __tmp49680 '()))))
                         (declare (not safe))
                         (cons _L22015_ __tmp49679))))
                  (declare (not safe))
                  (cons __tmp49714 __tmp49678)))))))
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
                                                  (let ((__obj47526
                                                         _klass21965_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj47526
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj47526
                                                           '9
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj47526
                                                         'type-descriptor)))))
                                               (if (let ((__tmp49715
                                                          (gx#identifier?
                                                           _L21940_)))
                                                     (declare (not safe))
                                                     (not __tmp49715))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21833_
                                                    _L21940_)
                                                   (if (let ((__tmp49716
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L21939_))))
                 (declare (not safe))
                 (not __tmp49716))
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
                      (let ((__tmp49719
                             (gx#stx-identifier _id22801_ (car _split22807_)))
                            (__tmp49717
                             (let ((__tmp49718
                                    (gx#stx-identifier
                                     _id22801_
                                     (cadr _split22807_))))
                               (declare (not safe))
                               (cons __tmp49718 '()))))
                        (declare (not safe))
                        (cons __tmp49719 __tmp49717))))))
          (let* ((___stx4450344504_ _stx22176_)
                 (_g2218622273_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4450344504_))))
            (let ((___kont4450644507_
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
                                                        (let ((__tmp49732
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp49720
                                                               (let ((__tmp49731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp49721
                              (let ((__tmp49722
                                     (let ((__tmp49728
                                            (let ((__tmp49730
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49729
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22767_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49730 __tmp49729)))
                                           (__tmp49723
                                            (let ((__tmp49724
                                                   (let ((__tmp49727
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp49725
                                                          (let ((__tmp49726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2278422787_ _g2278522790_)
                           (let ()
                             (declare (not safe))
                             (cons _g2278422787_ _g2278522790_)))))
                    (declare (not safe))
                    (foldr1 __tmp49726 '() _L22696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49727
                                                           __tmp49725))))
                                              (declare (not safe))
                                              (cons __tmp49724 '()))))
                                       (declare (not safe))
                                       (cons __tmp49728 __tmp49723))))
                                (declare (not safe))
                                (cons _L22769_ __tmp49722))))
                         (declare (not safe))
                         (cons __tmp49731 __tmp49721))))
                  (declare (not safe))
                  (cons __tmp49732 __tmp49720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2273322761_
                                                    _hd2273022751_)
                                                   (_g2272522740_
                                                    _g2272622744_))))
                                           (_g2272522740_ _g2272622744_))))
                                   (_g2272522740_ _g2272622744_)))))
                       (_g2272422793_ (_split-dotted22181_ _L22697_)))))
                  (___kont4451044511_
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
                                                        (let ((__tmp49740
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp49733
                                                               (let ((__tmp49734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49737
                                     (let ((__tmp49739
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp49738
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22597_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49739 __tmp49738)))
                                    (__tmp49735
                                     (let ((__tmp49736
                                            (lambda (_g2261422617_
                                                     _g2261522620_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2261422617_
                                                      _g2261522620_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp49736 '() _L22536_))))
                                (declare (not safe))
                                (cons __tmp49737 __tmp49735))))
                         (declare (not safe))
                         (cons _L22599_ __tmp49734))))
                  (declare (not safe))
                  (cons __tmp49740 __tmp49733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2256322591_
                                                    _hd2256022581_)
                                                   (_g2255522570_
                                                    _g2255622574_))))
                                           (_g2255522570_ _g2255622574_))))
                                   (_g2255522570_ _g2255622574_)))))
                       (_g2255422623_ (_split-dotted22181_ _L22538_)))))
                  (___kont4451444515_
                   (lambda (_L22440_ _L22442_ _L22443_)
                     (let ((__tmp49753 (gx#datum->syntax '#f 'apply))
                           (__tmp49741
                            (let ((__tmp49752
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp49742
                                   (let ((__tmp49743
                                          (let ((__tmp49749
                                                 (let ((__tmp49751
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49750
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22443_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49751
                                                         __tmp49750)))
                                                (__tmp49744
                                                 (let ((__tmp49745
                                                        (let ((__tmp49748
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp49746
                                                               (let ((__tmp49747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2247022473_ _g2247122476_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2247022473_ _g2247122476_)))))
                         (declare (not safe))
                         (foldr1 __tmp49747 '() _L22440_))))
                  (declare (not safe))
                  (cons __tmp49748 __tmp49746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49745 '()))))
                                            (declare (not safe))
                                            (cons __tmp49749 __tmp49744))))
                                     (declare (not safe))
                                     (cons _L22442_ __tmp49743))))
                              (declare (not safe))
                              (cons __tmp49752 __tmp49742))))
                       (declare (not safe))
                       (cons __tmp49753 __tmp49741))))
                  (___kont4451844519_
                   (lambda (_L22340_ _L22342_ _L22343_)
                     (let ((__tmp49761 (gx#datum->syntax '#f 'call-method))
                           (__tmp49754
                            (let ((__tmp49755
                                   (let ((__tmp49758
                                          (let ((__tmp49760
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp49759
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22343_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49760 __tmp49759)))
                                         (__tmp49756
                                          (let ((__tmp49757
                                                 (lambda (_g2236422367_
                                                          _g2236522370_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2236422367_
                                                           _g2236522370_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp49757 '() _L22340_))))
                                     (declare (not safe))
                                     (cons __tmp49758 __tmp49756))))
                              (declare (not safe))
                              (cons _L22342_ __tmp49755))))
                       (declare (not safe))
                       (cons __tmp49761 __tmp49754)))))
              (let* ((___match4462244623_
                      (lambda (_e2225022280_
                               _hd2225122284_
                               _tl2225222287_
                               _e2225322290_
                               _hd2225422294_
                               _tl2225522297_
                               _e2225622300_
                               _hd2225722304_
                               _tl2225822307_
                               ___splice4452044521_
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
                                                (___kont4451844519_
                                                 _L22340_
                                                 _L22342_
                                                 _L22343_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2218622273_)))))))))
                          (_loop2226222316_ _target2225922310_ '()))))
                     (___match4459644597_
                      (lambda (_e2222922380_
                               _hd2223022384_
                               _tl2223122387_
                               _e2223222390_
                               _hd2223322394_
                               _tl2223422397_
                               _e2223522400_
                               _hd2223622404_
                               _tl2223722407_
                               ___splice4451644517_
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
                                                      (let ((__tmp49762
                                                             (lambda (_g2246222465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2246322468_)
                       (let ()
                         (declare (not safe))
                         (cons _g2246222465_ _g2246322468_)))))
                (declare (not safe))
                (foldr1 __tmp49762 '() _L22440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4451444515_
                                                 _L22440_
                                                 _L22442_
                                                 _L22443_)
                                                (___match4462244623_
                                                 _e2222922380_
                                                 _hd2223022384_
                                                 _tl2223122387_
                                                 _e2223222390_
                                                 _hd2223322394_
                                                 _tl2223422397_
                                                 _e2223522400_
                                                 _hd2223622404_
                                                 _tl2223722407_
                                                 ___splice4451644517_
                                                 _target2223822410_
                                                 _tl2224022413_))))))))
                          (_loop2224122416_ _target2223822410_ '()))))
                     (___match4458244583_
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
                                    (let ((___splice4451644517_
                                           (gx#syntax-split-splice
                                            _tl2223722407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4451644517_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4451644517_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4459644597_
                                             _e2222922380_
                                             _hd2223022384_
                                             _tl2223122387_
                                             _e2223222390_
                                             _hd2223322394_
                                             _tl2223422397_
                                             _e2223522400_
                                             _hd2223622404_
                                             _tl2223722407_
                                             ___splice4451644517_
                                             _target2223822410_
                                             _tl2224022413_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2218622273_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                     (___match4457044571_
                      (lambda (_e2221122486_
                               _hd2221222490_
                               _tl2221322493_
                               _e2221422496_
                               _hd2221522500_
                               _tl2221622503_
                               ___splice4451244513_
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
                                                (___kont4451044511_
                                                 _L22536_
                                                 _L22538_)
                                                (___match4458244583_
                                                 _e2221122486_
                                                 _hd2221222490_
                                                 _tl2221322493_
                                                 _e2221422496_
                                                 _hd2221522500_
                                                 _tl2221622503_))))))))
                          (_loop2222022512_ _target2221722506_ '()))))
                     (___match4456844569_
                      (lambda (_e2221122486_
                               _hd2221222490_
                               _tl2221322493_
                               _e2221422496_
                               _hd2221522500_
                               _tl2221622503_
                               ___splice4451244513_
                               _target2221722506_
                               _tl2221922509_)
                        (if (gx#stx-null? _tl2221922509_)
                            (___match4457044571_
                             _e2221122486_
                             _hd2221222490_
                             _tl2221322493_
                             _e2221422496_
                             _hd2221522500_
                             _tl2221622503_
                             ___splice4451244513_
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
                                        (let ((___splice4451644517_
                                               (gx#syntax-split-splice
                                                _tl2223722407_
                                                '0)))
                                          (let ((_tl2224022413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4451644517_
                                                    '1)))
                                                (_target2223822410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4451644517_
                                                    '0))))
                                            (if (gx#stx-null? _tl2224022413_)
                                                (___match4459644597_
                                                 _e2221122486_
                                                 _hd2221222490_
                                                 _tl2221322493_
                                                 _e2221422496_
                                                 _hd2221522500_
                                                 _tl2221622503_
                                                 _e2223522400_
                                                 _hd2223622404_
                                                 _tl2223722407_
                                                 ___splice4451644517_
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
                     (___match4455044551_
                      (lambda (_e2219122634_
                               _hd2219222638_
                               _tl2219322641_
                               _e2219422644_
                               _hd2219522648_
                               _tl2219622651_
                               ___splice4450844509_
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
                                                      (let ((__tmp49763
                                                             (lambda (_g2271622719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2271722722_)
                       (let ()
                         (declare (not safe))
                         (cons _g2271622719_ _g2271722722_)))))
                (declare (not safe))
                (foldr1 __tmp49763 '() _L22696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4450644507_
                                                 _L22694_
                                                 _L22696_
                                                 _L22697_)
                                                (let ((___splice4451244513_
                                                       (gx#syntax-split-splice
                                                        _tl2219622651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4451244513_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4451244513_
                                                            '0))))
                                                    (___match4456844569_
                                                     _e2219122634_
                                                     _hd2219222638_
                                                     _tl2219322641_
                                                     _e2219422644_
                                                     _hd2219522648_
                                                     _tl2219622651_
                                                     ___splice4451244513_
                                                     _target2221722506_
                                                     _tl2221922509_))))))))))
                          (_loop2220022670_ _target2219722654_ '())))))
                (if (gx#stx-pair? ___stx4450344504_)
                    (let ((_e2219122634_ (gx#syntax-e ___stx4450344504_)))
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
                                        (let ((___splice4450844509_
                                               (gx#syntax-split-splice
                                                _tl2219622651_
                                                '1)))
                                          (let ((_tl2219922657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4450844509_
                                                    '1)))
                                                (_target2219722654_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4450844509_
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
                                                        (___match4455044551_
                                                         _e2219122634_
                                                         _hd2219222638_
                                                         _tl2219322641_
                                                         _e2219422644_
                                                         _hd2219522648_
                                                         _tl2219622651_
                                                         ___splice4450844509_
                                                         _target2219722654_
                                                         _tl2219922657_
                                                         _e2220622660_
                                                         _hd2220722664_
                                                         _tl2220822667_)
                                                        (let ((___splice4451244513_
                                                               (gx#syntax-split-splice
                                                                _tl2219622651_
                                                                '0)))
                                                          (let ((_tl2221922509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4451244513_ '1)))
                        (_target2221722506_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4451244513_ '0))))
                    (if (gx#stx-null? _tl2221922509_)
                        (___match4457044571_
                         _e2219122634_
                         _hd2219222638_
                         _tl2219322641_
                         _e2219422644_
                         _hd2219522648_
                         _tl2219622651_
                         ___splice4451244513_
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
                                    (let ((___splice4451644517_
                                           (gx#syntax-split-splice
                                            _tl2223722407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4451644517_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4451644517_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4459644597_
                                             _e2219122634_
                                             _hd2219222638_
                                             _tl2219322641_
                                             _e2219422644_
                                             _hd2219522648_
                                             _tl2219622651_
                                             _e2223522400_
                                             _hd2223622404_
                                             _tl2223722407_
                                             ___splice4451644517_
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
                                                (let ((___splice4451244513_
                                                       (gx#syntax-split-splice
                                                        _tl2219622651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4451244513_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4451244513_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2221922509_)
                                                        (___match4457044571_
                                                         _e2219122634_
                                                         _hd2219222638_
                                                         _tl2219322641_
                                                         _e2219422644_
                                                         _hd2219522648_
                                                         _tl2219622651_
                                                         ___splice4451244513_
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
                            (let ((___splice4451644517_
                                   (gx#syntax-split-splice _tl2223722407_ '0)))
                              (let ((_tl2224022413_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4451644517_ '1)))
                                    (_target2223822410_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4451644517_
                                        '0))))
                                (if (gx#stx-null? _tl2224022413_)
                                    (___match4459644597_
                                     _e2219122634_
                                     _hd2219222638_
                                     _tl2219322641_
                                     _e2219422644_
                                     _hd2219522648_
                                     _tl2219622651_
                                     _e2223522400_
                                     _hd2223622404_
                                     _tl2223722407_
                                     ___splice4451644517_
                                     _target2223822410_
                                     _tl2224022413_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                    (let () (declare (not safe)) (_g2218622273_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4451244513_
                                               (gx#syntax-split-splice
                                                _tl2219622651_
                                                '0)))
                                          (let ((_tl2221922509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4451244513_
                                                    '1)))
                                                (_target2221722506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4451244513_
                                                    '0))))
                                            (if (gx#stx-null? _tl2221922509_)
                                                (___match4457044571_
                                                 _e2219122634_
                                                 _hd2219222638_
                                                 _tl2219322641_
                                                 _e2219422644_
                                                 _hd2219522648_
                                                 _tl2219622651_
                                                 ___splice4451244513_
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
                    (let ((___splice4451644517_
                           (gx#syntax-split-splice _tl2223722407_ '0)))
                      (let ((_tl2224022413_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4451644517_ '1)))
                            (_target2223822410_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4451644517_ '0))))
                        (if (gx#stx-null? _tl2224022413_)
                            (___match4459644597_
                             _e2219122634_
                             _hd2219222638_
                             _tl2219322641_
                             _e2219422644_
                             _hd2219522648_
                             _tl2219622651_
                             _e2223522400_
                             _hd2223622404_
                             _tl2223722407_
                             ___splice4451644517_
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
                                                (let ((___splice4451644517_
                                                       (gx#syntax-split-splice
                                                        _tl2223722407_
                                                        '0)))
                                                  (let ((_tl2224022413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4451644517_
                                                            '1)))
                                                        (_target2223822410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4451644517_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2224022413_)
                                                        (___match4459644597_
                                                         _e2219122634_
                                                         _hd2219222638_
                                                         _tl2219322641_
                                                         _e2219422644_
                                                         _hd2219522648_
                                                         _tl2219622651_
                                                         _e2223522400_
                                                         _hd2223622404_
                                                         _tl2223722407_
                                                         ___splice4451644517_
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
        (let* ((___stx4462544626_ _$stx22825_)
               (_g2283022870_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4462544626_))))
          (let ((___kont4462844629_
                 (lambda (_L23008_ _L23010_)
                   (let ((__tmp49769 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp49764
                          (let ((__tmp49765
                                 (let ((__tmp49766
                                        (let ((__tmp49768
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49767
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23008_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49768 __tmp49767))))
                                   (declare (not safe))
                                   (cons __tmp49766 '()))))
                            (declare (not safe))
                            (cons _L23010_ __tmp49765))))
                     (declare (not safe))
                     (cons __tmp49769 __tmp49764))))
                (___kont4463044631_
                 (lambda (_L22937_ _L22939_ _L22940_ _L22941_)
                   (let ((__tmp49770
                          (let ((__tmp49773
                                 (let ((__tmp49774
                                        (let ((__tmp49775
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22939_ '()))))
                                          (declare (not safe))
                                          (cons _L22940_ __tmp49775))))
                                   (declare (not safe))
                                   (cons _L22941_ __tmp49774)))
                                (__tmp49771
                                 (let ((__tmp49772
                                        (lambda (_g2296222965_ _g2296322968_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2296222965_
                                                  _g2296322968_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp49772 '() _L22937_))))
                            (declare (not safe))
                            (cons __tmp49773 __tmp49771))))
                     (declare (not safe))
                     (cons _L22941_ __tmp49770)))))
            (let* ((___match4468044681_
                    (lambda (_e2284722877_
                             _hd2284822881_
                             _tl2284922884_
                             _e2285022887_
                             _hd2285122891_
                             _tl2285222894_
                             _e2285322897_
                             _hd2285422901_
                             _tl2285522904_
                             ___splice4463244633_
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
                                        (___kont4463044631_
                                         _rest2286422933_
                                         _hd2285422901_
                                         _hd2285122891_
                                         _hd2284822881_))))))
                        (_loop2285922913_ _target2285622907_ '()))))
                   (___match4465444655_
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
                            (___kont4462844629_ _L23008_ _L23010_)
                            (if (gx#stx-pair/null? _tl2284223005_)
                                (let ((___splice4463244633_
                                       (gx#syntax-split-splice
                                        _tl2284223005_
                                        '0)))
                                  (let ((_tl2285822910_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4463244633_
                                            '1)))
                                        (_target2285622907_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4463244633_
                                            '0))))
                                    (if (gx#stx-null? _tl2285822910_)
                                        (___match4468044681_
                                         _e2283422978_
                                         _hd2283522982_
                                         _tl2283622985_
                                         _e2283722988_
                                         _hd2283822992_
                                         _tl2283922995_
                                         _e2284022998_
                                         _hd2284123002_
                                         _tl2284223005_
                                         ___splice4463244633_
                                         _target2285622907_
                                         _tl2285822910_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2283022870_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2283022870_))))))))
              (if (gx#stx-pair? ___stx4462544626_)
                  (let ((_e2283422978_ (gx#syntax-e ___stx4462544626_)))
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
                                          (___match4465444655_
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
                                              (let ((___splice4463244633_
                                                     (gx#syntax-split-splice
                                                      _tl2284223005_
                                                      '0)))
                                                (let ((_tl2285822910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4463244633_
                                                          '1)))
                                                      (_target2285622907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4463244633_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2285822910_)
                                                      (___match4468044681_
                                                       _e2283422978_
                                                       _hd2283522982_
                                                       _tl2283622985_
                                                       _e2283722988_
                                                       _hd2283822992_
                                                       _tl2283922995_
                                                       _e2284022998_
                                                       _hd2284123002_
                                                       _tl2284223005_
                                                       ___splice4463244633_
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
        (let* ((___stx4468344684_ _$stx23030_)
               (_g2303523087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4468344684_))))
          (let ((___kont4468644687_
                 (lambda (_L23263_ _L23265_ _L23266_)
                   (let ((__tmp49782 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp49776
                          (let ((__tmp49777
                                 (let ((__tmp49779
                                        (let ((__tmp49781
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49780
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23265_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49781 __tmp49780)))
                                       (__tmp49778
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23263_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49779 __tmp49778))))
                            (declare (not safe))
                            (cons _L23266_ __tmp49777))))
                     (declare (not safe))
                     (cons __tmp49782 __tmp49776))))
                (___kont4468844689_
                 (lambda (_L23174_
                          _L23176_
                          _L23177_
                          _L23178_
                          _L23179_
                          _L23180_)
                   (let ((__tmp49783
                          (let ((__tmp49786
                                 (let ((__tmp49791 (gx#datum->syntax '#f '@))
                                       (__tmp49787
                                        (let ((__tmp49788
                                               (let ((__tmp49789
                                                      (let ((__tmp49790
                                                             (lambda (_g2320723210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2320823213_)
                       (let ()
                         (declare (not safe))
                         (cons _g2320723210_ _g2320823213_)))))
                (declare (not safe))
                (foldr1 __tmp49790 '() _L23177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L23178_ __tmp49789))))
                                          (declare (not safe))
                                          (cons _L23179_ __tmp49788))))
                                   (declare (not safe))
                                   (cons __tmp49791 __tmp49787)))
                                (__tmp49784
                                 (let ((__tmp49785
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23174_ '()))))
                                   (declare (not safe))
                                   (cons _L23176_ __tmp49785))))
                            (declare (not safe))
                            (cons __tmp49786 __tmp49784))))
                     (declare (not safe))
                     (cons _L23180_ __tmp49783)))))
            (let* ((___match4475844759_
                    (lambda (_e2305823094_
                             _hd2305923098_
                             _tl2306023101_
                             _e2306123104_
                             _hd2306223108_
                             _tl2306323111_
                             _e2306423114_
                             _hd2306523118_
                             _tl2306623121_
                             ___splice4469044691_
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
                                        (___kont4468844689_
                                         _hd2308023144_
                                         _hd2307723134_
                                         _path2307523170_
                                         _hd2306523118_
                                         _hd2306223108_
                                         _hd2305923098_))))))
                        (_loop2307023150_ _target2306723124_ '()))))
                   (___match4471844719_
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
                            (___kont4468644687_ _L23263_ _L23265_ _L23266_)
                            (if (gx#stx-pair/null? _tl2304823250_)
                                (if (fx>= (gx#stx-length _tl2304823250_) '2)
                                    (let ((___splice4469044691_
                                           (gx#syntax-split-splice
                                            _tl2304823250_
                                            '2)))
                                      (let ((_tl2306923127_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4469044691_
                                                '1)))
                                            (_target2306723124_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4469044691_
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
                    (___match4475844759_
                     _e2304023223_
                     _hd2304123227_
                     _tl2304223230_
                     _e2304323233_
                     _hd2304423237_
                     _tl2304523240_
                     _e2304623243_
                     _hd2304723247_
                     _tl2304823250_
                     ___splice4469044691_
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
              (if (gx#stx-pair? ___stx4468344684_)
                  (let ((_e2304023223_ (gx#syntax-e ___stx4468344684_)))
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
                                                  (___match4471844719_
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
                  (let ((___splice4469044691_
                         (gx#syntax-split-splice _tl2304823250_ '2)))
                    (let ((_tl2306923127_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4469044691_ '1)))
                          (_target2306723124_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4469044691_ '0))))
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
                                          (___match4475844759_
                                           _e2304023223_
                                           _hd2304123227_
                                           _tl2304223230_
                                           _e2304323233_
                                           _hd2304423237_
                                           _tl2304523240_
                                           _e2304623243_
                                           _hd2304723247_
                                           _tl2304823250_
                                           ___splice4469044691_
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
                                                  (let ((___splice4469044691_
                                                         (gx#syntax-split-splice
                                                          _tl2304823250_
                                                          '2)))
                                                    (let ((_tl2306923127_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4469044691_
                                                              '1)))
                                                          (_target2306723124_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4469044691_
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
                                  (___match4475844759_
                                   _e2304023223_
                                   _hd2304123227_
                                   _tl2304223230_
                                   _e2304323233_
                                   _hd2304423237_
                                   _tl2304523240_
                                   _e2304623243_
                                   _hd2304723247_
                                   _tl2304823250_
                                   ___splice4469044691_
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
