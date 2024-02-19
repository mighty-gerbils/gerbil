(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g49234_|
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
                       (lambda _g48917_ (gx#genident _id19361_))
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
                                              (let ((__tmp48920
                                                     (cdr _rest21560_)))
                                                (declare (not safe))
                                                (_lp21557_
                                                 __tmp48920
                                                 _r21562_))
                                              (begin
                                                (hash-put!
                                                 _tab21547_
                                                 _slot21564_
                                                 '#t)
                                                (let ((__tmp48919
                                                       (cdr _rest21560_))
                                                      (__tmp48918
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21564_
                                                               _r21562_))))
                                                  (declare (not safe))
                                                  (_lp21557_
                                                   __tmp48919
                                                   __tmp48918)))))
                                        (reverse _r21562_))))))
                       (gx#stx-for-each
                        (lambda (_slot21551_)
                          (hash-put! _tab21547_ (gx#stx-e _slot21551_) '#t))
                        _slots21545_)
                       (if (let () (declare (not safe)) (not _super21543_))
                           '()
                           (if (gx#identifier? _super21543_)
                               (let ((__tmp48922
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19370_
                                         _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp48922))
                               (let ((__tmp48921
                                      (concatenate
                                       (map _get-mixin-slots-r19370_
                                            _super21543_))))
                                 (declare (not safe))
                                 (_dedup21549_ __tmp48921)))))))
                  (_get-mixin-slots-r19370_
                   (lambda (_type-id21537_)
                     (let ((_info21540_
                            (gx#syntax-local-value _type-id21537_)))
                       (append (let ((__obj46942 _info21540_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj46942
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj46942
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj46942
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19370_
                                     (let ((__obj46943 _info21540_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj46943
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj46943
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj46943
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
                                                           (let ((_g48923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g1952519545_ '0)))
                     (begin
                       (let ((_g48924_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g48923_)
                                    (##vector-length _g48923_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g48924_ 2)))
                             (error "Context expects 2 values" _g48924_)))
                       (let ((_target1952719548_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g48923_ 0)))
                             (_tl1952919551_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g48923_ 1))))
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
                                                 (let ((__tmp49173
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1953219568_
                                                                _slot1953419561_))))
                                                   (declare (not safe))
                                                   (_loop1953019554_
                                                    _lp-tl1953319571_
                                                    __tmp49173))))
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
                          (let ((_g48925_
                                 (gx#syntax-split-splice _g1959619616_ '0)))
                            (begin
                              (let ((_g48926_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g48925_)
                                           (##vector-length _g48925_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g48926_ 2)))
                                    (error "Context expects 2 values"
                                           _g48926_)))
                              (let ((_target1959819619_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g48925_ 0)))
                                    (_tl1960019622_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g48925_ 1))))
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
                (let ((__tmp49171
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1960319639_ _getf1960519632_))))
                  (declare (not safe))
                  (_loop1960119625_ _lp-tl1960419642_ __tmp49171))))
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
                                 (let ((_g48927_
                                        (gx#syntax-split-splice
                                         _g1966719687_
                                         '0)))
                                   (begin
                                     (let ((_g48928_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g48927_)
                                                  (##vector-length _g48927_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g48928_ 2)))
                                           (error "Context expects 2 values"
                                                  _g48928_)))
                                     (let ((_target1966919690_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g48927_ 0)))
                                           (_tl1967119693_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g48927_ 1))))
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
                       (let ((__tmp49169
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd1967419710_ _setf1967619703_))))
                         (declare (not safe))
                         (_loop1967219696_ _lp-tl1967519713_ __tmp49169))))
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
                                        (let ((_g48929_
                                               (gx#syntax-split-splice
                                                _g1974119761_
                                                '0)))
                                          (begin
                                            (let ((_g48930_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g48929_)
                                                         (##vector-length
                                                          _g48929_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g48930_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g48930_)))
                                            (let ((_target1974319764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g48929_
                                                      0)))
                                                  (_tl1974519767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g48929_
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
                              (let ((__tmp49168
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1974819784_
                                             _mixin-slot1975019777_))))
                                (declare (not safe))
                                (_loop1974619770_
                                 _lp-tl1974919787_
                                 __tmp49168))))
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
                                               (let ((_g48931_
                                                      (gx#syntax-split-splice
                                                       _g1981319833_
                                                       '0)))
                                                 (begin
                                                   (let ((_g48932_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g48931_)
                        (##vector-length _g48931_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g48932_ 2)))
                 (error "Context expects 2 values" _g48932_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1981519836_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g48931_
                                                             0)))
                                                         (_tl1981719839_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g48931_
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
                                     (let ((__tmp49166
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd1982019856_
                                                    _mixin-getf1982219849_))))
                                       (declare (not safe))
                                       (_loop1981819842_
                                        _lp-tl1982119859_
                                        __tmp49166))))
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
                                                      (let ((_g48933_
                                                             (gx#syntax-split-splice
                                                              _g1988419904_
                                                              '0)))
                                                        (begin
                                                          (let ((_g48934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g48933_)
                               (##vector-length _g48933_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g48934_ 2)))
                        (error "Context expects 2 values" _g48934_)))
                  (let ((_target1988619907_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g48933_ 0)))
                        (_tl1988819910_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g48933_ 1))))
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
                                            (let ((__tmp49164
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd1989119927_
                                                           _mixin-setf1989319920_))))
                                              (declare (not safe))
                                              (_loop1988919913_
                                               _lp-tl1989219930_
                                               __tmp49164))))
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
                                                             (let ((_g48935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1995519975_ '0)))
                       (begin
                         (let ((_g48936_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g48935_)
                                      (##vector-length _g48935_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g48936_ 2)))
                               (error "Context expects 2 values" _g48936_)))
                         (let ((_target1995719978_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48935_ 0)))
                               (_tl1995919981_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48935_ 1))))
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
                                                   (let ((__tmp49162
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
                                                      __tmp49162))))
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
                            (let ((_g48937_
                                   (gx#syntax-split-splice _g2002620046_ '0)))
                              (begin
                                (let ((_g48938_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48937_)
                                             (##vector-length _g48937_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48938_ 2)))
                                      (error "Context expects 2 values"
                                             _g48938_)))
                                (let ((_target2002820049_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48937_ 0)))
                                      (_tl2003020052_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48937_ 1))))
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
                  (let ((__tmp49160
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2003320069_ _usetf2003520062_))))
                    (declare (not safe))
                    (_loop2003120055_ _lp-tl2003420072_ __tmp49160))))
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
                                   (let ((_g48939_
                                          (gx#syntax-split-splice
                                           _g2009720117_
                                           '0)))
                                     (begin
                                       (let ((_g48940_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g48939_)
                                                    (##vector-length _g48939_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g48940_ 2)))
                                             (error "Context expects 2 values"
                                                    _g48940_)))
                                       (let ((_target2009920120_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48939_ 0)))
                                             (_tl2010120123_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48939_ 1))))
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
                         (let ((__tmp49158
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2010420140_
                                        _mixin-ugetf2010620133_))))
                           (declare (not safe))
                           (_loop2010220126_ _lp-tl2010520143_ __tmp49158))))
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
                                          (let ((_g48941_
                                                 (gx#syntax-split-splice
                                                  _g2016820188_
                                                  '0)))
                                            (begin
                                              (let ((_g48942_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g48941_)
                                                           (##vector-length
                                                            _g48941_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g48942_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g48942_)))
                                              (let ((_target2017020191_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g48941_
                                                        0)))
                                                    (_tl2017220194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g48941_
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
                                (let ((__tmp49156
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2017520211_
                                               _mixin-usetf2017720204_))))
                                  (declare (not safe))
                                  (_loop2017320197_
                                   _lp-tl2017620214_
                                   __tmp49156))))
                            (let ((_mixin-usetf2017820217_
                                   (reverse _mixin-usetf2017720204_)))
                              ((lambda (_L20221_)
                                 (let ()
                                   (let* ((_type-slots20252_
                                           (if (gx#stx-null? _slots19363_)
                                               '()
                                               (let ((__tmp48943
                                                      (let ((__tmp48944
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
                                (let ((__tmp48945
                                       (let ((__tmp48946
                                              (let ((__tmp48947
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2023720242_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2023820245_
                                                      __tmp48947))))
                                         (declare (not safe))
                                         (cons _g2023920247_ __tmp48946))))
                                  (declare (not safe))
                                  (cons __tmp48945 _g2024020249_)))
                              '()
                              _L19720_
                              _L19649_
                              _L19578_))))
                (declare (not safe))
                (cons __tmp48944 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp48943))))
                                          (_type-mixin-slots20269_
                                           (if (gx#stx-null?
                                                _mixin-slots19737_)
                                               '()
                                               (let ((__tmp48948
                                                      (let ((__tmp48949
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
                                (let ((__tmp48950
                                       (let ((__tmp48951
                                              (let ((__tmp48952
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2025420259_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2025520262_
                                                      __tmp48952))))
                                         (declare (not safe))
                                         (cons _g2025620264_ __tmp48951))))
                                  (declare (not safe))
                                  (cons __tmp48950 _g2025720266_)))
                              '()
                              _L19937_
                              _L19866_
                              _L19794_))))
                (declare (not safe))
                (cons __tmp48949 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp48948))))
                                          (_type-name20276_
                                           (let ((__tmp48953
                                                  (let ((__tmp48954
                                                         (let ((_$e20272_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body19364_)))
                   (if _$e20272_ _$e20272_ _id19361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48954 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp48953)))
                                          (_type-id20283_
                                           (let ((__tmp48955
                                                  (let ((__tmp48956
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
                                                    (cons __tmp48956 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp48955)))
                                          (_type-constructor20298_
                                           (let ((_$e20294_
                                                  (let ((_e2028520287_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body19364_)))
                                                    (if _e2028520287_
                                                        (let* ((_e20291_
                                                                _e2028520287_)
                                                               (__tmp48957
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e20291_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp48957))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e20294_ _$e20294_ '())))
                                          (_properties20332_
                                           (let* ((_properties20301_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body19364_))
                                                       (let ((__tmp48958
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp48958 '()))
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
                           (__tmp48959
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print20311_))))
                      (declare (not safe))
                      (cons __tmp48959 _properties20301_)))
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
                           (__tmp48960
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal20324_))))
                      (declare (not safe))
                      (cons __tmp48960 _properties20314_)))
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
                                                              (let ((__tmp48961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48962
                                    (let ((__tmp48964
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp48963
                                           (let ()
                                             (declare (not safe))
                                             (cons _L20350_ '()))))
                                      (declare (not safe))
                                      (cons __tmp48964 __tmp48963))))
                               (declare (not safe))
                               (cons __tmp48962 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp48961))))
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
                                               (let ((__tmp48965
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass20383_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp48965))
                                               '()))
                                          (_final?20389_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body19364_)))
                                          (_type-struct20392_
                                           (let ((__tmp48966
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?19378_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp48966)))
                                          (_type-final20395_
                                           (let ((__tmp48967
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?20389_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp48967)))
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
                                                 (let ((_g48968_
                                                        (gx#syntax-split-splice
                                                         _g2039920419_
                                                         '0)))
                                                   (begin
                                                     (let ((_g48969_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g48968_)
                          (##vector-length _g48968_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g48969_ 2)))
                   (error "Context expects 2 values" _g48969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2040120422_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48968_
                                                               0)))
                                                           (_tl2040320425_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48968_
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
                                       (let ((__tmp49154
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2040620442_
                                                      _type-body2040820435_))))
                                         (declare (not safe))
                                         (_loop2040420428_
                                          _lp-tl2040720445_
                                          __tmp49154))))
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
                                                           (let ((__tmp48970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48973 (gx#datum->syntax '#f 'begin))
                                (__tmp48971
                                 (let ((__tmp48972
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20936_ '()))))
                                   (declare (not safe))
                                   (cons _L20488_ __tmp48972))))
                            (declare (not safe))
                            (cons __tmp48973 __tmp48971))))
                     (declare (not safe))
                     (_wrap19366_ __tmp48970)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2092220933_)))
                                                 (__tmp48974
                                                  (let ((__tmp48975
                                                         (let ((__tmp49010
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp48976
                        (let ((__tmp48977
                               (let ((__tmp48978
                                      (let ((__tmp49009
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp48979
                                             (let ((__tmp48980
                                                    (let ((__tmp48981
                                                           (let ((__tmp48982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48983
                                 (let ((__tmp48984
                                        (let ((__tmp48985
                                               (let ((__tmp48986
                                                      (let ((__tmp48987
                                                             (let ((__tmp48988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48989
                                   (let ((__tmp48990
                                          (let ((__tmp48991
                                                 (let ((__tmp48992
                                                        (let ((__tmp48993
                                                               (let ((__tmp48994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48995
                                     (let ((__tmp48996
                                            (let ((__tmp48997
                                                   (let ((__tmp48998
                                                          (let ((__tmp48999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49000
                                (let ((__tmp49001
                                       (let ((__tmp49002
                                              (let ((__tmp49003
                                                     (let ((__tmp49004
                                                            (let ((__tmp49005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49006
                                  (let ((__tmp49007
                                         (let ((__tmp49008
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L20908_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp49008))))
                                    (declare (not safe))
                                    (cons _L20880_ __tmp49007))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp49006))))
                      (declare (not safe))
                      (cons _L20852_ __tmp49005))))
               (declare (not safe))
               (cons 'mutators: __tmp49004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L20824_ __tmp49003))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp49002))))
                                  (declare (not safe))
                                  (cons _L20796_ __tmp49001))))
                           (declare (not safe))
                           (cons 'predicate: __tmp49000))))
                    (declare (not safe))
                    (cons _L20768_ __tmp48999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp48998))))
                                              (declare (not safe))
                                              (cons _L20740_ __tmp48997))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp48996))))
                                (declare (not safe))
                                (cons _L20712_ __tmp48995))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp48994))))
                  (declare (not safe))
                  (cons _L20684_ __tmp48993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp48992))))
                                            (declare (not safe))
                                            (cons _L20656_ __tmp48991))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp48990))))
                              (declare (not safe))
                              (cons _L20628_ __tmp48989))))
                       (declare (not safe))
                       (cons 'struct?: __tmp48988))))
                (declare (not safe))
                (cons _L20572_ __tmp48987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp48986))))
                                          (declare (not safe))
                                          (cons _L20600_ __tmp48985))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp48984))))
                            (declare (not safe))
                            (cons _L20544_ __tmp48983))))
                     (declare (not safe))
                     (cons 'name: __tmp48982))))
              (declare (not safe))
              (cons _L20516_ __tmp48981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp48980))))
                                        (declare (not safe))
                                        (cons __tmp49009 __tmp48979))))
                                 (declare (not safe))
                                 (cons __tmp48978 '()))))
                          (declare (not safe))
                          (cons _L19396_ __tmp48977))))
                   (declare (not safe))
                   (cons __tmp49010 __tmp48976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp48975))))
                                            (declare (not safe))
                                            (_g2092020951_ __tmp48974))))
                                      _g2089420905_)))
                                  (__tmp49011
                                   (let ((__tmp49035
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp49012
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L20079_
                                             _L19578_)
                                            (foldr (lambda (_g2095820965_
                                                            _g2095920968_
                                                            _g2096020970_)
                                                     (let ((__tmp49013
                                                            (let ((__tmp49023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp49014
                           (let ((__tmp49020
                                  (let ((__tmp49022
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp49021
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2095920968_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49022 __tmp49021)))
                                 (__tmp49015
                                  (let ((__tmp49016
                                         (let ((__tmp49017
                                                (let ((__tmp49019
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp49018
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2095820965_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp49019
                                                        __tmp49018))))
                                           (declare (not safe))
                                           (cons __tmp49017 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp49016))))
                             (declare (not safe))
                             (cons __tmp49020 __tmp49015))))
                      (declare (not safe))
                      (cons __tmp49023 __tmp49014))))
               (declare (not safe))
               (cons __tmp49013 _g2096020970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L20221_
                                                      _L19794_)
                                                     (foldr (lambda (_g2096120973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2096220976_
                             _g2096320978_)
                      (let ((__tmp49024
                             (let ((__tmp49034 (gx#datum->syntax '#f '@list))
                                   (__tmp49025
                                    (let ((__tmp49031
                                           (let ((__tmp49033
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp49032
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2096220976_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49033 __tmp49032)))
                                          (__tmp49026
                                           (let ((__tmp49027
                                                  (let ((__tmp49028
                                                         (let ((__tmp49030
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp49029
                        (let ()
                          (declare (not safe))
                          (cons _g2096120973_ '()))))
                   (declare (not safe))
                   (cons __tmp49030 __tmp49029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49028 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp49027))))
                                      (declare (not safe))
                                      (cons __tmp49031 __tmp49026))))
                               (declare (not safe))
                               (cons __tmp49034 __tmp49025))))
                        (declare (not safe))
                        (cons __tmp49024 _g2096320978_)))
                    '()
                    _L20221_
                    _L19794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _L20079_
                                                   _L19578_))))
                                     (declare (not safe))
                                     (cons __tmp49035 __tmp49012))))
                             (declare (not safe))
                             (_g2089220955_ __tmp49011))))
                       _g2086620877_)))
                   (__tmp49036
                    (let ((__tmp49060 (gx#datum->syntax '#f '@list))
                          (__tmp49037
                           (begin
                             (gx#syntax-check-splice-targets _L20008_ _L19578_)
                             (foldr (lambda (_g2098420991_
                                             _g2098520994_
                                             _g2098620996_)
                                      (let ((__tmp49038
                                             (let ((__tmp49048
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49039
                                                    (let ((__tmp49045
                                                           (let ((__tmp49047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49046
                          (let ()
                            (declare (not safe))
                            (cons _g2098520994_ '()))))
                     (declare (not safe))
                     (cons __tmp49047 __tmp49046)))
                  (__tmp49040
                   (let ((__tmp49041
                          (let ((__tmp49042
                                 (let ((__tmp49044
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp49043
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2098420991_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49044 __tmp49043))))
                            (declare (not safe))
                            (cons __tmp49042 '()))))
                     (declare (not safe))
                     (cons ':: __tmp49041))))
              (declare (not safe))
              (cons __tmp49045 __tmp49040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49048 __tmp49039))))
                                        (declare (not safe))
                                        (cons __tmp49038 _g2098620996_)))
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20150_
                                       _L19794_)
                                      (foldr (lambda (_g2098720999_
                                                      _g2098821002_
                                                      _g2098921004_)
                                               (let ((__tmp49049
                                                      (let ((__tmp49059
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp49050
                                                             (let ((__tmp49056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49058 (gx#datum->syntax '#f 'quote))
                                  (__tmp49057
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2098821002_ '()))))
                              (declare (not safe))
                              (cons __tmp49058 __tmp49057)))
                           (__tmp49051
                            (let ((__tmp49052
                                   (let ((__tmp49053
                                          (let ((__tmp49055
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp49054
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2098720999_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49055 __tmp49054))))
                                     (declare (not safe))
                                     (cons __tmp49053 '()))))
                              (declare (not safe))
                              (cons ':: __tmp49052))))
                       (declare (not safe))
                       (cons __tmp49056 __tmp49051))))
                (declare (not safe))
                (cons __tmp49059 __tmp49050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49049
                                                       _g2098921004_)))
                                             '()
                                             _L20150_
                                             _L19794_))
                                    _L20008_
                                    _L19578_))))
                      (declare (not safe))
                      (cons __tmp49060 __tmp49037))))
              (declare (not safe))
              (_g2086420981_ __tmp49036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2083820849_)))
                                            (__tmp49061
                                             (let ((__tmp49085
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49062
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L19720_
                                                       _L19578_)
                                                      (foldr (lambda (_g2101021017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2101121020_
                              _g2101221022_)
                       (let ((__tmp49063
                              (let ((__tmp49073 (gx#datum->syntax '#f '@list))
                                    (__tmp49064
                                     (let ((__tmp49070
                                            (let ((__tmp49072
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49071
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2101121020_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp49072 __tmp49071)))
                                           (__tmp49065
                                            (let ((__tmp49066
                                                   (let ((__tmp49067
                                                          (let ((__tmp49069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp49068
                         (let ()
                           (declare (not safe))
                           (cons _g2101021017_ '()))))
                    (declare (not safe))
                    (cons __tmp49069 __tmp49068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49067 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp49066))))
                                       (declare (not safe))
                                       (cons __tmp49070 __tmp49065))))
                                (declare (not safe))
                                (cons __tmp49073 __tmp49064))))
                         (declare (not safe))
                         (cons __tmp49063 _g2101221022_)))
                     (begin
                       (gx#syntax-check-splice-targets _L19937_ _L19794_)
                       (foldr (lambda (_g2101321025_
                                       _g2101421028_
                                       _g2101521030_)
                                (let ((__tmp49074
                                       (let ((__tmp49084
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp49075
                                              (let ((__tmp49081
                                                     (let ((__tmp49083
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp49082
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2101421028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp49083 __tmp49082)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49076
                                                     (let ((__tmp49077
                                                            (let ((__tmp49078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49080
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp49079
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2101321025_ '()))))
                             (declare (not safe))
                             (cons __tmp49080 __tmp49079))))
                      (declare (not safe))
                      (cons __tmp49078 '()))))
               (declare (not safe))
               (cons ':: __tmp49077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49081 __tmp49076))))
                                         (declare (not safe))
                                         (cons __tmp49084 __tmp49075))))
                                  (declare (not safe))
                                  (cons __tmp49074 _g2101521030_)))
                              '()
                              _L19937_
                              _L19794_))
                     _L19720_
                     _L19578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49085 __tmp49062))))
                                       (declare (not safe))
                                       (_g2083621007_ __tmp49061))))
                                 _g2081020821_)))
                             (__tmp49086
                              (let ((__tmp49110 (gx#datum->syntax '#f '@list))
                                    (__tmp49087
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19649_
                                        _L19578_)
                                       (foldr (lambda (_g2103621043_
                                                       _g2103721046_
                                                       _g2103821048_)
                                                (let ((__tmp49088
                                                       (let ((__tmp49098
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp49089
                                                              (let ((__tmp49095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49097 (gx#datum->syntax '#f 'quote))
                                   (__tmp49096
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2103721046_ '()))))
                               (declare (not safe))
                               (cons __tmp49097 __tmp49096)))
                            (__tmp49090
                             (let ((__tmp49091
                                    (let ((__tmp49092
                                           (let ((__tmp49094
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp49093
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2103621043_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49094 __tmp49093))))
                                      (declare (not safe))
                                      (cons __tmp49092 '()))))
                               (declare (not safe))
                               (cons ':: __tmp49091))))
                        (declare (not safe))
                        (cons __tmp49095 __tmp49090))))
                 (declare (not safe))
                 (cons __tmp49098 __tmp49089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49088
                                                        _g2103821048_)))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19866_
                                                 _L19794_)
                                                (foldr (lambda (_g2103921051_
                                                                _g2104021054_
                                                                _g2104121056_)
                                                         (let ((__tmp49099
                                                                (let ((__tmp49109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49100
                               (let ((__tmp49106
                                      (let ((__tmp49108
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp49107
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2104021054_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49108 __tmp49107)))
                                     (__tmp49101
                                      (let ((__tmp49102
                                             (let ((__tmp49103
                                                    (let ((__tmp49105
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp49104
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2103921051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp49105 __tmp49104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49103 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49102))))
                                 (declare (not safe))
                                 (cons __tmp49106 __tmp49101))))
                          (declare (not safe))
                          (cons __tmp49109 __tmp49100))))
                   (declare (not safe))
                   (cons __tmp49099 _g2104121056_)))
               '()
               _L19866_
               _L19794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _L19649_
                                              _L19578_))))
                                (declare (not safe))
                                (cons __tmp49110 __tmp49087))))
                        (declare (not safe))
                        (_g2080821033_ __tmp49086))))
                  _g2078220793_)))
              (__tmp49111
               (let ((__tmp49113 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp49112
                      (let () (declare (not safe)) (cons _L19483_ '()))))
                 (declare (not safe))
                 (cons __tmp49113 __tmp49112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2078021059_ __tmp49111))))
                                           _g2075420765_)))
                                       (__tmp49114
                                        (let ((__tmp49116
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp49115
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19455_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49116 __tmp49115))))
                                  (declare (not safe))
                                  (_g2075221063_ __tmp49114))))
                            _g2072620737_)))
                        (__tmp49117
                         (let ((__tmp49119
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp49118
                                (let ()
                                  (declare (not safe))
                                  (cons _L19427_ '()))))
                           (declare (not safe))
                           (cons __tmp49119 __tmp49118))))
                   (declare (not safe))
                   (_g2072421067_ __tmp49117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2069820709_)))
                                                 (__tmp49120
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
                                                           (let ((__tmp49122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49121
                          (let () (declare (not safe)) (cons _L21121_ '()))))
                     (declare (not safe))
                     (cons __tmp49122 __tmp49121))))
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
                                            (_g2069621071_ __tmp49120))))
                                      _g2067020681_)))
                                  (__tmp49123
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
                                                      (let ((__tmp49125
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp49124
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L21161_ '()))))
                (declare (not safe))
                (cons __tmp49125 __tmp49124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2114721158_))))
                                         (declare (not safe))
                                         (_g2114521173_ _metaclass20383_))
                                       '#f)))
                             (declare (not safe))
                             (_g2066821142_ __tmp49123))))
                       _g2064220653_))))
              (declare (not safe))
              (_g2064021177_ _final?20389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2061420625_))))
                                       (declare (not safe))
                                       (_g2061221181_ _struct?19378_))))
                                 _g2058620597_)))
                             (__tmp49126
                              (let ((__tmp49129 (gx#datum->syntax '#f 'quote))
                                    (__tmp49127
                                     (let ((__tmp49128
                                            (foldr (lambda (_g2118821191_
                                                            _g2118921194_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2118821191_
                                                             _g2118921194_)))
                                                   '()
                                                   _L19578_)))
                                       (declare (not safe))
                                       (cons __tmp49128 '()))))
                                (declare (not safe))
                                (cons __tmp49129 __tmp49127))))
                        (declare (not safe))
                        (_g2058421185_ __tmp49126))))
                  _g2055820569_)))
              (__tmp49130
               (let* ((_g2120121218_
                       (lambda (_g2120221214_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2120221214_)))
                      (_g2120021279_
                       (lambda (_g2120221222_)
                         (if (gx#stx-pair/null? _g2120221222_)
                             (let ((_g49131_
                                    (gx#syntax-split-splice _g2120221222_ '0)))
                               (begin
                                 (let ((_g49132_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49131_)
                                              (##vector-length _g49131_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49132_ 2)))
                                       (error "Context expects 2 values"
                                              _g49132_)))
                                 (let ((_target2120421225_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49131_ 0)))
                                       (_tl2120621228_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49131_ 1))))
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
                   (let ((__tmp49138
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2120921245_ _super-id2121121238_))))
                     (declare (not safe))
                     (_loop2120721231_ _lp-tl2121021248_ __tmp49138))))
               (let ((_super-id2121221251_ (reverse _super-id2121121238_)))
                 ((lambda (_L21255_)
                    (let ()
                      (let ((__tmp49137 (gx#datum->syntax '#f '@list))
                            (__tmp49133
                             (foldr (lambda (_g2127021273_ _g2127121276_)
                                      (let ((__tmp49134
                                             (let ((__tmp49136
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp49135
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2127021273_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp49136 __tmp49135))))
                                        (declare (not safe))
                                        (cons __tmp49134 _g2127121276_)))
                                    '()
                                    _L21255_)))
                        (declare (not safe))
                        (cons __tmp49137 __tmp49133))))
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
                                                 (_g2055621197_ __tmp49130))))
                                           _g2053020541_)))
                                       (__tmp49139
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
                                                       (let ((__tmp49141
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49140
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21302_ '()))))
                 (declare (not safe))
                 (cons __tmp49141 __tmp49140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2128821299_)))
                                               (__tmp49142
                                                (cadr _type-name20276_)))
                                          (declare (not safe))
                                          (_g2128621314_ __tmp49142))))
                                  (declare (not safe))
                                  (_g2052821283_ __tmp49139))))
                            _g2050220513_)))
                        (__tmp49143
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
                              (let ((__tmp49145 (gx#datum->syntax '#f 'quote))
                                    (__tmp49144
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21368_ '()))))
                                (declare (not safe))
                                (cons __tmp49145 __tmp49144))))
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
                   (_g2050021318_ __tmp49143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2047420485_)))
                                                 (__tmp49146
                                                  (let ((__tmp49147
                                                         (let ((__tmp49153
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp49148
                        (let ((__tmp49149
                               (let ((__tmp49150
                                      (let ((__tmp49151
                                             (let ((__tmp49152
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
                                               (cons _L19483_ __tmp49152))))
                                        (declare (not safe))
                                        (cons _L19455_ __tmp49151))))
                                 (declare (not safe))
                                 (cons _L19511_ __tmp49150))))
                          (declare (not safe))
                          (cons _L19427_ __tmp49149))))
                   (declare (not safe))
                   (cons __tmp49153 __tmp49148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19366_ __tmp49147))))
                                            (declare (not safe))
                                            (_g2047221389_ __tmp49146))))
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
                                          (__tmp49155
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
                                     (_g2039721401_ __tmp49155))))
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
                                   (__tmp49157
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
                              (_g2016621405_ __tmp49157))))
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
                            (__tmp49159
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
                       (_g2009521422_ __tmp49159))))
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
                     (__tmp49161
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
                (_g2002421439_ __tmp49161))))
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
              (__tmp49163
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
                                                 (_g1995321456_ __tmp49163))))
                                           _mixin-setf1989419933_))))))
                          (let ()
                            (declare (not safe))
                            (_loop1988919913_ _target1988619907_ '())))
                        (let ()
                          (declare (not safe))
                          (_g1988319900_ _g1988419904_))))))
              (let () (declare (not safe)) (_g1988319900_ _g1988419904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp49165
                                                (gx#stx-map
                                                 (lambda (_g2147621478_)
                                                   (_make-id19368_
                                                    _name19372_
                                                    '"-"
                                                    _g2147621478_
                                                    '"-set!"))
                                                 _mixin-slots19737_)))
                                          (declare (not safe))
                                          (_g1988221473_ __tmp49165))))
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
                                        (__tmp49167
                                         (gx#stx-map
                                          (lambda (_g2148521487_)
                                            (_make-id19368_
                                             _name19372_
                                             '"-"
                                             _g2148521487_))
                                          _mixin-slots19737_)))
                                   (declare (not safe))
                                   (_g1981121482_ __tmp49167))))
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
                          (__tmp49170
                           (gx#stx-map
                            (lambda (_g2149821500_)
                              (_make-id19368_
                               _name19372_
                               '"-"
                               _g2149821500_
                               '"-set!"))
                            _slots19363_)))
                     (declare (not safe))
                     (_g1966521495_ __tmp49170))))
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
                   (__tmp49172
                    (gx#stx-map
                     (lambda (_g2150721509_)
                       (_make-id19368_ _name19372_ '"-" _g2150721509_))
                     _slots19363_)))
              (declare (not safe))
              (_g1959421504_ __tmp49172))))
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
                                     (__tmp49174
                                      (map gerbil/core$<MOP>$<MOP:2>#!class-type-descriptor
                                           _super19375_)))
                                (declare (not safe))
                                (_g1949521517_ __tmp49174))))
                          _g1946919480_)))
                      (__tmp49175 (_make-id19368_ _name19372_ '"?")))
                 (declare (not safe))
                 (_g1946721521_ __tmp49175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1944119452_)))
                                               (__tmp49176
                                                (_make-id19368_
                                                 '"make-"
                                                 _name19372_)))
                                          (declare (not safe))
                                          (_g1943921525_ __tmp49176))))
                                    _g1941319424_)))
                                (__tmp49177
                                 (_make-id19368_ _name19372_ '"::t")))
                           (declare (not safe))
                           (_g1941121529_ __tmp49177))))
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
                                             (let ((__tmp49182
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp49178
                                                    (let ((__tmp49179
                                                           (let ((__tmp49180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49181
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L21657_))))
                            (declare (not safe))
                            (cons 'struct: __tmp49181))))
                     (declare (not safe))
                     (cons _L21659_ __tmp49180))))
              (declare (not safe))
              (cons _L21660_ __tmp49179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49182 __tmp49178)))
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
                    (let* ((___stx4390543906_ _hd21768_)
                           (_g2177421786_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4390543906_))))
                      (let ((___kont4390843909_
                             (lambda (_L21814_ _L21816_)
                               (let ((__tmp49183 (gx#syntax->list _L21814_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                  _stx21681_
                                  _L21816_
                                  __tmp49183
                                  _slots21770_
                                  _body21771_))))
                            (___kont4391043911_
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
                        (let ((___match4391843919_
                               (lambda (_e2178021804_
                                        _hd2177921808_
                                        _tl2177821811_)
                                 (let ((_L21814_ _tl2177821811_)
                                       (_L21816_ _hd2177921808_))
                                   (if (and (gx#stx-list? _L21814_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21814_))
                                       (___kont4390843909_ _L21814_ _L21816_)
                                       (___kont4391043911_))))))
                          (if (gx#stx-pair? ___stx4390543906_)
                              (let ((_e2178021804_
                                     (gx#syntax-e ___stx4390543906_)))
                                (let ((_tl2177821811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2178021804_)))
                                      (_hd2177921808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2178021804_))))
                                  (___match4391843919_
                                   _e2178021804_
                                   _hd2177921808_
                                   _tl2177821811_)))
                              (___kont4391043911_))))))))
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
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g49234_|
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
                                                            (let ((__tmp49188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp49186
                           (let ((__tmp49187
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22127_ '()))))
                             (declare (not safe))
                             (cons _L22071_ __tmp49187))))
                      (declare (not safe))
                      (cons __tmp49188 __tmp49186))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2211322124_))))
                                            (_g2211122142_
                                             (_wrap21836_
                                              (let ((__tmp49196
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp49189
                                                     (let ((__tmp49190
                                                            (let ((__tmp49193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49195 (gx#datum->syntax '#f 'quote))
                                 (__tmp49194
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21940_ '()))))
                             (declare (not safe))
                             (cons __tmp49195 __tmp49194)))
                          (__tmp49191
                           (let ((__tmp49192
                                  (let ()
                                    (declare (not safe))
                                    (cons _L22099_ '()))))
                             (declare (not safe))
                             (cons _L22015_ __tmp49192))))
                      (declare (not safe))
                      (cons __tmp49193 __tmp49191))))
               (declare (not safe))
               (cons _L21986_ __tmp49190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49196
                                                      __tmp49189)))))))
                                      _g2208522096_))))
                             (_g2208322146_ _rebind?21968_))))
                       _g2205722068_))))
              (_g2205522150_
               (_wrap21836_
                (let ((__tmp49233 (gx#datum->syntax '#f 'def))
                      (__tmp49197
                       (let ((__tmp49198
                              (let ((__tmp49199
                                     (let ((__tmp49232
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp49200
                                            (let ((__tmp49202
                                                   (let ((__tmp49203
                                                          (let ((__tmp49204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49205
                                (let ((__tmp49231
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp49206
                                       (let ((__tmp49207
                                              (let ((__tmp49208
                                                     (let ((__tmp49223
                                                            (let ((__tmp49230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp49224
                           (let ((__tmp49229 (gx#datum->syntax '#f 'obj))
                                 (__tmp49225
                                  (let ((__tmp49228
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp49226
                                         (let ((__tmp49227
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp49227 '()))))
                                    (declare (not safe))
                                    (cons __tmp49228 __tmp49226))))
                             (declare (not safe))
                             (cons __tmp49229 __tmp49225))))
                      (declare (not safe))
                      (cons __tmp49230 __tmp49224)))
                   (__tmp49209
                    (let ((__tmp49210
                           (let ((__tmp49222
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp49211
                                  (let ((__tmp49212
                                         (let ((__tmp49221
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp49213
                                                (let ((__tmp49218
                                                       (let ((__tmp49220
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49219
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21940_ '()))))
                 (declare (not safe))
                 (cons __tmp49220 __tmp49219)))
              (__tmp49214
               (let ((__tmp49217 (gx#datum->syntax '#f 'arg))
                     (__tmp49215
                      (let ((__tmp49216 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp49216 '()))))
                 (declare (not safe))
                 (cons __tmp49217 __tmp49215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49218
                                                        __tmp49214))))
                                           (declare (not safe))
                                           (cons __tmp49221 __tmp49213))))
                                    (declare (not safe))
                                    (cons _L21986_ __tmp49212))))
                             (declare (not safe))
                             (cons __tmp49222 __tmp49211))))
                      (declare (not safe))
                      (cons __tmp49210 '()))))
               (declare (not safe))
               (cons __tmp49223 __tmp49209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49208 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp49207))))
                                  (declare (not safe))
                                  (cons __tmp49231 __tmp49206))))
                           (declare (not safe))
                           (cons __tmp49205 '()))))
                    (declare (not safe))
                    (cons _L22043_ __tmp49204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49203 '())))
                                                  (__tmp49201
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21938_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49202 __tmp49201))))
                                       (declare (not safe))
                                       (cons __tmp49232 __tmp49200))))
                                (declare (not safe))
                                (cons __tmp49199 '()))))
                         (declare (not safe))
                         (cons _L22015_ __tmp49198))))
                  (declare (not safe))
                  (cons __tmp49233 __tmp49197)))))))
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
                                                  (let ((__obj46944
                                                         _klass21965_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj46944
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj46944
                                                           '9
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj46944
                                                         'type-descriptor)))))
                                               (if (let ((__tmp49185
                                                          (gx#identifier?
                                                           _L21940_)))
                                                     (declare (not safe))
                                                     (not __tmp49185))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21833_
                                                    _L21940_)
                                                   (if (let ((__tmp49184
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L21939_))))
                 (declare (not safe))
                 (not __tmp49184))
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
                      (let ((__tmp49237
                             (gx#stx-identifier _id22801_ (car _split22807_)))
                            (__tmp49235
                             (let ((__tmp49236
                                    (gx#stx-identifier
                                     _id22801_
                                     (cadr _split22807_))))
                               (declare (not safe))
                               (cons __tmp49236 '()))))
                        (declare (not safe))
                        (cons __tmp49237 __tmp49235))))))
          (let* ((___stx4392143922_ _stx22176_)
                 (_g2218622273_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4392143922_))))
            (let ((___kont4392443925_
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
                                                        (let ((__tmp49249
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp49238
                                                               (let ((__tmp49248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp49239
                              (let ((__tmp49240
                                     (let ((__tmp49245
                                            (let ((__tmp49247
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49246
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22767_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49247 __tmp49246)))
                                           (__tmp49241
                                            (let ((__tmp49242
                                                   (let ((__tmp49244
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp49243
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
                                                     (cons __tmp49244
                                                           __tmp49243))))
                                              (declare (not safe))
                                              (cons __tmp49242 '()))))
                                       (declare (not safe))
                                       (cons __tmp49245 __tmp49241))))
                                (declare (not safe))
                                (cons _L22769_ __tmp49240))))
                         (declare (not safe))
                         (cons __tmp49248 __tmp49239))))
                  (declare (not safe))
                  (cons __tmp49249 __tmp49238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2273322761_
                                                    _hd2273022751_)
                                                   (_g2272522740_
                                                    _g2272622744_))))
                                           (_g2272522740_ _g2272622744_))))
                                   (_g2272522740_ _g2272622744_)))))
                       (_g2272422793_ (_split-dotted22181_ _L22697_)))))
                  (___kont4392843929_
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
                                                        (let ((__tmp49256
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp49250
                                                               (let ((__tmp49251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49253
                                     (let ((__tmp49255
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp49254
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22597_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49255 __tmp49254)))
                                    (__tmp49252
                                     (foldr (lambda (_g2261422617_
                                                     _g2261522620_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2261422617_
                                                      _g2261522620_)))
                                            '()
                                            _L22536_)))
                                (declare (not safe))
                                (cons __tmp49253 __tmp49252))))
                         (declare (not safe))
                         (cons _L22599_ __tmp49251))))
                  (declare (not safe))
                  (cons __tmp49256 __tmp49250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2256322591_
                                                    _hd2256022581_)
                                                   (_g2255522570_
                                                    _g2255622574_))))
                                           (_g2255522570_ _g2255622574_))))
                                   (_g2255522570_ _g2255622574_)))))
                       (_g2255422623_ (_split-dotted22181_ _L22538_)))))
                  (___kont4393243933_
                   (lambda (_L22440_ _L22442_ _L22443_)
                     (let ((__tmp49268 (gx#datum->syntax '#f 'apply))
                           (__tmp49257
                            (let ((__tmp49267
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp49258
                                   (let ((__tmp49259
                                          (let ((__tmp49264
                                                 (let ((__tmp49266
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49265
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22443_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49266
                                                         __tmp49265)))
                                                (__tmp49260
                                                 (let ((__tmp49261
                                                        (let ((__tmp49263
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp49262
                                                               (foldr (lambda (_g2247022473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2247122476_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2247022473_ _g2247122476_)))
                              '()
                              _L22440_)))
                  (declare (not safe))
                  (cons __tmp49263 __tmp49262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49261 '()))))
                                            (declare (not safe))
                                            (cons __tmp49264 __tmp49260))))
                                     (declare (not safe))
                                     (cons _L22442_ __tmp49259))))
                              (declare (not safe))
                              (cons __tmp49267 __tmp49258))))
                       (declare (not safe))
                       (cons __tmp49268 __tmp49257))))
                  (___kont4393643937_
                   (lambda (_L22340_ _L22342_ _L22343_)
                     (let ((__tmp49275 (gx#datum->syntax '#f 'call-method))
                           (__tmp49269
                            (let ((__tmp49270
                                   (let ((__tmp49272
                                          (let ((__tmp49274
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp49273
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22343_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49274 __tmp49273)))
                                         (__tmp49271
                                          (foldr (lambda (_g2236422367_
                                                          _g2236522370_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2236422367_
                                                           _g2236522370_)))
                                                 '()
                                                 _L22340_)))
                                     (declare (not safe))
                                     (cons __tmp49272 __tmp49271))))
                              (declare (not safe))
                              (cons _L22342_ __tmp49270))))
                       (declare (not safe))
                       (cons __tmp49275 __tmp49269)))))
              (let* ((___match4404044041_
                      (lambda (_e2225222280_
                               _hd2225122284_
                               _tl2225022287_
                               _e2225522290_
                               _hd2225422294_
                               _tl2225322297_
                               _e2225822300_
                               _hd2225722304_
                               _tl2225622307_
                               ___splice4393843939_
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
                                                (___kont4393643937_
                                                 _L22340_
                                                 _L22342_
                                                 _L22343_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2218622273_)))))))))
                          (_loop2226222316_ _target2225922310_ '()))))
                     (___match4401444015_
                      (lambda (_e2223122380_
                               _hd2223022384_
                               _tl2222922387_
                               _e2223422390_
                               _hd2223322394_
                               _tl2223222397_
                               _e2223722400_
                               _hd2223622404_
                               _tl2223522407_
                               ___splice4393443935_
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
                                                (___kont4393243933_
                                                 _L22440_
                                                 _L22442_
                                                 _L22443_)
                                                (___match4404044041_
                                                 _e2223122380_
                                                 _hd2223022384_
                                                 _tl2222922387_
                                                 _e2223422390_
                                                 _hd2223322394_
                                                 _tl2223222397_
                                                 _e2223722400_
                                                 _hd2223622404_
                                                 _tl2223522407_
                                                 ___splice4393443935_
                                                 _target2223822410_
                                                 _tl2224022413_))))))))
                          (_loop2224122416_ _target2223822410_ '()))))
                     (___match4400044001_
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
                                    (let ((___splice4393443935_
                                           (gx#syntax-split-splice
                                            _tl2223522407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4393443935_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4393443935_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4401444015_
                                             _e2223122380_
                                             _hd2223022384_
                                             _tl2222922387_
                                             _e2223422390_
                                             _hd2223322394_
                                             _tl2223222397_
                                             _e2223722400_
                                             _hd2223622404_
                                             _tl2223522407_
                                             ___splice4393443935_
                                             _target2223822410_
                                             _tl2224022413_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2218622273_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                     (___match4398843989_
                      (lambda (_e2221322486_
                               _hd2221222490_
                               _tl2221122493_
                               _e2221622496_
                               _hd2221522500_
                               _tl2221422503_
                               ___splice4393043931_
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
                                                (___kont4392843929_
                                                 _L22536_
                                                 _L22538_)
                                                (___match4400044001_
                                                 _e2221322486_
                                                 _hd2221222490_
                                                 _tl2221122493_
                                                 _e2221622496_
                                                 _hd2221522500_
                                                 _tl2221422503_))))))))
                          (_loop2222022512_ _target2221722506_ '()))))
                     (___match4398643987_
                      (lambda (_e2221322486_
                               _hd2221222490_
                               _tl2221122493_
                               _e2221622496_
                               _hd2221522500_
                               _tl2221422503_
                               ___splice4393043931_
                               _target2221722506_
                               _tl2221922509_)
                        (if (gx#stx-null? _tl2221922509_)
                            (___match4398843989_
                             _e2221322486_
                             _hd2221222490_
                             _tl2221122493_
                             _e2221622496_
                             _hd2221522500_
                             _tl2221422503_
                             ___splice4393043931_
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
                                        (let ((___splice4393443935_
                                               (gx#syntax-split-splice
                                                _tl2223522407_
                                                '0)))
                                          (let ((_tl2224022413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4393443935_
                                                    '1)))
                                                (_target2223822410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4393443935_
                                                    '0))))
                                            (if (gx#stx-null? _tl2224022413_)
                                                (___match4401444015_
                                                 _e2221322486_
                                                 _hd2221222490_
                                                 _tl2221122493_
                                                 _e2221622496_
                                                 _hd2221522500_
                                                 _tl2221422503_
                                                 _e2223722400_
                                                 _hd2223622404_
                                                 _tl2223522407_
                                                 ___splice4393443935_
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
                     (___match4396843969_
                      (lambda (_e2219322634_
                               _hd2219222638_
                               _tl2219122641_
                               _e2219622644_
                               _hd2219522648_
                               _tl2219422651_
                               ___splice4392643927_
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
                                                (___kont4392443925_
                                                 _L22694_
                                                 _L22696_
                                                 _L22697_)
                                                (let ((___splice4393043931_
                                                       (gx#syntax-split-splice
                                                        _tl2219422651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4393043931_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4393043931_
                                                            '0))))
                                                    (___match4398643987_
                                                     _e2219322634_
                                                     _hd2219222638_
                                                     _tl2219122641_
                                                     _e2219622644_
                                                     _hd2219522648_
                                                     _tl2219422651_
                                                     ___splice4393043931_
                                                     _target2221722506_
                                                     _tl2221922509_))))))))))
                          (_loop2220022670_ _target2219722654_ '())))))
                (if (gx#stx-pair? ___stx4392143922_)
                    (let ((_e2219322634_ (gx#syntax-e ___stx4392143922_)))
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
                                        (let ((___splice4392643927_
                                               (gx#syntax-split-splice
                                                _tl2219422651_
                                                '1)))
                                          (let ((_tl2219922657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4392643927_
                                                    '1)))
                                                (_target2219722654_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4392643927_
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
                                                        (___match4396843969_
                                                         _e2219322634_
                                                         _hd2219222638_
                                                         _tl2219122641_
                                                         _e2219622644_
                                                         _hd2219522648_
                                                         _tl2219422651_
                                                         ___splice4392643927_
                                                         _target2219722654_
                                                         _tl2219922657_
                                                         _e2220822660_
                                                         _hd2220722664_
                                                         _tl2220622667_)
                                                        (let ((___splice4393043931_
                                                               (gx#syntax-split-splice
                                                                _tl2219422651_
                                                                '0)))
                                                          (let ((_tl2221922509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4393043931_ '1)))
                        (_target2221722506_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4393043931_ '0))))
                    (if (gx#stx-null? _tl2221922509_)
                        (___match4398843989_
                         _e2219322634_
                         _hd2219222638_
                         _tl2219122641_
                         _e2219622644_
                         _hd2219522648_
                         _tl2219422651_
                         ___splice4393043931_
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
                                    (let ((___splice4393443935_
                                           (gx#syntax-split-splice
                                            _tl2223522407_
                                            '0)))
                                      (let ((_tl2224022413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4393443935_
                                                '1)))
                                            (_target2223822410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4393443935_
                                                '0))))
                                        (if (gx#stx-null? _tl2224022413_)
                                            (___match4401444015_
                                             _e2219322634_
                                             _hd2219222638_
                                             _tl2219122641_
                                             _e2219622644_
                                             _hd2219522648_
                                             _tl2219422651_
                                             _e2223722400_
                                             _hd2223622404_
                                             _tl2223522407_
                                             ___splice4393443935_
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
                                                (let ((___splice4393043931_
                                                       (gx#syntax-split-splice
                                                        _tl2219422651_
                                                        '0)))
                                                  (let ((_tl2221922509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4393043931_
                                                            '1)))
                                                        (_target2221722506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4393043931_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2221922509_)
                                                        (___match4398843989_
                                                         _e2219322634_
                                                         _hd2219222638_
                                                         _tl2219122641_
                                                         _e2219622644_
                                                         _hd2219522648_
                                                         _tl2219422651_
                                                         ___splice4393043931_
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
                            (let ((___splice4393443935_
                                   (gx#syntax-split-splice _tl2223522407_ '0)))
                              (let ((_tl2224022413_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4393443935_ '1)))
                                    (_target2223822410_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4393443935_
                                        '0))))
                                (if (gx#stx-null? _tl2224022413_)
                                    (___match4401444015_
                                     _e2219322634_
                                     _hd2219222638_
                                     _tl2219122641_
                                     _e2219622644_
                                     _hd2219522648_
                                     _tl2219422651_
                                     _e2223722400_
                                     _hd2223622404_
                                     _tl2223522407_
                                     ___splice4393443935_
                                     _target2223822410_
                                     _tl2224022413_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2218622273_)))))
                            (let () (declare (not safe)) (_g2218622273_)))))
                    (let () (declare (not safe)) (_g2218622273_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4393043931_
                                               (gx#syntax-split-splice
                                                _tl2219422651_
                                                '0)))
                                          (let ((_tl2221922509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4393043931_
                                                    '1)))
                                                (_target2221722506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4393043931_
                                                    '0))))
                                            (if (gx#stx-null? _tl2221922509_)
                                                (___match4398843989_
                                                 _e2219322634_
                                                 _hd2219222638_
                                                 _tl2219122641_
                                                 _e2219622644_
                                                 _hd2219522648_
                                                 _tl2219422651_
                                                 ___splice4393043931_
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
                    (let ((___splice4393443935_
                           (gx#syntax-split-splice _tl2223522407_ '0)))
                      (let ((_tl2224022413_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4393443935_ '1)))
                            (_target2223822410_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4393443935_ '0))))
                        (if (gx#stx-null? _tl2224022413_)
                            (___match4401444015_
                             _e2219322634_
                             _hd2219222638_
                             _tl2219122641_
                             _e2219622644_
                             _hd2219522648_
                             _tl2219422651_
                             _e2223722400_
                             _hd2223622404_
                             _tl2223522407_
                             ___splice4393443935_
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
                                                (let ((___splice4393443935_
                                                       (gx#syntax-split-splice
                                                        _tl2223522407_
                                                        '0)))
                                                  (let ((_tl2224022413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4393443935_
                                                            '1)))
                                                        (_target2223822410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4393443935_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2224022413_)
                                                        (___match4401444015_
                                                         _e2219322634_
                                                         _hd2219222638_
                                                         _tl2219122641_
                                                         _e2219622644_
                                                         _hd2219522648_
                                                         _tl2219422651_
                                                         _e2223722400_
                                                         _hd2223622404_
                                                         _tl2223522407_
                                                         ___splice4393443935_
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
        (let* ((___stx4404344044_ _$stx22825_)
               (_g2283022870_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4404344044_))))
          (let ((___kont4404644047_
                 (lambda (_L23008_ _L23010_)
                   (let ((__tmp49281 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp49276
                          (let ((__tmp49277
                                 (let ((__tmp49278
                                        (let ((__tmp49280
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49279
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23008_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49280 __tmp49279))))
                                   (declare (not safe))
                                   (cons __tmp49278 '()))))
                            (declare (not safe))
                            (cons _L23010_ __tmp49277))))
                     (declare (not safe))
                     (cons __tmp49281 __tmp49276))))
                (___kont4404844049_
                 (lambda (_L22937_ _L22939_ _L22940_ _L22941_)
                   (let ((__tmp49282
                          (let ((__tmp49284
                                 (let ((__tmp49285
                                        (let ((__tmp49286
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22939_ '()))))
                                          (declare (not safe))
                                          (cons _L22940_ __tmp49286))))
                                   (declare (not safe))
                                   (cons _L22941_ __tmp49285)))
                                (__tmp49283
                                 (foldr (lambda (_g2296222965_ _g2296322968_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2296222965_
                                                  _g2296322968_)))
                                        '()
                                        _L22937_)))
                            (declare (not safe))
                            (cons __tmp49284 __tmp49283))))
                     (declare (not safe))
                     (cons _L22941_ __tmp49282)))))
            (let* ((___match4409844099_
                    (lambda (_e2284922877_
                             _hd2284822881_
                             _tl2284722884_
                             _e2285222887_
                             _hd2285122891_
                             _tl2285022894_
                             _e2285522897_
                             _hd2285422901_
                             _tl2285322904_
                             ___splice4405044051_
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
                                        (___kont4404844049_
                                         _rest2286422933_
                                         _hd2285422901_
                                         _hd2285122891_
                                         _hd2284822881_))))))
                        (_loop2285922913_ _target2285622907_ '()))))
                   (___match4407244073_
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
                            (___kont4404644047_ _L23008_ _L23010_)
                            (if (gx#stx-pair/null? _tl2284023005_)
                                (let ((___splice4405044051_
                                       (gx#syntax-split-splice
                                        _tl2284023005_
                                        '0)))
                                  (let ((_tl2285822910_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4405044051_
                                            '1)))
                                        (_target2285622907_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4405044051_
                                            '0))))
                                    (if (gx#stx-null? _tl2285822910_)
                                        (___match4409844099_
                                         _e2283622978_
                                         _hd2283522982_
                                         _tl2283422985_
                                         _e2283922988_
                                         _hd2283822992_
                                         _tl2283722995_
                                         _e2284222998_
                                         _hd2284123002_
                                         _tl2284023005_
                                         ___splice4405044051_
                                         _target2285622907_
                                         _tl2285822910_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2283022870_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2283022870_))))))))
              (if (gx#stx-pair? ___stx4404344044_)
                  (let ((_e2283622978_ (gx#syntax-e ___stx4404344044_)))
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
                                          (___match4407244073_
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
                                              (let ((___splice4405044051_
                                                     (gx#syntax-split-splice
                                                      _tl2284023005_
                                                      '0)))
                                                (let ((_tl2285822910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4405044051_
                                                          '1)))
                                                      (_target2285622907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4405044051_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2285822910_)
                                                      (___match4409844099_
                                                       _e2283622978_
                                                       _hd2283522982_
                                                       _tl2283422985_
                                                       _e2283922988_
                                                       _hd2283822992_
                                                       _tl2283722995_
                                                       _e2284222998_
                                                       _hd2284123002_
                                                       _tl2284023005_
                                                       ___splice4405044051_
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
        (let* ((___stx4410144102_ _$stx23030_)
               (_g2303523087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4410144102_))))
          (let ((___kont4410444105_
                 (lambda (_L23263_ _L23265_ _L23266_)
                   (let ((__tmp49293 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp49287
                          (let ((__tmp49288
                                 (let ((__tmp49290
                                        (let ((__tmp49292
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49291
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23265_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49292 __tmp49291)))
                                       (__tmp49289
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23263_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49290 __tmp49289))))
                            (declare (not safe))
                            (cons _L23266_ __tmp49288))))
                     (declare (not safe))
                     (cons __tmp49293 __tmp49287))))
                (___kont4410644107_
                 (lambda (_L23174_
                          _L23176_
                          _L23177_
                          _L23178_
                          _L23179_
                          _L23180_)
                   (let ((__tmp49294
                          (let ((__tmp49297
                                 (let ((__tmp49301 (gx#datum->syntax '#f '@))
                                       (__tmp49298
                                        (let ((__tmp49299
                                               (let ((__tmp49300
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
                                                 (cons _L23178_ __tmp49300))))
                                          (declare (not safe))
                                          (cons _L23179_ __tmp49299))))
                                   (declare (not safe))
                                   (cons __tmp49301 __tmp49298)))
                                (__tmp49295
                                 (let ((__tmp49296
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23174_ '()))))
                                   (declare (not safe))
                                   (cons _L23176_ __tmp49296))))
                            (declare (not safe))
                            (cons __tmp49297 __tmp49295))))
                     (declare (not safe))
                     (cons _L23180_ __tmp49294)))))
            (let* ((___match4417644177_
                    (lambda (_e2306023094_
                             _hd2305923098_
                             _tl2305823101_
                             _e2306323104_
                             _hd2306223108_
                             _tl2306123111_
                             _e2306623114_
                             _hd2306523118_
                             _tl2306423121_
                             ___splice4410844109_
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
                                        (___kont4410644107_
                                         _hd2308023144_
                                         _hd2307723134_
                                         _path2307523170_
                                         _hd2306523118_
                                         _hd2306223108_
                                         _hd2305923098_))))))
                        (_loop2307023150_ _target2306723124_ '()))))
                   (___match4413644137_
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
                            (___kont4410444105_ _L23263_ _L23265_ _L23266_)
                            (if (gx#stx-pair/null? _tl2304623250_)
                                (if (fx>= (gx#stx-length _tl2304623250_) '2)
                                    (let ((___splice4410844109_
                                           (gx#syntax-split-splice
                                            _tl2304623250_
                                            '2)))
                                      (let ((_tl2306923127_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4410844109_
                                                '1)))
                                            (_target2306723124_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4410844109_
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
                    (___match4417644177_
                     _e2304223223_
                     _hd2304123227_
                     _tl2304023230_
                     _e2304523233_
                     _hd2304423237_
                     _tl2304323240_
                     _e2304823243_
                     _hd2304723247_
                     _tl2304623250_
                     ___splice4410844109_
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
              (if (gx#stx-pair? ___stx4410144102_)
                  (let ((_e2304223223_ (gx#syntax-e ___stx4410144102_)))
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
                                                  (___match4413644137_
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
                  (let ((___splice4410844109_
                         (gx#syntax-split-splice _tl2304623250_ '2)))
                    (let ((_tl2306923127_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4410844109_ '1)))
                          (_target2306723124_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4410844109_ '0))))
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
                                          (___match4417644177_
                                           _e2304223223_
                                           _hd2304123227_
                                           _tl2304023230_
                                           _e2304523233_
                                           _hd2304423237_
                                           _tl2304323240_
                                           _e2304823243_
                                           _hd2304723247_
                                           _tl2304623250_
                                           ___splice4410844109_
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
                                                  (let ((___splice4410844109_
                                                         (gx#syntax-split-splice
                                                          _tl2304623250_
                                                          '2)))
                                                    (let ((_tl2306923127_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4410844109_
                                                              '1)))
                                                          (_target2306723124_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4410844109_
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
                                  (___match4417644177_
                                   _e2304223223_
                                   _hd2304123227_
                                   _tl2304023230_
                                   _e2304523233_
                                   _hd2304423237_
                                   _tl2304323240_
                                   _e2304823243_
                                   _hd2304723247_
                                   _tl2304623250_
                                   ___splice4410844109_
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
