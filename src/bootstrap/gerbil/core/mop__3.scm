(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop$<MOP:4>[1]#_g33107_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop$<MOP:4>[1]#typedef-body?|
      (lambda (_stx29601_)
        (letrec ((_body-opt?29604_
                  (lambda (_key29607_)
                    (memq (gx#stx-e _key29607_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:
                            metaclass:)))))
          (gx#stx-plist? _stx29601_ _body-opt?29604_))))
    (define |gerbil/core/mop$<MOP:4>[1]#generate-defclass|
      (lambda (_stx27385_ _id27387_ _super-ref27388_ _slots27389_ _body27390_)
        (letrec* ((_wrap27392_
                   (lambda (_e-stx29598_)
                     (gx#stx-wrap-source
                      _e-stx29598_
                      (gx#stx-source _stx27385_))))
                  (_make-id27394_
                   (if (uninterned-symbol? (gx#stx-e _id27387_))
                       (lambda _g32395_ (gx#genident _id27387_))
                       (lambda _args29595_
                         (apply gx#stx-identifier _id27387_ _args29595_))))
                  (_get-mixin-slots27395_
                   (lambda (_super29569_ _slots29571_)
                     (letrec* ((_tab29573_ (make-hash-table-eq))
                               (_dedup29575_
                                (lambda (_mixins29580_)
                                  (let _lp29583_ ((_rest29586_ _mixins29580_)
                                                  (_r29588_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest29586_))
                                        (let ((_slot29590_ (car _rest29586_)))
                                          (if (hash-get _tab29573_ _slot29590_)
                                              (let ((__tmp32396
                                                     (cdr _rest29586_)))
                                                (declare (not safe))
                                                (_lp29583_
                                                 __tmp32396
                                                 _r29588_))
                                              (begin
                                                (hash-put!
                                                 _tab29573_
                                                 _slot29590_
                                                 '#t)
                                                (let ((__tmp32398
                                                       (cdr _rest29586_))
                                                      (__tmp32397
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot29590_
                                                               _r29588_))))
                                                  (declare (not safe))
                                                  (_lp29583_
                                                   __tmp32398
                                                   __tmp32397)))))
                                        (reverse _r29588_))))))
                       (gx#stx-for-each
                        (lambda (_slot29577_)
                          (hash-put! _tab29573_ (gx#stx-e _slot29577_) '#t))
                        _slots29571_)
                       (if (let () (declare (not safe)) (not _super29569_))
                           '()
                           (if (gx#identifier? _super29569_)
                               (let ((__tmp32399
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r27396_
                                         _super29569_))))
                                 (declare (not safe))
                                 (_dedup29575_ __tmp32399))
                               (let ((__tmp32400
                                      (concatenate
                                       (map _get-mixin-slots-r27396_
                                            _super29569_))))
                                 (declare (not safe))
                                 (_dedup29575_ __tmp32400)))))))
                  (_get-mixin-slots-r27396_
                   (lambda (_type-id29563_)
                     (let ((_info29566_
                            (gx#syntax-local-value _type-id29563_)))
                       (append (let ((__obj31828 _info29566_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj31828
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj31828
                                        '4
                                        gerbil/core/mop$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/mop$<MOP:2>#class-type-info::t
                                      __obj31828
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r27396_
                                     (let ((__obj31829 _info29566_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj31829
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj31829
                                              '3
                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                            __obj31829
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots27389_ _stx27385_)
          (let* ((_name27398_ (symbol->string (gx#stx-e _id27387_)))
                 (_super27401_ (map gx#syntax-local-value _super-ref27388_))
                 (_struct?27404_ (gx#stx-getq 'struct: _body27390_))
                 (_g2740727415_
                  (lambda (_g2740827411_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2740827411_)))
                 (_g2740629559_
                  (lambda (_g2740827419_)
                    ((lambda (_L27422_)
                       (let ()
                         (let* ((_g2743827446_
                                 (lambda (_g2743927442_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2743927442_)))
                                (_g2743729555_
                                 (lambda (_g2743927450_)
                                   ((lambda (_L27453_)
                                      (let ()
                                        (let* ((_g2746627474_
                                                (lambda (_g2746727470_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2746727470_)))
                                               (_g2746529551_
                                                (lambda (_g2746727478_)
                                                  ((lambda (_L27481_)
                                                     (let ()
                                                       (let* ((_g2749427502_
                                                               (lambda (_g2749527498_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2749527498_)))
                      (_g2749329547_
                       (lambda (_g2749527506_)
                         ((lambda (_L27509_)
                            (let ()
                              (let* ((_g2752227530_
                                      (lambda (_g2752327526_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2752327526_)))
                                     (_g2752129543_
                                      (lambda (_g2752327534_)
                                        ((lambda (_L27537_)
                                           (let ()
                                             (let* ((_g2755027567_
                                                     (lambda (_g2755127563_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g2755127563_)))
                                                    (_g2754929539_
                                                     (lambda (_g2755127571_)
                                                       (if (gx#stx-pair/null?
                                                            _g2755127571_)
                                                           (let ((_g32401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g2755127571_ '0)))
                     (begin
                       (let ((_g32402_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g32401_)
                                    (##vector-length _g32401_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g32402_ 2)))
                             (error "Context expects 2 values" _g32402_)))
                       (let ((_target2755327574_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g32401_ 0)))
                             (_tl2755527577_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g32401_ 1))))
                         (if (gx#stx-null? _tl2755527577_)
                             (letrec ((_loop2755627580_
                                       (lambda (_hd2755427584_
                                                _slot2756027587_)
                                         (if (gx#stx-pair? _hd2755427584_)
                                             (let ((_e2755727590_
                                                    (gx#syntax-e
                                                     _hd2755427584_)))
                                               (let ((_lp-hd2755827594_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2755727590_)))
                                                     (_lp-tl2755927597_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2755727590_))))
                                                 (let ((__tmp32403
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd2755827594_
                                                                _slot2756027587_))))
                                                   (declare (not safe))
                                                   (_loop2755627580_
                                                    _lp-tl2755927597_
                                                    __tmp32403))))
                                             (let ((_slot2756127600_
                                                    (reverse _slot2756027587_)))
                                               ((lambda (_L27604_)
                                                  (let ()
                                                    (let* ((_g2762127638_
                                                            (lambda (_g2762227634_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2762227634_)))
                                                           (_g2762029530_
                                                            (lambda (_g2762227642_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2762227642_)
                          (let ((_g32404_
                                 (gx#syntax-split-splice _g2762227642_ '0)))
                            (begin
                              (let ((_g32405_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g32404_)
                                           (##vector-length _g32404_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g32405_ 2)))
                                    (error "Context expects 2 values"
                                           _g32405_)))
                              (let ((_target2762427645_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32404_ 0)))
                                    (_tl2762627648_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32404_ 1))))
                                (if (gx#stx-null? _tl2762627648_)
                                    (letrec ((_loop2762727651_
                                              (lambda (_hd2762527655_
                                                       _getf2763127658_)
                                                (if (gx#stx-pair?
                                                     _hd2762527655_)
                                                    (let ((_e2762827661_
                                                           (gx#syntax-e
                                                            _hd2762527655_)))
                                                      (let ((_lp-hd2762927665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2762827661_)))
                    (_lp-tl2763027668_
                     (let () (declare (not safe)) (##cdr _e2762827661_))))
                (let ((__tmp32406
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd2762927665_ _getf2763127658_))))
                  (declare (not safe))
                  (_loop2762727651_ _lp-tl2763027668_ __tmp32406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_getf2763227671_
                                                           (reverse _getf2763127658_)))
                                                      ((lambda (_L27675_)
                                                         (let ()
                                                           (let* ((_g2769227709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2769327705_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2769327705_)))
                          (_g2769129521_
                           (lambda (_g2769327713_)
                             (if (gx#stx-pair/null? _g2769327713_)
                                 (let ((_g32407_
                                        (gx#syntax-split-splice
                                         _g2769327713_
                                         '0)))
                                   (begin
                                     (let ((_g32408_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g32407_)
                                                  (##vector-length _g32407_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g32408_ 2)))
                                           (error "Context expects 2 values"
                                                  _g32408_)))
                                     (let ((_target2769527716_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32407_ 0)))
                                           (_tl2769727719_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32407_ 1))))
                                       (if (gx#stx-null? _tl2769727719_)
                                           (letrec ((_loop2769827722_
                                                     (lambda (_hd2769627726_
                                                              _setf2770227729_)
                                                       (if (gx#stx-pair?
                                                            _hd2769627726_)
                                                           (let ((_e2769927732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2769627726_)))
                     (let ((_lp-hd2770027736_
                            (let ()
                              (declare (not safe))
                              (##car _e2769927732_)))
                           (_lp-tl2770127739_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2769927732_))))
                       (let ((__tmp32409
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd2770027736_ _setf2770227729_))))
                         (declare (not safe))
                         (_loop2769827722_ _lp-tl2770127739_ __tmp32409))))
                   (let ((_setf2770327742_ (reverse _setf2770227729_)))
                     ((lambda (_L27746_)
                        (let ()
                          (let* ((_mixin-slots27763_
                                  (let ()
                                    (declare (not safe))
                                    (_get-mixin-slots27395_
                                     _super-ref27388_
                                     _slots27389_)))
                                 (_g2776627783_
                                  (lambda (_g2776727779_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2776727779_)))
                                 (_g2776529517_
                                  (lambda (_g2776727787_)
                                    (if (gx#stx-pair/null? _g2776727787_)
                                        (let ((_g32410_
                                               (gx#syntax-split-splice
                                                _g2776727787_
                                                '0)))
                                          (begin
                                            (let ((_g32411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g32410_)
                                                         (##vector-length
                                                          _g32410_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g32411_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g32411_)))
                                            (let ((_target2776927790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32410_
                                                      0)))
                                                  (_tl2777127793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32410_
                                                      1))))
                                              (if (gx#stx-null? _tl2777127793_)
                                                  (letrec ((_loop2777227796_
                                                            (lambda (_hd2777027800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _mixin-slot2777627803_)
                      (if (gx#stx-pair? _hd2777027800_)
                          (let ((_e2777327806_ (gx#syntax-e _hd2777027800_)))
                            (let ((_lp-hd2777427810_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2777327806_)))
                                  (_lp-tl2777527813_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2777327806_))))
                              (let ((__tmp32412
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2777427810_
                                             _mixin-slot2777627803_))))
                                (declare (not safe))
                                (_loop2777227796_
                                 _lp-tl2777527813_
                                 __tmp32412))))
                          (let ((_mixin-slot2777727816_
                                 (reverse _mixin-slot2777627803_)))
                            ((lambda (_L27820_)
                               (let ()
                                 (let* ((_g2783827855_
                                         (lambda (_g2783927851_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2783927851_)))
                                        (_g2783729508_
                                         (lambda (_g2783927859_)
                                           (if (gx#stx-pair/null?
                                                _g2783927859_)
                                               (let ((_g32413_
                                                      (gx#syntax-split-splice
                                                       _g2783927859_
                                                       '0)))
                                                 (begin
                                                   (let ((_g32414_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g32413_)
                        (##vector-length _g32413_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g32414_ 2)))
                 (error "Context expects 2 values" _g32414_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target2784127862_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32413_
                                                             0)))
                                                         (_tl2784327865_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32413_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl2784327865_)
                                                         (letrec ((_loop2784427868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2784227872_ _mixin-getf2784827875_)
                             (if (gx#stx-pair? _hd2784227872_)
                                 (let ((_e2784527878_
                                        (gx#syntax-e _hd2784227872_)))
                                   (let ((_lp-hd2784627882_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2784527878_)))
                                         (_lp-tl2784727885_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2784527878_))))
                                     (let ((__tmp32415
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd2784627882_
                                                    _mixin-getf2784827875_))))
                                       (declare (not safe))
                                       (_loop2784427868_
                                        _lp-tl2784727885_
                                        __tmp32415))))
                                 (let ((_mixin-getf2784927888_
                                        (reverse _mixin-getf2784827875_)))
                                   ((lambda (_L27892_)
                                      (let ()
                                        (let* ((_g2790927926_
                                                (lambda (_g2791027922_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2791027922_)))
                                               (_g2790829499_
                                                (lambda (_g2791027930_)
                                                  (if (gx#stx-pair/null?
                                                       _g2791027930_)
                                                      (let ((_g32416_
                                                             (gx#syntax-split-splice
                                                              _g2791027930_
                                                              '0)))
                                                        (begin
                                                          (let ((_g32417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g32416_)
                               (##vector-length _g32416_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g32417_ 2)))
                        (error "Context expects 2 values" _g32417_)))
                  (let ((_target2791227933_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32416_ 0)))
                        (_tl2791427936_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32416_ 1))))
                    (if (gx#stx-null? _tl2791427936_)
                        (letrec ((_loop2791527939_
                                  (lambda (_hd2791327943_
                                           _mixin-setf2791927946_)
                                    (if (gx#stx-pair? _hd2791327943_)
                                        (let ((_e2791627949_
                                               (gx#syntax-e _hd2791327943_)))
                                          (let ((_lp-hd2791727953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2791627949_)))
                                                (_lp-tl2791827956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2791627949_))))
                                            (let ((__tmp32418
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd2791727953_
                                                           _mixin-setf2791927946_))))
                                              (declare (not safe))
                                              (_loop2791527939_
                                               _lp-tl2791827956_
                                               __tmp32418))))
                                        (let ((_mixin-setf2792027959_
                                               (reverse _mixin-setf2791927946_)))
                                          ((lambda (_L27963_)
                                             (let ()
                                               (let* ((_g2798027997_
                                                       (lambda (_g2798127993_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2798127993_)))
                                                      (_g2797929482_
                                                       (lambda (_g2798128001_)
                                                         (if (gx#stx-pair/null?
                                                              _g2798128001_)
                                                             (let ((_g32419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2798128001_ '0)))
                       (begin
                         (let ((_g32420_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g32419_)
                                      (##vector-length _g32419_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g32420_ 2)))
                               (error "Context expects 2 values" _g32420_)))
                         (let ((_target2798328004_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32419_ 0)))
                               (_tl2798528007_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32419_ 1))))
                           (if (gx#stx-null? _tl2798528007_)
                               (letrec ((_loop2798628010_
                                         (lambda (_hd2798428014_
                                                  _ugetf2799028017_)
                                           (if (gx#stx-pair? _hd2798428014_)
                                               (let ((_e2798728020_
                                                      (gx#syntax-e
                                                       _hd2798428014_)))
                                                 (let ((_lp-hd2798828024_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2798728020_)))
                                                       (_lp-tl2798928027_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2798728020_))))
                                                   (let ((__tmp32421
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _lp-hd2798828024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ugetf2799028017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop2798628010_
                                                      _lp-tl2798928027_
                                                      __tmp32421))))
                                               (let ((_ugetf2799128030_
                                                      (reverse _ugetf2799028017_)))
                                                 ((lambda (_L28034_)
                                                    (let ()
                                                      (let* ((_g2805128068_
                                                              (lambda (_g2805228064_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2805228064_)))
                     (_g2805029465_
                      (lambda (_g2805228072_)
                        (if (gx#stx-pair/null? _g2805228072_)
                            (let ((_g32422_
                                   (gx#syntax-split-splice _g2805228072_ '0)))
                              (begin
                                (let ((_g32423_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g32422_)
                                             (##vector-length _g32422_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g32423_ 2)))
                                      (error "Context expects 2 values"
                                             _g32423_)))
                                (let ((_target2805428075_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32422_ 0)))
                                      (_tl2805628078_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32422_ 1))))
                                  (if (gx#stx-null? _tl2805628078_)
                                      (letrec ((_loop2805728081_
                                                (lambda (_hd2805528085_
                                                         _usetf2806128088_)
                                                  (if (gx#stx-pair?
                                                       _hd2805528085_)
                                                      (let ((_e2805828091_
                                                             (gx#syntax-e
                                                              _hd2805528085_)))
                                                        (let ((_lp-hd2805928095_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2805828091_)))
                      (_lp-tl2806028098_
                       (let () (declare (not safe)) (##cdr _e2805828091_))))
                  (let ((__tmp32424
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2805928095_ _usetf2806128088_))))
                    (declare (not safe))
                    (_loop2805728081_ _lp-tl2806028098_ __tmp32424))))
              (let ((_usetf2806228101_ (reverse _usetf2806128088_)))
                ((lambda (_L28105_)
                   (let ()
                     (let* ((_g2812228139_
                             (lambda (_g2812328135_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2812328135_)))
                            (_g2812129448_
                             (lambda (_g2812328143_)
                               (if (gx#stx-pair/null? _g2812328143_)
                                   (let ((_g32425_
                                          (gx#syntax-split-splice
                                           _g2812328143_
                                           '0)))
                                     (begin
                                       (let ((_g32426_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g32425_)
                                                    (##vector-length _g32425_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g32426_ 2)))
                                             (error "Context expects 2 values"
                                                    _g32426_)))
                                       (let ((_target2812528146_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32425_ 0)))
                                             (_tl2812728149_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32425_ 1))))
                                         (if (gx#stx-null? _tl2812728149_)
                                             (letrec ((_loop2812828152_
                                                       (lambda (_hd2812628156_
                                                                _mixin-ugetf2813228159_)
                                                         (if (gx#stx-pair?
                                                              _hd2812628156_)
                                                             (let ((_e2812928162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd2812628156_)))
                       (let ((_lp-hd2813028166_
                              (let ()
                                (declare (not safe))
                                (##car _e2812928162_)))
                             (_lp-tl2813128169_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2812928162_))))
                         (let ((__tmp32427
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2813028166_
                                        _mixin-ugetf2813228159_))))
                           (declare (not safe))
                           (_loop2812828152_ _lp-tl2813128169_ __tmp32427))))
                     (let ((_mixin-ugetf2813328172_
                            (reverse _mixin-ugetf2813228159_)))
                       ((lambda (_L28176_)
                          (let ()
                            (let* ((_g2819328210_
                                    (lambda (_g2819428206_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2819428206_)))
                                   (_g2819229431_
                                    (lambda (_g2819428214_)
                                      (if (gx#stx-pair/null? _g2819428214_)
                                          (let ((_g32428_
                                                 (gx#syntax-split-splice
                                                  _g2819428214_
                                                  '0)))
                                            (begin
                                              (let ((_g32429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g32428_)
                                                           (##vector-length
                                                            _g32428_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g32429_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g32429_)))
                                              (let ((_target2819628217_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32428_
                                                        0)))
                                                    (_tl2819828220_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32428_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl2819828220_)
                                                    (letrec ((_loop2819928223_
                                                              (lambda (_hd2819728227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _mixin-usetf2820328230_)
                        (if (gx#stx-pair? _hd2819728227_)
                            (let ((_e2820028233_ (gx#syntax-e _hd2819728227_)))
                              (let ((_lp-hd2820128237_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2820028233_)))
                                    (_lp-tl2820228240_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2820028233_))))
                                (let ((__tmp32430
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2820128237_
                                               _mixin-usetf2820328230_))))
                                  (declare (not safe))
                                  (_loop2819928223_
                                   _lp-tl2820228240_
                                   __tmp32430))))
                            (let ((_mixin-usetf2820428243_
                                   (reverse _mixin-usetf2820328230_)))
                              ((lambda (_L28247_)
                                 (let ()
                                   (let* ((_type-slots28278_
                                           (if (gx#stx-null? _slots27389_)
                                               '()
                                               (let ((__tmp32431
                                                      (let ((__tmp32432
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L27746_
                                                                _L27675_
                                                                _L27604_)
                                                               (foldr (lambda (_g2826328268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2826428271_
                                       _g2826528273_
                                       _g2826628275_)
                                (let ((__tmp32433
                                       (let ((__tmp32434
                                              (let ((__tmp32435
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2826328268_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2826428271_
                                                      __tmp32435))))
                                         (declare (not safe))
                                         (cons _g2826528273_ __tmp32434))))
                                  (declare (not safe))
                                  (cons __tmp32433 _g2826628275_)))
                              '()
                              _L27746_
                              _L27675_
                              _L27604_))))
                (declare (not safe))
                (cons __tmp32432 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp32431))))
                                          (_type-mixin-slots28295_
                                           (if (gx#stx-null?
                                                _mixin-slots27763_)
                                               '()
                                               (let ((__tmp32436
                                                      (let ((__tmp32437
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L27963_
                                                                _L27892_
                                                                _L27820_)
                                                               (foldr (lambda (_g2828028285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2828128288_
                                       _g2828228290_
                                       _g2828328292_)
                                (let ((__tmp32438
                                       (let ((__tmp32439
                                              (let ((__tmp32440
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2828028285_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2828128288_
                                                      __tmp32440))))
                                         (declare (not safe))
                                         (cons _g2828228290_ __tmp32439))))
                                  (declare (not safe))
                                  (cons __tmp32438 _g2828328292_)))
                              '()
                              _L27963_
                              _L27892_
                              _L27820_))))
                (declare (not safe))
                (cons __tmp32437 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp32436))))
                                          (_type-name28302_
                                           (let ((__tmp32441
                                                  (let ((__tmp32442
                                                         (let ((_$e28298_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body27390_)))
                   (if _$e28298_ _$e28298_ _id27387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32442 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp32441)))
                                          (_type-id28309_
                                           (let ((__tmp32443
                                                  (let ((__tmp32444
                                                         (let ((_$e28305_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'id:
                         _body27390_)))
                   (if _$e28305_
                       _$e28305_
                       (let ()
                         (declare (not safe))
                         (|gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
                          _L27422_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32444 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp32443)))
                                          (_type-constructor28324_
                                           (let ((_$e28320_
                                                  (let ((_e2831128313_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body27390_)))
                                                    (if _e2831128313_
                                                        (let* ((_e28317_
                                                                _e2831128313_)
                                                               (__tmp32445
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e28317_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp32445))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e28320_ _$e28320_ '())))
                                          (_properties28358_
                                           (let* ((_properties28327_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body27390_))
                                                       (let ((__tmp32446
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp32446 '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties28340_
                                                   (let ((_$e28330_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _body27390_))))
                                                     (if _$e28330_
                                                         ((lambda (_print28334_)
                                                            (let* ((_print28337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _print28334_ '#t))
                                _slots27389_
                                _print28334_))
                           (__tmp32447
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print28337_))))
                      (declare (not safe))
                      (cons __tmp32447 _properties28327_)))
                  _$e28330_)
                 _properties28327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties28353_
                                                   (let ((_$e28343_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _body27390_))))
                                                     (if _$e28343_
                                                         ((lambda (_equal28347_)
                                                            (let* ((_equal28350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _equal28347_ '#t))
                                _slots27389_
                                _equal28347_))
                           (__tmp32893
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal28350_))))
                      (declare (not safe))
                      (cons __tmp32893 _properties28340_)))
                  _$e28343_)
                 _properties28340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _properties28353_))
                                          (_type-properties28399_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _properties28358_))
                                               '()
                                               (let* ((_g2836128369_
                                                       (lambda (_g2836228365_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2836228365_)))
                                                      (_g2836028395_
                                                       (lambda (_g2836228373_)
                                                         ((lambda (_L28376_)
                                                            (let ()
                                                              (let ((__tmp32894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp32895
                                    (let ((__tmp32897
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp32896
                                           (let ()
                                             (declare (not safe))
                                             (cons _L28376_ '()))))
                                      (declare (not safe))
                                      (cons __tmp32897 __tmp32896))))
                               (declare (not safe))
                               (cons __tmp32895 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp32894))))
                  _g2836228373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2836028395_
                                                  _properties28358_))))
                                          (_metaclass28409_
                                           (let ((_$e28402_
                                                  (gx#stx-getq
                                                   'metaclass:
                                                   _body27390_)))
                                             (if _$e28402_
                                                 ((lambda (_metaclass28406_)
                                                    (if (gx#identifier?
                                                         _metaclass28406_)
                                                        _metaclass28406_
                                                        '#f))
                                                  _$e28402_)
                                                 '#f)))
                                          (_type-metaclass28412_
                                           (if _metaclass28409_
                                               (let ((__tmp32898
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass28409_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp32898))
                                               '()))
                                          (_final?28415_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body27390_)))
                                          (_type-struct28418_
                                           (let ((__tmp32899
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?27404_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp32899)))
                                          (_type-final28421_
                                           (let ((__tmp32900
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?28415_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp32900)))
                                          (_g2842428441_
                                           (lambda (_g2842528437_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2842528437_)))
                                          (_g2842329427_
                                           (lambda (_g2842528445_)
                                             (if (gx#stx-pair/null?
                                                  _g2842528445_)
                                                 (let ((_g32901_
                                                        (gx#syntax-split-splice
                                                         _g2842528445_
                                                         '0)))
                                                   (begin
                                                     (let ((_g32902_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g32901_)
                          (##vector-length _g32901_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g32902_ 2)))
                   (error "Context expects 2 values" _g32902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2842728448_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32901_
                                                               0)))
                                                           (_tl2842928451_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32901_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2842928451_)
                                                           (letrec ((_loop2843028454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2842828458_ _type-body2843428461_)
                               (if (gx#stx-pair? _hd2842828458_)
                                   (let ((_e2843128464_
                                          (gx#syntax-e _hd2842828458_)))
                                     (let ((_lp-hd2843228468_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2843128464_)))
                                           (_lp-tl2843328471_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2843128464_))))
                                       (let ((__tmp32903
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2843228468_
                                                      _type-body2843428461_))))
                                         (declare (not safe))
                                         (_loop2843028454_
                                          _lp-tl2843328471_
                                          __tmp32903))))
                                   (let ((_type-body2843528474_
                                          (reverse _type-body2843428461_)))
                                     ((lambda (_L28478_)
                                        (let ()
                                          (let* ((_g2849928507_
                                                  (lambda (_g2850028503_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2850028503_)))
                                                 (_g2849829415_
                                                  (lambda (_g2850028511_)
                                                    ((lambda (_L28514_)
                                                       (let ()
                                                         (let* ((_g2852728535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2852828531_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2852828531_)))
                        (_g2852629344_
                         (lambda (_g2852828539_)
                           ((lambda (_L28542_)
                              (let ()
                                (let* ((_g2855528563_
                                        (lambda (_g2855628559_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2855628559_)))
                                       (_g2855429309_
                                        (lambda (_g2855628567_)
                                          ((lambda (_L28570_)
                                             (let ()
                                               (let* ((_g2858328591_
                                                       (lambda (_g2858428587_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2858428587_)))
                                                      (_g2858229223_
                                                       (lambda (_g2858428595_)
                                                         ((lambda (_L28598_)
                                                            (let ()
                                                              (let* ((_g2861128619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2861228615_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2861228615_)))
                             (_g2861029211_
                              (lambda (_g2861228623_)
                                ((lambda (_L28626_)
                                   (let ()
                                     (let* ((_g2863928647_
                                             (lambda (_g2864028643_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2864028643_)))
                                            (_g2863829207_
                                             (lambda (_g2864028651_)
                                               ((lambda (_L28654_)
                                                  (let ()
                                                    (let* ((_g2866728675_
                                                            (lambda (_g2866828671_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2866828671_)))
                                                           (_g2866629203_
                                                            (lambda (_g2866828679_)
                                                              ((lambda (_L28682_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2869528703_
                                   (lambda (_g2869628699_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2869628699_)))
                                  (_g2869429168_
                                   (lambda (_g2869628707_)
                                     ((lambda (_L28710_)
                                        (let ()
                                          (let* ((_g2872328731_
                                                  (lambda (_g2872428727_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2872428727_)))
                                                 (_g2872229097_
                                                  (lambda (_g2872428735_)
                                                    ((lambda (_L28738_)
                                                       (let ()
                                                         (let* ((_g2875128759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2875228755_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2875228755_)))
                        (_g2875029093_
                         (lambda (_g2875228763_)
                           ((lambda (_L28766_)
                              (let ()
                                (let* ((_g2877928787_
                                        (lambda (_g2878028783_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2878028783_)))
                                       (_g2877829089_
                                        (lambda (_g2878028791_)
                                          ((lambda (_L28794_)
                                             (let ()
                                               (let* ((_g2880728815_
                                                       (lambda (_g2880828811_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2880828811_)))
                                                      (_g2880629085_
                                                       (lambda (_g2880828819_)
                                                         ((lambda (_L28822_)
                                                            (let ()
                                                              (let* ((_g2883528843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2883628839_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2883628839_)))
                             (_g2883429059_
                              (lambda (_g2883628847_)
                                ((lambda (_L28850_)
                                   (let ()
                                     (let* ((_g2886328871_
                                             (lambda (_g2886428867_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2886428867_)))
                                            (_g2886229033_
                                             (lambda (_g2886428875_)
                                               ((lambda (_L28878_)
                                                  (let ()
                                                    (let* ((_g2889128899_
                                                            (lambda (_g2889228895_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2889228895_)))
                                                           (_g2889029007_
                                                            (lambda (_g2889228903_)
                                                              ((lambda (_L28906_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2891928927_
                                   (lambda (_g2892028923_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2892028923_)))
                                  (_g2891828981_
                                   (lambda (_g2892028931_)
                                     ((lambda (_L28934_)
                                        (let ()
                                          (let* ((_g2894728955_
                                                  (lambda (_g2894828951_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2894828951_)))
                                                 (_g2894628977_
                                                  (lambda (_g2894828959_)
                                                    ((lambda (_L28962_)
                                                       (let ()
                                                         (let ()
                                                           (let ((__tmp32904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32907 (gx#datum->syntax '#f 'begin))
                                (__tmp32905
                                 (let ((__tmp32906
                                        (let ()
                                          (declare (not safe))
                                          (cons _L28962_ '()))))
                                   (declare (not safe))
                                   (cons _L28514_ __tmp32906))))
                            (declare (not safe))
                            (cons __tmp32907 __tmp32905))))
                     (declare (not safe))
                     (_wrap27392_ __tmp32904)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2894828959_)))
                                                 (__tmp32908
                                                  (let ((__tmp32909
                                                         (let ((__tmp32944
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp32910
                        (let ((__tmp32911
                               (let ((__tmp32912
                                      (let ((__tmp32943
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp32913
                                             (let ((__tmp32914
                                                    (let ((__tmp32915
                                                           (let ((__tmp32916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32917
                                 (let ((__tmp32918
                                        (let ((__tmp32919
                                               (let ((__tmp32920
                                                      (let ((__tmp32921
                                                             (let ((__tmp32922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32923
                                   (let ((__tmp32924
                                          (let ((__tmp32925
                                                 (let ((__tmp32926
                                                        (let ((__tmp32927
                                                               (let ((__tmp32928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp32929
                                     (let ((__tmp32930
                                            (let ((__tmp32931
                                                   (let ((__tmp32932
                                                          (let ((__tmp32933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp32934
                                (let ((__tmp32935
                                       (let ((__tmp32936
                                              (let ((__tmp32937
                                                     (let ((__tmp32938
                                                            (let ((__tmp32939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32940
                                  (let ((__tmp32941
                                         (let ((__tmp32942
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L28934_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp32942))))
                                    (declare (not safe))
                                    (cons _L28906_ __tmp32941))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp32940))))
                      (declare (not safe))
                      (cons _L28878_ __tmp32939))))
               (declare (not safe))
               (cons 'mutators: __tmp32938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L28850_ __tmp32937))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp32936))))
                                  (declare (not safe))
                                  (cons _L28822_ __tmp32935))))
                           (declare (not safe))
                           (cons 'predicate: __tmp32934))))
                    (declare (not safe))
                    (cons _L28794_ __tmp32933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp32932))))
                                              (declare (not safe))
                                              (cons _L28766_ __tmp32931))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp32930))))
                                (declare (not safe))
                                (cons _L28738_ __tmp32929))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp32928))))
                  (declare (not safe))
                  (cons _L28710_ __tmp32927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp32926))))
                                            (declare (not safe))
                                            (cons _L28682_ __tmp32925))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp32924))))
                              (declare (not safe))
                              (cons _L28654_ __tmp32923))))
                       (declare (not safe))
                       (cons 'struct?: __tmp32922))))
                (declare (not safe))
                (cons _L28598_ __tmp32921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp32920))))
                                          (declare (not safe))
                                          (cons _L28626_ __tmp32919))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp32918))))
                            (declare (not safe))
                            (cons _L28570_ __tmp32917))))
                     (declare (not safe))
                     (cons 'name: __tmp32916))))
              (declare (not safe))
              (cons _L28542_ __tmp32915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp32914))))
                                        (declare (not safe))
                                        (cons __tmp32943 __tmp32913))))
                                 (declare (not safe))
                                 (cons __tmp32912 '()))))
                          (declare (not safe))
                          (cons _L27422_ __tmp32911))))
                   (declare (not safe))
                   (cons __tmp32944 __tmp32910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27392_ __tmp32909))))
                                            (declare (not safe))
                                            (_g2894628977_ __tmp32908))))
                                      _g2892028931_)))
                                  (__tmp32945
                                   (let ((__tmp32969
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp32946
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L28105_
                                             _L27604_)
                                            (foldr (lambda (_g2898428991_
                                                            _g2898528994_
                                                            _g2898628996_)
                                                     (let ((__tmp32947
                                                            (let ((__tmp32957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp32948
                           (let ((__tmp32954
                                  (let ((__tmp32956
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp32955
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2898528994_ '()))))
                                    (declare (not safe))
                                    (cons __tmp32956 __tmp32955)))
                                 (__tmp32949
                                  (let ((__tmp32950
                                         (let ((__tmp32951
                                                (let ((__tmp32953
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp32952
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2898428991_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp32953
                                                        __tmp32952))))
                                           (declare (not safe))
                                           (cons __tmp32951 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp32950))))
                             (declare (not safe))
                             (cons __tmp32954 __tmp32949))))
                      (declare (not safe))
                      (cons __tmp32957 __tmp32948))))
               (declare (not safe))
               (cons __tmp32947 _g2898628996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L28247_
                                                      _L27820_)
                                                     (foldr (lambda (_g2898728999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2898829002_
                             _g2898929004_)
                      (let ((__tmp32958
                             (let ((__tmp32968 (gx#datum->syntax '#f '@list))
                                   (__tmp32959
                                    (let ((__tmp32965
                                           (let ((__tmp32967
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp32966
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2898829002_ '()))))
                                             (declare (not safe))
                                             (cons __tmp32967 __tmp32966)))
                                          (__tmp32960
                                           (let ((__tmp32961
                                                  (let ((__tmp32962
                                                         (let ((__tmp32964
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp32963
                        (let ()
                          (declare (not safe))
                          (cons _g2898728999_ '()))))
                   (declare (not safe))
                   (cons __tmp32964 __tmp32963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32962 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp32961))))
                                      (declare (not safe))
                                      (cons __tmp32965 __tmp32960))))
                               (declare (not safe))
                               (cons __tmp32968 __tmp32959))))
                        (declare (not safe))
                        (cons __tmp32958 _g2898929004_)))
                    '()
                    _L28247_
                    _L27820_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _L28105_
                                                   _L27604_))))
                                     (declare (not safe))
                                     (cons __tmp32969 __tmp32946))))
                             (declare (not safe))
                             (_g2891828981_ __tmp32945))))
                       _g2889228903_)))
                   (__tmp32970
                    (let ((__tmp32994 (gx#datum->syntax '#f '@list))
                          (__tmp32971
                           (begin
                             (gx#syntax-check-splice-targets _L28034_ _L27604_)
                             (foldr (lambda (_g2901029017_
                                             _g2901129020_
                                             _g2901229022_)
                                      (let ((__tmp32972
                                             (let ((__tmp32982
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32973
                                                    (let ((__tmp32979
                                                           (let ((__tmp32981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp32980
                          (let ()
                            (declare (not safe))
                            (cons _g2901129020_ '()))))
                     (declare (not safe))
                     (cons __tmp32981 __tmp32980)))
                  (__tmp32974
                   (let ((__tmp32975
                          (let ((__tmp32976
                                 (let ((__tmp32978
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp32977
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2901029017_ '()))))
                                   (declare (not safe))
                                   (cons __tmp32978 __tmp32977))))
                            (declare (not safe))
                            (cons __tmp32976 '()))))
                     (declare (not safe))
                     (cons ':: __tmp32975))))
              (declare (not safe))
              (cons __tmp32979 __tmp32974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32982 __tmp32973))))
                                        (declare (not safe))
                                        (cons __tmp32972 _g2901229022_)))
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L28176_
                                       _L27820_)
                                      (foldr (lambda (_g2901329025_
                                                      _g2901429028_
                                                      _g2901529030_)
                                               (let ((__tmp32983
                                                      (let ((__tmp32993
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp32984
                                                             (let ((__tmp32990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32992 (gx#datum->syntax '#f 'quote))
                                  (__tmp32991
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2901429028_ '()))))
                              (declare (not safe))
                              (cons __tmp32992 __tmp32991)))
                           (__tmp32985
                            (let ((__tmp32986
                                   (let ((__tmp32987
                                          (let ((__tmp32989
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp32988
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2901329025_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32989 __tmp32988))))
                                     (declare (not safe))
                                     (cons __tmp32987 '()))))
                              (declare (not safe))
                              (cons ':: __tmp32986))))
                       (declare (not safe))
                       (cons __tmp32990 __tmp32985))))
                (declare (not safe))
                (cons __tmp32993 __tmp32984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp32983
                                                       _g2901529030_)))
                                             '()
                                             _L28176_
                                             _L27820_))
                                    _L28034_
                                    _L27604_))))
                      (declare (not safe))
                      (cons __tmp32994 __tmp32971))))
              (declare (not safe))
              (_g2889029007_ __tmp32970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2886428875_)))
                                            (__tmp32995
                                             (let ((__tmp33019
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32996
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L27746_
                                                       _L27604_)
                                                      (foldr (lambda (_g2903629043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2903729046_
                              _g2903829048_)
                       (let ((__tmp32997
                              (let ((__tmp33007 (gx#datum->syntax '#f '@list))
                                    (__tmp32998
                                     (let ((__tmp33004
                                            (let ((__tmp33006
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp33005
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2903729046_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp33006 __tmp33005)))
                                           (__tmp32999
                                            (let ((__tmp33000
                                                   (let ((__tmp33001
                                                          (let ((__tmp33003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp33002
                         (let ()
                           (declare (not safe))
                           (cons _g2903629043_ '()))))
                    (declare (not safe))
                    (cons __tmp33003 __tmp33002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp33001 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp33000))))
                                       (declare (not safe))
                                       (cons __tmp33004 __tmp32999))))
                                (declare (not safe))
                                (cons __tmp33007 __tmp32998))))
                         (declare (not safe))
                         (cons __tmp32997 _g2903829048_)))
                     (begin
                       (gx#syntax-check-splice-targets _L27963_ _L27820_)
                       (foldr (lambda (_g2903929051_
                                       _g2904029054_
                                       _g2904129056_)
                                (let ((__tmp33008
                                       (let ((__tmp33018
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp33009
                                              (let ((__tmp33015
                                                     (let ((__tmp33017
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp33016
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2904029054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp33017 __tmp33016)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp33010
                                                     (let ((__tmp33011
                                                            (let ((__tmp33012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp33014
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp33013
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2903929051_ '()))))
                             (declare (not safe))
                             (cons __tmp33014 __tmp33013))))
                      (declare (not safe))
                      (cons __tmp33012 '()))))
               (declare (not safe))
               (cons ':: __tmp33011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp33015 __tmp33010))))
                                         (declare (not safe))
                                         (cons __tmp33018 __tmp33009))))
                                  (declare (not safe))
                                  (cons __tmp33008 _g2904129056_)))
                              '()
                              _L27963_
                              _L27820_))
                     _L27746_
                     _L27604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp33019 __tmp32996))))
                                       (declare (not safe))
                                       (_g2886229033_ __tmp32995))))
                                 _g2883628847_)))
                             (__tmp33020
                              (let ((__tmp33044 (gx#datum->syntax '#f '@list))
                                    (__tmp33021
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L27675_
                                        _L27604_)
                                       (foldr (lambda (_g2906229069_
                                                       _g2906329072_
                                                       _g2906429074_)
                                                (let ((__tmp33022
                                                       (let ((__tmp33032
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp33023
                                                              (let ((__tmp33029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp33031 (gx#datum->syntax '#f 'quote))
                                   (__tmp33030
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2906329072_ '()))))
                               (declare (not safe))
                               (cons __tmp33031 __tmp33030)))
                            (__tmp33024
                             (let ((__tmp33025
                                    (let ((__tmp33026
                                           (let ((__tmp33028
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp33027
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2906229069_ '()))))
                                             (declare (not safe))
                                             (cons __tmp33028 __tmp33027))))
                                      (declare (not safe))
                                      (cons __tmp33026 '()))))
                               (declare (not safe))
                               (cons ':: __tmp33025))))
                        (declare (not safe))
                        (cons __tmp33029 __tmp33024))))
                 (declare (not safe))
                 (cons __tmp33032 __tmp33023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp33022
                                                        _g2906429074_)))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L27892_
                                                 _L27820_)
                                                (foldr (lambda (_g2906529077_
                                                                _g2906629080_
                                                                _g2906729082_)
                                                         (let ((__tmp33033
                                                                (let ((__tmp33043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp33034
                               (let ((__tmp33040
                                      (let ((__tmp33042
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp33041
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2906629080_ '()))))
                                        (declare (not safe))
                                        (cons __tmp33042 __tmp33041)))
                                     (__tmp33035
                                      (let ((__tmp33036
                                             (let ((__tmp33037
                                                    (let ((__tmp33039
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp33038
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2906529077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp33039 __tmp33038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp33037 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp33036))))
                                 (declare (not safe))
                                 (cons __tmp33040 __tmp33035))))
                          (declare (not safe))
                          (cons __tmp33043 __tmp33034))))
                   (declare (not safe))
                   (cons __tmp33033 _g2906729082_)))
               '()
               _L27892_
               _L27820_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _L27675_
                                              _L27604_))))
                                (declare (not safe))
                                (cons __tmp33044 __tmp33021))))
                        (declare (not safe))
                        (_g2883429059_ __tmp33020))))
                  _g2880828819_)))
              (__tmp33045
               (let ((__tmp33047 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp33046
                      (let () (declare (not safe)) (cons _L27509_ '()))))
                 (declare (not safe))
                 (cons __tmp33047 __tmp33046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2880629085_ __tmp33045))))
                                           _g2878028791_)))
                                       (__tmp33048
                                        (let ((__tmp33050
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp33049
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L27481_ '()))))
                                          (declare (not safe))
                                          (cons __tmp33050 __tmp33049))))
                                  (declare (not safe))
                                  (_g2877829089_ __tmp33048))))
                            _g2875228763_)))
                        (__tmp33051
                         (let ((__tmp33053
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp33052
                                (let ()
                                  (declare (not safe))
                                  (cons _L27453_ '()))))
                           (declare (not safe))
                           (cons __tmp33053 __tmp33052))))
                   (declare (not safe))
                   (_g2875029093_ __tmp33051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2872428735_)))
                                                 (__tmp33054
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _type-constructor28324_))
                                                      '#f
                                                      (let* ((_g2910129116_
                                                              (lambda (_g2910229112_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2910229112_)))
                     (_g2910029164_
                      (lambda (_g2910229120_)
                        (if (gx#stx-pair? _g2910229120_)
                            (let ((_e2910429123_ (gx#syntax-e _g2910229120_)))
                              (let ((_hd2910529127_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2910429123_)))
                                    (_tl2910629130_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2910429123_))))
                                (if (gx#stx-datum? _hd2910529127_)
                                    (let ((_e2910729133_
                                           (gx#stx-e _hd2910529127_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2910729133_
                                                    'constructor:))
                                          (if (gx#stx-pair? _tl2910629130_)
                                              (let ((_e2910829137_
                                                     (gx#syntax-e
                                                      _tl2910629130_)))
                                                (let ((_hd2910929141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2910829137_)))
                                                      (_tl2911029144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2910829137_))))
                                                  (if (gx#stx-null?
                                                       _tl2911029144_)
                                                      ((lambda (_L29147_)
                                                         (let ()
                                                           (let ((__tmp33056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp33055
                          (let () (declare (not safe)) (cons _L29147_ '()))))
                     (declare (not safe))
                     (cons __tmp33056 __tmp33055))))
               _hd2910929141_)
              (let () (declare (not safe)) (_g2910129116_ _g2910229120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2910129116_ _g2910229120_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2910129116_ _g2910229120_))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2910129116_ _g2910229120_)))))
                            (let ()
                              (declare (not safe))
                              (_g2910129116_ _g2910229120_))))))
                (declare (not safe))
                (_g2910029164_ _type-constructor28324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g2872229097_ __tmp33054))))
                                      _g2869628707_)))
                                  (__tmp33057
                                   (if _metaclass28409_
                                       (let* ((_g2917229180_
                                               (lambda (_g2917329176_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g2917329176_)))
                                              (_g2917129199_
                                               (lambda (_g2917329184_)
                                                 ((lambda (_L29187_)
                                                    (let ()
                                                      (let ((__tmp33059
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp33058
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L29187_ '()))))
                (declare (not safe))
                (cons __tmp33059 __tmp33058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2917329184_))))
                                         (declare (not safe))
                                         (_g2917129199_ _metaclass28409_))
                                       '#f)))
                             (declare (not safe))
                             (_g2869429168_ __tmp33057))))
                       _g2866828679_))))
              (declare (not safe))
              (_g2866629203_ _final?28415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2864028651_))))
                                       (declare (not safe))
                                       (_g2863829207_ _struct?27404_))))
                                 _g2861228623_)))
                             (__tmp33060
                              (let ((__tmp33063 (gx#datum->syntax '#f 'quote))
                                    (__tmp33061
                                     (let ((__tmp33062
                                            (foldr (lambda (_g2921429217_
                                                            _g2921529220_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2921429217_
                                                             _g2921529220_)))
                                                   '()
                                                   _L27604_)))
                                       (declare (not safe))
                                       (cons __tmp33062 '()))))
                                (declare (not safe))
                                (cons __tmp33063 __tmp33061))))
                        (declare (not safe))
                        (_g2861029211_ __tmp33060))))
                  _g2858428595_)))
              (__tmp33064
               (let* ((_g2922729244_
                       (lambda (_g2922829240_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2922829240_)))
                      (_g2922629305_
                       (lambda (_g2922829248_)
                         (if (gx#stx-pair/null? _g2922829248_)
                             (let ((_g33065_
                                    (gx#syntax-split-splice _g2922829248_ '0)))
                               (begin
                                 (let ((_g33066_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g33065_)
                                              (##vector-length _g33065_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g33066_ 2)))
                                       (error "Context expects 2 values"
                                              _g33066_)))
                                 (let ((_target2923029251_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g33065_ 0)))
                                       (_tl2923229254_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g33065_ 1))))
                                   (if (gx#stx-null? _tl2923229254_)
                                       (letrec ((_loop2923329257_
                                                 (lambda (_hd2923129261_
                                                          _super-id2923729264_)
                                                   (if (gx#stx-pair?
                                                        _hd2923129261_)
                                                       (let ((_e2923429267_
                                                              (gx#syntax-e
                                                               _hd2923129261_)))
                                                         (let ((_lp-hd2923529271_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2923429267_)))
                       (_lp-tl2923629274_
                        (let () (declare (not safe)) (##cdr _e2923429267_))))
                   (let ((__tmp33067
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2923529271_ _super-id2923729264_))))
                     (declare (not safe))
                     (_loop2923329257_ _lp-tl2923629274_ __tmp33067))))
               (let ((_super-id2923829277_ (reverse _super-id2923729264_)))
                 ((lambda (_L29281_)
                    (let ()
                      (let ((__tmp33072 (gx#datum->syntax '#f '@list))
                            (__tmp33068
                             (foldr (lambda (_g2929629299_ _g2929729302_)
                                      (let ((__tmp33069
                                             (let ((__tmp33071
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp33070
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2929629299_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp33071 __tmp33070))))
                                        (declare (not safe))
                                        (cons __tmp33069 _g2929729302_)))
                                    '()
                                    _L29281_)))
                        (declare (not safe))
                        (cons __tmp33072 __tmp33068))))
                  _super-id2923829277_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop2923329257_
                                            _target2923029251_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g2922729244_ _g2922829248_))))))
                             (let ()
                               (declare (not safe))
                               (_g2922729244_ _g2922829248_))))))
                 (declare (not safe))
                 (_g2922629305_ _super-ref27388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2858229223_ __tmp33064))))
                                           _g2855628567_)))
                                       (__tmp33073
                                        (let* ((_g2931329321_
                                                (lambda (_g2931429317_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2931429317_)))
                                               (_g2931229340_
                                                (lambda (_g2931429325_)
                                                  ((lambda (_L29328_)
                                                     (let ()
                                                       (let ((__tmp33075
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp33074
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29328_ '()))))
                 (declare (not safe))
                 (cons __tmp33075 __tmp33074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2931429325_)))
                                               (__tmp33076
                                                (cadr _type-name28302_)))
                                          (declare (not safe))
                                          (_g2931229340_ __tmp33076))))
                                  (declare (not safe))
                                  (_g2855429309_ __tmp33073))))
                            _g2852828539_)))
                        (__tmp33077
                         (let* ((_g2934829363_
                                 (lambda (_g2934929359_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2934929359_)))
                                (_g2934729411_
                                 (lambda (_g2934929367_)
                                   (if (gx#stx-pair? _g2934929367_)
                                       (let ((_e2935129370_
                                              (gx#syntax-e _g2934929367_)))
                                         (let ((_hd2935229374_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2935129370_)))
                                               (_tl2935329377_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2935129370_))))
                                           (if (gx#stx-datum? _hd2935229374_)
                                               (let ((_e2935429380_
                                                      (gx#stx-e
                                                       _hd2935229374_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2935429380_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2935329377_)
                                                         (let ((_e2935529384_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2935329377_)))
                   (let ((_hd2935629388_
                          (let () (declare (not safe)) (##car _e2935529384_)))
                         (_tl2935729391_
                          (let () (declare (not safe)) (##cdr _e2935529384_))))
                     (if (gx#stx-null? _tl2935729391_)
                         ((lambda (_L29394_)
                            (let ()
                              (let ((__tmp33079 (gx#datum->syntax '#f 'quote))
                                    (__tmp33078
                                     (let ()
                                       (declare (not safe))
                                       (cons _L29394_ '()))))
                                (declare (not safe))
                                (cons __tmp33079 __tmp33078))))
                          _hd2935629388_)
                         (let ()
                           (declare (not safe))
                           (_g2934829363_ _g2934929367_)))))
                 (let () (declare (not safe)) (_g2934829363_ _g2934929367_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2934829363_
                                                        _g2934929367_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2934829363_
                                                  _g2934929367_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2934829363_ _g2934929367_))))))
                           (declare (not safe))
                           (_g2934729411_ _type-id28309_))))
                   (declare (not safe))
                   (_g2852629344_ __tmp33077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2850028511_)))
                                                 (__tmp33080
                                                  (let ((__tmp33081
                                                         (let ((__tmp33087
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp33082
                        (let ((__tmp33083
                               (let ((__tmp33084
                                      (let ((__tmp33085
                                             (let ((__tmp33086
                                                    (foldr (lambda (_g2941829421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2941929424_)
                     (let ()
                       (declare (not safe))
                       (cons _g2941829421_ _g2941929424_)))
                   '()
                   _L28478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L27509_ __tmp33086))))
                                        (declare (not safe))
                                        (cons _L27481_ __tmp33085))))
                                 (declare (not safe))
                                 (cons _L27537_ __tmp33084))))
                          (declare (not safe))
                          (cons _L27453_ __tmp33083))))
                   (declare (not safe))
                   (cons __tmp33087 __tmp33082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27392_ __tmp33081))))
                                            (declare (not safe))
                                            (_g2849829415_ __tmp33080))))
                                      _type-body2843528474_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2843028454_ _target2842728448_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2842428441_ _g2842528445_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2842428441_
                                                    _g2842528445_)))))
                                          (__tmp33088
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _type-mixin-slots28295_
                                                           _type-slots28278_)
                                                    _type-properties28399_)
                                             _type-metaclass28412_)
                                      _type-final28421_)
                               _type-struct28418_)
                        _type-constructor28324_)
                 _type-name28302_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-id28309_)))
                                     (declare (not safe))
                                     (_g2842329427_ __tmp33088))))
                               _mixin-usetf2820428243_))))))
              (let ()
                (declare (not safe))
                (_loop2819928223_ _target2819628217_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2819328210_
                                                       _g2819428214_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2819328210_ _g2819428214_)))))
                                   (__tmp33089
                                    (gx#stx-map
                                     (lambda (_g2943429436_)
                                       (_make-id27394_ '"&" _g2943429436_))
                                     (foldr (lambda (_g2943929442_
                                                     _g2944029445_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2943929442_
                                                      _g2944029445_)))
                                            '()
                                            _L27963_))))
                              (declare (not safe))
                              (_g2819229431_ __tmp33089))))
                        _mixin-ugetf2813328172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_loop2812828152_
                                                  _target2812528146_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_g2812228139_
                                                _g2812328143_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2812228139_ _g2812328143_)))))
                            (__tmp33090
                             (gx#stx-map
                              (lambda (_g2945129453_)
                                (_make-id27394_ '"&" _g2945129453_))
                              (foldr (lambda (_g2945629459_ _g2945729462_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2945629459_ _g2945729462_)))
                                     '()
                                     _L27892_))))
                       (declare (not safe))
                       (_g2812129448_ __tmp33090))))
                 _usetf2806228101_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2805728081_
                                           _target2805428075_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2805128068_ _g2805228072_))))))
                            (let ()
                              (declare (not safe))
                              (_g2805128068_ _g2805228072_)))))
                     (__tmp33091
                      (gx#stx-map
                       (lambda (_g2946829470_)
                         (_make-id27394_ '"&" _g2946829470_))
                       (foldr (lambda (_g2947329476_ _g2947429479_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2947329476_ _g2947429479_)))
                              '()
                              _L27746_))))
                (declare (not safe))
                (_g2805029465_ __tmp33091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ugetf2799128030_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2798628010_ _target2798328004_ '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2798027997_ _g2798128001_))))))
                     (let ()
                       (declare (not safe))
                       (_g2798027997_ _g2798128001_)))))
              (__tmp33092
               (gx#stx-map
                (lambda (_g2948529487_) (_make-id27394_ '"&" _g2948529487_))
                (foldr (lambda (_g2949029493_ _g2949129496_)
                         (let ()
                           (declare (not safe))
                           (cons _g2949029493_ _g2949129496_)))
                       '()
                       _L27675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2797929482_ __tmp33092))))
                                           _mixin-setf2792027959_))))))
                          (let ()
                            (declare (not safe))
                            (_loop2791527939_ _target2791227933_ '())))
                        (let ()
                          (declare (not safe))
                          (_g2790927926_ _g2791027930_))))))
              (let () (declare (not safe)) (_g2790927926_ _g2791027930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp33093
                                                (gx#stx-map
                                                 (lambda (_g2950229504_)
                                                   (_make-id27394_
                                                    _name27398_
                                                    '"-"
                                                    _g2950229504_
                                                    '"-set!"))
                                                 _mixin-slots27763_)))
                                          (declare (not safe))
                                          (_g2790829499_ __tmp33093))))
                                    _mixin-getf2784927888_))))))
                   (let ()
                     (declare (not safe))
                     (_loop2784427868_ _target2784127862_ '())))
                 (let ()
                   (declare (not safe))
                   (_g2783827855_ _g2783927859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2783827855_
                                                  _g2783927859_)))))
                                        (__tmp33094
                                         (gx#stx-map
                                          (lambda (_g2951129513_)
                                            (_make-id27394_
                                             _name27398_
                                             '"-"
                                             _g2951129513_))
                                          _mixin-slots27763_)))
                                   (declare (not safe))
                                   (_g2783729508_ __tmp33094))))
                             _mixin-slot2777727816_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop2777227796_
                                                       _target2776927790_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2776627783_
                                                     _g2776727787_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2776627783_ _g2776727787_))))))
                            (declare (not safe))
                            (_g2776529517_ _mixin-slots27763_))))
                      _setf2770327742_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop2769827722_
                                                _target2769527716_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g2769227709_ _g2769327713_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2769227709_ _g2769327713_)))))
                          (__tmp33095
                           (gx#stx-map
                            (lambda (_g2952429526_)
                              (_make-id27394_
                               _name27398_
                               '"-"
                               _g2952429526_
                               '"-set!"))
                            _slots27389_)))
                     (declare (not safe))
                     (_g2769129521_ __tmp33095))))
               _getf2763227671_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop2762727651_
                                         _target2762427645_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g2762127638_ _g2762227642_))))))
                          (let ()
                            (declare (not safe))
                            (_g2762127638_ _g2762227642_)))))
                   (__tmp33096
                    (gx#stx-map
                     (lambda (_g2953329535_)
                       (_make-id27394_ _name27398_ '"-" _g2953329535_))
                     _slots27389_)))
              (declare (not safe))
              (_g2762029530_ __tmp33096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _slot2756127600_))))))
                               (let ()
                                 (declare (not safe))
                                 (_loop2755627580_ _target2755327574_ '())))
                             (let ()
                               (declare (not safe))
                               (_g2755027567_ _g2755127571_))))))
                   (let ()
                     (declare (not safe))
                     (_g2755027567_ _g2755127571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g2754929539_ _slots27389_))))
                                         _g2752327534_)))
                                     (__tmp33097
                                      (map gerbil/core/mop$<MOP:2>#!class-type-descriptor
                                           _super27401_)))
                                (declare (not safe))
                                (_g2752129543_ __tmp33097))))
                          _g2749527506_)))
                      (__tmp33098 (_make-id27394_ _name27398_ '"?")))
                 (declare (not safe))
                 (_g2749329547_ __tmp33098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2746727478_)))
                                               (__tmp33099
                                                (_make-id27394_
                                                 '"make-"
                                                 _name27398_)))
                                          (declare (not safe))
                                          (_g2746529551_ __tmp33099))))
                                    _g2743927450_)))
                                (__tmp33100
                                 (_make-id27394_ _name27398_ '"::t")))
                           (declare (not safe))
                           (_g2743729555_ __tmp33100))))
                     _g2740827419_))))
            (declare (not safe))
            (_g2740629559_ _id27387_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defstruct|
      (lambda (_$stx29623_)
        (let* ((_g2962729646_
                (lambda (_g2962829642_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2962829642_)))
               (_g2962629703_
                (lambda (_g2962829650_)
                  (if (gx#stx-pair? _g2962829650_)
                      (let ((_e2963229653_ (gx#syntax-e _g2962829650_)))
                        (let ((_hd2963329657_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2963229653_)))
                              (_tl2963429660_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2963229653_))))
                          (if (gx#stx-pair? _tl2963429660_)
                              (let ((_e2963529663_
                                     (gx#syntax-e _tl2963429660_)))
                                (let ((_hd2963629667_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2963529663_)))
                                      (_tl2963729670_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2963529663_))))
                                  (if (gx#stx-pair? _tl2963729670_)
                                      (let ((_e2963829673_
                                             (gx#syntax-e _tl2963729670_)))
                                        (let ((_hd2963929677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2963829673_)))
                                              (_tl2964029680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2963829673_))))
                                          ((lambda (_L29683_ _L29685_ _L29686_)
                                             (let ((__tmp33105
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp33101
                                                    (let ((__tmp33102
                                                           (let ((__tmp33103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp33104
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L29683_))))
                            (declare (not safe))
                            (cons 'struct: __tmp33104))))
                     (declare (not safe))
                     (cons _L29685_ __tmp33103))))
              (declare (not safe))
              (cons _L29686_ __tmp33102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp33105 __tmp33101)))
                                           _tl2964029680_
                                           _hd2963929677_
                                           _hd2963629667_)))
                                      (_g2962729646_ _g2962829650_))))
                              (_g2962729646_ _g2962829650_))))
                      (_g2962729646_ _g2962829650_)))))
          (_g2962629703_ _$stx29623_))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defclass|
      (lambda (_stx29707_)
        (letrec ((_generate29710_
                  (lambda (_hd29794_ _slots29796_ _body29797_)
                    (let* ((___stx3155331554_ _hd29794_)
                           (_g2980029812_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3155331554_))))
                      (let ((___kont3155631557_
                             (lambda (_L29840_ _L29842_)
                               (let ((__tmp33106 (gx#syntax->list _L29840_)))
                                 (declare (not safe))
                                 (|gerbil/core/mop$<MOP:4>[1]#generate-defclass|
                                  _stx29707_
                                  _L29842_
                                  __tmp33106
                                  _slots29796_
                                  _body29797_))))
                            (___kont3155831559_
                             (lambda ()
                               (if (gx#identifier? _hd29794_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/mop$<MOP:4>[1]#generate-defclass|
                                      _stx29707_
                                      _hd29794_
                                      '()
                                      _slots29796_
                                      _body29797_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx29707_
                                    _hd29794_)))))
                        (let ((___match3156631567_
                               (lambda (_e2980429830_
                                        _hd2980529834_
                                        _tl2980629837_)
                                 (let ((_L29840_ _tl2980629837_)
                                       (_L29842_ _hd2980529834_))
                                   (if (and (gx#stx-list? _L29840_)
                                            (gx#stx-andmap
                                             gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
                                             _L29840_))
                                       (___kont3155631557_ _L29840_ _L29842_)
                                       (___kont3155831559_))))))
                          (if (gx#stx-pair? ___stx3155331554_)
                              (let ((_e2980429830_
                                     (gx#syntax-e ___stx3155331554_)))
                                (let ((_tl2980629837_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2980429830_)))
                                      (_hd2980529834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2980429830_))))
                                  (___match3156631567_
                                   _e2980429830_
                                   _hd2980529834_
                                   _tl2980629837_)))
                              (___kont3155831559_))))))))
          (let* ((_g2971329732_
                  (lambda (_g2971429728_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2971429728_)))
                 (_g2971229790_
                  (lambda (_g2971429736_)
                    (if (gx#stx-pair? _g2971429736_)
                        (let ((_e2971829739_ (gx#syntax-e _g2971429736_)))
                          (let ((_hd2971929743_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2971829739_)))
                                (_tl2972029746_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2971829739_))))
                            (if (gx#stx-pair? _tl2972029746_)
                                (let ((_e2972129749_
                                       (gx#syntax-e _tl2972029746_)))
                                  (let ((_hd2972229753_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2972129749_)))
                                        (_tl2972329756_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2972129749_))))
                                    (if (gx#stx-pair? _tl2972329756_)
                                        (let ((_e2972429759_
                                               (gx#syntax-e _tl2972329756_)))
                                          (let ((_hd2972529763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2972429759_)))
                                                (_tl2972629766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2972429759_))))
                                            ((lambda (_L29769_
                                                      _L29771_
                                                      _L29772_)
                                               (if (and (gx#identifier-list?
                                                         _L29771_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core/mop$<MOP:4>[1]#typedef-body?|
                                                           _L29769_)))
                                                   (_generate29710_
                                                    _L29772_
                                                    _L29771_
                                                    _L29769_)
                                                   (_g2971329732_
                                                    _g2971429736_)))
                                             _tl2972629766_
                                             _hd2972529763_
                                             _hd2972229753_)))
                                        (_g2971329732_ _g2971429736_))))
                                (_g2971329732_ _g2971429736_))))
                        (_g2971329732_ _g2971429736_)))))
            (_g2971229790_ _stx29707_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defmethod|
      (lambda (_stx29859_)
        (letrec ((_wrap29862_
                  (lambda (_e-stx30199_)
                    (gx#stx-wrap-source
                     _e-stx30199_
                     (gx#stx-source _stx29859_))))
                 (_method-opt?29864_
                  (lambda (_x30196_) (memq (gx#stx-e _x30196_) '(rebind:)))))
          (let* ((_g2986629895_
                  (lambda (_g2986729891_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2986729891_)))
                 (_g2986530192_
                  (lambda (_g2986729899_)
                    (if (gx#stx-pair? _g2986729899_)
                        (let ((_e2987229902_ (gx#syntax-e _g2986729899_)))
                          (let ((_hd2987329906_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2987229902_)))
                                (_tl2987429909_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2987229902_))))
                            (if (gx#stx-pair? _tl2987429909_)
                                (let ((_e2987529912_
                                       (gx#syntax-e _tl2987429909_)))
                                  (let ((_hd2987629916_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2987529912_)))
                                        (_tl2987729919_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2987529912_))))
                                    (if (gx#stx-pair? _hd2987629916_)
                                        (let ((_e2987829922_
                                               (gx#syntax-e _hd2987629916_)))
                                          (let ((_hd2987929926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2987829922_)))
                                                (_tl2988029929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2987829922_))))
                                            (if (gx#identifier? _hd2987929926_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop$<MOP:4>[1]#_g33107_|
                                                     _hd2987929926_)
                                                    (if (gx#stx-pair?
                                                         _tl2988029929_)
                                                        (let ((_e2988129932_
                                                               (gx#syntax-e
                                                                _tl2988029929_)))
                                                          (let ((_hd2988229936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2988129932_)))
                        (_tl2988329939_
                         (let () (declare (not safe)) (##cdr _e2988129932_))))
                    (if (gx#stx-pair? _tl2988329939_)
                        (let ((_e2988429942_ (gx#syntax-e _tl2988329939_)))
                          (let ((_hd2988529946_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2988429942_)))
                                (_tl2988629949_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2988429942_))))
                            (if (gx#stx-null? _tl2988629949_)
                                (if (gx#stx-pair? _tl2987729919_)
                                    (let ((_e2988729952_
                                           (gx#syntax-e _tl2987729919_)))
                                      (let ((_hd2988829956_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2988729952_)))
                                            (_tl2988929959_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2988729952_))))
                                        ((lambda (_L29962_
                                                  _L29964_
                                                  _L29965_
                                                  _L29966_)
                                           (if (and (gx#identifier? _L29966_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                                                       _L29965_))
                                                    (gx#stx-plist?
                                                     _L29962_
                                                     _method-opt?29864_))
                                               (let* ((_klass29991_
                                                       (gx#syntax-local-value
                                                        _L29965_))
                                                      (_rebind?29994_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _L29962_)))
                                                      (_g2999730005_
                                                       (lambda (_g2999830001_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2999830001_)))
                                                      (_g2999630188_
                                                       (lambda (_g2999830009_)
                                                         ((lambda (_L30012_)
                                                            (let ()
                                                              (let* ((_g3002630034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3002730030_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3002730030_)))
                             (_g3002530184_
                              (lambda (_g3002730038_)
                                ((lambda (_L30041_)
                                   (let ()
                                     (let* ((_g3005430062_
                                             (lambda (_g3005530058_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3005530058_)))
                                            (_g3005330180_
                                             (lambda (_g3005530066_)
                                               ((lambda (_L30069_)
                                                  (let ()
                                                    (let* ((_g3008230090_
                                                            (lambda (_g3008330086_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g3008330086_)))
                                                           (_g3008130176_
                                                            (lambda (_g3008330094_)
                                                              ((lambda (_L30097_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g3011030118_
                                   (lambda (_g3011130114_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3011130114_)))
                                  (_g3010930172_
                                   (lambda (_g3011130122_)
                                     ((lambda (_L30125_)
                                        (let ()
                                          (let* ((_g3013830146_
                                                  (lambda (_g3013930142_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3013930142_)))
                                                 (_g3013730168_
                                                  (lambda (_g3013930150_)
                                                    ((lambda (_L30153_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap29862_
                                                            (let ((__tmp33110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp33108
                           (let ((__tmp33109
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30153_ '()))))
                             (declare (not safe))
                             (cons _L30097_ __tmp33109))))
                      (declare (not safe))
                      (cons __tmp33110 __tmp33108))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3013930150_))))
                                            (_g3013730168_
                                             (_wrap29862_
                                              (let ((__tmp33118
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp33111
                                                     (let ((__tmp33112
                                                            (let ((__tmp33115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp33117 (gx#datum->syntax '#f 'quote))
                                 (__tmp33116
                                  (let ()
                                    (declare (not safe))
                                    (cons _L29966_ '()))))
                             (declare (not safe))
                             (cons __tmp33117 __tmp33116)))
                          (__tmp33113
                           (let ((__tmp33114
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30125_ '()))))
                             (declare (not safe))
                             (cons _L30041_ __tmp33114))))
                      (declare (not safe))
                      (cons __tmp33115 __tmp33113))))
               (declare (not safe))
               (cons _L30012_ __tmp33112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp33118
                                                      __tmp33111)))))))
                                      _g3011130122_))))
                             (_g3010930172_ _rebind?29994_))))
                       _g3008330094_))))
              (_g3008130176_
               (_wrap29862_
                (let ((__tmp33155 (gx#datum->syntax '#f 'def))
                      (__tmp33119
                       (let ((__tmp33120
                              (let ((__tmp33121
                                     (let ((__tmp33154
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp33122
                                            (let ((__tmp33124
                                                   (let ((__tmp33125
                                                          (let ((__tmp33126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp33127
                                (let ((__tmp33153
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp33128
                                       (let ((__tmp33129
                                              (let ((__tmp33130
                                                     (let ((__tmp33145
                                                            (let ((__tmp33152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp33146
                           (let ((__tmp33151 (gx#datum->syntax '#f 'obj))
                                 (__tmp33147
                                  (let ((__tmp33150
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp33148
                                         (let ((__tmp33149
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp33149 '()))))
                                    (declare (not safe))
                                    (cons __tmp33150 __tmp33148))))
                             (declare (not safe))
                             (cons __tmp33151 __tmp33147))))
                      (declare (not safe))
                      (cons __tmp33152 __tmp33146)))
                   (__tmp33131
                    (let ((__tmp33132
                           (let ((__tmp33144
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp33133
                                  (let ((__tmp33134
                                         (let ((__tmp33143
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp33135
                                                (let ((__tmp33140
                                                       (let ((__tmp33142
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp33141
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29966_ '()))))
                 (declare (not safe))
                 (cons __tmp33142 __tmp33141)))
              (__tmp33136
               (let ((__tmp33139 (gx#datum->syntax '#f 'arg))
                     (__tmp33137
                      (let ((__tmp33138 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp33138 '()))))
                 (declare (not safe))
                 (cons __tmp33139 __tmp33137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp33140
                                                        __tmp33136))))
                                           (declare (not safe))
                                           (cons __tmp33143 __tmp33135))))
                                    (declare (not safe))
                                    (cons _L30012_ __tmp33134))))
                             (declare (not safe))
                             (cons __tmp33144 __tmp33133))))
                      (declare (not safe))
                      (cons __tmp33132 '()))))
               (declare (not safe))
               (cons __tmp33145 __tmp33131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp33130 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp33129))))
                                  (declare (not safe))
                                  (cons __tmp33153 __tmp33128))))
                           (declare (not safe))
                           (cons __tmp33127 '()))))
                    (declare (not safe))
                    (cons _L30069_ __tmp33126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp33125 '())))
                                                  (__tmp33123
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L29964_ '()))))
                                              (declare (not safe))
                                              (cons __tmp33124 __tmp33123))))
                                       (declare (not safe))
                                       (cons __tmp33154 __tmp33122))))
                                (declare (not safe))
                                (cons __tmp33121 '()))))
                         (declare (not safe))
                         (cons _L30041_ __tmp33120))))
                  (declare (not safe))
                  (cons __tmp33155 __tmp33119)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3005530066_))))
                                       (_g3005330180_
                                        (gx#stx-identifier
                                         _L29965_
                                         '@next-method)))))
                                 _g3002730038_))))
                        (_g3002530184_
                         (gx#stx-identifier
                          _L29965_
                          _L29965_
                          '"::"
                          _L29966_)))))
                  _g2999830009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2999630188_
                                                  (let ((__obj31830
                                                         _klass29991_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj31830
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj31830
                                                           '10
                                                           gerbil/core/mop$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop$<MOP:2>#class-type-info::t
                                                         __obj31830
                                                         'type-descriptor)))))
                                               (if (let ((__tmp33156
                                                          (gx#identifier?
                                                           _L29966_)))
                                                     (declare (not safe))
                                                     (not __tmp33156))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx29859_
                                                    _L29966_)
                                                   (if (let ((__tmp33157
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                         _L29965_))))
                 (declare (not safe))
                 (not __tmp33157))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx29859_
                _L29965_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx29859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2988929959_
                                         _hd2988829956_
                                         _hd2988529946_
                                         _hd2988229936_)))
                                    (_g2986629895_ _g2986729899_))
                                (_g2986629895_ _g2986729899_))))
                        (_g2986629895_ _g2986729899_))))
                (_g2986629895_ _g2986729899_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2986629895_
                                                     _g2986729899_))
                                                (_g2986629895_
                                                 _g2986729899_))))
                                        (_g2986629895_ _g2986729899_))))
                                (_g2986629895_ _g2986729899_))))
                        (_g2986629895_ _g2986729899_)))))
            (_g2986530192_ _stx29859_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@method|
      (lambda (_stx30202_)
        (letrec ((_dotted-identifier?30205_
                  (lambda (_id30838_)
                    (if (gx#identifier? _id30838_)
                        (let ((_id-str30841_
                               (symbol->string (gx#stx-e _id30838_))))
                          (if (string-index _id-str30841_ '#\.)
                              (let ((_split30844_
                                     (string-split _id-str30841_ '#\.)))
                                (fx= (length _split30844_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted30207_
                  (lambda (_id30827_)
                    (let* ((_id-str30830_
                            (symbol->string (gx#stx-e _id30827_)))
                           (_split30833_ (string-split _id-str30830_ '#\.)))
                      (let ((__tmp33160
                             (gx#stx-identifier _id30827_ (car _split30833_)))
                            (__tmp33158
                             (let ((__tmp33159
                                    (gx#stx-identifier
                                     _id30827_
                                     (cadr _split30833_))))
                               (declare (not safe))
                               (cons __tmp33159 '()))))
                        (declare (not safe))
                        (cons __tmp33160 __tmp33158))))))
          (let* ((___stx3156931570_ _stx30202_)
                 (_g3021230299_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3156931570_))))
            (let ((___kont3157231573_
                   (lambda (_L30720_ _L30722_ _L30723_)
                     (let* ((_g3075130766_
                             (lambda (_g3075230762_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3075230762_)))
                            (_g3075030819_
                             (lambda (_g3075230770_)
                               (if (gx#stx-pair? _g3075230770_)
                                   (let ((_e3075530773_
                                          (gx#syntax-e _g3075230770_)))
                                     (let ((_hd3075630777_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3075530773_)))
                                           (_tl3075730780_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3075530773_))))
                                       (if (gx#stx-pair? _tl3075730780_)
                                           (let ((_e3075830783_
                                                  (gx#syntax-e
                                                   _tl3075730780_)))
                                             (let ((_hd3075930787_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3075830783_)))
                                                   (_tl3076030790_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3075830783_))))
                                               (if (gx#stx-null?
                                                    _tl3076030790_)
                                                   ((lambda (_L30793_ _L30795_)
                                                      (let ()
                                                        (let ((__tmp33172
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp33161
                                                               (let ((__tmp33171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp33162
                              (let ((__tmp33163
                                     (let ((__tmp33168
                                            (let ((__tmp33170
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp33169
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L30793_ '()))))
                                              (declare (not safe))
                                              (cons __tmp33170 __tmp33169)))
                                           (__tmp33164
                                            (let ((__tmp33165
                                                   (let ((__tmp33167
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp33166
                                                          (foldr (lambda (_g3081030813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3081130816_)
                           (let ()
                             (declare (not safe))
                             (cons _g3081030813_ _g3081130816_)))
                         '()
                         _L30722_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp33167
                                                           __tmp33166))))
                                              (declare (not safe))
                                              (cons __tmp33165 '()))))
                                       (declare (not safe))
                                       (cons __tmp33168 __tmp33164))))
                                (declare (not safe))
                                (cons _L30795_ __tmp33163))))
                         (declare (not safe))
                         (cons __tmp33171 __tmp33162))))
                  (declare (not safe))
                  (cons __tmp33172 __tmp33161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3075930787_
                                                    _hd3075630777_)
                                                   (_g3075130766_
                                                    _g3075230770_))))
                                           (_g3075130766_ _g3075230770_))))
                                   (_g3075130766_ _g3075230770_)))))
                       (_g3075030819_ (_split-dotted30207_ _L30723_)))))
                  (___kont3157631577_
                   (lambda (_L30562_ _L30564_)
                     (let* ((_g3058130596_
                             (lambda (_g3058230592_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3058230592_)))
                            (_g3058030649_
                             (lambda (_g3058230600_)
                               (if (gx#stx-pair? _g3058230600_)
                                   (let ((_e3058530603_
                                          (gx#syntax-e _g3058230600_)))
                                     (let ((_hd3058630607_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3058530603_)))
                                           (_tl3058730610_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3058530603_))))
                                       (if (gx#stx-pair? _tl3058730610_)
                                           (let ((_e3058830613_
                                                  (gx#syntax-e
                                                   _tl3058730610_)))
                                             (let ((_hd3058930617_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3058830613_)))
                                                   (_tl3059030620_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3058830613_))))
                                               (if (gx#stx-null?
                                                    _tl3059030620_)
                                                   ((lambda (_L30623_ _L30625_)
                                                      (let ()
                                                        (let ((__tmp33179
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp33173
                                                               (let ((__tmp33174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp33176
                                     (let ((__tmp33178
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp33177
                                            (let ()
                                              (declare (not safe))
                                              (cons _L30623_ '()))))
                                       (declare (not safe))
                                       (cons __tmp33178 __tmp33177)))
                                    (__tmp33175
                                     (foldr (lambda (_g3064030643_
                                                     _g3064130646_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3064030643_
                                                      _g3064130646_)))
                                            '()
                                            _L30562_)))
                                (declare (not safe))
                                (cons __tmp33176 __tmp33175))))
                         (declare (not safe))
                         (cons _L30625_ __tmp33174))))
                  (declare (not safe))
                  (cons __tmp33179 __tmp33173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3058930617_
                                                    _hd3058630607_)
                                                   (_g3058130596_
                                                    _g3058230600_))))
                                           (_g3058130596_ _g3058230600_))))
                                   (_g3058130596_ _g3058230600_)))))
                       (_g3058030649_ (_split-dotted30207_ _L30564_)))))
                  (___kont3158031581_
                   (lambda (_L30466_ _L30468_ _L30469_)
                     (let ((__tmp33191 (gx#datum->syntax '#f 'apply))
                           (__tmp33180
                            (let ((__tmp33190
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp33181
                                   (let ((__tmp33182
                                          (let ((__tmp33187
                                                 (let ((__tmp33189
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp33188
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L30469_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp33189
                                                         __tmp33188)))
                                                (__tmp33183
                                                 (let ((__tmp33184
                                                        (let ((__tmp33186
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp33185
                                                               (foldr (lambda (_g3049630499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3049730502_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3049630499_ _g3049730502_)))
                              '()
                              _L30466_)))
                  (declare (not safe))
                  (cons __tmp33186 __tmp33185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp33184 '()))))
                                            (declare (not safe))
                                            (cons __tmp33187 __tmp33183))))
                                     (declare (not safe))
                                     (cons _L30468_ __tmp33182))))
                              (declare (not safe))
                              (cons __tmp33190 __tmp33181))))
                       (declare (not safe))
                       (cons __tmp33191 __tmp33180))))
                  (___kont3158431585_
                   (lambda (_L30366_ _L30368_ _L30369_)
                     (let ((__tmp33198 (gx#datum->syntax '#f 'call-method))
                           (__tmp33192
                            (let ((__tmp33193
                                   (let ((__tmp33195
                                          (let ((__tmp33197
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp33196
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30369_ '()))))
                                            (declare (not safe))
                                            (cons __tmp33197 __tmp33196)))
                                         (__tmp33194
                                          (foldr (lambda (_g3039030393_
                                                          _g3039130396_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g3039030393_
                                                           _g3039130396_)))
                                                 '()
                                                 _L30366_)))
                                     (declare (not safe))
                                     (cons __tmp33195 __tmp33194))))
                              (declare (not safe))
                              (cons _L30368_ __tmp33193))))
                       (declare (not safe))
                       (cons __tmp33198 __tmp33192)))))
              (let* ((___match3168831689_
                      (lambda (_e3027630306_
                               _hd3027730310_
                               _tl3027830313_
                               _e3027930316_
                               _hd3028030320_
                               _tl3028130323_
                               _e3028230326_
                               _hd3028330330_
                               _tl3028430333_
                               ___splice3158631587_
                               _target3028530336_
                               _tl3028730339_)
                        (letrec ((_loop3028830342_
                                  (lambda (_hd3028630346_ _arg3029230349_)
                                    (if (gx#stx-pair? _hd3028630346_)
                                        (let ((_e3028930352_
                                               (gx#syntax-e _hd3028630346_)))
                                          (let ((_lp-tl3029130359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3028930352_)))
                                                (_lp-hd3029030356_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3028930352_))))
                                            (_loop3028830342_
                                             _lp-tl3029130359_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3029030356_
                                                     _arg3029230349_)))))
                                        (let ((_arg3029330362_
                                               (reverse _arg3029230349_)))
                                          (let ((_L30366_ _arg3029330362_)
                                                (_L30368_ _hd3028330330_)
                                                (_L30369_ _hd3028030320_))
                                            (if (gx#identifier? _L30369_)
                                                (___kont3158431585_
                                                 _L30366_
                                                 _L30368_
                                                 _L30369_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3021230299_)))))))))
                          (_loop3028830342_ _target3028530336_ '()))))
                     (___match3166231663_
                      (lambda (_e3025530406_
                               _hd3025630410_
                               _tl3025730413_
                               _e3025830416_
                               _hd3025930420_
                               _tl3026030423_
                               _e3026130426_
                               _hd3026230430_
                               _tl3026330433_
                               ___splice3158231583_
                               _target3026430436_
                               _tl3026630439_)
                        (letrec ((_loop3026730442_
                                  (lambda (_hd3026530446_ _arg3027130449_)
                                    (if (gx#stx-pair? _hd3026530446_)
                                        (let ((_e3026830452_
                                               (gx#syntax-e _hd3026530446_)))
                                          (let ((_lp-tl3027030459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3026830452_)))
                                                (_lp-hd3026930456_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3026830452_))))
                                            (_loop3026730442_
                                             _lp-tl3027030459_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3026930456_
                                                     _arg3027130449_)))))
                                        (let ((_arg3027230462_
                                               (reverse _arg3027130449_)))
                                          (let ((_L30466_ _arg3027230462_)
                                                (_L30468_ _hd3026230430_)
                                                (_L30469_ _hd3025930420_))
                                            (if (and (gx#identifier? _L30469_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g3048830491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3048930494_)
                       (let ()
                         (declare (not safe))
                         (cons _g3048830491_ _g3048930494_)))
                     '()
                     _L30466_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3158031581_
                                                 _L30466_
                                                 _L30468_
                                                 _L30469_)
                                                (___match3168831689_
                                                 _e3025530406_
                                                 _hd3025630410_
                                                 _tl3025730413_
                                                 _e3025830416_
                                                 _hd3025930420_
                                                 _tl3026030423_
                                                 _e3026130426_
                                                 _hd3026230430_
                                                 _tl3026330433_
                                                 ___splice3158231583_
                                                 _target3026430436_
                                                 _tl3026630439_))))))))
                          (_loop3026730442_ _target3026430436_ '()))))
                     (___match3164831649_
                      (lambda (_e3025530406_
                               _hd3025630410_
                               _tl3025730413_
                               _e3025830416_
                               _hd3025930420_
                               _tl3026030423_)
                        (if (gx#stx-pair? _tl3026030423_)
                            (let ((_e3026130426_ (gx#syntax-e _tl3026030423_)))
                              (let ((_tl3026330433_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3026130426_)))
                                    (_hd3026230430_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3026130426_))))
                                (if (gx#stx-pair/null? _tl3026330433_)
                                    (let ((___splice3158231583_
                                           (gx#syntax-split-splice
                                            _tl3026330433_
                                            '0)))
                                      (let ((_tl3026630439_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3158231583_
                                                '1)))
                                            (_target3026430436_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3158231583_
                                                '0))))
                                        (if (gx#stx-null? _tl3026630439_)
                                            (___match3166231663_
                                             _e3025530406_
                                             _hd3025630410_
                                             _tl3025730413_
                                             _e3025830416_
                                             _hd3025930420_
                                             _tl3026030423_
                                             _e3026130426_
                                             _hd3026230430_
                                             _tl3026330433_
                                             ___splice3158231583_
                                             _target3026430436_
                                             _tl3026630439_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3021230299_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3021230299_)))))
                            (let () (declare (not safe)) (_g3021230299_)))))
                     (___match3163631637_
                      (lambda (_e3023730512_
                               _hd3023830516_
                               _tl3023930519_
                               _e3024030522_
                               _hd3024130526_
                               _tl3024230529_
                               ___splice3157831579_
                               _target3024330532_
                               _tl3024530535_)
                        (letrec ((_loop3024630538_
                                  (lambda (_hd3024430542_ _arg3025030545_)
                                    (if (gx#stx-pair? _hd3024430542_)
                                        (let ((_e3024730548_
                                               (gx#syntax-e _hd3024430542_)))
                                          (let ((_lp-tl3024930555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3024730548_)))
                                                (_lp-hd3024830552_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3024730548_))))
                                            (_loop3024630538_
                                             _lp-tl3024930555_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3024830552_
                                                     _arg3025030545_)))))
                                        (let ((_arg3025130558_
                                               (reverse _arg3025030545_)))
                                          (let ((_L30562_ _arg3025130558_)
                                                (_L30564_ _hd3024130526_))
                                            (if (_dotted-identifier?30205_
                                                 _L30564_)
                                                (___kont3157631577_
                                                 _L30562_
                                                 _L30564_)
                                                (___match3164831649_
                                                 _e3023730512_
                                                 _hd3023830516_
                                                 _tl3023930519_
                                                 _e3024030522_
                                                 _hd3024130526_
                                                 _tl3024230529_))))))))
                          (_loop3024630538_ _target3024330532_ '()))))
                     (___match3163431635_
                      (lambda (_e3023730512_
                               _hd3023830516_
                               _tl3023930519_
                               _e3024030522_
                               _hd3024130526_
                               _tl3024230529_
                               ___splice3157831579_
                               _target3024330532_
                               _tl3024530535_)
                        (if (gx#stx-null? _tl3024530535_)
                            (___match3163631637_
                             _e3023730512_
                             _hd3023830516_
                             _tl3023930519_
                             _e3024030522_
                             _hd3024130526_
                             _tl3024230529_
                             ___splice3157831579_
                             _target3024330532_
                             _tl3024530535_)
                            (if (gx#stx-pair? _tl3024230529_)
                                (let ((_e3026130426_
                                       (gx#syntax-e _tl3024230529_)))
                                  (let ((_tl3026330433_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3026130426_)))
                                        (_hd3026230430_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3026130426_))))
                                    (if (gx#stx-pair/null? _tl3026330433_)
                                        (let ((___splice3158231583_
                                               (gx#syntax-split-splice
                                                _tl3026330433_
                                                '0)))
                                          (let ((_tl3026630439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3158231583_
                                                    '1)))
                                                (_target3026430436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3158231583_
                                                    '0))))
                                            (if (gx#stx-null? _tl3026630439_)
                                                (___match3166231663_
                                                 _e3023730512_
                                                 _hd3023830516_
                                                 _tl3023930519_
                                                 _e3024030522_
                                                 _hd3024130526_
                                                 _tl3024230529_
                                                 _e3026130426_
                                                 _hd3026230430_
                                                 _tl3026330433_
                                                 ___splice3158231583_
                                                 _target3026430436_
                                                 _tl3026630439_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3021230299_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3021230299_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3021230299_))))))
                     (___match3161631617_
                      (lambda (_e3021730660_
                               _hd3021830664_
                               _tl3021930667_
                               _e3022030670_
                               _hd3022130674_
                               _tl3022230677_
                               ___splice3157431575_
                               _target3022330680_
                               _tl3022530683_
                               _e3023230686_
                               _hd3023330690_
                               _tl3023430693_)
                        (letrec ((_loop3022630696_
                                  (lambda (_hd3022430700_ _arg3023030703_)
                                    (if (gx#stx-pair? _hd3022430700_)
                                        (let ((_e3022730706_
                                               (gx#syntax-e _hd3022430700_)))
                                          (let ((_lp-tl3022930713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3022730706_)))
                                                (_lp-hd3022830710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3022730706_))))
                                            (_loop3022630696_
                                             _lp-tl3022930713_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3022830710_
                                                     _arg3023030703_)))))
                                        (let ((_arg3023130716_
                                               (reverse _arg3023030703_)))
                                          (let ((_L30720_ _hd3023330690_)
                                                (_L30722_ _arg3023130716_)
                                                (_L30723_ _hd3022130674_))
                                            (if (and (_dotted-identifier?30205_
                                                      _L30723_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g3074230745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3074330748_)
                       (let ()
                         (declare (not safe))
                         (cons _g3074230745_ _g3074330748_)))
                     '()
                     _L30722_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3157231573_
                                                 _L30720_
                                                 _L30722_
                                                 _L30723_)
                                                (let ((___splice3157831579_
                                                       (gx#syntax-split-splice
                                                        _tl3022230677_
                                                        '0)))
                                                  (let ((_tl3024530535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157831579_
                                                            '1)))
                                                        (_target3024330532_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157831579_
                                                            '0))))
                                                    (___match3163431635_
                                                     _e3021730660_
                                                     _hd3021830664_
                                                     _tl3021930667_
                                                     _e3022030670_
                                                     _hd3022130674_
                                                     _tl3022230677_
                                                     ___splice3157831579_
                                                     _target3024330532_
                                                     _tl3024530535_))))))))))
                          (_loop3022630696_ _target3022330680_ '())))))
                (if (gx#stx-pair? ___stx3156931570_)
                    (let ((_e3021730660_ (gx#syntax-e ___stx3156931570_)))
                      (let ((_tl3021930667_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3021730660_)))
                            (_hd3021830664_
                             (let ()
                               (declare (not safe))
                               (##car _e3021730660_))))
                        (if (gx#stx-pair? _tl3021930667_)
                            (let ((_e3022030670_ (gx#syntax-e _tl3021930667_)))
                              (let ((_tl3022230677_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3022030670_)))
                                    (_hd3022130674_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3022030670_))))
                                (if (gx#stx-pair/null? _tl3022230677_)
                                    (if (fx>= (gx#stx-length _tl3022230677_)
                                              '1)
                                        (let ((___splice3157431575_
                                               (gx#syntax-split-splice
                                                _tl3022230677_
                                                '1)))
                                          (let ((_tl3022530683_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157431575_
                                                    '1)))
                                                (_target3022330680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157431575_
                                                    '0))))
                                            (if (gx#stx-pair? _tl3022530683_)
                                                (let ((_e3023230686_
                                                       (gx#syntax-e
                                                        _tl3022530683_)))
                                                  (let ((_tl3023430693_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3023230686_)))
                                                        (_hd3023330690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3023230686_))))
                                                    (if (gx#stx-null?
                                                         _tl3023430693_)
                                                        (___match3161631617_
                                                         _e3021730660_
                                                         _hd3021830664_
                                                         _tl3021930667_
                                                         _e3022030670_
                                                         _hd3022130674_
                                                         _tl3022230677_
                                                         ___splice3157431575_
                                                         _target3022330680_
                                                         _tl3022530683_
                                                         _e3023230686_
                                                         _hd3023330690_
                                                         _tl3023430693_)
                                                        (let ((___splice3157831579_
                                                               (gx#syntax-split-splice
                                                                _tl3022230677_
                                                                '0)))
                                                          (let ((_tl3024530535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3157831579_ '1)))
                        (_target3024330532_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3157831579_ '0))))
                    (if (gx#stx-null? _tl3024530535_)
                        (___match3163631637_
                         _e3021730660_
                         _hd3021830664_
                         _tl3021930667_
                         _e3022030670_
                         _hd3022130674_
                         _tl3022230677_
                         ___splice3157831579_
                         _target3024330532_
                         _tl3024530535_)
                        (if (gx#stx-pair? _tl3022230677_)
                            (let ((_e3026130426_ (gx#syntax-e _tl3022230677_)))
                              (let ((_tl3026330433_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3026130426_)))
                                    (_hd3026230430_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3026130426_))))
                                (if (gx#stx-pair/null? _tl3026330433_)
                                    (let ((___splice3158231583_
                                           (gx#syntax-split-splice
                                            _tl3026330433_
                                            '0)))
                                      (let ((_tl3026630439_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3158231583_
                                                '1)))
                                            (_target3026430436_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3158231583_
                                                '0))))
                                        (if (gx#stx-null? _tl3026630439_)
                                            (___match3166231663_
                                             _e3021730660_
                                             _hd3021830664_
                                             _tl3021930667_
                                             _e3022030670_
                                             _hd3022130674_
                                             _tl3022230677_
                                             _e3026130426_
                                             _hd3026230430_
                                             _tl3026330433_
                                             ___splice3158231583_
                                             _target3026430436_
                                             _tl3026630439_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3021230299_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3021230299_)))))
                            (let ()
                              (declare (not safe))
                              (_g3021230299_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice3157831579_
                                                       (gx#syntax-split-splice
                                                        _tl3022230677_
                                                        '0)))
                                                  (let ((_tl3024530535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157831579_
                                                            '1)))
                                                        (_target3024330532_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157831579_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3024530535_)
                                                        (___match3163631637_
                                                         _e3021730660_
                                                         _hd3021830664_
                                                         _tl3021930667_
                                                         _e3022030670_
                                                         _hd3022130674_
                                                         _tl3022230677_
                                                         ___splice3157831579_
                                                         _target3024330532_
                                                         _tl3024530535_)
                                                        (if (gx#stx-pair?
                                                             _tl3022230677_)
                                                            (let ((_e3026130426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3022230677_)))
                      (let ((_tl3026330433_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3026130426_)))
                            (_hd3026230430_
                             (let ()
                               (declare (not safe))
                               (##car _e3026130426_))))
                        (if (gx#stx-pair/null? _tl3026330433_)
                            (let ((___splice3158231583_
                                   (gx#syntax-split-splice _tl3026330433_ '0)))
                              (let ((_tl3026630439_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3158231583_ '1)))
                                    (_target3026430436_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3158231583_
                                        '0))))
                                (if (gx#stx-null? _tl3026630439_)
                                    (___match3166231663_
                                     _e3021730660_
                                     _hd3021830664_
                                     _tl3021930667_
                                     _e3022030670_
                                     _hd3022130674_
                                     _tl3022230677_
                                     _e3026130426_
                                     _hd3026230430_
                                     _tl3026330433_
                                     ___splice3158231583_
                                     _target3026430436_
                                     _tl3026630439_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3021230299_)))))
                            (let () (declare (not safe)) (_g3021230299_)))))
                    (let () (declare (not safe)) (_g3021230299_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice3157831579_
                                               (gx#syntax-split-splice
                                                _tl3022230677_
                                                '0)))
                                          (let ((_tl3024530535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157831579_
                                                    '1)))
                                                (_target3024330532_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157831579_
                                                    '0))))
                                            (if (gx#stx-null? _tl3024530535_)
                                                (___match3163631637_
                                                 _e3021730660_
                                                 _hd3021830664_
                                                 _tl3021930667_
                                                 _e3022030670_
                                                 _hd3022130674_
                                                 _tl3022230677_
                                                 ___splice3157831579_
                                                 _target3024330532_
                                                 _tl3024530535_)
                                                (if (gx#stx-pair?
                                                     _tl3022230677_)
                                                    (let ((_e3026130426_
                                                           (gx#syntax-e
                                                            _tl3022230677_)))
                                                      (let ((_tl3026330433_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3026130426_)))
                    (_hd3026230430_
                     (let () (declare (not safe)) (##car _e3026130426_))))
                (if (gx#stx-pair/null? _tl3026330433_)
                    (let ((___splice3158231583_
                           (gx#syntax-split-splice _tl3026330433_ '0)))
                      (let ((_tl3026630439_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3158231583_ '1)))
                            (_target3026430436_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3158231583_ '0))))
                        (if (gx#stx-null? _tl3026630439_)
                            (___match3166231663_
                             _e3021730660_
                             _hd3021830664_
                             _tl3021930667_
                             _e3022030670_
                             _hd3022130674_
                             _tl3022230677_
                             _e3026130426_
                             _hd3026230430_
                             _tl3026330433_
                             ___splice3158231583_
                             _target3026430436_
                             _tl3026630439_)
                            (let () (declare (not safe)) (_g3021230299_)))))
                    (let () (declare (not safe)) (_g3021230299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3021230299_)))))))
                                    (if (gx#stx-pair? _tl3022230677_)
                                        (let ((_e3026130426_
                                               (gx#syntax-e _tl3022230677_)))
                                          (let ((_tl3026330433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3026130426_)))
                                                (_hd3026230430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3026130426_))))
                                            (if (gx#stx-pair/null?
                                                 _tl3026330433_)
                                                (let ((___splice3158231583_
                                                       (gx#syntax-split-splice
                                                        _tl3026330433_
                                                        '0)))
                                                  (let ((_tl3026630439_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3158231583_
                                                            '1)))
                                                        (_target3026430436_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3158231583_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3026630439_)
                                                        (___match3166231663_
                                                         _e3021730660_
                                                         _hd3021830664_
                                                         _tl3021930667_
                                                         _e3022030670_
                                                         _hd3022130674_
                                                         _tl3022230677_
                                                         _e3026130426_
                                                         _hd3026230430_
                                                         _tl3026330433_
                                                         ___splice3158231583_
                                                         _target3026430436_
                                                         _tl3026630439_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3021230299_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3021230299_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3021230299_))))))
                            (let () (declare (not safe)) (_g3021230299_)))))
                    (let () (declare (not safe)) (_g3021230299_)))))))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@|
      (lambda (_$stx30851_)
        (let* ((___stx3169131692_ _$stx30851_)
               (_g3085630896_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3169131692_))))
          (let ((___kont3169431695_
                 (lambda (_L31034_ _L31036_)
                   (let ((__tmp33204 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp33199
                          (let ((__tmp33200
                                 (let ((__tmp33201
                                        (let ((__tmp33203
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp33202
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31034_ '()))))
                                          (declare (not safe))
                                          (cons __tmp33203 __tmp33202))))
                                   (declare (not safe))
                                   (cons __tmp33201 '()))))
                            (declare (not safe))
                            (cons _L31036_ __tmp33200))))
                     (declare (not safe))
                     (cons __tmp33204 __tmp33199))))
                (___kont3169631697_
                 (lambda (_L30963_ _L30965_ _L30966_ _L30967_)
                   (let ((__tmp33205
                          (let ((__tmp33207
                                 (let ((__tmp33208
                                        (let ((__tmp33209
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L30965_ '()))))
                                          (declare (not safe))
                                          (cons _L30966_ __tmp33209))))
                                   (declare (not safe))
                                   (cons _L30967_ __tmp33208)))
                                (__tmp33206
                                 (foldr (lambda (_g3098830991_ _g3098930994_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3098830991_
                                                  _g3098930994_)))
                                        '()
                                        _L30963_)))
                            (declare (not safe))
                            (cons __tmp33207 __tmp33206))))
                     (declare (not safe))
                     (cons _L30967_ __tmp33205)))))
            (let* ((___match3174631747_
                    (lambda (_e3087330903_
                             _hd3087430907_
                             _tl3087530910_
                             _e3087630913_
                             _hd3087730917_
                             _tl3087830920_
                             _e3087930923_
                             _hd3088030927_
                             _tl3088130930_
                             ___splice3169831699_
                             _target3088230933_
                             _tl3088430936_)
                      (letrec ((_loop3088530939_
                                (lambda (_hd3088330943_ _rest3088930946_)
                                  (if (gx#stx-pair? _hd3088330943_)
                                      (let ((_e3088630949_
                                             (gx#syntax-e _hd3088330943_)))
                                        (let ((_lp-tl3088830956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3088630949_)))
                                              (_lp-hd3088730953_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3088630949_))))
                                          (_loop3088530939_
                                           _lp-tl3088830956_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3088730953_
                                                   _rest3088930946_)))))
                                      (let ((_rest3089030959_
                                             (reverse _rest3088930946_)))
                                        (___kont3169631697_
                                         _rest3089030959_
                                         _hd3088030927_
                                         _hd3087730917_
                                         _hd3087430907_))))))
                        (_loop3088530939_ _target3088230933_ '()))))
                   (___match3172031721_
                    (lambda (_e3086031004_
                             _hd3086131008_
                             _tl3086231011_
                             _e3086331014_
                             _hd3086431018_
                             _tl3086531021_
                             _e3086631024_
                             _hd3086731028_
                             _tl3086831031_)
                      (let ((_L31034_ _hd3086731028_)
                            (_L31036_ _hd3086431018_))
                        (if (gx#identifier? _L31034_)
                            (___kont3169431695_ _L31034_ _L31036_)
                            (if (gx#stx-pair/null? _tl3086831031_)
                                (let ((___splice3169831699_
                                       (gx#syntax-split-splice
                                        _tl3086831031_
                                        '0)))
                                  (let ((_tl3088430936_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3169831699_
                                            '1)))
                                        (_target3088230933_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3169831699_
                                            '0))))
                                    (if (gx#stx-null? _tl3088430936_)
                                        (___match3174631747_
                                         _e3086031004_
                                         _hd3086131008_
                                         _tl3086231011_
                                         _e3086331014_
                                         _hd3086431018_
                                         _tl3086531021_
                                         _e3086631024_
                                         _hd3086731028_
                                         _tl3086831031_
                                         ___splice3169831699_
                                         _target3088230933_
                                         _tl3088430936_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3085630896_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3085630896_))))))))
              (if (gx#stx-pair? ___stx3169131692_)
                  (let ((_e3086031004_ (gx#syntax-e ___stx3169131692_)))
                    (let ((_tl3086231011_
                           (let () (declare (not safe)) (##cdr _e3086031004_)))
                          (_hd3086131008_
                           (let ()
                             (declare (not safe))
                             (##car _e3086031004_))))
                      (if (gx#stx-pair? _tl3086231011_)
                          (let ((_e3086331014_ (gx#syntax-e _tl3086231011_)))
                            (let ((_tl3086531021_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3086331014_)))
                                  (_hd3086431018_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3086331014_))))
                              (if (gx#stx-pair? _tl3086531021_)
                                  (let ((_e3086631024_
                                         (gx#syntax-e _tl3086531021_)))
                                    (let ((_tl3086831031_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3086631024_)))
                                          (_hd3086731028_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3086631024_))))
                                      (if (gx#stx-null? _tl3086831031_)
                                          (___match3172031721_
                                           _e3086031004_
                                           _hd3086131008_
                                           _tl3086231011_
                                           _e3086331014_
                                           _hd3086431018_
                                           _tl3086531021_
                                           _e3086631024_
                                           _hd3086731028_
                                           _tl3086831031_)
                                          (if (gx#stx-pair/null?
                                               _tl3086831031_)
                                              (let ((___splice3169831699_
                                                     (gx#syntax-split-splice
                                                      _tl3086831031_
                                                      '0)))
                                                (let ((_tl3088430936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3169831699_
                                                          '1)))
                                                      (_target3088230933_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3169831699_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3088430936_)
                                                      (___match3174631747_
                                                       _e3086031004_
                                                       _hd3086131008_
                                                       _tl3086231011_
                                                       _e3086331014_
                                                       _hd3086431018_
                                                       _tl3086531021_
                                                       _e3086631024_
                                                       _hd3086731028_
                                                       _tl3086831031_
                                                       ___splice3169831699_
                                                       _target3088230933_
                                                       _tl3088430936_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3085630896_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3085630896_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3085630896_)))))
                          (let () (declare (not safe)) (_g3085630896_)))))
                  (let () (declare (not safe)) (_g3085630896_))))))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@-set!|
      (lambda (_$stx31056_)
        (let* ((___stx3174931750_ _$stx31056_)
               (_g3106131113_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3174931750_))))
          (let ((___kont3175231753_
                 (lambda (_L31289_ _L31291_ _L31292_)
                   (let ((__tmp33216 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp33210
                          (let ((__tmp33211
                                 (let ((__tmp33213
                                        (let ((__tmp33215
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp33214
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31291_ '()))))
                                          (declare (not safe))
                                          (cons __tmp33215 __tmp33214)))
                                       (__tmp33212
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31289_ '()))))
                                   (declare (not safe))
                                   (cons __tmp33213 __tmp33212))))
                            (declare (not safe))
                            (cons _L31292_ __tmp33211))))
                     (declare (not safe))
                     (cons __tmp33216 __tmp33210))))
                (___kont3175431755_
                 (lambda (_L31200_
                          _L31202_
                          _L31203_
                          _L31204_
                          _L31205_
                          _L31206_)
                   (let ((__tmp33217
                          (let ((__tmp33220
                                 (let ((__tmp33224 (gx#datum->syntax '#f '@))
                                       (__tmp33221
                                        (let ((__tmp33222
                                               (let ((__tmp33223
                                                      (foldr (lambda (_g3123331236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3123431239_)
                       (let ()
                         (declare (not safe))
                         (cons _g3123331236_ _g3123431239_)))
                     '()
                     _L31203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31204_ __tmp33223))))
                                          (declare (not safe))
                                          (cons _L31205_ __tmp33222))))
                                   (declare (not safe))
                                   (cons __tmp33224 __tmp33221)))
                                (__tmp33218
                                 (let ((__tmp33219
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31200_ '()))))
                                   (declare (not safe))
                                   (cons _L31202_ __tmp33219))))
                            (declare (not safe))
                            (cons __tmp33220 __tmp33218))))
                     (declare (not safe))
                     (cons _L31206_ __tmp33217)))))
            (let* ((___match3182431825_
                    (lambda (_e3108431120_
                             _hd3108531124_
                             _tl3108631127_
                             _e3108731130_
                             _hd3108831134_
                             _tl3108931137_
                             _e3109031140_
                             _hd3109131144_
                             _tl3109231147_
                             ___splice3175631757_
                             _target3109331150_
                             _tl3109531153_
                             _e3110231156_
                             _hd3110331160_
                             _tl3110431163_
                             _e3110531166_
                             _hd3110631170_
                             _tl3110731173_)
                      (letrec ((_loop3109631176_
                                (lambda (_hd3109431180_ _path3110031183_)
                                  (if (gx#stx-pair? _hd3109431180_)
                                      (let ((_e3109731186_
                                             (gx#syntax-e _hd3109431180_)))
                                        (let ((_lp-tl3109931193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3109731186_)))
                                              (_lp-hd3109831190_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3109731186_))))
                                          (_loop3109631176_
                                           _lp-tl3109931193_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3109831190_
                                                   _path3110031183_)))))
                                      (let ((_path3110131196_
                                             (reverse _path3110031183_)))
                                        (___kont3175431755_
                                         _hd3110631170_
                                         _hd3110331160_
                                         _path3110131196_
                                         _hd3109131144_
                                         _hd3108831134_
                                         _hd3108531124_))))))
                        (_loop3109631176_ _target3109331150_ '()))))
                   (___match3178431785_
                    (lambda (_e3106631249_
                             _hd3106731253_
                             _tl3106831256_
                             _e3106931259_
                             _hd3107031263_
                             _tl3107131266_
                             _e3107231269_
                             _hd3107331273_
                             _tl3107431276_
                             _e3107531279_
                             _hd3107631283_
                             _tl3107731286_)
                      (let ((_L31289_ _hd3107631283_)
                            (_L31291_ _hd3107331273_)
                            (_L31292_ _hd3107031263_))
                        (if (gx#identifier? _L31291_)
                            (___kont3175231753_ _L31289_ _L31291_ _L31292_)
                            (if (gx#stx-pair/null? _tl3107431276_)
                                (if (fx>= (gx#stx-length _tl3107431276_) '2)
                                    (let ((___splice3175631757_
                                           (gx#syntax-split-splice
                                            _tl3107431276_
                                            '2)))
                                      (let ((_tl3109531153_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3175631757_
                                                '1)))
                                            (_target3109331150_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3175631757_
                                                '0))))
                                        (if (gx#stx-pair? _tl3109531153_)
                                            (let ((_e3110231156_
                                                   (gx#syntax-e
                                                    _tl3109531153_)))
                                              (let ((_tl3110431163_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3110231156_)))
                                                    (_hd3110331160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3110231156_))))
                                                (if (gx#stx-pair?
                                                     _tl3110431163_)
                                                    (let ((_e3110531166_
                                                           (gx#syntax-e
                                                            _tl3110431163_)))
                                                      (let ((_tl3110731173_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3110531166_)))
                    (_hd3110631170_
                     (let () (declare (not safe)) (##car _e3110531166_))))
                (if (gx#stx-null? _tl3110731173_)
                    (___match3182431825_
                     _e3106631249_
                     _hd3106731253_
                     _tl3106831256_
                     _e3106931259_
                     _hd3107031263_
                     _tl3107131266_
                     _e3107231269_
                     _hd3107331273_
                     _tl3107431276_
                     ___splice3175631757_
                     _target3109331150_
                     _tl3109531153_
                     _e3110231156_
                     _hd3110331160_
                     _tl3110431163_
                     _e3110531166_
                     _hd3110631170_
                     _tl3110731173_)
                    (let () (declare (not safe)) (_g3106131113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3106131113_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3106131113_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3106131113_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3106131113_))))))))
              (if (gx#stx-pair? ___stx3174931750_)
                  (let ((_e3106631249_ (gx#syntax-e ___stx3174931750_)))
                    (let ((_tl3106831256_
                           (let () (declare (not safe)) (##cdr _e3106631249_)))
                          (_hd3106731253_
                           (let ()
                             (declare (not safe))
                             (##car _e3106631249_))))
                      (if (gx#stx-pair? _tl3106831256_)
                          (let ((_e3106931259_ (gx#syntax-e _tl3106831256_)))
                            (let ((_tl3107131266_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3106931259_)))
                                  (_hd3107031263_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3106931259_))))
                              (if (gx#stx-pair? _tl3107131266_)
                                  (let ((_e3107231269_
                                         (gx#syntax-e _tl3107131266_)))
                                    (let ((_tl3107431276_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3107231269_)))
                                          (_hd3107331273_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3107231269_))))
                                      (if (gx#stx-pair? _tl3107431276_)
                                          (let ((_e3107531279_
                                                 (gx#syntax-e _tl3107431276_)))
                                            (let ((_tl3107731286_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3107531279_)))
                                                  (_hd3107631283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3107531279_))))
                                              (if (gx#stx-null? _tl3107731286_)
                                                  (___match3178431785_
                                                   _e3106631249_
                                                   _hd3106731253_
                                                   _tl3106831256_
                                                   _e3106931259_
                                                   _hd3107031263_
                                                   _tl3107131266_
                                                   _e3107231269_
                                                   _hd3107331273_
                                                   _tl3107431276_
                                                   _e3107531279_
                                                   _hd3107631283_
                                                   _tl3107731286_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3107431276_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3107431276_)
                        '2)
                  (let ((___splice3175631757_
                         (gx#syntax-split-splice _tl3107431276_ '2)))
                    (let ((_tl3109531153_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3175631757_ '1)))
                          (_target3109331150_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3175631757_ '0))))
                      (if (gx#stx-pair? _tl3109531153_)
                          (let ((_e3110231156_ (gx#syntax-e _tl3109531153_)))
                            (let ((_tl3110431163_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3110231156_)))
                                  (_hd3110331160_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3110231156_))))
                              (if (gx#stx-pair? _tl3110431163_)
                                  (let ((_e3110531166_
                                         (gx#syntax-e _tl3110431163_)))
                                    (let ((_tl3110731173_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3110531166_)))
                                          (_hd3110631170_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3110531166_))))
                                      (if (gx#stx-null? _tl3110731173_)
                                          (___match3182431825_
                                           _e3106631249_
                                           _hd3106731253_
                                           _tl3106831256_
                                           _e3106931259_
                                           _hd3107031263_
                                           _tl3107131266_
                                           _e3107231269_
                                           _hd3107331273_
                                           _tl3107431276_
                                           ___splice3175631757_
                                           _target3109331150_
                                           _tl3109531153_
                                           _e3110231156_
                                           _hd3110331160_
                                           _tl3110431163_
                                           _e3110531166_
                                           _hd3110631170_
                                           _tl3110731173_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3106131113_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3106131113_)))))
                          (let () (declare (not safe)) (_g3106131113_)))))
                  (let () (declare (not safe)) (_g3106131113_)))
              (let () (declare (not safe)) (_g3106131113_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl3107431276_)
                                              (if (fx>= (gx#stx-length
                                                         _tl3107431276_)
                                                        '2)
                                                  (let ((___splice3175631757_
                                                         (gx#syntax-split-splice
                                                          _tl3107431276_
                                                          '2)))
                                                    (let ((_tl3109531153_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3175631757_
                                                              '1)))
                                                          (_target3109331150_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3175631757_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl3109531153_)
                                                          (let ((_e3110231156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3109531153_)))
                    (let ((_tl3110431163_
                           (let () (declare (not safe)) (##cdr _e3110231156_)))
                          (_hd3110331160_
                           (let ()
                             (declare (not safe))
                             (##car _e3110231156_))))
                      (if (gx#stx-pair? _tl3110431163_)
                          (let ((_e3110531166_ (gx#syntax-e _tl3110431163_)))
                            (let ((_tl3110731173_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3110531166_)))
                                  (_hd3110631170_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3110531166_))))
                              (if (gx#stx-null? _tl3110731173_)
                                  (___match3182431825_
                                   _e3106631249_
                                   _hd3106731253_
                                   _tl3106831256_
                                   _e3106931259_
                                   _hd3107031263_
                                   _tl3107131266_
                                   _e3107231269_
                                   _hd3107331273_
                                   _tl3107431276_
                                   ___splice3175631757_
                                   _target3109331150_
                                   _tl3109531153_
                                   _e3110231156_
                                   _hd3110331160_
                                   _tl3110431163_
                                   _e3110531166_
                                   _hd3110631170_
                                   _tl3110731173_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3106131113_)))))
                          (let () (declare (not safe)) (_g3106131113_)))))
                  (let () (declare (not safe)) (_g3106131113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3106131113_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3106131113_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3106131113_)))))
                          (let () (declare (not safe)) (_g3106131113_)))))
                  (let () (declare (not safe)) (_g3106131113_))))))))))
