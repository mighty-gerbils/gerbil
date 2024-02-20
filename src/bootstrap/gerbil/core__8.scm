(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g51900_|
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
                       (lambda _g51582_ (gx#genident _id19361_))
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
                                              (let ((__tmp51585
                                                     (cdr _rest21560_)))
                                                (declare (not safe))
                                                (_lp21557_
                                                 __tmp51585
                                                 _r21562_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (hash-put!
                                                   _tab21547_
                                                   _slot21564_
                                                   '#t))
                                                (let ((__tmp51584
                                                       (cdr _rest21560_))
                                                      (__tmp51583
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21564_
                                                               _r21562_))))
                                                  (declare (not safe))
                                                  (_lp21557_
                                                   __tmp51584
                                                   __tmp51583)))))
                                        (reverse _r21562_))))))
                       (gx#stx-for-each
                        (lambda (_slot21551_)
                          (let ((__tmp51586 (gx#stx-e _slot21551_)))
                            (declare (not safe))
                            (hash-put! _tab21547_ __tmp51586 '#t)))
                        _slots21545_)
                       (if (let () (declare (not safe)) (not _super21543_))
                           '()
                           (if (gx#identifier? _super21543_)
                               (let ((__tmp51588
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19370_
                                         _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp51588))
                               (let ((__tmp51587
                                      (concatenate
                                       (map _get-mixin-slots-r19370_
                                            _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp51587)))))))
                  (_get-mixin-slots-r19370_
                   (lambda (_type-id21537_)
                     (let ((_info21540_
                            (gx#syntax-local-value _type-id21537_)))
                       (append (let ((__obj49628 _info21540_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj49628
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj49628
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj49628
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19370_
                                     (let ((__obj49629 _info21540_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49629
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49629
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj49629
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
                                                           (let ((_g51589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g1952519545_ '0)))
                     (begin
                       (let ((_g51590_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g51589_)
                                    (##vector-length _g51589_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g51590_ 2)))
                             (error "Context expects 2 values" _g51590_)))
                       (let ((_target1952719548_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g51589_ 0)))
                             (_tl1952919551_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g51589_ 1))))
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
                                                 (let ((__tmp51839
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1953219568_
                                                                _slot1953419561_))))
                                                   (declare (not safe))
                                                   (_loop1953019554_
                                                    _lp-tl1953319571_
                                                    __tmp51839))))
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
                          (let ((_g51591_
                                 (gx#syntax-split-splice _g1959619616_ '0)))
                            (begin
                              (let ((_g51592_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g51591_)
                                           (##vector-length _g51591_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g51592_ 2)))
                                    (error "Context expects 2 values"
                                           _g51592_)))
                              (let ((_target1959819619_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g51591_ 0)))
                                    (_tl1960019622_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g51591_ 1))))
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
                (let ((__tmp51837
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1960319639_ _getf1960519632_))))
                  (declare (not safe))
                  (_loop1960119625_ _lp-tl1960419642_ __tmp51837))))
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
                                 (let ((_g51593_
                                        (gx#syntax-split-splice
                                         _g1966719687_
                                         '0)))
                                   (begin
                                     (let ((_g51594_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g51593_)
                                                  (##vector-length _g51593_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g51594_ 2)))
                                           (error "Context expects 2 values"
                                                  _g51594_)))
                                     (let ((_target1966919690_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g51593_ 0)))
                                           (_tl1967119693_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g51593_ 1))))
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
                       (let ((__tmp51835
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd1967419710_ _setf1967619703_))))
                         (declare (not safe))
                         (_loop1967219696_ _lp-tl1967519713_ __tmp51835))))
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
                                        (let ((_g51595_
                                               (gx#syntax-split-splice
                                                _g1974119761_
                                                '0)))
                                          (begin
                                            (let ((_g51596_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g51595_)
                                                         (##vector-length
                                                          _g51595_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g51596_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g51596_)))
                                            (let ((_target1974319764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g51595_
                                                      0)))
                                                  (_tl1974519767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g51595_
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
                              (let ((__tmp51834
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1974819784_
                                             _mixin-slot1975019777_))))
                                (declare (not safe))
                                (_loop1974619770_
                                 _lp-tl1974919787_
                                 __tmp51834))))
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
                                               (let ((_g51597_
                                                      (gx#syntax-split-splice
                                                       _g1981319833_
                                                       '0)))
                                                 (begin
                                                   (let ((_g51598_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g51597_)
                        (##vector-length _g51597_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g51598_ 2)))
                 (error "Context expects 2 values" _g51598_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1981519836_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g51597_
                                                             0)))
                                                         (_tl1981719839_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g51597_
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
                                     (let ((__tmp51832
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd1982019856_
                                                    _mixin-getf1982219849_))))
                                       (declare (not safe))
                                       (_loop1981819842_
                                        _lp-tl1982119859_
                                        __tmp51832))))
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
                                                      (let ((_g51599_
                                                             (gx#syntax-split-splice
                                                              _g1988419904_
                                                              '0)))
                                                        (begin
                                                          (let ((_g51600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g51599_)
                               (##vector-length _g51599_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g51600_ 2)))
                        (error "Context expects 2 values" _g51600_)))
                  (let ((_target1988619907_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g51599_ 0)))
                        (_tl1988819910_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g51599_ 1))))
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
                                            (let ((__tmp51830
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd1989119927_
                                                           _mixin-setf1989319920_))))
                                              (declare (not safe))
                                              (_loop1988919913_
                                               _lp-tl1989219930_
                                               __tmp51830))))
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
                                                             (let ((_g51601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1995519975_ '0)))
                       (begin
                         (let ((_g51602_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g51601_)
                                      (##vector-length _g51601_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g51602_ 2)))
                               (error "Context expects 2 values" _g51602_)))
                         (let ((_target1995719978_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g51601_ 0)))
                               (_tl1995919981_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g51601_ 1))))
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
                                                   (let ((__tmp51828
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
                                                      __tmp51828))))
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
                            (let ((_g51603_
                                   (gx#syntax-split-splice _g2002620046_ '0)))
                              (begin
                                (let ((_g51604_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g51603_)
                                             (##vector-length _g51603_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g51604_ 2)))
                                      (error "Context expects 2 values"
                                             _g51604_)))
                                (let ((_target2002820049_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g51603_ 0)))
                                      (_tl2003020052_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g51603_ 1))))
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
                  (let ((__tmp51826
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2003320069_ _usetf2003520062_))))
                    (declare (not safe))
                    (_loop2003120055_ _lp-tl2003420072_ __tmp51826))))
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
                                   (let ((_g51605_
                                          (gx#syntax-split-splice
                                           _g2009720117_
                                           '0)))
                                     (begin
                                       (let ((_g51606_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g51605_)
                                                    (##vector-length _g51605_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g51606_ 2)))
                                             (error "Context expects 2 values"
                                                    _g51606_)))
                                       (let ((_target2009920120_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g51605_ 0)))
                                             (_tl2010120123_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g51605_ 1))))
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
                         (let ((__tmp51824
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2010420140_
                                        _mixin-ugetf2010620133_))))
                           (declare (not safe))
                           (_loop2010220126_ _lp-tl2010520143_ __tmp51824))))
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
                                          (let ((_g51607_
                                                 (gx#syntax-split-splice
                                                  _g2016820188_
                                                  '0)))
                                            (begin
                                              (let ((_g51608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g51607_)
                                                           (##vector-length
                                                            _g51607_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g51608_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g51608_)))
                                              (let ((_target2017020191_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g51607_
                                                        0)))
                                                    (_tl2017220194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g51607_
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
                                (let ((__tmp51822
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2017520211_
                                               _mixin-usetf2017720204_))))
                                  (declare (not safe))
                                  (_loop2017320197_
                                   _lp-tl2017620214_
                                   __tmp51822))))
                            (let ((_mixin-usetf2017820217_
                                   (reverse _mixin-usetf2017720204_)))
                              ((lambda (_L20221_)
                                 (let ()
                                   (let* ((_type-slots20252_
                                           (if (gx#stx-null? _slots19363_)
                                               '()
                                               (let ((__tmp51609
                                                      (let ((__tmp51610
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
                                (let ((__tmp51611
                                       (let ((__tmp51612
                                              (let ((__tmp51613
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2023720242_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2023820245_
                                                      __tmp51613))))
                                         (declare (not safe))
                                         (cons _g2023920247_ __tmp51612))))
                                  (declare (not safe))
                                  (cons __tmp51611 _g2024020249_)))
                              '()
                              _L19720_
                              _L19649_
                              _L19578_))))
                (declare (not safe))
                (cons __tmp51610 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp51609))))
                                          (_type-mixin-slots20269_
                                           (if (gx#stx-null?
                                                _mixin-slots19737_)
                                               '()
                                               (let ((__tmp51614
                                                      (let ((__tmp51615
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
                                (let ((__tmp51616
                                       (let ((__tmp51617
                                              (let ((__tmp51618
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2025420259_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2025520262_
                                                      __tmp51618))))
                                         (declare (not safe))
                                         (cons _g2025620264_ __tmp51617))))
                                  (declare (not safe))
                                  (cons __tmp51616 _g2025720266_)))
                              '()
                              _L19937_
                              _L19866_
                              _L19794_))))
                (declare (not safe))
                (cons __tmp51615 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp51614))))
                                          (_type-name20276_
                                           (let ((__tmp51619
                                                  (let ((__tmp51620
                                                         (let ((_$e20272_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body19364_)))
                   (if _$e20272_ _$e20272_ _id19361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp51620 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp51619)))
                                          (_type-id20283_
                                           (let ((__tmp51621
                                                  (let ((__tmp51622
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
                                                    (cons __tmp51622 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp51621)))
                                          (_type-constructor20298_
                                           (let ((_$e20294_
                                                  (let ((_e2028520287_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body19364_)))
                                                    (if _e2028520287_
                                                        (let* ((_e20291_
                                                                _e2028520287_)
                                                               (__tmp51623
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e20291_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp51623))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e20294_ _$e20294_ '())))
                                          (_properties20332_
                                           (let* ((_properties20301_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body19364_))
                                                       (let ((__tmp51624
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp51624 '()))
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
                           (__tmp51625
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print20311_))))
                      (declare (not safe))
                      (cons __tmp51625 _properties20301_)))
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
                           (__tmp51626
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal20324_))))
                      (declare (not safe))
                      (cons __tmp51626 _properties20314_)))
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
                                                              (let ((__tmp51627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp51628
                                    (let ((__tmp51630
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp51629
                                           (let ()
                                             (declare (not safe))
                                             (cons _L20350_ '()))))
                                      (declare (not safe))
                                      (cons __tmp51630 __tmp51629))))
                               (declare (not safe))
                               (cons __tmp51628 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp51627))))
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
                                               (let ((__tmp51631
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass20383_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp51631))
                                               '()))
                                          (_final?20389_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body19364_)))
                                          (_type-struct20392_
                                           (let ((__tmp51632
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?19378_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp51632)))
                                          (_type-final20395_
                                           (let ((__tmp51633
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?20389_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp51633)))
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
                                                 (let ((_g51634_
                                                        (gx#syntax-split-splice
                                                         _g2039920419_
                                                         '0)))
                                                   (begin
                                                     (let ((_g51635_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g51634_)
                          (##vector-length _g51634_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g51635_ 2)))
                   (error "Context expects 2 values" _g51635_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2040120422_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g51634_
                                                               0)))
                                                           (_tl2040320425_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g51634_
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
                                       (let ((__tmp51820
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2040620442_
                                                      _type-body2040820435_))))
                                         (declare (not safe))
                                         (_loop2040420428_
                                          _lp-tl2040720445_
                                          __tmp51820))))
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
                                                           (let ((__tmp51636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp51639 (gx#datum->syntax '#f 'begin))
                                (__tmp51637
                                 (let ((__tmp51638
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20936_ '()))))
                                   (declare (not safe))
                                   (cons _L20488_ __tmp51638))))
                            (declare (not safe))
                            (cons __tmp51639 __tmp51637))))
                     (declare (not safe))
                     (_wrap19366_ __tmp51636)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2092220933_)))
                                                 (__tmp51640
                                                  (let ((__tmp51641
                                                         (let ((__tmp51676
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp51642
                        (let ((__tmp51643
                               (let ((__tmp51644
                                      (let ((__tmp51675
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp51645
                                             (let ((__tmp51646
                                                    (let ((__tmp51647
                                                           (let ((__tmp51648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp51649
                                 (let ((__tmp51650
                                        (let ((__tmp51651
                                               (let ((__tmp51652
                                                      (let ((__tmp51653
                                                             (let ((__tmp51654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51655
                                   (let ((__tmp51656
                                          (let ((__tmp51657
                                                 (let ((__tmp51658
                                                        (let ((__tmp51659
                                                               (let ((__tmp51660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp51661
                                     (let ((__tmp51662
                                            (let ((__tmp51663
                                                   (let ((__tmp51664
                                                          (let ((__tmp51665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp51666
                                (let ((__tmp51667
                                       (let ((__tmp51668
                                              (let ((__tmp51669
                                                     (let ((__tmp51670
                                                            (let ((__tmp51671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp51672
                                  (let ((__tmp51673
                                         (let ((__tmp51674
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L20908_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp51674))))
                                    (declare (not safe))
                                    (cons _L20880_ __tmp51673))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp51672))))
                      (declare (not safe))
                      (cons _L20852_ __tmp51671))))
               (declare (not safe))
               (cons 'mutators: __tmp51670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L20824_ __tmp51669))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp51668))))
                                  (declare (not safe))
                                  (cons _L20796_ __tmp51667))))
                           (declare (not safe))
                           (cons 'predicate: __tmp51666))))
                    (declare (not safe))
                    (cons _L20768_ __tmp51665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp51664))))
                                              (declare (not safe))
                                              (cons _L20740_ __tmp51663))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp51662))))
                                (declare (not safe))
                                (cons _L20712_ __tmp51661))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp51660))))
                  (declare (not safe))
                  (cons _L20684_ __tmp51659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp51658))))
                                            (declare (not safe))
                                            (cons _L20656_ __tmp51657))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp51656))))
                              (declare (not safe))
                              (cons _L20628_ __tmp51655))))
                       (declare (not safe))
                       (cons 'struct?: __tmp51654))))
                (declare (not safe))
                (cons _L20572_ __tmp51653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp51652))))
                                          (declare (not safe))
                                          (cons _L20600_ __tmp51651))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp51650))))
                            (declare (not safe))
                            (cons _L20544_ __tmp51649))))
                     (declare (not safe))
                     (cons 'name: __tmp51648))))
              (declare (not safe))
              (cons _L20516_ __tmp51647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp51646))))
                                        (declare (not safe))
                                        (cons __tmp51675 __tmp51645))))
                                 (declare (not safe))
                                 (cons __tmp51644 '()))))
                          (declare (not safe))
                          (cons _L19396_ __tmp51643))))
                   (declare (not safe))
                   (cons __tmp51676 __tmp51642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp51641))))
                                            (declare (not safe))
                                            (_g2092020951_ __tmp51640))))
                                      _g2089420905_)))
                                  (__tmp51677
                                   (let ((__tmp51701
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp51678
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L20079_
                                             _L19578_)
                                            (foldr (lambda (_g2095820965_
                                                            _g2095920968_
                                                            _g2096020970_)
                                                     (let ((__tmp51679
                                                            (let ((__tmp51689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp51680
                           (let ((__tmp51686
                                  (let ((__tmp51688
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp51687
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2095920968_ '()))))
                                    (declare (not safe))
                                    (cons __tmp51688 __tmp51687)))
                                 (__tmp51681
                                  (let ((__tmp51682
                                         (let ((__tmp51683
                                                (let ((__tmp51685
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp51684
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2095820965_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp51685
                                                        __tmp51684))))
                                           (declare (not safe))
                                           (cons __tmp51683 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp51682))))
                             (declare (not safe))
                             (cons __tmp51686 __tmp51681))))
                      (declare (not safe))
                      (cons __tmp51689 __tmp51680))))
               (declare (not safe))
               (cons __tmp51679 _g2096020970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L20221_
                                                      _L19794_)
                                                     (foldr (lambda (_g2096120973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2096220976_
                             _g2096320978_)
                      (let ((__tmp51690
                             (let ((__tmp51700 (gx#datum->syntax '#f '@list))
                                   (__tmp51691
                                    (let ((__tmp51697
                                           (let ((__tmp51699
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp51698
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2096220976_ '()))))
                                             (declare (not safe))
                                             (cons __tmp51699 __tmp51698)))
                                          (__tmp51692
                                           (let ((__tmp51693
                                                  (let ((__tmp51694
                                                         (let ((__tmp51696
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp51695
                        (let ()
                          (declare (not safe))
                          (cons _g2096120973_ '()))))
                   (declare (not safe))
                   (cons __tmp51696 __tmp51695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp51694 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp51693))))
                                      (declare (not safe))
                                      (cons __tmp51697 __tmp51692))))
                               (declare (not safe))
                               (cons __tmp51700 __tmp51691))))
                        (declare (not safe))
                        (cons __tmp51690 _g2096320978_)))
                    '()
                    _L20221_
                    _L19794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _L20079_
                                                   _L19578_))))
                                     (declare (not safe))
                                     (cons __tmp51701 __tmp51678))))
                             (declare (not safe))
                             (_g2089220955_ __tmp51677))))
                       _g2086620877_)))
                   (__tmp51702
                    (let ((__tmp51726 (gx#datum->syntax '#f '@list))
                          (__tmp51703
                           (begin
                             (gx#syntax-check-splice-targets _L20008_ _L19578_)
                             (foldr (lambda (_g2098420991_
                                             _g2098520994_
                                             _g2098620996_)
                                      (let ((__tmp51704
                                             (let ((__tmp51714
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp51705
                                                    (let ((__tmp51711
                                                           (let ((__tmp51713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp51712
                          (let ()
                            (declare (not safe))
                            (cons _g2098520994_ '()))))
                     (declare (not safe))
                     (cons __tmp51713 __tmp51712)))
                  (__tmp51706
                   (let ((__tmp51707
                          (let ((__tmp51708
                                 (let ((__tmp51710
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp51709
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2098420991_ '()))))
                                   (declare (not safe))
                                   (cons __tmp51710 __tmp51709))))
                            (declare (not safe))
                            (cons __tmp51708 '()))))
                     (declare (not safe))
                     (cons ':: __tmp51707))))
              (declare (not safe))
              (cons __tmp51711 __tmp51706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51714 __tmp51705))))
                                        (declare (not safe))
                                        (cons __tmp51704 _g2098620996_)))
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20150_
                                       _L19794_)
                                      (foldr (lambda (_g2098720999_
                                                      _g2098821002_
                                                      _g2098921004_)
                                               (let ((__tmp51715
                                                      (let ((__tmp51725
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp51716
                                                             (let ((__tmp51722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51724 (gx#datum->syntax '#f 'quote))
                                  (__tmp51723
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2098821002_ '()))))
                              (declare (not safe))
                              (cons __tmp51724 __tmp51723)))
                           (__tmp51717
                            (let ((__tmp51718
                                   (let ((__tmp51719
                                          (let ((__tmp51721
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp51720
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2098720999_ '()))))
                                            (declare (not safe))
                                            (cons __tmp51721 __tmp51720))))
                                     (declare (not safe))
                                     (cons __tmp51719 '()))))
                              (declare (not safe))
                              (cons ':: __tmp51718))))
                       (declare (not safe))
                       (cons __tmp51722 __tmp51717))))
                (declare (not safe))
                (cons __tmp51725 __tmp51716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp51715
                                                       _g2098921004_)))
                                             '()
                                             _L20150_
                                             _L19794_))
                                    _L20008_
                                    _L19578_))))
                      (declare (not safe))
                      (cons __tmp51726 __tmp51703))))
              (declare (not safe))
              (_g2086420981_ __tmp51702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2083820849_)))
                                            (__tmp51727
                                             (let ((__tmp51751
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp51728
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L19720_
                                                       _L19578_)
                                                      (foldr (lambda (_g2101021017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2101121020_
                              _g2101221022_)
                       (let ((__tmp51729
                              (let ((__tmp51739 (gx#datum->syntax '#f '@list))
                                    (__tmp51730
                                     (let ((__tmp51736
                                            (let ((__tmp51738
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp51737
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2101121020_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp51738 __tmp51737)))
                                           (__tmp51731
                                            (let ((__tmp51732
                                                   (let ((__tmp51733
                                                          (let ((__tmp51735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp51734
                         (let ()
                           (declare (not safe))
                           (cons _g2101021017_ '()))))
                    (declare (not safe))
                    (cons __tmp51735 __tmp51734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp51733 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp51732))))
                                       (declare (not safe))
                                       (cons __tmp51736 __tmp51731))))
                                (declare (not safe))
                                (cons __tmp51739 __tmp51730))))
                         (declare (not safe))
                         (cons __tmp51729 _g2101221022_)))
                     (begin
                       (gx#syntax-check-splice-targets _L19937_ _L19794_)
                       (foldr (lambda (_g2101321025_
                                       _g2101421028_
                                       _g2101521030_)
                                (let ((__tmp51740
                                       (let ((__tmp51750
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp51741
                                              (let ((__tmp51747
                                                     (let ((__tmp51749
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp51748
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2101421028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp51749 __tmp51748)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp51742
                                                     (let ((__tmp51743
                                                            (let ((__tmp51744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp51746
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp51745
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2101321025_ '()))))
                             (declare (not safe))
                             (cons __tmp51746 __tmp51745))))
                      (declare (not safe))
                      (cons __tmp51744 '()))))
               (declare (not safe))
               (cons ':: __tmp51743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp51747 __tmp51742))))
                                         (declare (not safe))
                                         (cons __tmp51750 __tmp51741))))
                                  (declare (not safe))
                                  (cons __tmp51740 _g2101521030_)))
                              '()
                              _L19937_
                              _L19794_))
                     _L19720_
                     _L19578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51751 __tmp51728))))
                                       (declare (not safe))
                                       (_g2083621007_ __tmp51727))))
                                 _g2081020821_)))
                             (__tmp51752
                              (let ((__tmp51776 (gx#datum->syntax '#f '@list))
                                    (__tmp51753
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19649_
                                        _L19578_)
                                       (foldr (lambda (_g2103621043_
                                                       _g2103721046_
                                                       _g2103821048_)
                                                (let ((__tmp51754
                                                       (let ((__tmp51764
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp51755
                                                              (let ((__tmp51761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp51763 (gx#datum->syntax '#f 'quote))
                                   (__tmp51762
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2103721046_ '()))))
                               (declare (not safe))
                               (cons __tmp51763 __tmp51762)))
                            (__tmp51756
                             (let ((__tmp51757
                                    (let ((__tmp51758
                                           (let ((__tmp51760
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp51759
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2103621043_ '()))))
                                             (declare (not safe))
                                             (cons __tmp51760 __tmp51759))))
                                      (declare (not safe))
                                      (cons __tmp51758 '()))))
                               (declare (not safe))
                               (cons ':: __tmp51757))))
                        (declare (not safe))
                        (cons __tmp51761 __tmp51756))))
                 (declare (not safe))
                 (cons __tmp51764 __tmp51755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp51754
                                                        _g2103821048_)))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19866_
                                                 _L19794_)
                                                (foldr (lambda (_g2103921051_
                                                                _g2104021054_
                                                                _g2104121056_)
                                                         (let ((__tmp51765
                                                                (let ((__tmp51775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp51766
                               (let ((__tmp51772
                                      (let ((__tmp51774
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp51773
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2104021054_ '()))))
                                        (declare (not safe))
                                        (cons __tmp51774 __tmp51773)))
                                     (__tmp51767
                                      (let ((__tmp51768
                                             (let ((__tmp51769
                                                    (let ((__tmp51771
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp51770
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2103921051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp51771 __tmp51770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51769 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp51768))))
                                 (declare (not safe))
                                 (cons __tmp51772 __tmp51767))))
                          (declare (not safe))
                          (cons __tmp51775 __tmp51766))))
                   (declare (not safe))
                   (cons __tmp51765 _g2104121056_)))
               '()
               _L19866_
               _L19794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _L19649_
                                              _L19578_))))
                                (declare (not safe))
                                (cons __tmp51776 __tmp51753))))
                        (declare (not safe))
                        (_g2080821033_ __tmp51752))))
                  _g2078220793_)))
              (__tmp51777
               (let ((__tmp51779 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp51778
                      (let () (declare (not safe)) (cons _L19483_ '()))))
                 (declare (not safe))
                 (cons __tmp51779 __tmp51778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2078021059_ __tmp51777))))
                                           _g2075420765_)))
                                       (__tmp51780
                                        (let ((__tmp51782
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp51781
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19455_ '()))))
                                          (declare (not safe))
                                          (cons __tmp51782 __tmp51781))))
                                  (declare (not safe))
                                  (_g2075221063_ __tmp51780))))
                            _g2072620737_)))
                        (__tmp51783
                         (let ((__tmp51785
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp51784
                                (let ()
                                  (declare (not safe))
                                  (cons _L19427_ '()))))
                           (declare (not safe))
                           (cons __tmp51785 __tmp51784))))
                   (declare (not safe))
                   (_g2072421067_ __tmp51783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2069820709_)))
                                                 (__tmp51786
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
                                                           (let ((__tmp51788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp51787
                          (let () (declare (not safe)) (cons _L21121_ '()))))
                     (declare (not safe))
                     (cons __tmp51788 __tmp51787))))
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
                                            (_g2069621071_ __tmp51786))))
                                      _g2067020681_)))
                                  (__tmp51789
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
                                                      (let ((__tmp51791
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp51790
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L21161_ '()))))
                (declare (not safe))
                (cons __tmp51791 __tmp51790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2114721158_))))
                                         (declare (not safe))
                                         (_g2114521173_ _metaclass20383_))
                                       '#f)))
                             (declare (not safe))
                             (_g2066821142_ __tmp51789))))
                       _g2064220653_))))
              (declare (not safe))
              (_g2064021177_ _final?20389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2061420625_))))
                                       (declare (not safe))
                                       (_g2061221181_ _struct?19378_))))
                                 _g2058620597_)))
                             (__tmp51792
                              (let ((__tmp51795 (gx#datum->syntax '#f 'quote))
                                    (__tmp51793
                                     (let ((__tmp51794
                                            (foldr (lambda (_g2118821191_
                                                            _g2118921194_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2118821191_
                                                             _g2118921194_)))
                                                   '()
                                                   _L19578_)))
                                       (declare (not safe))
                                       (cons __tmp51794 '()))))
                                (declare (not safe))
                                (cons __tmp51795 __tmp51793))))
                        (declare (not safe))
                        (_g2058421185_ __tmp51792))))
                  _g2055820569_)))
              (__tmp51796
               (let* ((_g2120121218_
                       (lambda (_g2120221214_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2120221214_)))
                      (_g2120021279_
                       (lambda (_g2120221222_)
                         (if (gx#stx-pair/null? _g2120221222_)
                             (let ((_g51797_
                                    (gx#syntax-split-splice _g2120221222_ '0)))
                               (begin
                                 (let ((_g51798_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g51797_)
                                              (##vector-length _g51797_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g51798_ 2)))
                                       (error "Context expects 2 values"
                                              _g51798_)))
                                 (let ((_target2120421225_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g51797_ 0)))
                                       (_tl2120621228_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g51797_ 1))))
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
                   (let ((__tmp51804
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2120921245_ _super-id2121121238_))))
                     (declare (not safe))
                     (_loop2120721231_ _lp-tl2121021248_ __tmp51804))))
               (let ((_super-id2121221251_ (reverse _super-id2121121238_)))
                 ((lambda (_L21255_)
                    (let ()
                      (let ((__tmp51803 (gx#datum->syntax '#f '@list))
                            (__tmp51799
                             (foldr (lambda (_g2127021273_ _g2127121276_)
                                      (let ((__tmp51800
                                             (let ((__tmp51802
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp51801
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2127021273_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp51802 __tmp51801))))
                                        (declare (not safe))
                                        (cons __tmp51800 _g2127121276_)))
                                    '()
                                    _L21255_)))
                        (declare (not safe))
                        (cons __tmp51803 __tmp51799))))
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
                                                 (_g2055621197_ __tmp51796))))
                                           _g2053020541_)))
                                       (__tmp51805
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
                                                       (let ((__tmp51807
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp51806
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21302_ '()))))
                 (declare (not safe))
                 (cons __tmp51807 __tmp51806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2128821299_)))
                                               (__tmp51808
                                                (cadr _type-name20276_)))
                                          (declare (not safe))
                                          (_g2128621314_ __tmp51808))))
                                  (declare (not safe))
                                  (_g2052821283_ __tmp51805))))
                            _g2050220513_)))
                        (__tmp51809
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
                              (let ((__tmp51811 (gx#datum->syntax '#f 'quote))
                                    (__tmp51810
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21368_ '()))))
                                (declare (not safe))
                                (cons __tmp51811 __tmp51810))))
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
                   (_g2050021318_ __tmp51809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2047420485_)))
                                                 (__tmp51812
                                                  (let ((__tmp51813
                                                         (let ((__tmp51819
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp51814
                        (let ((__tmp51815
                               (let ((__tmp51816
                                      (let ((__tmp51817
                                             (let ((__tmp51818
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
                                               (cons _L19483_ __tmp51818))))
                                        (declare (not safe))
                                        (cons _L19455_ __tmp51817))))
                                 (declare (not safe))
                                 (cons _L19511_ __tmp51816))))
                          (declare (not safe))
                          (cons _L19427_ __tmp51815))))
                   (declare (not safe))
                   (cons __tmp51819 __tmp51814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp51813))))
                                            (declare (not safe))
                                            (_g2047221389_ __tmp51812))))
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
                                          (__tmp51821
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
                                     (_g2039721401_ __tmp51821))))
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
                                   (__tmp51823
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
                              (_g2016621405_ __tmp51823))))
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
                            (__tmp51825
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
                       (_g2009521422_ __tmp51825))))
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
                     (__tmp51827
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
                (_g2002421439_ __tmp51827))))
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
              (__tmp51829
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
                                                 (_g1995321456_ __tmp51829))))
                                           _mixin-setf1989419933_))))))
                          (let ()
                            (declare (not safe))
                            (_loop1988919913_ _target1988619907_ '())))
                        (let ()
                          (declare (not safe))
                          (_g1988319900_ _g1988419904_))))))
              (let () (declare (not safe)) (_g1988319900_ _g1988419904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp51831
                                                (gx#stx-map
                                                 (lambda (_g2147621478_)
                                                   (_make-id19368_
                                                    _name19372_
                                                    '"-"
                                                    _g2147621478_
                                                    '"-set!"))
                                                 _mixin-slots19737_)))
                                          (declare (not safe))
                                          (_g1988221473_ __tmp51831))))
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
                                        (__tmp51833
                                         (gx#stx-map
                                          (lambda (_g2148521487_)
                                            (_make-id19368_
                                             _name19372_
                                             '"-"
                                             _g2148521487_))
                                          _mixin-slots19737_)))
                                   (declare (not safe))
                                   (_g1981121482_ __tmp51833))))
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
                          (__tmp51836
                           (gx#stx-map
                            (lambda (_g2149821500_)
                              (_make-id19368_
                               _name19372_
                               '"-"
                               _g2149821500_
                               '"-set!"))
                            _slots19363_)))
                     (declare (not safe))
                     (_g1966521495_ __tmp51836))))
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
                   (__tmp51838
                    (gx#stx-map
                     (lambda (_g2150721509_)
                       (_make-id19368_ _name19372_ '"-" _g2150721509_))
                     _slots19363_)))
              (declare (not safe))
              (_g1959421504_ __tmp51838))))
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
                                     (__tmp51840
                                      (map gerbil/core$<MOP>$<MOP:2>#!class-type-descriptor
                                           _super19375_)))
                                (declare (not safe))
                                (_g1949521517_ __tmp51840))))
                          _g1946919480_)))
                      (__tmp51841 (_make-id19368_ _name19372_ '"?")))
                 (declare (not safe))
                 (_g1946721521_ __tmp51841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1944119452_)))
                                               (__tmp51842
                                                (_make-id19368_
                                                 '"make-"
                                                 _name19372_)))
                                          (declare (not safe))
                                          (_g1943921525_ __tmp51842))))
                                    _g1941319424_)))
                                (__tmp51843
                                 (_make-id19368_ _name19372_ '"::t")))
                           (declare (not safe))
                           (_g1941121529_ __tmp51843))))
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
                                             (let ((__tmp51848
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp51844
                                                    (let ((__tmp51845
                                                           (let ((__tmp51846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp51847
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L21657_))))
                            (declare (not safe))
                            (cons 'struct: __tmp51847))))
                     (declare (not safe))
                     (cons _L21659_ __tmp51846))))
              (declare (not safe))
              (cons _L21660_ __tmp51845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51848 __tmp51844)))
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
                    (let* ((___stx4659146592_ _hd21768_)
                           (_g2177421786_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4659146592_))))
                      (let ((___kont4659446595_
                             (lambda (_L21814_ _L21816_)
                               (let ((__tmp51849 (gx#syntax->list _L21814_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                  _stx21681_
                                  _L21816_
                                  __tmp51849
                                  _slots21770_
                                  _body21771_))))
                            (___kont4659646597_
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
                        (let ((___match4660446605_
                               (lambda (_e2178021804_
                                        _hd2177921808_
                                        _tl2177821811_)
                                 (let ((_L21814_ _tl2177821811_)
                                       (_L21816_ _hd2177921808_))
                                   (if (and (gx#stx-list? _L21814_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21814_))
                                       (___kont4659446595_ _L21814_ _L21816_)
                                       (___kont4659646597_))))))
                          (if (gx#stx-pair? ___stx4659146592_)
                              (let ((_e2178021804_
                                     (gx#syntax-e ___stx4659146592_)))
                                (let ((_tl2177821811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2178021804_)))
                                      (_hd2177921808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2178021804_))))
                                  (___match4660446605_
                                   _e2178021804_
                                   _hd2177921808_
                                   _tl2177821811_)))
                              (___kont4659646597_))))))))
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
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g51900_|
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
                                                            (let ((__tmp51854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp51852
                           (let ((__tmp51853
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22127_ '()))))
                             (declare (not safe))
                             (cons _L22071_ __tmp51853))))
                      (declare (not safe))
                      (cons __tmp51854 __tmp51852))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2211322124_))))
                                            (_g2211122142_
                                             (_wrap21836_
                                              (let ((__tmp51862
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp51855
                                                     (let ((__tmp51856
                                                            (let ((__tmp51859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp51861 (gx#datum->syntax '#f 'quote))
                                 (__tmp51860
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21940_ '()))))
                             (declare (not safe))
                             (cons __tmp51861 __tmp51860)))
                          (__tmp51857
                           (let ((__tmp51858
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22099_ '()))))
                             (declare (not safe))
                             (cons _L22015_ __tmp51858))))
                      (declare (not safe))
                      (cons __tmp51859 __tmp51857))))
               (declare (not safe))
               (cons _L21986_ __tmp51856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp51862
                                                      __tmp51855)))))))
                                      _g2208522096_))))
                             (_g2208322146_ _rebind?21968_))))
                       _g2205722068_))))
              (_g2205522150_
               (_wrap21836_
                (let ((__tmp51899 (gx#datum->syntax '#f 'def))
                      (__tmp51863
                       (let ((__tmp51864
                              (let ((__tmp51865
                                     (let ((__tmp51898
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp51866
                                            (let ((__tmp51868
                                                   (let ((__tmp51869
                                                          (let ((__tmp51870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp51871
                                (let ((__tmp51897
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp51872
                                       (let ((__tmp51873
                                              (let ((__tmp51874
                                                     (let ((__tmp51889
                                                            (let ((__tmp51896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp51890
                           (let ((__tmp51895 (gx#datum->syntax '#f 'obj))
                                 (__tmp51891
                                  (let ((__tmp51894
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp51892
                                         (let ((__tmp51893
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp51893 '()))))
                                    (declare (not safe))
                                    (cons __tmp51894 __tmp51892))))
                             (declare (not safe))
                             (cons __tmp51895 __tmp51891))))
                      (declare (not safe))
                      (cons __tmp51896 __tmp51890)))
                   (__tmp51875
                    (let ((__tmp51876
                           (let ((__tmp51888
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp51877
                                  (let ((__tmp51878
                                         (let ((__tmp51887
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp51879
                                                (let ((__tmp51884
                                                       (let ((__tmp51886
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp51885
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21940_ '()))))
                 (declare (not safe))
                 (cons __tmp51886 __tmp51885)))
              (__tmp51880
               (let ((__tmp51883 (gx#datum->syntax '#f 'arg))
                     (__tmp51881
                      (let ((__tmp51882 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp51882 '()))))
                 (declare (not safe))
                 (cons __tmp51883 __tmp51881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp51884
                                                        __tmp51880))))
                                           (declare (not safe))
                                           (cons __tmp51887 __tmp51879))))
                                    (declare (not safe))
                                    (cons _L21986_ __tmp51878))))
                             (declare (not safe))
                             (cons __tmp51888 __tmp51877))))
                      (declare (not safe))
                      (cons __tmp51876 '()))))
               (declare (not safe))
               (cons __tmp51889 __tmp51875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp51874 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp51873))))
                                  (declare (not safe))
                                  (cons __tmp51897 __tmp51872))))
                           (declare (not safe))
                           (cons __tmp51871 '()))))
                    (declare (not safe))
                    (cons _L22043_ __tmp51870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp51869 '())))
                                                  (__tmp51867
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21938_ '()))))
                                              (declare (not safe))
                                              (cons __tmp51868 __tmp51867))))
                                       (declare (not safe))
                                       (cons __tmp51898 __tmp51866))))
                                (declare (not safe))
                                (cons __tmp51865 '()))))
                         (declare (not safe))
                         (cons _L22015_ __tmp51864))))
                  (declare (not safe))
                  (cons __tmp51899 __tmp51863)))))))
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
                                                  (let ((__obj49630
                                                         _klass21965_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49630
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49630
                                                           '9
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj49630
                                                         'type-descriptor)))))
                                               (if (let ((__tmp51851
                                                          (gx#identifier?
                                                           _L21940_)))
                                                     (declare (not safe))
                                                     (not __tmp51851))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21833_
                                                    _L21940_)
                                                   (if (let ((__tmp51850
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L21939_))))
                 (declare (not safe))
                 (not __tmp51850))
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
                      (let ((__tmp51903
                             (gx#stx-identifier _id22801_ (car _split22807_)))
                            (__tmp51901
                             (let ((__tmp51902
                                    (gx#stx-identifier
                                     _id22801_
                                     (cadr _split22807_))))
                               (declare (not safe))
                               (cons __tmp51902 '()))))
                        (declare (not safe))
                        (cons __tmp51903 __tmp51901))))))
          (let* ((___stx4660746608_ _stx22176_)
                 (_g2218622273_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4660746608_))))
            (let ((___kont4661046611_
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
                                                        (let ((__tmp51915
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp51904
                                                               (let ((__tmp51914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp51905
                              (let ((__tmp51906
                                     (let ((__tmp51911
                                            (let ((__tmp51913
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp51912
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22767_ '()))))
                                              (declare (not safe))
                                              (cons __tmp51913 __tmp51912)))
                                           (__tmp51907
                                            (let ((__tmp51908
                                                   (let ((__tmp51910
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp51909
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
                                                     (cons __tmp51910
                                                           __tmp51909))))
                                              (declare (not safe))
                                              (cons __tmp51908 '()))))
                                       (declare (not safe))
                                       (cons __tmp51911 __tmp51907))))
                                (declare (not safe))
                                (cons _L22769_ __tmp51906))))
                         (declare (not safe))
                         (cons __tmp51914 __tmp51905))))
                  (declare (not safe))
                  (cons __tmp51915 __tmp51904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2273322761_
                                                    _hd2273022751_)
                                                   (_g2272522740_
                                                    _g2272622744_))))
                                           (_g2272522740_ _g2272622744_))))
                                   (_g2272522740_ _g2272622744_)))))
                       (_g2272422793_ (_split-dotted22181_ _L22697_)))))
                  (___kont4661446615_
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
                                                        (let ((__tmp51922
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp51916
                                                               (let ((__tmp51917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp51919
                                     (let ((__tmp51921
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp51920
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22597_ '()))))
                                       (declare (not safe))
                                       (cons __tmp51921 __tmp51920)))
                                    (__tmp51918
                                     (foldr (lambda (_g2261422617_
                                                     _g2261522620_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2261422617_
                                                      _g2261522620_)))
                                            '()
                                            _L22536_)))
                                (declare (not safe))
                                (cons __tmp51919 __tmp51918))))
                         (declare (not safe))
                         (cons _L22599_ __tmp51917))))
                  (declare (not safe))
                  (cons __tmp51922 __tmp51916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2256322591_
                                                    _hd2256022581_)
                                                   (_g2255522570_
                                                    _g2255622574_))))
                                           (_g2255522570_ _g2255622574_))))
                                   (_g2255522570_ _g2255622574_)))))
                       (_g2255422623_ (_split-dotted22181_ _L22538_)))))
                  (___kont4661846619_
                   (lambda (_L22440_ _L22442_ _L22443_)
                     (let ((__tmp51934 (gx#datum->syntax '#f 'apply))
                           (__tmp51923
                            (let ((__tmp51933
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp51924
                                   (let ((__tmp51925
                                          (let ((__tmp51930
                                                 (let ((__tmp51932
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp51931
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22443_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp51932
                                                         __tmp51931)))
                                                (__tmp51926
                                                 (let ((__tmp51927
                                                        (let ((__tmp51929
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp51928
                                                               (foldr (lambda (_g2247022473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2247122476_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2247022473_ _g2247122476_)))
                              '()
                              _L22440_)))
                  (declare (not safe))
                  (cons __tmp51929 __tmp51928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp51927 '()))))
                                            (declare (not safe))
                                            (cons __tmp51930 __tmp51926))))
                                     (declare (not safe))
                                     (cons _L22442_ __tmp51925))))
                              (declare (not safe))
                              (cons __tmp51933 __tmp51924))))
                       (declare (not safe))
                       (cons __tmp51934 __tmp51923))))
                  (___kont4662246623_
                   (lambda (_L22340_ _L22342_ _L22343_)
                     (let ((__tmp51941 (gx#datum->syntax '#f 'call-method))
                           (__tmp51935
                            (let ((__tmp51936
                                   (let ((__tmp51938
                                          (let ((__tmp51940
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp51939
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22343_ '()))))
                                            (declare (not safe))
                                            (cons __tmp51940 __tmp51939)))
                                         (__tmp51937
                                          (foldr (lambda (_g2236422367_
                                                          _g2236522370_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2236422367_
                                                           _g2236522370_)))
                                                 '()
                                                 _L22340_)))
                                     (declare (not safe))
                                     (cons __tmp51938 __tmp51937))))
                              (declare (not safe))
                              (cons _L22342_ __tmp51936))))
                       (declare (not safe))
                       (cons __tmp51941 __tmp51935)))))
              (let* ((___match4672646727_
                      (lambda (_e2225222280_
                               _hd2225122284_
                               _tl2225022287_
                               _e2225522290_
                               _hd2225422294_
                               _tl2225322297_
                               _e2225822300_
                               _hd2225722304_
                               _tl2225622307_
                               ___splice4662446625_
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
                                                (___kont4662246623_
                                                 _L22340_
                                                 _L22342_
                                                 _L22343_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2218622273_)))))))))
                          (_loop2226222316_ _target2225922310_ '()))))
                     (___match4670046701_
                      (lambda (_e2223122380_
                               _hd2223022384_
                               _tl2222922387_
                               _e2223422390_
                               _hd2223322394_
                               _tl2223222397_
                               _e2223722400_
                               _hd2223622404_
                               _tl2223522407_
                               ___splice4662046621_
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
                                                (___kont4661846619_
                                                 _L22440_
                                                 _L22442_
                                                 _L22443_)
                                                (___match4672646727_
                                                 _e2223122380_
                                                 _hd2223022384_
                                                 _tl2222922387_
                                                 _e2223422390_
                                                 _hd2223322394_
                                                 _tl2223222397_
                                                 _e2223722400_
                                                 _hd2223622404_
                                                 _tl2223522407_
                                                 ___splice4662046621_
                                                 _target2223822410_
                                                 _tl2224022413_))))))))
                          (_loop2224122416_ _target2223822410_ '()))))
                     (___match4668646687_
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
                                    (let ((___splice4662046621_
                                           (gx#syntax-split-splice
                                            _tl2223522407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4662046621_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4662046621_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4670046701_
                                             _e2223122380_
                                             _hd2223022384_
                                             _tl2222922387_
                                             _e2223422390_
                                             _hd2223322394_
                                             _tl2223222397_
                                             _e2223722400_
                                             _hd2223622404_
                                             _tl2223522407_
                                             ___splice4662046621_
                                             _target2223822410_
                                             _tl2224022413_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2218622273_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                     (___match4667446675_
                      (lambda (_e2221322486_
                               _hd2221222490_
                               _tl2221122493_
                               _e2221622496_
                               _hd2221522500_
                               _tl2221422503_
                               ___splice4661646617_
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
                                                (___kont4661446615_
                                                 _L22536_
                                                 _L22538_)
                                                (___match4668646687_
                                                 _e2221322486_
                                                 _hd2221222490_
                                                 _tl2221122493_
                                                 _e2221622496_
                                                 _hd2221522500_
                                                 _tl2221422503_))))))))
                          (_loop2222022512_ _target2221722506_ '()))))
                     (___match4667246673_
                      (lambda (_e2221322486_
                               _hd2221222490_
                               _tl2221122493_
                               _e2221622496_
                               _hd2221522500_
                               _tl2221422503_
                               ___splice4661646617_
                               _target2221722506_
                               _tl2221922509_)
                        (if (gx#stx-null? _tl2221922509_)
                            (___match4667446675_
                             _e2221322486_
                             _hd2221222490_
                             _tl2221122493_
                             _e2221622496_
                             _hd2221522500_
                             _tl2221422503_
                             ___splice4661646617_
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
                                        (let ((___splice4662046621_
                                               (gx#syntax-split-splice
                                                _tl2223522407_
                                                '0)))
                                          (let ((_tl2224022413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4662046621_
                                                    '1)))
                                                (_target2223822410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4662046621_
                                                    '0))))
                                            (if (gx#stx-null? _tl2224022413_)
                                                (___match4670046701_
                                                 _e2221322486_
                                                 _hd2221222490_
                                                 _tl2221122493_
                                                 _e2221622496_
                                                 _hd2221522500_
                                                 _tl2221422503_
                                                 _e2223722400_
                                                 _hd2223622404_
                                                 _tl2223522407_
                                                 ___splice4662046621_
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
                     (___match4665446655_
                      (lambda (_e2219322634_
                               _hd2219222638_
                               _tl2219122641_
                               _e2219622644_
                               _hd2219522648_
                               _tl2219422651_
                               ___splice4661246613_
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
                                                (___kont4661046611_
                                                 _L22694_
                                                 _L22696_
                                                 _L22697_)
                                                (let ((___splice4661646617_
                                                       (gx#syntax-split-splice
                                                        _tl2219422651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4661646617_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4661646617_
                                                            '0))))
                                                    (___match4667246673_
                                                     _e2219322634_
                                                     _hd2219222638_
                                                     _tl2219122641_
                                                     _e2219622644_
                                                     _hd2219522648_
                                                     _tl2219422651_
                                                     ___splice4661646617_
                                                     _target2221722506_
                                                     _tl2221922509_))))))))))
                          (_loop2220022670_ _target2219722654_ '())))))
                (if (gx#stx-pair? ___stx4660746608_)
                    (let ((_e2219322634_ (gx#syntax-e ___stx4660746608_)))
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
                                        (let ((___splice4661246613_
                                               (gx#syntax-split-splice
                                                _tl2219422651_
                                                '1)))
                                          (let ((_tl2219922657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4661246613_
                                                    '1)))
                                                (_target2219722654_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4661246613_
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
                                                        (___match4665446655_
                                                         _e2219322634_
                                                         _hd2219222638_
                                                         _tl2219122641_
                                                         _e2219622644_
                                                         _hd2219522648_
                                                         _tl2219422651_
                                                         ___splice4661246613_
                                                         _target2219722654_
                                                         _tl2219922657_
                                                         _e2220822660_
                                                         _hd2220722664_
                                                         _tl2220622667_)
                                                        (let ((___splice4661646617_
                                                               (gx#syntax-split-splice
                                                                _tl2219422651_
                                                                '0)))
                                                          (let ((_tl2221922509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4661646617_ '1)))
                        (_target2221722506_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4661646617_ '0))))
                    (if (gx#stx-null? _tl2221922509_)
                        (___match4667446675_
                         _e2219322634_
                         _hd2219222638_
                         _tl2219122641_
                         _e2219622644_
                         _hd2219522648_
                         _tl2219422651_
                         ___splice4661646617_
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
                                    (let ((___splice4662046621_
                                           (gx#syntax-split-splice
                                            _tl2223522407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4662046621_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4662046621_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4670046701_
                                             _e2219322634_
                                             _hd2219222638_
                                             _tl2219122641_
                                             _e2219622644_
                                             _hd2219522648_
                                             _tl2219422651_
                                             _e2223722400_
                                             _hd2223622404_
                                             _tl2223522407_
                                             ___splice4662046621_
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
                                                (let ((___splice4661646617_
                                                       (gx#syntax-split-splice
                                                        _tl2219422651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4661646617_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4661646617_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2221922509_)
                                                        (___match4667446675_
                                                         _e2219322634_
                                                         _hd2219222638_
                                                         _tl2219122641_
                                                         _e2219622644_
                                                         _hd2219522648_
                                                         _tl2219422651_
                                                         ___splice4661646617_
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
                            (let ((___splice4662046621_
                                   (gx#syntax-split-splice _tl2223522407_ '0)))
                              (let ((_tl2224022413_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4662046621_ '1)))
                                    (_target2223822410_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4662046621_
                                        '0))))
                                (if (gx#stx-null? _tl2224022413_)
                                    (___match4670046701_
                                     _e2219322634_
                                     _hd2219222638_
                                     _tl2219122641_
                                     _e2219622644_
                                     _hd2219522648_
                                     _tl2219422651_
                                     _e2223722400_
                                     _hd2223622404_
                                     _tl2223522407_
                                     ___splice4662046621_
                                     _target2223822410_
                                     _tl2224022413_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                    (let () (declare (not safe)) (_g2218622273_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4661646617_
                                               (gx#syntax-split-splice
                                                _tl2219422651_
                                                '0)))
                                          (let ((_tl2221922509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4661646617_
                                                    '1)))
                                                (_target2221722506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4661646617_
                                                    '0))))
                                            (if (gx#stx-null? _tl2221922509_)
                                                (___match4667446675_
                                                 _e2219322634_
                                                 _hd2219222638_
                                                 _tl2219122641_
                                                 _e2219622644_
                                                 _hd2219522648_
                                                 _tl2219422651_
                                                 ___splice4661646617_
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
                    (let ((___splice4662046621_
                           (gx#syntax-split-splice _tl2223522407_ '0)))
                      (let ((_tl2224022413_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4662046621_ '1)))
                            (_target2223822410_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4662046621_ '0))))
                        (if (gx#stx-null? _tl2224022413_)
                            (___match4670046701_
                             _e2219322634_
                             _hd2219222638_
                             _tl2219122641_
                             _e2219622644_
                             _hd2219522648_
                             _tl2219422651_
                             _e2223722400_
                             _hd2223622404_
                             _tl2223522407_
                             ___splice4662046621_
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
                                                (let ((___splice4662046621_
                                                       (gx#syntax-split-splice
                                                        _tl2223522407_
                                                        '0)))
                                                  (let ((_tl2224022413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4662046621_
                                                            '1)))
                                                        (_target2223822410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4662046621_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2224022413_)
                                                        (___match4670046701_
                                                         _e2219322634_
                                                         _hd2219222638_
                                                         _tl2219122641_
                                                         _e2219622644_
                                                         _hd2219522648_
                                                         _tl2219422651_
                                                         _e2223722400_
                                                         _hd2223622404_
                                                         _tl2223522407_
                                                         ___splice4662046621_
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
        (let* ((___stx4672946730_ _$stx22825_)
               (_g2283022870_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4672946730_))))
          (let ((___kont4673246733_
                 (lambda (_L23008_ _L23010_)
                   (let ((__tmp51947 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp51942
                          (let ((__tmp51943
                                 (let ((__tmp51944
                                        (let ((__tmp51946
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp51945
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23008_ '()))))
                                          (declare (not safe))
                                          (cons __tmp51946 __tmp51945))))
                                   (declare (not safe))
                                   (cons __tmp51944 '()))))
                            (declare (not safe))
                            (cons _L23010_ __tmp51943))))
                     (declare (not safe))
                     (cons __tmp51947 __tmp51942))))
                (___kont4673446735_
                 (lambda (_L22937_ _L22939_ _L22940_ _L22941_)
                   (let ((__tmp51948
                          (let ((__tmp51950
                                 (let ((__tmp51951
                                        (let ((__tmp51952
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22939_ '()))))
                                          (declare (not safe))
                                          (cons _L22940_ __tmp51952))))
                                   (declare (not safe))
                                   (cons _L22941_ __tmp51951)))
                                (__tmp51949
                                 (foldr (lambda (_g2296222965_ _g2296322968_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2296222965_
                                                  _g2296322968_)))
                                        '()
                                        _L22937_)))
                            (declare (not safe))
                            (cons __tmp51950 __tmp51949))))
                     (declare (not safe))
                     (cons _L22941_ __tmp51948)))))
            (let* ((___match4678446785_
                    (lambda (_e2284922877_
                             _hd2284822881_
                             _tl2284722884_
                             _e2285222887_
                             _hd2285122891_
                             _tl2285022894_
                             _e2285522897_
                             _hd2285422901_
                             _tl2285322904_
                             ___splice4673646737_
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
                                        (___kont4673446735_
                                         _rest2286422933_
                                         _hd2285422901_
                                         _hd2285122891_
                                         _hd2284822881_))))))
                        (_loop2285922913_ _target2285622907_ '()))))
                   (___match4675846759_
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
                            (___kont4673246733_ _L23008_ _L23010_)
                            (if (gx#stx-pair/null? _tl2284023005_)
                                (let ((___splice4673646737_
                                       (gx#syntax-split-splice
                                        _tl2284023005_
                                        '0)))
                                  (let ((_tl2285822910_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4673646737_
                                            '1)))
                                        (_target2285622907_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4673646737_
                                            '0))))
                                    (if (gx#stx-null? _tl2285822910_)
                                        (___match4678446785_
                                         _e2283622978_
                                         _hd2283522982_
                                         _tl2283422985_
                                         _e2283922988_
                                         _hd2283822992_
                                         _tl2283722995_
                                         _e2284222998_
                                         _hd2284123002_
                                         _tl2284023005_
                                         ___splice4673646737_
                                         _target2285622907_
                                         _tl2285822910_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2283022870_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2283022870_))))))))
              (if (gx#stx-pair? ___stx4672946730_)
                  (let ((_e2283622978_ (gx#syntax-e ___stx4672946730_)))
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
                                          (___match4675846759_
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
                                              (let ((___splice4673646737_
                                                     (gx#syntax-split-splice
                                                      _tl2284023005_
                                                      '0)))
                                                (let ((_tl2285822910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4673646737_
                                                          '1)))
                                                      (_target2285622907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4673646737_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2285822910_)
                                                      (___match4678446785_
                                                       _e2283622978_
                                                       _hd2283522982_
                                                       _tl2283422985_
                                                       _e2283922988_
                                                       _hd2283822992_
                                                       _tl2283722995_
                                                       _e2284222998_
                                                       _hd2284123002_
                                                       _tl2284023005_
                                                       ___splice4673646737_
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
        (let* ((___stx4678746788_ _$stx23030_)
               (_g2303523087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4678746788_))))
          (let ((___kont4679046791_
                 (lambda (_L23263_ _L23265_ _L23266_)
                   (let ((__tmp51959 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp51953
                          (let ((__tmp51954
                                 (let ((__tmp51956
                                        (let ((__tmp51958
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp51957
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23265_ '()))))
                                          (declare (not safe))
                                          (cons __tmp51958 __tmp51957)))
                                       (__tmp51955
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23263_ '()))))
                                   (declare (not safe))
                                   (cons __tmp51956 __tmp51955))))
                            (declare (not safe))
                            (cons _L23266_ __tmp51954))))
                     (declare (not safe))
                     (cons __tmp51959 __tmp51953))))
                (___kont4679246793_
                 (lambda (_L23174_
                          _L23176_
                          _L23177_
                          _L23178_
                          _L23179_
                          _L23180_)
                   (let ((__tmp51960
                          (let ((__tmp51963
                                 (let ((__tmp51967 (gx#datum->syntax '#f '@))
                                       (__tmp51964
                                        (let ((__tmp51965
                                               (let ((__tmp51966
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
                                                 (cons _L23178_ __tmp51966))))
                                          (declare (not safe))
                                          (cons _L23179_ __tmp51965))))
                                   (declare (not safe))
                                   (cons __tmp51967 __tmp51964)))
                                (__tmp51961
                                 (let ((__tmp51962
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23174_ '()))))
                                   (declare (not safe))
                                   (cons _L23176_ __tmp51962))))
                            (declare (not safe))
                            (cons __tmp51963 __tmp51961))))
                     (declare (not safe))
                     (cons _L23180_ __tmp51960)))))
            (let* ((___match4686246863_
                    (lambda (_e2306023094_
                             _hd2305923098_
                             _tl2305823101_
                             _e2306323104_
                             _hd2306223108_
                             _tl2306123111_
                             _e2306623114_
                             _hd2306523118_
                             _tl2306423121_
                             ___splice4679446795_
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
                                        (___kont4679246793_
                                         _hd2308023144_
                                         _hd2307723134_
                                         _path2307523170_
                                         _hd2306523118_
                                         _hd2306223108_
                                         _hd2305923098_))))))
                        (_loop2307023150_ _target2306723124_ '()))))
                   (___match4682246823_
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
                            (___kont4679046791_ _L23263_ _L23265_ _L23266_)
                            (if (gx#stx-pair/null? _tl2304623250_)
                                (if (fx>= (gx#stx-length _tl2304623250_) '2)
                                    (let ((___splice4679446795_
                                           (gx#syntax-split-splice
                                            _tl2304623250_
                                            '2)))
                                      (let ((_tl2306923127_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4679446795_
                                                '1)))
                                            (_target2306723124_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4679446795_
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
                    (___match4686246863_
                     _e2304223223_
                     _hd2304123227_
                     _tl2304023230_
                     _e2304523233_
                     _hd2304423237_
                     _tl2304323240_
                     _e2304823243_
                     _hd2304723247_
                     _tl2304623250_
                     ___splice4679446795_
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
              (if (gx#stx-pair? ___stx4678746788_)
                  (let ((_e2304223223_ (gx#syntax-e ___stx4678746788_)))
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
                                                  (___match4682246823_
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
                  (let ((___splice4679446795_
                         (gx#syntax-split-splice _tl2304623250_ '2)))
                    (let ((_tl2306923127_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4679446795_ '1)))
                          (_target2306723124_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4679446795_ '0))))
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
                                          (___match4686246863_
                                           _e2304223223_
                                           _hd2304123227_
                                           _tl2304023230_
                                           _e2304523233_
                                           _hd2304423237_
                                           _tl2304323240_
                                           _e2304823243_
                                           _hd2304723247_
                                           _tl2304623250_
                                           ___splice4679446795_
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
                                                  (let ((___splice4679446795_
                                                         (gx#syntax-split-splice
                                                          _tl2304623250_
                                                          '2)))
                                                    (let ((_tl2306923127_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4679446795_
                                                              '1)))
                                                          (_target2306723124_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4679446795_
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
                                  (___match4686246863_
                                   _e2304223223_
                                   _hd2304123227_
                                   _tl2304023230_
                                   _e2304523233_
                                   _hd2304423237_
                                   _tl2304323240_
                                   _e2304823243_
                                   _hd2304723247_
                                   _tl2304623250_
                                   ___splice4679446795_
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
