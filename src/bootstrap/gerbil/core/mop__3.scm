(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g32712_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
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
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
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
                                              (let ((__tmp32398
                                                     (cdr _rest29586_)))
                                                (declare (not safe))
                                                (_lp29583_
                                                 __tmp32398
                                                 _r29588_))
                                              (begin
                                                (hash-put!
                                                 _tab29573_
                                                 _slot29590_
                                                 '#t)
                                                (let ((__tmp32397
                                                       (cdr _rest29586_))
                                                      (__tmp32396
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot29590_
                                                               _r29588_))))
                                                  (declare (not safe))
                                                  (_lp29583_
                                                   __tmp32397
                                                   __tmp32396)))))
                                        (reverse _r29588_))))))
                       (gx#stx-for-each
                        (lambda (_slot29577_)
                          (hash-put! _tab29573_ (gx#stx-e _slot29577_) '#t))
                        _slots29571_)
                       (if (let () (declare (not safe)) (not _super29569_))
                           '()
                           (if (gx#identifier? _super29569_)
                               (let ((__tmp32400
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r27396_
                                         _super29569_))))
                                 (declare (not safe))
                                 (_dedup29575_ __tmp32400))
                               (let ((__tmp32399
                                      (concatenate
                                       (map _get-mixin-slots-r27396_
                                            _super29569_))))
                                 (declare (not safe))
                                 (_dedup29575_ __tmp32399)))))))
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
                                        gerbil/core/mop~MOP-2#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/mop~MOP-2#class-type-info::t
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
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
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
                                                 (let ((__tmp32651
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd2755827594_
                                                                _slot2756027587_))))
                                                   (declare (not safe))
                                                   (_loop2755627580_
                                                    _lp-tl2755927597_
                                                    __tmp32651))))
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
                          (let ((_g32403_
                                 (gx#syntax-split-splice _g2762227642_ '0)))
                            (begin
                              (let ((_g32404_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g32403_)
                                           (##vector-length _g32403_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g32404_ 2)))
                                    (error "Context expects 2 values"
                                           _g32404_)))
                              (let ((_target2762427645_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32403_ 0)))
                                    (_tl2762627648_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32403_ 1))))
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
                (let ((__tmp32649
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd2762927665_ _getf2763127658_))))
                  (declare (not safe))
                  (_loop2762727651_ _lp-tl2763027668_ __tmp32649))))
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
                                 (let ((_g32405_
                                        (gx#syntax-split-splice
                                         _g2769327713_
                                         '0)))
                                   (begin
                                     (let ((_g32406_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g32405_)
                                                  (##vector-length _g32405_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g32406_ 2)))
                                           (error "Context expects 2 values"
                                                  _g32406_)))
                                     (let ((_target2769527716_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32405_ 0)))
                                           (_tl2769727719_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32405_ 1))))
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
                       (let ((__tmp32647
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd2770027736_ _setf2770227729_))))
                         (declare (not safe))
                         (_loop2769827722_ _lp-tl2770127739_ __tmp32647))))
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
                                        (let ((_g32407_
                                               (gx#syntax-split-splice
                                                _g2776727787_
                                                '0)))
                                          (begin
                                            (let ((_g32408_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g32407_)
                                                         (##vector-length
                                                          _g32407_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g32408_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g32408_)))
                                            (let ((_target2776927790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32407_
                                                      0)))
                                                  (_tl2777127793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32407_
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
                              (let ((__tmp32646
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2777427810_
                                             _mixin-slot2777627803_))))
                                (declare (not safe))
                                (_loop2777227796_
                                 _lp-tl2777527813_
                                 __tmp32646))))
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
                                               (let ((_g32409_
                                                      (gx#syntax-split-splice
                                                       _g2783927859_
                                                       '0)))
                                                 (begin
                                                   (let ((_g32410_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g32409_)
                        (##vector-length _g32409_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g32410_ 2)))
                 (error "Context expects 2 values" _g32410_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target2784127862_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32409_
                                                             0)))
                                                         (_tl2784327865_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32409_
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
                                     (let ((__tmp32644
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd2784627882_
                                                    _mixin-getf2784827875_))))
                                       (declare (not safe))
                                       (_loop2784427868_
                                        _lp-tl2784727885_
                                        __tmp32644))))
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
                                                      (let ((_g32411_
                                                             (gx#syntax-split-splice
                                                              _g2791027930_
                                                              '0)))
                                                        (begin
                                                          (let ((_g32412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g32411_)
                               (##vector-length _g32411_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g32412_ 2)))
                        (error "Context expects 2 values" _g32412_)))
                  (let ((_target2791227933_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32411_ 0)))
                        (_tl2791427936_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32411_ 1))))
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
                                            (let ((__tmp32642
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd2791727953_
                                                           _mixin-setf2791927946_))))
                                              (declare (not safe))
                                              (_loop2791527939_
                                               _lp-tl2791827956_
                                               __tmp32642))))
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
                                                             (let ((_g32413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2798128001_ '0)))
                       (begin
                         (let ((_g32414_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g32413_)
                                      (##vector-length _g32413_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g32414_ 2)))
                               (error "Context expects 2 values" _g32414_)))
                         (let ((_target2798328004_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32413_ 0)))
                               (_tl2798528007_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32413_ 1))))
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
                                                   (let ((__tmp32640
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
                                                      __tmp32640))))
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
                            (let ((_g32415_
                                   (gx#syntax-split-splice _g2805228072_ '0)))
                              (begin
                                (let ((_g32416_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g32415_)
                                             (##vector-length _g32415_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g32416_ 2)))
                                      (error "Context expects 2 values"
                                             _g32416_)))
                                (let ((_target2805428075_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32415_ 0)))
                                      (_tl2805628078_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32415_ 1))))
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
                  (let ((__tmp32638
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2805928095_ _usetf2806128088_))))
                    (declare (not safe))
                    (_loop2805728081_ _lp-tl2806028098_ __tmp32638))))
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
                                   (let ((_g32417_
                                          (gx#syntax-split-splice
                                           _g2812328143_
                                           '0)))
                                     (begin
                                       (let ((_g32418_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g32417_)
                                                    (##vector-length _g32417_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g32418_ 2)))
                                             (error "Context expects 2 values"
                                                    _g32418_)))
                                       (let ((_target2812528146_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32417_ 0)))
                                             (_tl2812728149_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32417_ 1))))
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
                         (let ((__tmp32636
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2813028166_
                                        _mixin-ugetf2813228159_))))
                           (declare (not safe))
                           (_loop2812828152_ _lp-tl2813128169_ __tmp32636))))
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
                                          (let ((_g32419_
                                                 (gx#syntax-split-splice
                                                  _g2819428214_
                                                  '0)))
                                            (begin
                                              (let ((_g32420_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g32419_)
                                                           (##vector-length
                                                            _g32419_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g32420_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g32420_)))
                                              (let ((_target2819628217_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32419_
                                                        0)))
                                                    (_tl2819828220_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32419_
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
                                (let ((__tmp32634
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2820128237_
                                               _mixin-usetf2820328230_))))
                                  (declare (not safe))
                                  (_loop2819928223_
                                   _lp-tl2820228240_
                                   __tmp32634))))
                            (let ((_mixin-usetf2820428243_
                                   (reverse _mixin-usetf2820328230_)))
                              ((lambda (_L28247_)
                                 (let ()
                                   (let* ((_type-slots28278_
                                           (if (gx#stx-null? _slots27389_)
                                               '()
                                               (let ((__tmp32421
                                                      (let ((__tmp32422
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
                                (let ((__tmp32423
                                       (let ((__tmp32424
                                              (let ((__tmp32425
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2826328268_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2826428271_
                                                      __tmp32425))))
                                         (declare (not safe))
                                         (cons _g2826528273_ __tmp32424))))
                                  (declare (not safe))
                                  (cons __tmp32423 _g2826628275_)))
                              '()
                              _L27746_
                              _L27675_
                              _L27604_))))
                (declare (not safe))
                (cons __tmp32422 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp32421))))
                                          (_type-mixin-slots28295_
                                           (if (gx#stx-null?
                                                _mixin-slots27763_)
                                               '()
                                               (let ((__tmp32426
                                                      (let ((__tmp32427
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
                                (let ((__tmp32428
                                       (let ((__tmp32429
                                              (let ((__tmp32430
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2828028285_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2828128288_
                                                      __tmp32430))))
                                         (declare (not safe))
                                         (cons _g2828228290_ __tmp32429))))
                                  (declare (not safe))
                                  (cons __tmp32428 _g2828328292_)))
                              '()
                              _L27963_
                              _L27892_
                              _L27820_))))
                (declare (not safe))
                (cons __tmp32427 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp32426))))
                                          (_type-name28302_
                                           (let ((__tmp32431
                                                  (let ((__tmp32432
                                                         (let ((_$e28298_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body27390_)))
                   (if _$e28298_ _$e28298_ _id27387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32432 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp32431)))
                                          (_type-id28309_
                                           (let ((__tmp32433
                                                  (let ((__tmp32434
                                                         (let ((_$e28305_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'id:
                         _body27390_)))
                   (if _$e28305_
                       _$e28305_
                       (let ()
                         (declare (not safe))
                         (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                          _L27422_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32434 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp32433)))
                                          (_type-constructor28324_
                                           (let ((_$e28320_
                                                  (let ((_e2831128313_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body27390_)))
                                                    (if _e2831128313_
                                                        (let* ((_e28317_
                                                                _e2831128313_)
                                                               (__tmp32435
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e28317_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp32435))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e28320_ _$e28320_ '())))
                                          (_properties28358_
                                           (let* ((_properties28327_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body27390_))
                                                       (let ((__tmp32436
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp32436 '()))
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
                           (__tmp32437
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print28337_))))
                      (declare (not safe))
                      (cons __tmp32437 _properties28327_)))
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
                           (__tmp32438
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal28350_))))
                      (declare (not safe))
                      (cons __tmp32438 _properties28340_)))
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
                                                              (let ((__tmp32439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp32440
                                    (let ((__tmp32442
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp32441
                                           (let ()
                                             (declare (not safe))
                                             (cons _L28376_ '()))))
                                      (declare (not safe))
                                      (cons __tmp32442 __tmp32441))))
                               (declare (not safe))
                               (cons __tmp32440 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp32439))))
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
                                               (let ((__tmp32443
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass28409_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp32443))
                                               '()))
                                          (_final?28415_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body27390_)))
                                          (_type-struct28418_
                                           (let ((__tmp32444
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?27404_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp32444)))
                                          (_type-final28421_
                                           (let ((__tmp32445
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?28415_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp32445)))
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
                                                 (let ((_g32446_
                                                        (gx#syntax-split-splice
                                                         _g2842528445_
                                                         '0)))
                                                   (begin
                                                     (let ((_g32447_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g32446_)
                          (##vector-length _g32446_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g32447_ 2)))
                   (error "Context expects 2 values" _g32447_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2842728448_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32446_
                                                               0)))
                                                           (_tl2842928451_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32446_
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
                                       (let ((__tmp32632
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2843228468_
                                                      _type-body2843428461_))))
                                         (declare (not safe))
                                         (_loop2843028454_
                                          _lp-tl2843328471_
                                          __tmp32632))))
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
                                                           (let ((__tmp32448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32451 (gx#datum->syntax '#f 'begin))
                                (__tmp32449
                                 (let ((__tmp32450
                                        (let ()
                                          (declare (not safe))
                                          (cons _L28962_ '()))))
                                   (declare (not safe))
                                   (cons _L28514_ __tmp32450))))
                            (declare (not safe))
                            (cons __tmp32451 __tmp32449))))
                     (declare (not safe))
                     (_wrap27392_ __tmp32448)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2894828959_)))
                                                 (__tmp32452
                                                  (let ((__tmp32453
                                                         (let ((__tmp32488
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp32454
                        (let ((__tmp32455
                               (let ((__tmp32456
                                      (let ((__tmp32487
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp32457
                                             (let ((__tmp32458
                                                    (let ((__tmp32459
                                                           (let ((__tmp32460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32461
                                 (let ((__tmp32462
                                        (let ((__tmp32463
                                               (let ((__tmp32464
                                                      (let ((__tmp32465
                                                             (let ((__tmp32466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32467
                                   (let ((__tmp32468
                                          (let ((__tmp32469
                                                 (let ((__tmp32470
                                                        (let ((__tmp32471
                                                               (let ((__tmp32472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp32473
                                     (let ((__tmp32474
                                            (let ((__tmp32475
                                                   (let ((__tmp32476
                                                          (let ((__tmp32477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp32478
                                (let ((__tmp32479
                                       (let ((__tmp32480
                                              (let ((__tmp32481
                                                     (let ((__tmp32482
                                                            (let ((__tmp32483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32484
                                  (let ((__tmp32485
                                         (let ((__tmp32486
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L28934_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp32486))))
                                    (declare (not safe))
                                    (cons _L28906_ __tmp32485))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp32484))))
                      (declare (not safe))
                      (cons _L28878_ __tmp32483))))
               (declare (not safe))
               (cons 'mutators: __tmp32482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L28850_ __tmp32481))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp32480))))
                                  (declare (not safe))
                                  (cons _L28822_ __tmp32479))))
                           (declare (not safe))
                           (cons 'predicate: __tmp32478))))
                    (declare (not safe))
                    (cons _L28794_ __tmp32477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp32476))))
                                              (declare (not safe))
                                              (cons _L28766_ __tmp32475))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp32474))))
                                (declare (not safe))
                                (cons _L28738_ __tmp32473))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp32472))))
                  (declare (not safe))
                  (cons _L28710_ __tmp32471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp32470))))
                                            (declare (not safe))
                                            (cons _L28682_ __tmp32469))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp32468))))
                              (declare (not safe))
                              (cons _L28654_ __tmp32467))))
                       (declare (not safe))
                       (cons 'struct?: __tmp32466))))
                (declare (not safe))
                (cons _L28598_ __tmp32465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp32464))))
                                          (declare (not safe))
                                          (cons _L28626_ __tmp32463))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp32462))))
                            (declare (not safe))
                            (cons _L28570_ __tmp32461))))
                     (declare (not safe))
                     (cons 'name: __tmp32460))))
              (declare (not safe))
              (cons _L28542_ __tmp32459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp32458))))
                                        (declare (not safe))
                                        (cons __tmp32487 __tmp32457))))
                                 (declare (not safe))
                                 (cons __tmp32456 '()))))
                          (declare (not safe))
                          (cons _L27422_ __tmp32455))))
                   (declare (not safe))
                   (cons __tmp32488 __tmp32454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27392_ __tmp32453))))
                                            (declare (not safe))
                                            (_g2894628977_ __tmp32452))))
                                      _g2892028931_)))
                                  (__tmp32489
                                   (let ((__tmp32513
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp32490
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L28105_
                                             _L27604_)
                                            (foldr (lambda (_g2898428991_
                                                            _g2898528994_
                                                            _g2898628996_)
                                                     (let ((__tmp32491
                                                            (let ((__tmp32501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp32492
                           (let ((__tmp32498
                                  (let ((__tmp32500
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp32499
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2898528994_ '()))))
                                    (declare (not safe))
                                    (cons __tmp32500 __tmp32499)))
                                 (__tmp32493
                                  (let ((__tmp32494
                                         (let ((__tmp32495
                                                (let ((__tmp32497
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp32496
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2898428991_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp32497
                                                        __tmp32496))))
                                           (declare (not safe))
                                           (cons __tmp32495 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp32494))))
                             (declare (not safe))
                             (cons __tmp32498 __tmp32493))))
                      (declare (not safe))
                      (cons __tmp32501 __tmp32492))))
               (declare (not safe))
               (cons __tmp32491 _g2898628996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L28247_
                                                      _L27820_)
                                                     (foldr (lambda (_g2898728999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2898829002_
                             _g2898929004_)
                      (let ((__tmp32502
                             (let ((__tmp32512 (gx#datum->syntax '#f '@list))
                                   (__tmp32503
                                    (let ((__tmp32509
                                           (let ((__tmp32511
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp32510
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2898829002_ '()))))
                                             (declare (not safe))
                                             (cons __tmp32511 __tmp32510)))
                                          (__tmp32504
                                           (let ((__tmp32505
                                                  (let ((__tmp32506
                                                         (let ((__tmp32508
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp32507
                        (let ()
                          (declare (not safe))
                          (cons _g2898728999_ '()))))
                   (declare (not safe))
                   (cons __tmp32508 __tmp32507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32506 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp32505))))
                                      (declare (not safe))
                                      (cons __tmp32509 __tmp32504))))
                               (declare (not safe))
                               (cons __tmp32512 __tmp32503))))
                        (declare (not safe))
                        (cons __tmp32502 _g2898929004_)))
                    '()
                    _L28247_
                    _L27820_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _L28105_
                                                   _L27604_))))
                                     (declare (not safe))
                                     (cons __tmp32513 __tmp32490))))
                             (declare (not safe))
                             (_g2891828981_ __tmp32489))))
                       _g2889228903_)))
                   (__tmp32514
                    (let ((__tmp32538 (gx#datum->syntax '#f '@list))
                          (__tmp32515
                           (begin
                             (gx#syntax-check-splice-targets _L28034_ _L27604_)
                             (foldr (lambda (_g2901029017_
                                             _g2901129020_
                                             _g2901229022_)
                                      (let ((__tmp32516
                                             (let ((__tmp32526
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32517
                                                    (let ((__tmp32523
                                                           (let ((__tmp32525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp32524
                          (let ()
                            (declare (not safe))
                            (cons _g2901129020_ '()))))
                     (declare (not safe))
                     (cons __tmp32525 __tmp32524)))
                  (__tmp32518
                   (let ((__tmp32519
                          (let ((__tmp32520
                                 (let ((__tmp32522
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp32521
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2901029017_ '()))))
                                   (declare (not safe))
                                   (cons __tmp32522 __tmp32521))))
                            (declare (not safe))
                            (cons __tmp32520 '()))))
                     (declare (not safe))
                     (cons ':: __tmp32519))))
              (declare (not safe))
              (cons __tmp32523 __tmp32518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32526 __tmp32517))))
                                        (declare (not safe))
                                        (cons __tmp32516 _g2901229022_)))
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L28176_
                                       _L27820_)
                                      (foldr (lambda (_g2901329025_
                                                      _g2901429028_
                                                      _g2901529030_)
                                               (let ((__tmp32527
                                                      (let ((__tmp32537
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp32528
                                                             (let ((__tmp32534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32536 (gx#datum->syntax '#f 'quote))
                                  (__tmp32535
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2901429028_ '()))))
                              (declare (not safe))
                              (cons __tmp32536 __tmp32535)))
                           (__tmp32529
                            (let ((__tmp32530
                                   (let ((__tmp32531
                                          (let ((__tmp32533
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp32532
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2901329025_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32533 __tmp32532))))
                                     (declare (not safe))
                                     (cons __tmp32531 '()))))
                              (declare (not safe))
                              (cons ':: __tmp32530))))
                       (declare (not safe))
                       (cons __tmp32534 __tmp32529))))
                (declare (not safe))
                (cons __tmp32537 __tmp32528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp32527
                                                       _g2901529030_)))
                                             '()
                                             _L28176_
                                             _L27820_))
                                    _L28034_
                                    _L27604_))))
                      (declare (not safe))
                      (cons __tmp32538 __tmp32515))))
              (declare (not safe))
              (_g2889029007_ __tmp32514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2886428875_)))
                                            (__tmp32539
                                             (let ((__tmp32563
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32540
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L27746_
                                                       _L27604_)
                                                      (foldr (lambda (_g2903629043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2903729046_
                              _g2903829048_)
                       (let ((__tmp32541
                              (let ((__tmp32551 (gx#datum->syntax '#f '@list))
                                    (__tmp32542
                                     (let ((__tmp32548
                                            (let ((__tmp32550
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32549
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2903729046_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp32550 __tmp32549)))
                                           (__tmp32543
                                            (let ((__tmp32544
                                                   (let ((__tmp32545
                                                          (let ((__tmp32547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp32546
                         (let ()
                           (declare (not safe))
                           (cons _g2903629043_ '()))))
                    (declare (not safe))
                    (cons __tmp32547 __tmp32546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32545 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp32544))))
                                       (declare (not safe))
                                       (cons __tmp32548 __tmp32543))))
                                (declare (not safe))
                                (cons __tmp32551 __tmp32542))))
                         (declare (not safe))
                         (cons __tmp32541 _g2903829048_)))
                     (begin
                       (gx#syntax-check-splice-targets _L27963_ _L27820_)
                       (foldr (lambda (_g2903929051_
                                       _g2904029054_
                                       _g2904129056_)
                                (let ((__tmp32552
                                       (let ((__tmp32562
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp32553
                                              (let ((__tmp32559
                                                     (let ((__tmp32561
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp32560
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2904029054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp32561 __tmp32560)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp32554
                                                     (let ((__tmp32555
                                                            (let ((__tmp32556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32558
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp32557
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2903929051_ '()))))
                             (declare (not safe))
                             (cons __tmp32558 __tmp32557))))
                      (declare (not safe))
                      (cons __tmp32556 '()))))
               (declare (not safe))
               (cons ':: __tmp32555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32559 __tmp32554))))
                                         (declare (not safe))
                                         (cons __tmp32562 __tmp32553))))
                                  (declare (not safe))
                                  (cons __tmp32552 _g2904129056_)))
                              '()
                              _L27963_
                              _L27820_))
                     _L27746_
                     _L27604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32563 __tmp32540))))
                                       (declare (not safe))
                                       (_g2886229033_ __tmp32539))))
                                 _g2883628847_)))
                             (__tmp32564
                              (let ((__tmp32588 (gx#datum->syntax '#f '@list))
                                    (__tmp32565
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L27675_
                                        _L27604_)
                                       (foldr (lambda (_g2906229069_
                                                       _g2906329072_
                                                       _g2906429074_)
                                                (let ((__tmp32566
                                                       (let ((__tmp32576
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp32567
                                                              (let ((__tmp32573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp32575 (gx#datum->syntax '#f 'quote))
                                   (__tmp32574
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2906329072_ '()))))
                               (declare (not safe))
                               (cons __tmp32575 __tmp32574)))
                            (__tmp32568
                             (let ((__tmp32569
                                    (let ((__tmp32570
                                           (let ((__tmp32572
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp32571
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2906229069_ '()))))
                                             (declare (not safe))
                                             (cons __tmp32572 __tmp32571))))
                                      (declare (not safe))
                                      (cons __tmp32570 '()))))
                               (declare (not safe))
                               (cons ':: __tmp32569))))
                        (declare (not safe))
                        (cons __tmp32573 __tmp32568))))
                 (declare (not safe))
                 (cons __tmp32576 __tmp32567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp32566
                                                        _g2906429074_)))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L27892_
                                                 _L27820_)
                                                (foldr (lambda (_g2906529077_
                                                                _g2906629080_
                                                                _g2906729082_)
                                                         (let ((__tmp32577
                                                                (let ((__tmp32587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp32578
                               (let ((__tmp32584
                                      (let ((__tmp32586
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp32585
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2906629080_ '()))))
                                        (declare (not safe))
                                        (cons __tmp32586 __tmp32585)))
                                     (__tmp32579
                                      (let ((__tmp32580
                                             (let ((__tmp32581
                                                    (let ((__tmp32583
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp32582
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2906529077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp32583 __tmp32582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32581 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp32580))))
                                 (declare (not safe))
                                 (cons __tmp32584 __tmp32579))))
                          (declare (not safe))
                          (cons __tmp32587 __tmp32578))))
                   (declare (not safe))
                   (cons __tmp32577 _g2906729082_)))
               '()
               _L27892_
               _L27820_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _L27675_
                                              _L27604_))))
                                (declare (not safe))
                                (cons __tmp32588 __tmp32565))))
                        (declare (not safe))
                        (_g2883429059_ __tmp32564))))
                  _g2880828819_)))
              (__tmp32589
               (let ((__tmp32591 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp32590
                      (let () (declare (not safe)) (cons _L27509_ '()))))
                 (declare (not safe))
                 (cons __tmp32591 __tmp32590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2880629085_ __tmp32589))))
                                           _g2878028791_)))
                                       (__tmp32592
                                        (let ((__tmp32594
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp32593
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L27481_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32594 __tmp32593))))
                                  (declare (not safe))
                                  (_g2877829089_ __tmp32592))))
                            _g2875228763_)))
                        (__tmp32595
                         (let ((__tmp32597
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp32596
                                (let ()
                                  (declare (not safe))
                                  (cons _L27453_ '()))))
                           (declare (not safe))
                           (cons __tmp32597 __tmp32596))))
                   (declare (not safe))
                   (_g2875029093_ __tmp32595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2872428735_)))
                                                 (__tmp32598
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
                            (let ((_e2910629123_ (gx#syntax-e _g2910229120_)))
                              (let ((_hd2910529127_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2910629123_)))
                                    (_tl2910429130_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2910629123_))))
                                (if (gx#stx-datum? _hd2910529127_)
                                    (let ((_e2910729133_
                                           (gx#stx-e _hd2910529127_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2910729133_
                                                    'constructor:))
                                          (if (gx#stx-pair? _tl2910429130_)
                                              (let ((_e2911029137_
                                                     (gx#syntax-e
                                                      _tl2910429130_)))
                                                (let ((_hd2910929141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2911029137_)))
                                                      (_tl2910829144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2911029137_))))
                                                  (if (gx#stx-null?
                                                       _tl2910829144_)
                                                      ((lambda (_L29147_)
                                                         (let ()
                                                           (let ((__tmp32600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp32599
                          (let () (declare (not safe)) (cons _L29147_ '()))))
                     (declare (not safe))
                     (cons __tmp32600 __tmp32599))))
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
                                            (_g2872229097_ __tmp32598))))
                                      _g2869628707_)))
                                  (__tmp32601
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
                                                      (let ((__tmp32603
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp32602
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L29187_ '()))))
                (declare (not safe))
                (cons __tmp32603 __tmp32602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2917329184_))))
                                         (declare (not safe))
                                         (_g2917129199_ _metaclass28409_))
                                       '#f)))
                             (declare (not safe))
                             (_g2869429168_ __tmp32601))))
                       _g2866828679_))))
              (declare (not safe))
              (_g2866629203_ _final?28415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2864028651_))))
                                       (declare (not safe))
                                       (_g2863829207_ _struct?27404_))))
                                 _g2861228623_)))
                             (__tmp32604
                              (let ((__tmp32607 (gx#datum->syntax '#f 'quote))
                                    (__tmp32605
                                     (let ((__tmp32606
                                            (foldr (lambda (_g2921429217_
                                                            _g2921529220_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2921429217_
                                                             _g2921529220_)))
                                                   '()
                                                   _L27604_)))
                                       (declare (not safe))
                                       (cons __tmp32606 '()))))
                                (declare (not safe))
                                (cons __tmp32607 __tmp32605))))
                        (declare (not safe))
                        (_g2861029211_ __tmp32604))))
                  _g2858428595_)))
              (__tmp32608
               (let* ((_g2922729244_
                       (lambda (_g2922829240_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2922829240_)))
                      (_g2922629305_
                       (lambda (_g2922829248_)
                         (if (gx#stx-pair/null? _g2922829248_)
                             (let ((_g32609_
                                    (gx#syntax-split-splice _g2922829248_ '0)))
                               (begin
                                 (let ((_g32610_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g32609_)
                                              (##vector-length _g32609_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g32610_ 2)))
                                       (error "Context expects 2 values"
                                              _g32610_)))
                                 (let ((_target2923029251_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g32609_ 0)))
                                       (_tl2923229254_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g32609_ 1))))
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
                   (let ((__tmp32616
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2923529271_ _super-id2923729264_))))
                     (declare (not safe))
                     (_loop2923329257_ _lp-tl2923629274_ __tmp32616))))
               (let ((_super-id2923829277_ (reverse _super-id2923729264_)))
                 ((lambda (_L29281_)
                    (let ()
                      (let ((__tmp32615 (gx#datum->syntax '#f '@list))
                            (__tmp32611
                             (foldr (lambda (_g2929629299_ _g2929729302_)
                                      (let ((__tmp32612
                                             (let ((__tmp32614
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp32613
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2929629299_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp32614 __tmp32613))))
                                        (declare (not safe))
                                        (cons __tmp32612 _g2929729302_)))
                                    '()
                                    _L29281_)))
                        (declare (not safe))
                        (cons __tmp32615 __tmp32611))))
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
                                                 (_g2858229223_ __tmp32608))))
                                           _g2855628567_)))
                                       (__tmp32617
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
                                                       (let ((__tmp32619
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp32618
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29328_ '()))))
                 (declare (not safe))
                 (cons __tmp32619 __tmp32618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2931429325_)))
                                               (__tmp32620
                                                (cadr _type-name28302_)))
                                          (declare (not safe))
                                          (_g2931229340_ __tmp32620))))
                                  (declare (not safe))
                                  (_g2855429309_ __tmp32617))))
                            _g2852828539_)))
                        (__tmp32621
                         (let* ((_g2934829363_
                                 (lambda (_g2934929359_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2934929359_)))
                                (_g2934729411_
                                 (lambda (_g2934929367_)
                                   (if (gx#stx-pair? _g2934929367_)
                                       (let ((_e2935329370_
                                              (gx#syntax-e _g2934929367_)))
                                         (let ((_hd2935229374_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2935329370_)))
                                               (_tl2935129377_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2935329370_))))
                                           (if (gx#stx-datum? _hd2935229374_)
                                               (let ((_e2935429380_
                                                      (gx#stx-e
                                                       _hd2935229374_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2935429380_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2935129377_)
                                                         (let ((_e2935729384_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2935129377_)))
                   (let ((_hd2935629388_
                          (let () (declare (not safe)) (##car _e2935729384_)))
                         (_tl2935529391_
                          (let () (declare (not safe)) (##cdr _e2935729384_))))
                     (if (gx#stx-null? _tl2935529391_)
                         ((lambda (_L29394_)
                            (let ()
                              (let ((__tmp32623 (gx#datum->syntax '#f 'quote))
                                    (__tmp32622
                                     (let ()
                                       (declare (not safe))
                                       (cons _L29394_ '()))))
                                (declare (not safe))
                                (cons __tmp32623 __tmp32622))))
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
                   (_g2852629344_ __tmp32621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2850028511_)))
                                                 (__tmp32624
                                                  (let ((__tmp32625
                                                         (let ((__tmp32631
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp32626
                        (let ((__tmp32627
                               (let ((__tmp32628
                                      (let ((__tmp32629
                                             (let ((__tmp32630
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
                                               (cons _L27509_ __tmp32630))))
                                        (declare (not safe))
                                        (cons _L27481_ __tmp32629))))
                                 (declare (not safe))
                                 (cons _L27537_ __tmp32628))))
                          (declare (not safe))
                          (cons _L27453_ __tmp32627))))
                   (declare (not safe))
                   (cons __tmp32631 __tmp32626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27392_ __tmp32625))))
                                            (declare (not safe))
                                            (_g2849829415_ __tmp32624))))
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
                                          (__tmp32633
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
                                     (_g2842329427_ __tmp32633))))
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
                                   (__tmp32635
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
                              (_g2819229431_ __tmp32635))))
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
                            (__tmp32637
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
                       (_g2812129448_ __tmp32637))))
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
                     (__tmp32639
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
                (_g2805029465_ __tmp32639))))
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
              (__tmp32641
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
                                                 (_g2797929482_ __tmp32641))))
                                           _mixin-setf2792027959_))))))
                          (let ()
                            (declare (not safe))
                            (_loop2791527939_ _target2791227933_ '())))
                        (let ()
                          (declare (not safe))
                          (_g2790927926_ _g2791027930_))))))
              (let () (declare (not safe)) (_g2790927926_ _g2791027930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp32643
                                                (gx#stx-map
                                                 (lambda (_g2950229504_)
                                                   (_make-id27394_
                                                    _name27398_
                                                    '"-"
                                                    _g2950229504_
                                                    '"-set!"))
                                                 _mixin-slots27763_)))
                                          (declare (not safe))
                                          (_g2790829499_ __tmp32643))))
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
                                        (__tmp32645
                                         (gx#stx-map
                                          (lambda (_g2951129513_)
                                            (_make-id27394_
                                             _name27398_
                                             '"-"
                                             _g2951129513_))
                                          _mixin-slots27763_)))
                                   (declare (not safe))
                                   (_g2783729508_ __tmp32645))))
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
                          (__tmp32648
                           (gx#stx-map
                            (lambda (_g2952429526_)
                              (_make-id27394_
                               _name27398_
                               '"-"
                               _g2952429526_
                               '"-set!"))
                            _slots27389_)))
                     (declare (not safe))
                     (_g2769129521_ __tmp32648))))
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
                   (__tmp32650
                    (gx#stx-map
                     (lambda (_g2953329535_)
                       (_make-id27394_ _name27398_ '"-" _g2953329535_))
                     _slots27389_)))
              (declare (not safe))
              (_g2762029530_ __tmp32650))))
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
                                     (__tmp32652
                                      (map gerbil/core/mop~MOP-2#!class-type-descriptor
                                           _super27401_)))
                                (declare (not safe))
                                (_g2752129543_ __tmp32652))))
                          _g2749527506_)))
                      (__tmp32653 (_make-id27394_ _name27398_ '"?")))
                 (declare (not safe))
                 (_g2749329547_ __tmp32653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2746727478_)))
                                               (__tmp32654
                                                (_make-id27394_
                                                 '"make-"
                                                 _name27398_)))
                                          (declare (not safe))
                                          (_g2746529551_ __tmp32654))))
                                    _g2743927450_)))
                                (__tmp32655
                                 (_make-id27394_ _name27398_ '"::t")))
                           (declare (not safe))
                           (_g2743729555_ __tmp32655))))
                     _g2740827419_))))
            (declare (not safe))
            (_g2740629559_ _id27387_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
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
                      (let ((_e2963429653_ (gx#syntax-e _g2962829650_)))
                        (let ((_hd2963329657_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2963429653_)))
                              (_tl2963229660_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2963429653_))))
                          (if (gx#stx-pair? _tl2963229660_)
                              (let ((_e2963729663_
                                     (gx#syntax-e _tl2963229660_)))
                                (let ((_hd2963629667_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2963729663_)))
                                      (_tl2963529670_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2963729663_))))
                                  (if (gx#stx-pair? _tl2963529670_)
                                      (let ((_e2964029673_
                                             (gx#syntax-e _tl2963529670_)))
                                        (let ((_hd2963929677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2964029673_)))
                                              (_tl2963829680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2964029673_))))
                                          ((lambda (_L29683_ _L29685_ _L29686_)
                                             (let ((__tmp32660
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp32656
                                                    (let ((__tmp32657
                                                           (let ((__tmp32658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32659
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L29683_))))
                            (declare (not safe))
                            (cons 'struct: __tmp32659))))
                     (declare (not safe))
                     (cons _L29685_ __tmp32658))))
              (declare (not safe))
              (cons _L29686_ __tmp32657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32660 __tmp32656)))
                                           _tl2963829680_
                                           _hd2963929677_
                                           _hd2963629667_)))
                                      (_g2962729646_ _g2962829650_))))
                              (_g2962729646_ _g2962829650_))))
                      (_g2962729646_ _g2962829650_)))))
          (_g2962629703_ _$stx29623_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
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
                               (let ((__tmp32661 (gx#syntax->list _L29840_)))
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                  _stx29707_
                                  _L29842_
                                  __tmp32661
                                  _slots29796_
                                  _body29797_))))
                            (___kont3155831559_
                             (lambda ()
                               (if (gx#identifier? _hd29794_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/mop~MOP-4[1]#generate-defclass|
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
                               (lambda (_e2980629830_
                                        _hd2980529834_
                                        _tl2980429837_)
                                 (let ((_L29840_ _tl2980429837_)
                                       (_L29842_ _hd2980529834_))
                                   (if (and (gx#stx-list? _L29840_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _L29840_))
                                       (___kont3155631557_ _L29840_ _L29842_)
                                       (___kont3155831559_))))))
                          (if (gx#stx-pair? ___stx3155331554_)
                              (let ((_e2980629830_
                                     (gx#syntax-e ___stx3155331554_)))
                                (let ((_tl2980429837_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2980629830_)))
                                      (_hd2980529834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2980629830_))))
                                  (___match3156631567_
                                   _e2980629830_
                                   _hd2980529834_
                                   _tl2980429837_)))
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
                        (let ((_e2972029739_ (gx#syntax-e _g2971429736_)))
                          (let ((_hd2971929743_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2972029739_)))
                                (_tl2971829746_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2972029739_))))
                            (if (gx#stx-pair? _tl2971829746_)
                                (let ((_e2972329749_
                                       (gx#syntax-e _tl2971829746_)))
                                  (let ((_hd2972229753_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2972329749_)))
                                        (_tl2972129756_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2972329749_))))
                                    (if (gx#stx-pair? _tl2972129756_)
                                        (let ((_e2972629759_
                                               (gx#syntax-e _tl2972129756_)))
                                          (let ((_hd2972529763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2972629759_)))
                                                (_tl2972429766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2972629759_))))
                                            ((lambda (_L29769_
                                                      _L29771_
                                                      _L29772_)
                                               (if (and (gx#identifier-list?
                                                         _L29771_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                           _L29769_)))
                                                   (_generate29710_
                                                    _L29772_
                                                    _L29771_
                                                    _L29769_)
                                                   (_g2971329732_
                                                    _g2971429736_)))
                                             _tl2972429766_
                                             _hd2972529763_
                                             _hd2972229753_)))
                                        (_g2971329732_ _g2971429736_))))
                                (_g2971329732_ _g2971429736_))))
                        (_g2971329732_ _g2971429736_)))))
            (_g2971229790_ _stx29707_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
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
                        (let ((_e2987429902_ (gx#syntax-e _g2986729899_)))
                          (let ((_hd2987329906_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2987429902_)))
                                (_tl2987229909_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2987429902_))))
                            (if (gx#stx-pair? _tl2987229909_)
                                (let ((_e2987729912_
                                       (gx#syntax-e _tl2987229909_)))
                                  (let ((_hd2987629916_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2987729912_)))
                                        (_tl2987529919_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2987729912_))))
                                    (if (gx#stx-pair? _hd2987629916_)
                                        (let ((_e2988029922_
                                               (gx#syntax-e _hd2987629916_)))
                                          (let ((_hd2987929926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2988029922_)))
                                                (_tl2987829929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2988029922_))))
                                            (if (gx#identifier? _hd2987929926_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g32712_|
                                                     _hd2987929926_)
                                                    (if (gx#stx-pair?
                                                         _tl2987829929_)
                                                        (let ((_e2988329932_
                                                               (gx#syntax-e
                                                                _tl2987829929_)))
                                                          (let ((_hd2988229936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2988329932_)))
                        (_tl2988129939_
                         (let () (declare (not safe)) (##cdr _e2988329932_))))
                    (if (gx#stx-pair? _tl2988129939_)
                        (let ((_e2988629942_ (gx#syntax-e _tl2988129939_)))
                          (let ((_hd2988529946_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2988629942_)))
                                (_tl2988429949_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2988629942_))))
                            (if (gx#stx-null? _tl2988429949_)
                                (if (gx#stx-pair? _tl2987529919_)
                                    (let ((_e2988929952_
                                           (gx#syntax-e _tl2987529919_)))
                                      (let ((_hd2988829956_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2988929952_)))
                                            (_tl2988729959_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2988929952_))))
                                        ((lambda (_L29962_
                                                  _L29964_
                                                  _L29965_
                                                  _L29966_)
                                           (if (and (gx#identifier? _L29966_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
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
                                                            (let ((__tmp32666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp32664
                           (let ((__tmp32665
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30153_ '()))))
                             (declare (not safe))
                             (cons _L30097_ __tmp32665))))
                      (declare (not safe))
                      (cons __tmp32666 __tmp32664))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3013930150_))))
                                            (_g3013730168_
                                             (_wrap29862_
                                              (let ((__tmp32674
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp32667
                                                     (let ((__tmp32668
                                                            (let ((__tmp32671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32673 (gx#datum->syntax '#f 'quote))
                                 (__tmp32672
                                  (let ()
                                    (declare (not safe))
                                    (cons _L29966_ '()))))
                             (declare (not safe))
                             (cons __tmp32673 __tmp32672)))
                          (__tmp32669
                           (let ((__tmp32670
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30125_ '()))))
                             (declare (not safe))
                             (cons _L30041_ __tmp32670))))
                      (declare (not safe))
                      (cons __tmp32671 __tmp32669))))
               (declare (not safe))
               (cons _L30012_ __tmp32668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32674
                                                      __tmp32667)))))))
                                      _g3011130122_))))
                             (_g3010930172_ _rebind?29994_))))
                       _g3008330094_))))
              (_g3008130176_
               (_wrap29862_
                (let ((__tmp32711 (gx#datum->syntax '#f 'def))
                      (__tmp32675
                       (let ((__tmp32676
                              (let ((__tmp32677
                                     (let ((__tmp32710
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp32678
                                            (let ((__tmp32680
                                                   (let ((__tmp32681
                                                          (let ((__tmp32682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp32683
                                (let ((__tmp32709
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp32684
                                       (let ((__tmp32685
                                              (let ((__tmp32686
                                                     (let ((__tmp32701
                                                            (let ((__tmp32708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp32702
                           (let ((__tmp32707 (gx#datum->syntax '#f 'obj))
                                 (__tmp32703
                                  (let ((__tmp32706
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp32704
                                         (let ((__tmp32705
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp32705 '()))))
                                    (declare (not safe))
                                    (cons __tmp32706 __tmp32704))))
                             (declare (not safe))
                             (cons __tmp32707 __tmp32703))))
                      (declare (not safe))
                      (cons __tmp32708 __tmp32702)))
                   (__tmp32687
                    (let ((__tmp32688
                           (let ((__tmp32700
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp32689
                                  (let ((__tmp32690
                                         (let ((__tmp32699
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp32691
                                                (let ((__tmp32696
                                                       (let ((__tmp32698
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp32697
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29966_ '()))))
                 (declare (not safe))
                 (cons __tmp32698 __tmp32697)))
              (__tmp32692
               (let ((__tmp32695 (gx#datum->syntax '#f 'arg))
                     (__tmp32693
                      (let ((__tmp32694 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp32694 '()))))
                 (declare (not safe))
                 (cons __tmp32695 __tmp32693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp32696
                                                        __tmp32692))))
                                           (declare (not safe))
                                           (cons __tmp32699 __tmp32691))))
                                    (declare (not safe))
                                    (cons _L30012_ __tmp32690))))
                             (declare (not safe))
                             (cons __tmp32700 __tmp32689))))
                      (declare (not safe))
                      (cons __tmp32688 '()))))
               (declare (not safe))
               (cons __tmp32701 __tmp32687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32686 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp32685))))
                                  (declare (not safe))
                                  (cons __tmp32709 __tmp32684))))
                           (declare (not safe))
                           (cons __tmp32683 '()))))
                    (declare (not safe))
                    (cons _L30069_ __tmp32682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32681 '())))
                                                  (__tmp32679
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L29964_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32680 __tmp32679))))
                                       (declare (not safe))
                                       (cons __tmp32710 __tmp32678))))
                                (declare (not safe))
                                (cons __tmp32677 '()))))
                         (declare (not safe))
                         (cons _L30041_ __tmp32676))))
                  (declare (not safe))
                  (cons __tmp32711 __tmp32675)))))))
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
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj31830
                                                         'type-descriptor)))))
                                               (if (let ((__tmp32663
                                                          (gx#identifier?
                                                           _L29966_)))
                                                     (declare (not safe))
                                                     (not __tmp32663))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx29859_
                                                    _L29966_)
                                                   (if (let ((__tmp32662
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                         _L29965_))))
                 (declare (not safe))
                 (not __tmp32662))
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
                                         _tl2988729959_
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
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
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
                      (let ((__tmp32715
                             (gx#stx-identifier _id30827_ (car _split30833_)))
                            (__tmp32713
                             (let ((__tmp32714
                                    (gx#stx-identifier
                                     _id30827_
                                     (cadr _split30833_))))
                               (declare (not safe))
                               (cons __tmp32714 '()))))
                        (declare (not safe))
                        (cons __tmp32715 __tmp32713))))))
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
                                   (let ((_e3075730773_
                                          (gx#syntax-e _g3075230770_)))
                                     (let ((_hd3075630777_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3075730773_)))
                                           (_tl3075530780_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3075730773_))))
                                       (if (gx#stx-pair? _tl3075530780_)
                                           (let ((_e3076030783_
                                                  (gx#syntax-e
                                                   _tl3075530780_)))
                                             (let ((_hd3075930787_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3076030783_)))
                                                   (_tl3075830790_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3076030783_))))
                                               (if (gx#stx-null?
                                                    _tl3075830790_)
                                                   ((lambda (_L30793_ _L30795_)
                                                      (let ()
                                                        (let ((__tmp32727
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp32716
                                                               (let ((__tmp32726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp32717
                              (let ((__tmp32718
                                     (let ((__tmp32723
                                            (let ((__tmp32725
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32724
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L30793_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32725 __tmp32724)))
                                           (__tmp32719
                                            (let ((__tmp32720
                                                   (let ((__tmp32722
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp32721
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
                                                     (cons __tmp32722
                                                           __tmp32721))))
                                              (declare (not safe))
                                              (cons __tmp32720 '()))))
                                       (declare (not safe))
                                       (cons __tmp32723 __tmp32719))))
                                (declare (not safe))
                                (cons _L30795_ __tmp32718))))
                         (declare (not safe))
                         (cons __tmp32726 __tmp32717))))
                  (declare (not safe))
                  (cons __tmp32727 __tmp32716))))
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
                                   (let ((_e3058730603_
                                          (gx#syntax-e _g3058230600_)))
                                     (let ((_hd3058630607_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3058730603_)))
                                           (_tl3058530610_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3058730603_))))
                                       (if (gx#stx-pair? _tl3058530610_)
                                           (let ((_e3059030613_
                                                  (gx#syntax-e
                                                   _tl3058530610_)))
                                             (let ((_hd3058930617_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3059030613_)))
                                                   (_tl3058830620_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3059030613_))))
                                               (if (gx#stx-null?
                                                    _tl3058830620_)
                                                   ((lambda (_L30623_ _L30625_)
                                                      (let ()
                                                        (let ((__tmp32734
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp32728
                                                               (let ((__tmp32729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp32731
                                     (let ((__tmp32733
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp32732
                                            (let ()
                                              (declare (not safe))
                                              (cons _L30623_ '()))))
                                       (declare (not safe))
                                       (cons __tmp32733 __tmp32732)))
                                    (__tmp32730
                                     (foldr (lambda (_g3064030643_
                                                     _g3064130646_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3064030643_
                                                      _g3064130646_)))
                                            '()
                                            _L30562_)))
                                (declare (not safe))
                                (cons __tmp32731 __tmp32730))))
                         (declare (not safe))
                         (cons _L30625_ __tmp32729))))
                  (declare (not safe))
                  (cons __tmp32734 __tmp32728))))
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
                     (let ((__tmp32746 (gx#datum->syntax '#f 'apply))
                           (__tmp32735
                            (let ((__tmp32745
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp32736
                                   (let ((__tmp32737
                                          (let ((__tmp32742
                                                 (let ((__tmp32744
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp32743
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L30469_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32744
                                                         __tmp32743)))
                                                (__tmp32738
                                                 (let ((__tmp32739
                                                        (let ((__tmp32741
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp32740
                                                               (foldr (lambda (_g3049630499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3049730502_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3049630499_ _g3049730502_)))
                              '()
                              _L30466_)))
                  (declare (not safe))
                  (cons __tmp32741 __tmp32740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp32739 '()))))
                                            (declare (not safe))
                                            (cons __tmp32742 __tmp32738))))
                                     (declare (not safe))
                                     (cons _L30468_ __tmp32737))))
                              (declare (not safe))
                              (cons __tmp32745 __tmp32736))))
                       (declare (not safe))
                       (cons __tmp32746 __tmp32735))))
                  (___kont3158431585_
                   (lambda (_L30366_ _L30368_ _L30369_)
                     (let ((__tmp32753 (gx#datum->syntax '#f 'call-method))
                           (__tmp32747
                            (let ((__tmp32748
                                   (let ((__tmp32750
                                          (let ((__tmp32752
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp32751
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30369_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32752 __tmp32751)))
                                         (__tmp32749
                                          (foldr (lambda (_g3039030393_
                                                          _g3039130396_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g3039030393_
                                                           _g3039130396_)))
                                                 '()
                                                 _L30366_)))
                                     (declare (not safe))
                                     (cons __tmp32750 __tmp32749))))
                              (declare (not safe))
                              (cons _L30368_ __tmp32748))))
                       (declare (not safe))
                       (cons __tmp32753 __tmp32747)))))
              (let* ((___match3168831689_
                      (lambda (_e3027830306_
                               _hd3027730310_
                               _tl3027630313_
                               _e3028130316_
                               _hd3028030320_
                               _tl3027930323_
                               _e3028430326_
                               _hd3028330330_
                               _tl3028230333_
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
                      (lambda (_e3025730406_
                               _hd3025630410_
                               _tl3025530413_
                               _e3026030416_
                               _hd3025930420_
                               _tl3025830423_
                               _e3026330426_
                               _hd3026230430_
                               _tl3026130433_
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
                                                 _e3025730406_
                                                 _hd3025630410_
                                                 _tl3025530413_
                                                 _e3026030416_
                                                 _hd3025930420_
                                                 _tl3025830423_
                                                 _e3026330426_
                                                 _hd3026230430_
                                                 _tl3026130433_
                                                 ___splice3158231583_
                                                 _target3026430436_
                                                 _tl3026630439_))))))))
                          (_loop3026730442_ _target3026430436_ '()))))
                     (___match3164831649_
                      (lambda (_e3025730406_
                               _hd3025630410_
                               _tl3025530413_
                               _e3026030416_
                               _hd3025930420_
                               _tl3025830423_)
                        (if (gx#stx-pair? _tl3025830423_)
                            (let ((_e3026330426_ (gx#syntax-e _tl3025830423_)))
                              (let ((_tl3026130433_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3026330426_)))
                                    (_hd3026230430_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3026330426_))))
                                (if (gx#stx-pair/null? _tl3026130433_)
                                    (let ((___splice3158231583_
                                           (gx#syntax-split-splice
                                            _tl3026130433_
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
                                             _e3025730406_
                                             _hd3025630410_
                                             _tl3025530413_
                                             _e3026030416_
                                             _hd3025930420_
                                             _tl3025830423_
                                             _e3026330426_
                                             _hd3026230430_
                                             _tl3026130433_
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
                      (lambda (_e3023930512_
                               _hd3023830516_
                               _tl3023730519_
                               _e3024230522_
                               _hd3024130526_
                               _tl3024030529_
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
                                                 _e3023930512_
                                                 _hd3023830516_
                                                 _tl3023730519_
                                                 _e3024230522_
                                                 _hd3024130526_
                                                 _tl3024030529_))))))))
                          (_loop3024630538_ _target3024330532_ '()))))
                     (___match3163431635_
                      (lambda (_e3023930512_
                               _hd3023830516_
                               _tl3023730519_
                               _e3024230522_
                               _hd3024130526_
                               _tl3024030529_
                               ___splice3157831579_
                               _target3024330532_
                               _tl3024530535_)
                        (if (gx#stx-null? _tl3024530535_)
                            (___match3163631637_
                             _e3023930512_
                             _hd3023830516_
                             _tl3023730519_
                             _e3024230522_
                             _hd3024130526_
                             _tl3024030529_
                             ___splice3157831579_
                             _target3024330532_
                             _tl3024530535_)
                            (if (gx#stx-pair? _tl3024030529_)
                                (let ((_e3026330426_
                                       (gx#syntax-e _tl3024030529_)))
                                  (let ((_tl3026130433_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3026330426_)))
                                        (_hd3026230430_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3026330426_))))
                                    (if (gx#stx-pair/null? _tl3026130433_)
                                        (let ((___splice3158231583_
                                               (gx#syntax-split-splice
                                                _tl3026130433_
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
                                                 _e3023930512_
                                                 _hd3023830516_
                                                 _tl3023730519_
                                                 _e3024230522_
                                                 _hd3024130526_
                                                 _tl3024030529_
                                                 _e3026330426_
                                                 _hd3026230430_
                                                 _tl3026130433_
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
                      (lambda (_e3021930660_
                               _hd3021830664_
                               _tl3021730667_
                               _e3022230670_
                               _hd3022130674_
                               _tl3022030677_
                               ___splice3157431575_
                               _target3022330680_
                               _tl3022530683_
                               _e3023430686_
                               _hd3023330690_
                               _tl3023230693_)
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
                                                        _tl3022030677_
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
                                                     _e3021930660_
                                                     _hd3021830664_
                                                     _tl3021730667_
                                                     _e3022230670_
                                                     _hd3022130674_
                                                     _tl3022030677_
                                                     ___splice3157831579_
                                                     _target3024330532_
                                                     _tl3024530535_))))))))))
                          (_loop3022630696_ _target3022330680_ '())))))
                (if (gx#stx-pair? ___stx3156931570_)
                    (let ((_e3021930660_ (gx#syntax-e ___stx3156931570_)))
                      (let ((_tl3021730667_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3021930660_)))
                            (_hd3021830664_
                             (let ()
                               (declare (not safe))
                               (##car _e3021930660_))))
                        (if (gx#stx-pair? _tl3021730667_)
                            (let ((_e3022230670_ (gx#syntax-e _tl3021730667_)))
                              (let ((_tl3022030677_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3022230670_)))
                                    (_hd3022130674_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3022230670_))))
                                (if (gx#stx-pair/null? _tl3022030677_)
                                    (if (fx>= (gx#stx-length _tl3022030677_)
                                              '1)
                                        (let ((___splice3157431575_
                                               (gx#syntax-split-splice
                                                _tl3022030677_
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
                                                (let ((_e3023430686_
                                                       (gx#syntax-e
                                                        _tl3022530683_)))
                                                  (let ((_tl3023230693_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3023430686_)))
                                                        (_hd3023330690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3023430686_))))
                                                    (if (gx#stx-null?
                                                         _tl3023230693_)
                                                        (___match3161631617_
                                                         _e3021930660_
                                                         _hd3021830664_
                                                         _tl3021730667_
                                                         _e3022230670_
                                                         _hd3022130674_
                                                         _tl3022030677_
                                                         ___splice3157431575_
                                                         _target3022330680_
                                                         _tl3022530683_
                                                         _e3023430686_
                                                         _hd3023330690_
                                                         _tl3023230693_)
                                                        (let ((___splice3157831579_
                                                               (gx#syntax-split-splice
                                                                _tl3022030677_
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
                         _e3021930660_
                         _hd3021830664_
                         _tl3021730667_
                         _e3022230670_
                         _hd3022130674_
                         _tl3022030677_
                         ___splice3157831579_
                         _target3024330532_
                         _tl3024530535_)
                        (if (gx#stx-pair? _tl3022030677_)
                            (let ((_e3026330426_ (gx#syntax-e _tl3022030677_)))
                              (let ((_tl3026130433_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3026330426_)))
                                    (_hd3026230430_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3026330426_))))
                                (if (gx#stx-pair/null? _tl3026130433_)
                                    (let ((___splice3158231583_
                                           (gx#syntax-split-splice
                                            _tl3026130433_
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
                                             _e3021930660_
                                             _hd3021830664_
                                             _tl3021730667_
                                             _e3022230670_
                                             _hd3022130674_
                                             _tl3022030677_
                                             _e3026330426_
                                             _hd3026230430_
                                             _tl3026130433_
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
                                                        _tl3022030677_
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
                                                         _e3021930660_
                                                         _hd3021830664_
                                                         _tl3021730667_
                                                         _e3022230670_
                                                         _hd3022130674_
                                                         _tl3022030677_
                                                         ___splice3157831579_
                                                         _target3024330532_
                                                         _tl3024530535_)
                                                        (if (gx#stx-pair?
                                                             _tl3022030677_)
                                                            (let ((_e3026330426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3022030677_)))
                      (let ((_tl3026130433_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3026330426_)))
                            (_hd3026230430_
                             (let ()
                               (declare (not safe))
                               (##car _e3026330426_))))
                        (if (gx#stx-pair/null? _tl3026130433_)
                            (let ((___splice3158231583_
                                   (gx#syntax-split-splice _tl3026130433_ '0)))
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
                                     _e3021930660_
                                     _hd3021830664_
                                     _tl3021730667_
                                     _e3022230670_
                                     _hd3022130674_
                                     _tl3022030677_
                                     _e3026330426_
                                     _hd3026230430_
                                     _tl3026130433_
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
                                                _tl3022030677_
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
                                                 _e3021930660_
                                                 _hd3021830664_
                                                 _tl3021730667_
                                                 _e3022230670_
                                                 _hd3022130674_
                                                 _tl3022030677_
                                                 ___splice3157831579_
                                                 _target3024330532_
                                                 _tl3024530535_)
                                                (if (gx#stx-pair?
                                                     _tl3022030677_)
                                                    (let ((_e3026330426_
                                                           (gx#syntax-e
                                                            _tl3022030677_)))
                                                      (let ((_tl3026130433_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3026330426_)))
                    (_hd3026230430_
                     (let () (declare (not safe)) (##car _e3026330426_))))
                (if (gx#stx-pair/null? _tl3026130433_)
                    (let ((___splice3158231583_
                           (gx#syntax-split-splice _tl3026130433_ '0)))
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
                             _e3021930660_
                             _hd3021830664_
                             _tl3021730667_
                             _e3022230670_
                             _hd3022130674_
                             _tl3022030677_
                             _e3026330426_
                             _hd3026230430_
                             _tl3026130433_
                             ___splice3158231583_
                             _target3026430436_
                             _tl3026630439_)
                            (let () (declare (not safe)) (_g3021230299_)))))
                    (let () (declare (not safe)) (_g3021230299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3021230299_)))))))
                                    (if (gx#stx-pair? _tl3022030677_)
                                        (let ((_e3026330426_
                                               (gx#syntax-e _tl3022030677_)))
                                          (let ((_tl3026130433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3026330426_)))
                                                (_hd3026230430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3026330426_))))
                                            (if (gx#stx-pair/null?
                                                 _tl3026130433_)
                                                (let ((___splice3158231583_
                                                       (gx#syntax-split-splice
                                                        _tl3026130433_
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
                                                         _e3021930660_
                                                         _hd3021830664_
                                                         _tl3021730667_
                                                         _e3022230670_
                                                         _hd3022130674_
                                                         _tl3022030677_
                                                         _e3026330426_
                                                         _hd3026230430_
                                                         _tl3026130433_
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
    (define |gerbil/core/mop~MOP-4[:0:]#@|
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
                   (let ((__tmp32759 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp32754
                          (let ((__tmp32755
                                 (let ((__tmp32756
                                        (let ((__tmp32758
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp32757
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31034_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32758 __tmp32757))))
                                   (declare (not safe))
                                   (cons __tmp32756 '()))))
                            (declare (not safe))
                            (cons _L31036_ __tmp32755))))
                     (declare (not safe))
                     (cons __tmp32759 __tmp32754))))
                (___kont3169631697_
                 (lambda (_L30963_ _L30965_ _L30966_ _L30967_)
                   (let ((__tmp32760
                          (let ((__tmp32762
                                 (let ((__tmp32763
                                        (let ((__tmp32764
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L30965_ '()))))
                                          (declare (not safe))
                                          (cons _L30966_ __tmp32764))))
                                   (declare (not safe))
                                   (cons _L30967_ __tmp32763)))
                                (__tmp32761
                                 (foldr (lambda (_g3098830991_ _g3098930994_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3098830991_
                                                  _g3098930994_)))
                                        '()
                                        _L30963_)))
                            (declare (not safe))
                            (cons __tmp32762 __tmp32761))))
                     (declare (not safe))
                     (cons _L30967_ __tmp32760)))))
            (let* ((___match3174631747_
                    (lambda (_e3087530903_
                             _hd3087430907_
                             _tl3087330910_
                             _e3087830913_
                             _hd3087730917_
                             _tl3087630920_
                             _e3088130923_
                             _hd3088030927_
                             _tl3087930930_
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
                    (lambda (_e3086231004_
                             _hd3086131008_
                             _tl3086031011_
                             _e3086531014_
                             _hd3086431018_
                             _tl3086331021_
                             _e3086831024_
                             _hd3086731028_
                             _tl3086631031_)
                      (let ((_L31034_ _hd3086731028_)
                            (_L31036_ _hd3086431018_))
                        (if (gx#identifier? _L31034_)
                            (___kont3169431695_ _L31034_ _L31036_)
                            (if (gx#stx-pair/null? _tl3086631031_)
                                (let ((___splice3169831699_
                                       (gx#syntax-split-splice
                                        _tl3086631031_
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
                                         _e3086231004_
                                         _hd3086131008_
                                         _tl3086031011_
                                         _e3086531014_
                                         _hd3086431018_
                                         _tl3086331021_
                                         _e3086831024_
                                         _hd3086731028_
                                         _tl3086631031_
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
                  (let ((_e3086231004_ (gx#syntax-e ___stx3169131692_)))
                    (let ((_tl3086031011_
                           (let () (declare (not safe)) (##cdr _e3086231004_)))
                          (_hd3086131008_
                           (let ()
                             (declare (not safe))
                             (##car _e3086231004_))))
                      (if (gx#stx-pair? _tl3086031011_)
                          (let ((_e3086531014_ (gx#syntax-e _tl3086031011_)))
                            (let ((_tl3086331021_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3086531014_)))
                                  (_hd3086431018_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3086531014_))))
                              (if (gx#stx-pair? _tl3086331021_)
                                  (let ((_e3086831024_
                                         (gx#syntax-e _tl3086331021_)))
                                    (let ((_tl3086631031_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3086831024_)))
                                          (_hd3086731028_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3086831024_))))
                                      (if (gx#stx-null? _tl3086631031_)
                                          (___match3172031721_
                                           _e3086231004_
                                           _hd3086131008_
                                           _tl3086031011_
                                           _e3086531014_
                                           _hd3086431018_
                                           _tl3086331021_
                                           _e3086831024_
                                           _hd3086731028_
                                           _tl3086631031_)
                                          (if (gx#stx-pair/null?
                                               _tl3086631031_)
                                              (let ((___splice3169831699_
                                                     (gx#syntax-split-splice
                                                      _tl3086631031_
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
                                                       _e3086231004_
                                                       _hd3086131008_
                                                       _tl3086031011_
                                                       _e3086531014_
                                                       _hd3086431018_
                                                       _tl3086331021_
                                                       _e3086831024_
                                                       _hd3086731028_
                                                       _tl3086631031_
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
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
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
                   (let ((__tmp32771 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp32765
                          (let ((__tmp32766
                                 (let ((__tmp32768
                                        (let ((__tmp32770
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp32769
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31291_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32770 __tmp32769)))
                                       (__tmp32767
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31289_ '()))))
                                   (declare (not safe))
                                   (cons __tmp32768 __tmp32767))))
                            (declare (not safe))
                            (cons _L31292_ __tmp32766))))
                     (declare (not safe))
                     (cons __tmp32771 __tmp32765))))
                (___kont3175431755_
                 (lambda (_L31200_
                          _L31202_
                          _L31203_
                          _L31204_
                          _L31205_
                          _L31206_)
                   (let ((__tmp32772
                          (let ((__tmp32775
                                 (let ((__tmp32779 (gx#datum->syntax '#f '@))
                                       (__tmp32776
                                        (let ((__tmp32777
                                               (let ((__tmp32778
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
                                                 (cons _L31204_ __tmp32778))))
                                          (declare (not safe))
                                          (cons _L31205_ __tmp32777))))
                                   (declare (not safe))
                                   (cons __tmp32779 __tmp32776)))
                                (__tmp32773
                                 (let ((__tmp32774
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31200_ '()))))
                                   (declare (not safe))
                                   (cons _L31202_ __tmp32774))))
                            (declare (not safe))
                            (cons __tmp32775 __tmp32773))))
                     (declare (not safe))
                     (cons _L31206_ __tmp32772)))))
            (let* ((___match3182431825_
                    (lambda (_e3108631120_
                             _hd3108531124_
                             _tl3108431127_
                             _e3108931130_
                             _hd3108831134_
                             _tl3108731137_
                             _e3109231140_
                             _hd3109131144_
                             _tl3109031147_
                             ___splice3175631757_
                             _target3109331150_
                             _tl3109531153_
                             _e3110431156_
                             _hd3110331160_
                             _tl3110231163_
                             _e3110731166_
                             _hd3110631170_
                             _tl3110531173_)
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
                    (lambda (_e3106831249_
                             _hd3106731253_
                             _tl3106631256_
                             _e3107131259_
                             _hd3107031263_
                             _tl3106931266_
                             _e3107431269_
                             _hd3107331273_
                             _tl3107231276_
                             _e3107731279_
                             _hd3107631283_
                             _tl3107531286_)
                      (let ((_L31289_ _hd3107631283_)
                            (_L31291_ _hd3107331273_)
                            (_L31292_ _hd3107031263_))
                        (if (gx#identifier? _L31291_)
                            (___kont3175231753_ _L31289_ _L31291_ _L31292_)
                            (if (gx#stx-pair/null? _tl3107231276_)
                                (if (fx>= (gx#stx-length _tl3107231276_) '2)
                                    (let ((___splice3175631757_
                                           (gx#syntax-split-splice
                                            _tl3107231276_
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
                                            (let ((_e3110431156_
                                                   (gx#syntax-e
                                                    _tl3109531153_)))
                                              (let ((_tl3110231163_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3110431156_)))
                                                    (_hd3110331160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3110431156_))))
                                                (if (gx#stx-pair?
                                                     _tl3110231163_)
                                                    (let ((_e3110731166_
                                                           (gx#syntax-e
                                                            _tl3110231163_)))
                                                      (let ((_tl3110531173_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3110731166_)))
                    (_hd3110631170_
                     (let () (declare (not safe)) (##car _e3110731166_))))
                (if (gx#stx-null? _tl3110531173_)
                    (___match3182431825_
                     _e3106831249_
                     _hd3106731253_
                     _tl3106631256_
                     _e3107131259_
                     _hd3107031263_
                     _tl3106931266_
                     _e3107431269_
                     _hd3107331273_
                     _tl3107231276_
                     ___splice3175631757_
                     _target3109331150_
                     _tl3109531153_
                     _e3110431156_
                     _hd3110331160_
                     _tl3110231163_
                     _e3110731166_
                     _hd3110631170_
                     _tl3110531173_)
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
                  (let ((_e3106831249_ (gx#syntax-e ___stx3174931750_)))
                    (let ((_tl3106631256_
                           (let () (declare (not safe)) (##cdr _e3106831249_)))
                          (_hd3106731253_
                           (let ()
                             (declare (not safe))
                             (##car _e3106831249_))))
                      (if (gx#stx-pair? _tl3106631256_)
                          (let ((_e3107131259_ (gx#syntax-e _tl3106631256_)))
                            (let ((_tl3106931266_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3107131259_)))
                                  (_hd3107031263_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3107131259_))))
                              (if (gx#stx-pair? _tl3106931266_)
                                  (let ((_e3107431269_
                                         (gx#syntax-e _tl3106931266_)))
                                    (let ((_tl3107231276_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3107431269_)))
                                          (_hd3107331273_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3107431269_))))
                                      (if (gx#stx-pair? _tl3107231276_)
                                          (let ((_e3107731279_
                                                 (gx#syntax-e _tl3107231276_)))
                                            (let ((_tl3107531286_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3107731279_)))
                                                  (_hd3107631283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3107731279_))))
                                              (if (gx#stx-null? _tl3107531286_)
                                                  (___match3178431785_
                                                   _e3106831249_
                                                   _hd3106731253_
                                                   _tl3106631256_
                                                   _e3107131259_
                                                   _hd3107031263_
                                                   _tl3106931266_
                                                   _e3107431269_
                                                   _hd3107331273_
                                                   _tl3107231276_
                                                   _e3107731279_
                                                   _hd3107631283_
                                                   _tl3107531286_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3107231276_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3107231276_)
                        '2)
                  (let ((___splice3175631757_
                         (gx#syntax-split-splice _tl3107231276_ '2)))
                    (let ((_tl3109531153_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3175631757_ '1)))
                          (_target3109331150_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3175631757_ '0))))
                      (if (gx#stx-pair? _tl3109531153_)
                          (let ((_e3110431156_ (gx#syntax-e _tl3109531153_)))
                            (let ((_tl3110231163_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3110431156_)))
                                  (_hd3110331160_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3110431156_))))
                              (if (gx#stx-pair? _tl3110231163_)
                                  (let ((_e3110731166_
                                         (gx#syntax-e _tl3110231163_)))
                                    (let ((_tl3110531173_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3110731166_)))
                                          (_hd3110631170_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3110731166_))))
                                      (if (gx#stx-null? _tl3110531173_)
                                          (___match3182431825_
                                           _e3106831249_
                                           _hd3106731253_
                                           _tl3106631256_
                                           _e3107131259_
                                           _hd3107031263_
                                           _tl3106931266_
                                           _e3107431269_
                                           _hd3107331273_
                                           _tl3107231276_
                                           ___splice3175631757_
                                           _target3109331150_
                                           _tl3109531153_
                                           _e3110431156_
                                           _hd3110331160_
                                           _tl3110231163_
                                           _e3110731166_
                                           _hd3110631170_
                                           _tl3110531173_)
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
                                               _tl3107231276_)
                                              (if (fx>= (gx#stx-length
                                                         _tl3107231276_)
                                                        '2)
                                                  (let ((___splice3175631757_
                                                         (gx#syntax-split-splice
                                                          _tl3107231276_
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
                                                          (let ((_e3110431156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3109531153_)))
                    (let ((_tl3110231163_
                           (let () (declare (not safe)) (##cdr _e3110431156_)))
                          (_hd3110331160_
                           (let ()
                             (declare (not safe))
                             (##car _e3110431156_))))
                      (if (gx#stx-pair? _tl3110231163_)
                          (let ((_e3110731166_ (gx#syntax-e _tl3110231163_)))
                            (let ((_tl3110531173_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3110731166_)))
                                  (_hd3110631170_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3110731166_))))
                              (if (gx#stx-null? _tl3110531173_)
                                  (___match3182431825_
                                   _e3106831249_
                                   _hd3106731253_
                                   _tl3106631256_
                                   _e3107131259_
                                   _hd3107031263_
                                   _tl3106931266_
                                   _e3107431269_
                                   _hd3107331273_
                                   _tl3107231276_
                                   ___splice3175631757_
                                   _target3109331150_
                                   _tl3109531153_
                                   _e3110431156_
                                   _hd3110331160_
                                   _tl3110231163_
                                   _e3110731166_
                                   _hd3110631170_
                                   _tl3110531173_)
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
