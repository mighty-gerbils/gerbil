(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop$<MOP:4>[1]#_g32376_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop$<MOP:4>[1]#typedef-body?|
      (lambda (_stx29592_)
        (letrec ((_body-opt?29595_
                  (lambda (_key29598_)
                    (memq (gx#stx-e _key29598_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:
                            metaclass:)))))
          (gx#stx-plist? _stx29592_ _body-opt?29595_))))
    (define |gerbil/core/mop$<MOP:4>[1]#generate-defclass|
      (lambda (_stx27376_ _id27378_ _super-ref27379_ _slots27380_ _body27381_)
        (letrec* ((_wrap27383_
                   (lambda (_e-stx29589_)
                     (gx#stx-wrap-source
                      _e-stx29589_
                      (gx#stx-source _stx27376_))))
                  (_make-id27385_
                   (if (uninterned-symbol? (gx#stx-e _id27378_))
                       (lambda _g32059_ (gx#genident _id27378_))
                       (lambda _args29586_
                         (apply gx#stx-identifier _id27378_ _args29586_))))
                  (_get-mixin-slots27386_
                   (lambda (_super29560_ _slots29562_)
                     (letrec* ((_tab29564_ (make-hash-table-eq))
                               (_dedup29566_
                                (lambda (_mixins29571_)
                                  (let _lp29574_ ((_rest29577_ _mixins29571_)
                                                  (_r29579_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest29577_))
                                        (let ((_slot29581_ (car _rest29577_)))
                                          (if (hash-get _tab29564_ _slot29581_)
                                              (let ((__tmp32062
                                                     (cdr _rest29577_)))
                                                (declare (not safe))
                                                (_lp29574_
                                                 __tmp32062
                                                 _r29579_))
                                              (begin
                                                (hash-put!
                                                 _tab29564_
                                                 _slot29581_
                                                 '#t)
                                                (let ((__tmp32061
                                                       (cdr _rest29577_))
                                                      (__tmp32060
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot29581_
                                                               _r29579_))))
                                                  (declare (not safe))
                                                  (_lp29574_
                                                   __tmp32061
                                                   __tmp32060)))))
                                        (reverse _r29579_))))))
                       (gx#stx-for-each
                        (lambda (_slot29568_)
                          (hash-put! _tab29564_ (gx#stx-e _slot29568_) '#t))
                        _slots29562_)
                       (if (let () (declare (not safe)) (not _super29560_))
                           '()
                           (if (gx#identifier? _super29560_)
                               (let ((__tmp32064
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r27387_
                                         _super29560_))))
                                 (declare (not safe))
                                 (_dedup29566_ __tmp32064))
                               (let ((__tmp32063
                                      (concatenate
                                       (map _get-mixin-slots-r27387_
                                            _super29560_))))
                                 (declare (not safe))
                                 (_dedup29566_ __tmp32063)))))))
                  (_get-mixin-slots-r27387_
                   (lambda (_type-id29554_)
                     (let ((_info29557_
                            (gx#syntax-local-value _type-id29554_)))
                       (append (let ((__obj31581 _info29557_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj31581
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj31581
                                        '4
                                        gerbil/core/mop$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/mop$<MOP:2>#class-type-info::t
                                      __obj31581
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r27387_
                                     (let ((__obj31582 _info29557_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj31582
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj31582
                                              '3
                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                            __obj31582
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots27380_ _stx27376_)
          (let* ((_name27389_ (symbol->string (gx#stx-e _id27378_)))
                 (_super27392_ (map gx#syntax-local-value _super-ref27379_))
                 (_struct?27395_ (gx#stx-getq 'struct: _body27381_))
                 (_g2739827406_
                  (lambda (_g2739927402_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2739927402_)))
                 (_g2739729550_
                  (lambda (_g2739927410_)
                    ((lambda (_L27413_)
                       (let ()
                         (let* ((_g2742927437_
                                 (lambda (_g2743027433_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2743027433_)))
                                (_g2742829546_
                                 (lambda (_g2743027441_)
                                   ((lambda (_L27444_)
                                      (let ()
                                        (let* ((_g2745727465_
                                                (lambda (_g2745827461_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2745827461_)))
                                               (_g2745629542_
                                                (lambda (_g2745827469_)
                                                  ((lambda (_L27472_)
                                                     (let ()
                                                       (let* ((_g2748527493_
                                                               (lambda (_g2748627489_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2748627489_)))
                      (_g2748429538_
                       (lambda (_g2748627497_)
                         ((lambda (_L27500_)
                            (let ()
                              (let* ((_g2751327521_
                                      (lambda (_g2751427517_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2751427517_)))
                                     (_g2751229534_
                                      (lambda (_g2751427525_)
                                        ((lambda (_L27528_)
                                           (let ()
                                             (let* ((_g2754127558_
                                                     (lambda (_g2754227554_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g2754227554_)))
                                                    (_g2754029530_
                                                     (lambda (_g2754227562_)
                                                       (if (gx#stx-pair/null?
                                                            _g2754227562_)
                                                           (let ((_g32065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g2754227562_ '0)))
                     (begin
                       (let ((_g32066_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g32065_)
                                    (##vector-length _g32065_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g32066_ 2)))
                             (error "Context expects 2 values" _g32066_)))
                       (let ((_target2754427565_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g32065_ 0)))
                             (_tl2754627568_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g32065_ 1))))
                         (if (gx#stx-null? _tl2754627568_)
                             (letrec ((_loop2754727571_
                                       (lambda (_hd2754527575_
                                                _slot2755127578_)
                                         (if (gx#stx-pair? _hd2754527575_)
                                             (let ((_e2754827581_
                                                    (gx#syntax-e
                                                     _hd2754527575_)))
                                               (let ((_lp-hd2754927585_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2754827581_)))
                                                     (_lp-tl2755027588_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2754827581_))))
                                                 (let ((__tmp32315
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd2754927585_
                                                                _slot2755127578_))))
                                                   (declare (not safe))
                                                   (_loop2754727571_
                                                    _lp-tl2755027588_
                                                    __tmp32315))))
                                             (let ((_slot2755227591_
                                                    (reverse _slot2755127578_)))
                                               ((lambda (_L27595_)
                                                  (let ()
                                                    (let* ((_g2761227629_
                                                            (lambda (_g2761327625_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2761327625_)))
                                                           (_g2761129521_
                                                            (lambda (_g2761327633_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2761327633_)
                          (let ((_g32067_
                                 (gx#syntax-split-splice _g2761327633_ '0)))
                            (begin
                              (let ((_g32068_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g32067_)
                                           (##vector-length _g32067_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g32068_ 2)))
                                    (error "Context expects 2 values"
                                           _g32068_)))
                              (let ((_target2761527636_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32067_ 0)))
                                    (_tl2761727639_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32067_ 1))))
                                (if (gx#stx-null? _tl2761727639_)
                                    (letrec ((_loop2761827642_
                                              (lambda (_hd2761627646_
                                                       _getf2762227649_)
                                                (if (gx#stx-pair?
                                                     _hd2761627646_)
                                                    (let ((_e2761927652_
                                                           (gx#syntax-e
                                                            _hd2761627646_)))
                                                      (let ((_lp-hd2762027656_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2761927652_)))
                    (_lp-tl2762127659_
                     (let () (declare (not safe)) (##cdr _e2761927652_))))
                (let ((__tmp32313
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd2762027656_ _getf2762227649_))))
                  (declare (not safe))
                  (_loop2761827642_ _lp-tl2762127659_ __tmp32313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_getf2762327662_
                                                           (reverse _getf2762227649_)))
                                                      ((lambda (_L27666_)
                                                         (let ()
                                                           (let* ((_g2768327700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2768427696_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2768427696_)))
                          (_g2768229512_
                           (lambda (_g2768427704_)
                             (if (gx#stx-pair/null? _g2768427704_)
                                 (let ((_g32069_
                                        (gx#syntax-split-splice
                                         _g2768427704_
                                         '0)))
                                   (begin
                                     (let ((_g32070_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g32069_)
                                                  (##vector-length _g32069_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g32070_ 2)))
                                           (error "Context expects 2 values"
                                                  _g32070_)))
                                     (let ((_target2768627707_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32069_ 0)))
                                           (_tl2768827710_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32069_ 1))))
                                       (if (gx#stx-null? _tl2768827710_)
                                           (letrec ((_loop2768927713_
                                                     (lambda (_hd2768727717_
                                                              _setf2769327720_)
                                                       (if (gx#stx-pair?
                                                            _hd2768727717_)
                                                           (let ((_e2769027723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2768727717_)))
                     (let ((_lp-hd2769127727_
                            (let ()
                              (declare (not safe))
                              (##car _e2769027723_)))
                           (_lp-tl2769227730_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2769027723_))))
                       (let ((__tmp32311
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd2769127727_ _setf2769327720_))))
                         (declare (not safe))
                         (_loop2768927713_ _lp-tl2769227730_ __tmp32311))))
                   (let ((_setf2769427733_ (reverse _setf2769327720_)))
                     ((lambda (_L27737_)
                        (let ()
                          (let* ((_mixin-slots27754_
                                  (let ()
                                    (declare (not safe))
                                    (_get-mixin-slots27386_
                                     _super-ref27379_
                                     _slots27380_)))
                                 (_g2775727774_
                                  (lambda (_g2775827770_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2775827770_)))
                                 (_g2775629508_
                                  (lambda (_g2775827778_)
                                    (if (gx#stx-pair/null? _g2775827778_)
                                        (let ((_g32071_
                                               (gx#syntax-split-splice
                                                _g2775827778_
                                                '0)))
                                          (begin
                                            (let ((_g32072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g32071_)
                                                         (##vector-length
                                                          _g32071_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g32072_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g32072_)))
                                            (let ((_target2776027781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32071_
                                                      0)))
                                                  (_tl2776227784_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32071_
                                                      1))))
                                              (if (gx#stx-null? _tl2776227784_)
                                                  (letrec ((_loop2776327787_
                                                            (lambda (_hd2776127791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _mixin-slot2776727794_)
                      (if (gx#stx-pair? _hd2776127791_)
                          (let ((_e2776427797_ (gx#syntax-e _hd2776127791_)))
                            (let ((_lp-hd2776527801_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2776427797_)))
                                  (_lp-tl2776627804_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2776427797_))))
                              (let ((__tmp32310
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2776527801_
                                             _mixin-slot2776727794_))))
                                (declare (not safe))
                                (_loop2776327787_
                                 _lp-tl2776627804_
                                 __tmp32310))))
                          (let ((_mixin-slot2776827807_
                                 (reverse _mixin-slot2776727794_)))
                            ((lambda (_L27811_)
                               (let ()
                                 (let* ((_g2782927846_
                                         (lambda (_g2783027842_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2783027842_)))
                                        (_g2782829499_
                                         (lambda (_g2783027850_)
                                           (if (gx#stx-pair/null?
                                                _g2783027850_)
                                               (let ((_g32073_
                                                      (gx#syntax-split-splice
                                                       _g2783027850_
                                                       '0)))
                                                 (begin
                                                   (let ((_g32074_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g32073_)
                        (##vector-length _g32073_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g32074_ 2)))
                 (error "Context expects 2 values" _g32074_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target2783227853_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32073_
                                                             0)))
                                                         (_tl2783427856_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32073_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl2783427856_)
                                                         (letrec ((_loop2783527859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2783327863_ _mixin-getf2783927866_)
                             (if (gx#stx-pair? _hd2783327863_)
                                 (let ((_e2783627869_
                                        (gx#syntax-e _hd2783327863_)))
                                   (let ((_lp-hd2783727873_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2783627869_)))
                                         (_lp-tl2783827876_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2783627869_))))
                                     (let ((__tmp32308
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd2783727873_
                                                    _mixin-getf2783927866_))))
                                       (declare (not safe))
                                       (_loop2783527859_
                                        _lp-tl2783827876_
                                        __tmp32308))))
                                 (let ((_mixin-getf2784027879_
                                        (reverse _mixin-getf2783927866_)))
                                   ((lambda (_L27883_)
                                      (let ()
                                        (let* ((_g2790027917_
                                                (lambda (_g2790127913_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2790127913_)))
                                               (_g2789929490_
                                                (lambda (_g2790127921_)
                                                  (if (gx#stx-pair/null?
                                                       _g2790127921_)
                                                      (let ((_g32075_
                                                             (gx#syntax-split-splice
                                                              _g2790127921_
                                                              '0)))
                                                        (begin
                                                          (let ((_g32076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g32075_)
                               (##vector-length _g32075_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g32076_ 2)))
                        (error "Context expects 2 values" _g32076_)))
                  (let ((_target2790327924_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32075_ 0)))
                        (_tl2790527927_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32075_ 1))))
                    (if (gx#stx-null? _tl2790527927_)
                        (letrec ((_loop2790627930_
                                  (lambda (_hd2790427934_
                                           _mixin-setf2791027937_)
                                    (if (gx#stx-pair? _hd2790427934_)
                                        (let ((_e2790727940_
                                               (gx#syntax-e _hd2790427934_)))
                                          (let ((_lp-hd2790827944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2790727940_)))
                                                (_lp-tl2790927947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2790727940_))))
                                            (let ((__tmp32306
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd2790827944_
                                                           _mixin-setf2791027937_))))
                                              (declare (not safe))
                                              (_loop2790627930_
                                               _lp-tl2790927947_
                                               __tmp32306))))
                                        (let ((_mixin-setf2791127950_
                                               (reverse _mixin-setf2791027937_)))
                                          ((lambda (_L27954_)
                                             (let ()
                                               (let* ((_g2797127988_
                                                       (lambda (_g2797227984_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2797227984_)))
                                                      (_g2797029473_
                                                       (lambda (_g2797227992_)
                                                         (if (gx#stx-pair/null?
                                                              _g2797227992_)
                                                             (let ((_g32077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2797227992_ '0)))
                       (begin
                         (let ((_g32078_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g32077_)
                                      (##vector-length _g32077_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g32078_ 2)))
                               (error "Context expects 2 values" _g32078_)))
                         (let ((_target2797427995_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32077_ 0)))
                               (_tl2797627998_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32077_ 1))))
                           (if (gx#stx-null? _tl2797627998_)
                               (letrec ((_loop2797728001_
                                         (lambda (_hd2797528005_
                                                  _ugetf2798128008_)
                                           (if (gx#stx-pair? _hd2797528005_)
                                               (let ((_e2797828011_
                                                      (gx#syntax-e
                                                       _hd2797528005_)))
                                                 (let ((_lp-hd2797928015_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2797828011_)))
                                                       (_lp-tl2798028018_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2797828011_))))
                                                   (let ((__tmp32304
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _lp-hd2797928015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ugetf2798128008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop2797728001_
                                                      _lp-tl2798028018_
                                                      __tmp32304))))
                                               (let ((_ugetf2798228021_
                                                      (reverse _ugetf2798128008_)))
                                                 ((lambda (_L28025_)
                                                    (let ()
                                                      (let* ((_g2804228059_
                                                              (lambda (_g2804328055_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2804328055_)))
                     (_g2804129456_
                      (lambda (_g2804328063_)
                        (if (gx#stx-pair/null? _g2804328063_)
                            (let ((_g32079_
                                   (gx#syntax-split-splice _g2804328063_ '0)))
                              (begin
                                (let ((_g32080_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g32079_)
                                             (##vector-length _g32079_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g32080_ 2)))
                                      (error "Context expects 2 values"
                                             _g32080_)))
                                (let ((_target2804528066_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32079_ 0)))
                                      (_tl2804728069_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32079_ 1))))
                                  (if (gx#stx-null? _tl2804728069_)
                                      (letrec ((_loop2804828072_
                                                (lambda (_hd2804628076_
                                                         _usetf2805228079_)
                                                  (if (gx#stx-pair?
                                                       _hd2804628076_)
                                                      (let ((_e2804928082_
                                                             (gx#syntax-e
                                                              _hd2804628076_)))
                                                        (let ((_lp-hd2805028086_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2804928082_)))
                      (_lp-tl2805128089_
                       (let () (declare (not safe)) (##cdr _e2804928082_))))
                  (let ((__tmp32302
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2805028086_ _usetf2805228079_))))
                    (declare (not safe))
                    (_loop2804828072_ _lp-tl2805128089_ __tmp32302))))
              (let ((_usetf2805328092_ (reverse _usetf2805228079_)))
                ((lambda (_L28096_)
                   (let ()
                     (let* ((_g2811328130_
                             (lambda (_g2811428126_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2811428126_)))
                            (_g2811229439_
                             (lambda (_g2811428134_)
                               (if (gx#stx-pair/null? _g2811428134_)
                                   (let ((_g32081_
                                          (gx#syntax-split-splice
                                           _g2811428134_
                                           '0)))
                                     (begin
                                       (let ((_g32082_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g32081_)
                                                    (##vector-length _g32081_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g32082_ 2)))
                                             (error "Context expects 2 values"
                                                    _g32082_)))
                                       (let ((_target2811628137_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32081_ 0)))
                                             (_tl2811828140_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32081_ 1))))
                                         (if (gx#stx-null? _tl2811828140_)
                                             (letrec ((_loop2811928143_
                                                       (lambda (_hd2811728147_
                                                                _mixin-ugetf2812328150_)
                                                         (if (gx#stx-pair?
                                                              _hd2811728147_)
                                                             (let ((_e2812028153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd2811728147_)))
                       (let ((_lp-hd2812128157_
                              (let ()
                                (declare (not safe))
                                (##car _e2812028153_)))
                             (_lp-tl2812228160_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2812028153_))))
                         (let ((__tmp32300
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2812128157_
                                        _mixin-ugetf2812328150_))))
                           (declare (not safe))
                           (_loop2811928143_ _lp-tl2812228160_ __tmp32300))))
                     (let ((_mixin-ugetf2812428163_
                            (reverse _mixin-ugetf2812328150_)))
                       ((lambda (_L28167_)
                          (let ()
                            (let* ((_g2818428201_
                                    (lambda (_g2818528197_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2818528197_)))
                                   (_g2818329422_
                                    (lambda (_g2818528205_)
                                      (if (gx#stx-pair/null? _g2818528205_)
                                          (let ((_g32083_
                                                 (gx#syntax-split-splice
                                                  _g2818528205_
                                                  '0)))
                                            (begin
                                              (let ((_g32084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g32083_)
                                                           (##vector-length
                                                            _g32083_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g32084_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g32084_)))
                                              (let ((_target2818728208_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32083_
                                                        0)))
                                                    (_tl2818928211_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32083_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl2818928211_)
                                                    (letrec ((_loop2819028214_
                                                              (lambda (_hd2818828218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _mixin-usetf2819428221_)
                        (if (gx#stx-pair? _hd2818828218_)
                            (let ((_e2819128224_ (gx#syntax-e _hd2818828218_)))
                              (let ((_lp-hd2819228228_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2819128224_)))
                                    (_lp-tl2819328231_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2819128224_))))
                                (let ((__tmp32298
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2819228228_
                                               _mixin-usetf2819428221_))))
                                  (declare (not safe))
                                  (_loop2819028214_
                                   _lp-tl2819328231_
                                   __tmp32298))))
                            (let ((_mixin-usetf2819528234_
                                   (reverse _mixin-usetf2819428221_)))
                              ((lambda (_L28238_)
                                 (let ()
                                   (let* ((_type-slots28269_
                                           (if (gx#stx-null? _slots27380_)
                                               '()
                                               (let ((__tmp32085
                                                      (let ((__tmp32086
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L27737_
                                                                _L27666_
                                                                _L27595_)
                                                               (foldr (lambda (_g2825428259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2825528262_
                                       _g2825628264_
                                       _g2825728266_)
                                (let ((__tmp32087
                                       (let ((__tmp32088
                                              (let ((__tmp32089
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2825428259_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2825528262_
                                                      __tmp32089))))
                                         (declare (not safe))
                                         (cons _g2825628264_ __tmp32088))))
                                  (declare (not safe))
                                  (cons __tmp32087 _g2825728266_)))
                              '()
                              _L27737_
                              _L27666_
                              _L27595_))))
                (declare (not safe))
                (cons __tmp32086 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp32085))))
                                          (_type-mixin-slots28286_
                                           (if (gx#stx-null?
                                                _mixin-slots27754_)
                                               '()
                                               (let ((__tmp32090
                                                      (let ((__tmp32091
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L27954_
                                                                _L27883_
                                                                _L27811_)
                                                               (foldr (lambda (_g2827128276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2827228279_
                                       _g2827328281_
                                       _g2827428283_)
                                (let ((__tmp32092
                                       (let ((__tmp32093
                                              (let ((__tmp32094
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2827128276_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2827228279_
                                                      __tmp32094))))
                                         (declare (not safe))
                                         (cons _g2827328281_ __tmp32093))))
                                  (declare (not safe))
                                  (cons __tmp32092 _g2827428283_)))
                              '()
                              _L27954_
                              _L27883_
                              _L27811_))))
                (declare (not safe))
                (cons __tmp32091 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp32090))))
                                          (_type-name28293_
                                           (let ((__tmp32095
                                                  (let ((__tmp32096
                                                         (let ((_$e28289_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body27381_)))
                   (if _$e28289_ _$e28289_ _id27378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32096 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp32095)))
                                          (_type-id28300_
                                           (let ((__tmp32097
                                                  (let ((__tmp32098
                                                         (let ((_$e28296_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'id:
                         _body27381_)))
                   (if _$e28296_
                       _$e28296_
                       (let ()
                         (declare (not safe))
                         (|gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
                          _L27413_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32098 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp32097)))
                                          (_type-constructor28315_
                                           (let ((_$e28311_
                                                  (let ((_e2830228304_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body27381_)))
                                                    (if _e2830228304_
                                                        (let* ((_e28308_
                                                                _e2830228304_)
                                                               (__tmp32099
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e28308_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp32099))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e28311_ _$e28311_ '())))
                                          (_properties28349_
                                           (let* ((_properties28318_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body27381_))
                                                       (let ((__tmp32100
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp32100 '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties28331_
                                                   (let ((_$e28321_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _body27381_))))
                                                     (if _$e28321_
                                                         ((lambda (_print28325_)
                                                            (let* ((_print28328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _print28325_ '#t))
                                _slots27380_
                                _print28325_))
                           (__tmp32101
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print28328_))))
                      (declare (not safe))
                      (cons __tmp32101 _properties28318_)))
                  _$e28321_)
                 _properties28318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties28344_
                                                   (let ((_$e28334_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _body27381_))))
                                                     (if _$e28334_
                                                         ((lambda (_equal28338_)
                                                            (let* ((_equal28341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _equal28338_ '#t))
                                _slots27380_
                                _equal28338_))
                           (__tmp32102
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal28341_))))
                      (declare (not safe))
                      (cons __tmp32102 _properties28331_)))
                  _$e28334_)
                 _properties28331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _properties28344_))
                                          (_type-properties28390_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _properties28349_))
                                               '()
                                               (let* ((_g2835228360_
                                                       (lambda (_g2835328356_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2835328356_)))
                                                      (_g2835128386_
                                                       (lambda (_g2835328364_)
                                                         ((lambda (_L28367_)
                                                            (let ()
                                                              (let ((__tmp32103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp32104
                                    (let ((__tmp32106
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp32105
                                           (let ()
                                             (declare (not safe))
                                             (cons _L28367_ '()))))
                                      (declare (not safe))
                                      (cons __tmp32106 __tmp32105))))
                               (declare (not safe))
                               (cons __tmp32104 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp32103))))
                  _g2835328364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2835128386_
                                                  _properties28349_))))
                                          (_metaclass28400_
                                           (let ((_$e28393_
                                                  (gx#stx-getq
                                                   'metaclass:
                                                   _body27381_)))
                                             (if _$e28393_
                                                 ((lambda (_metaclass28397_)
                                                    (if (gx#identifier?
                                                         _metaclass28397_)
                                                        _metaclass28397_
                                                        '#f))
                                                  _$e28393_)
                                                 '#f)))
                                          (_type-metaclass28403_
                                           (if _metaclass28400_
                                               (let ((__tmp32107
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass28400_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp32107))
                                               '()))
                                          (_final?28406_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body27381_)))
                                          (_type-struct28409_
                                           (let ((__tmp32108
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?27395_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp32108)))
                                          (_type-final28412_
                                           (let ((__tmp32109
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?28406_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp32109)))
                                          (_g2841528432_
                                           (lambda (_g2841628428_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2841628428_)))
                                          (_g2841429418_
                                           (lambda (_g2841628436_)
                                             (if (gx#stx-pair/null?
                                                  _g2841628436_)
                                                 (let ((_g32110_
                                                        (gx#syntax-split-splice
                                                         _g2841628436_
                                                         '0)))
                                                   (begin
                                                     (let ((_g32111_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g32110_)
                          (##vector-length _g32110_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g32111_ 2)))
                   (error "Context expects 2 values" _g32111_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2841828439_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32110_
                                                               0)))
                                                           (_tl2842028442_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32110_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2842028442_)
                                                           (letrec ((_loop2842128445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2841928449_ _type-body2842528452_)
                               (if (gx#stx-pair? _hd2841928449_)
                                   (let ((_e2842228455_
                                          (gx#syntax-e _hd2841928449_)))
                                     (let ((_lp-hd2842328459_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2842228455_)))
                                           (_lp-tl2842428462_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2842228455_))))
                                       (let ((__tmp32296
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2842328459_
                                                      _type-body2842528452_))))
                                         (declare (not safe))
                                         (_loop2842128445_
                                          _lp-tl2842428462_
                                          __tmp32296))))
                                   (let ((_type-body2842628465_
                                          (reverse _type-body2842528452_)))
                                     ((lambda (_L28469_)
                                        (let ()
                                          (let* ((_g2849028498_
                                                  (lambda (_g2849128494_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2849128494_)))
                                                 (_g2848929406_
                                                  (lambda (_g2849128502_)
                                                    ((lambda (_L28505_)
                                                       (let ()
                                                         (let* ((_g2851828526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2851928522_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2851928522_)))
                        (_g2851729335_
                         (lambda (_g2851928530_)
                           ((lambda (_L28533_)
                              (let ()
                                (let* ((_g2854628554_
                                        (lambda (_g2854728550_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2854728550_)))
                                       (_g2854529300_
                                        (lambda (_g2854728558_)
                                          ((lambda (_L28561_)
                                             (let ()
                                               (let* ((_g2857428582_
                                                       (lambda (_g2857528578_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2857528578_)))
                                                      (_g2857329214_
                                                       (lambda (_g2857528586_)
                                                         ((lambda (_L28589_)
                                                            (let ()
                                                              (let* ((_g2860228610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2860328606_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2860328606_)))
                             (_g2860129202_
                              (lambda (_g2860328614_)
                                ((lambda (_L28617_)
                                   (let ()
                                     (let* ((_g2863028638_
                                             (lambda (_g2863128634_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2863128634_)))
                                            (_g2862929198_
                                             (lambda (_g2863128642_)
                                               ((lambda (_L28645_)
                                                  (let ()
                                                    (let* ((_g2865828666_
                                                            (lambda (_g2865928662_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2865928662_)))
                                                           (_g2865729194_
                                                            (lambda (_g2865928670_)
                                                              ((lambda (_L28673_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2868628694_
                                   (lambda (_g2868728690_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2868728690_)))
                                  (_g2868529159_
                                   (lambda (_g2868728698_)
                                     ((lambda (_L28701_)
                                        (let ()
                                          (let* ((_g2871428722_
                                                  (lambda (_g2871528718_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2871528718_)))
                                                 (_g2871329088_
                                                  (lambda (_g2871528726_)
                                                    ((lambda (_L28729_)
                                                       (let ()
                                                         (let* ((_g2874228750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2874328746_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2874328746_)))
                        (_g2874129084_
                         (lambda (_g2874328754_)
                           ((lambda (_L28757_)
                              (let ()
                                (let* ((_g2877028778_
                                        (lambda (_g2877128774_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2877128774_)))
                                       (_g2876929080_
                                        (lambda (_g2877128782_)
                                          ((lambda (_L28785_)
                                             (let ()
                                               (let* ((_g2879828806_
                                                       (lambda (_g2879928802_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2879928802_)))
                                                      (_g2879729076_
                                                       (lambda (_g2879928810_)
                                                         ((lambda (_L28813_)
                                                            (let ()
                                                              (let* ((_g2882628834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2882728830_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2882728830_)))
                             (_g2882529050_
                              (lambda (_g2882728838_)
                                ((lambda (_L28841_)
                                   (let ()
                                     (let* ((_g2885428862_
                                             (lambda (_g2885528858_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2885528858_)))
                                            (_g2885329024_
                                             (lambda (_g2885528866_)
                                               ((lambda (_L28869_)
                                                  (let ()
                                                    (let* ((_g2888228890_
                                                            (lambda (_g2888328886_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2888328886_)))
                                                           (_g2888128998_
                                                            (lambda (_g2888328894_)
                                                              ((lambda (_L28897_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2891028918_
                                   (lambda (_g2891128914_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2891128914_)))
                                  (_g2890928972_
                                   (lambda (_g2891128922_)
                                     ((lambda (_L28925_)
                                        (let ()
                                          (let* ((_g2893828946_
                                                  (lambda (_g2893928942_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2893928942_)))
                                                 (_g2893728968_
                                                  (lambda (_g2893928950_)
                                                    ((lambda (_L28953_)
                                                       (let ()
                                                         (let ()
                                                           (let ((__tmp32112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32115 (gx#datum->syntax '#f 'begin))
                                (__tmp32113
                                 (let ((__tmp32114
                                        (let ()
                                          (declare (not safe))
                                          (cons _L28953_ '()))))
                                   (declare (not safe))
                                   (cons _L28505_ __tmp32114))))
                            (declare (not safe))
                            (cons __tmp32115 __tmp32113))))
                     (declare (not safe))
                     (_wrap27383_ __tmp32112)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2893928950_)))
                                                 (__tmp32116
                                                  (let ((__tmp32117
                                                         (let ((__tmp32152
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp32118
                        (let ((__tmp32119
                               (let ((__tmp32120
                                      (let ((__tmp32151
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp32121
                                             (let ((__tmp32122
                                                    (let ((__tmp32123
                                                           (let ((__tmp32124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32125
                                 (let ((__tmp32126
                                        (let ((__tmp32127
                                               (let ((__tmp32128
                                                      (let ((__tmp32129
                                                             (let ((__tmp32130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32131
                                   (let ((__tmp32132
                                          (let ((__tmp32133
                                                 (let ((__tmp32134
                                                        (let ((__tmp32135
                                                               (let ((__tmp32136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp32137
                                     (let ((__tmp32138
                                            (let ((__tmp32139
                                                   (let ((__tmp32140
                                                          (let ((__tmp32141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp32142
                                (let ((__tmp32143
                                       (let ((__tmp32144
                                              (let ((__tmp32145
                                                     (let ((__tmp32146
                                                            (let ((__tmp32147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32148
                                  (let ((__tmp32149
                                         (let ((__tmp32150
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L28925_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp32150))))
                                    (declare (not safe))
                                    (cons _L28897_ __tmp32149))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp32148))))
                      (declare (not safe))
                      (cons _L28869_ __tmp32147))))
               (declare (not safe))
               (cons 'mutators: __tmp32146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L28841_ __tmp32145))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp32144))))
                                  (declare (not safe))
                                  (cons _L28813_ __tmp32143))))
                           (declare (not safe))
                           (cons 'predicate: __tmp32142))))
                    (declare (not safe))
                    (cons _L28785_ __tmp32141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp32140))))
                                              (declare (not safe))
                                              (cons _L28757_ __tmp32139))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp32138))))
                                (declare (not safe))
                                (cons _L28729_ __tmp32137))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp32136))))
                  (declare (not safe))
                  (cons _L28701_ __tmp32135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp32134))))
                                            (declare (not safe))
                                            (cons _L28673_ __tmp32133))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp32132))))
                              (declare (not safe))
                              (cons _L28645_ __tmp32131))))
                       (declare (not safe))
                       (cons 'struct?: __tmp32130))))
                (declare (not safe))
                (cons _L28589_ __tmp32129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp32128))))
                                          (declare (not safe))
                                          (cons _L28617_ __tmp32127))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp32126))))
                            (declare (not safe))
                            (cons _L28561_ __tmp32125))))
                     (declare (not safe))
                     (cons 'name: __tmp32124))))
              (declare (not safe))
              (cons _L28533_ __tmp32123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp32122))))
                                        (declare (not safe))
                                        (cons __tmp32151 __tmp32121))))
                                 (declare (not safe))
                                 (cons __tmp32120 '()))))
                          (declare (not safe))
                          (cons _L27413_ __tmp32119))))
                   (declare (not safe))
                   (cons __tmp32152 __tmp32118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27383_ __tmp32117))))
                                            (declare (not safe))
                                            (_g2893728968_ __tmp32116))))
                                      _g2891128922_)))
                                  (__tmp32153
                                   (let ((__tmp32177
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp32154
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L28096_
                                             _L27595_)
                                            (foldr (lambda (_g2897528982_
                                                            _g2897628985_
                                                            _g2897728987_)
                                                     (let ((__tmp32155
                                                            (let ((__tmp32165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp32156
                           (let ((__tmp32162
                                  (let ((__tmp32164
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp32163
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2897628985_ '()))))
                                    (declare (not safe))
                                    (cons __tmp32164 __tmp32163)))
                                 (__tmp32157
                                  (let ((__tmp32158
                                         (let ((__tmp32159
                                                (let ((__tmp32161
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp32160
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2897528982_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp32161
                                                        __tmp32160))))
                                           (declare (not safe))
                                           (cons __tmp32159 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp32158))))
                             (declare (not safe))
                             (cons __tmp32162 __tmp32157))))
                      (declare (not safe))
                      (cons __tmp32165 __tmp32156))))
               (declare (not safe))
               (cons __tmp32155 _g2897728987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L28238_
                                                      _L27811_)
                                                     (foldr (lambda (_g2897828990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2897928993_
                             _g2898028995_)
                      (let ((__tmp32166
                             (let ((__tmp32176 (gx#datum->syntax '#f '@list))
                                   (__tmp32167
                                    (let ((__tmp32173
                                           (let ((__tmp32175
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp32174
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2897928993_ '()))))
                                             (declare (not safe))
                                             (cons __tmp32175 __tmp32174)))
                                          (__tmp32168
                                           (let ((__tmp32169
                                                  (let ((__tmp32170
                                                         (let ((__tmp32172
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp32171
                        (let ()
                          (declare (not safe))
                          (cons _g2897828990_ '()))))
                   (declare (not safe))
                   (cons __tmp32172 __tmp32171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32170 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp32169))))
                                      (declare (not safe))
                                      (cons __tmp32173 __tmp32168))))
                               (declare (not safe))
                               (cons __tmp32176 __tmp32167))))
                        (declare (not safe))
                        (cons __tmp32166 _g2898028995_)))
                    '()
                    _L28238_
                    _L27811_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _L28096_
                                                   _L27595_))))
                                     (declare (not safe))
                                     (cons __tmp32177 __tmp32154))))
                             (declare (not safe))
                             (_g2890928972_ __tmp32153))))
                       _g2888328894_)))
                   (__tmp32178
                    (let ((__tmp32202 (gx#datum->syntax '#f '@list))
                          (__tmp32179
                           (begin
                             (gx#syntax-check-splice-targets _L28025_ _L27595_)
                             (foldr (lambda (_g2900129008_
                                             _g2900229011_
                                             _g2900329013_)
                                      (let ((__tmp32180
                                             (let ((__tmp32190
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32181
                                                    (let ((__tmp32187
                                                           (let ((__tmp32189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp32188
                          (let ()
                            (declare (not safe))
                            (cons _g2900229011_ '()))))
                     (declare (not safe))
                     (cons __tmp32189 __tmp32188)))
                  (__tmp32182
                   (let ((__tmp32183
                          (let ((__tmp32184
                                 (let ((__tmp32186
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp32185
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2900129008_ '()))))
                                   (declare (not safe))
                                   (cons __tmp32186 __tmp32185))))
                            (declare (not safe))
                            (cons __tmp32184 '()))))
                     (declare (not safe))
                     (cons ':: __tmp32183))))
              (declare (not safe))
              (cons __tmp32187 __tmp32182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32190 __tmp32181))))
                                        (declare (not safe))
                                        (cons __tmp32180 _g2900329013_)))
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L28167_
                                       _L27811_)
                                      (foldr (lambda (_g2900429016_
                                                      _g2900529019_
                                                      _g2900629021_)
                                               (let ((__tmp32191
                                                      (let ((__tmp32201
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp32192
                                                             (let ((__tmp32198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32200 (gx#datum->syntax '#f 'quote))
                                  (__tmp32199
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2900529019_ '()))))
                              (declare (not safe))
                              (cons __tmp32200 __tmp32199)))
                           (__tmp32193
                            (let ((__tmp32194
                                   (let ((__tmp32195
                                          (let ((__tmp32197
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp32196
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2900429016_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32197 __tmp32196))))
                                     (declare (not safe))
                                     (cons __tmp32195 '()))))
                              (declare (not safe))
                              (cons ':: __tmp32194))))
                       (declare (not safe))
                       (cons __tmp32198 __tmp32193))))
                (declare (not safe))
                (cons __tmp32201 __tmp32192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp32191
                                                       _g2900629021_)))
                                             '()
                                             _L28167_
                                             _L27811_))
                                    _L28025_
                                    _L27595_))))
                      (declare (not safe))
                      (cons __tmp32202 __tmp32179))))
              (declare (not safe))
              (_g2888128998_ __tmp32178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2885528866_)))
                                            (__tmp32203
                                             (let ((__tmp32227
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32204
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L27737_
                                                       _L27595_)
                                                      (foldr (lambda (_g2902729034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2902829037_
                              _g2902929039_)
                       (let ((__tmp32205
                              (let ((__tmp32215 (gx#datum->syntax '#f '@list))
                                    (__tmp32206
                                     (let ((__tmp32212
                                            (let ((__tmp32214
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32213
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2902829037_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp32214 __tmp32213)))
                                           (__tmp32207
                                            (let ((__tmp32208
                                                   (let ((__tmp32209
                                                          (let ((__tmp32211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp32210
                         (let ()
                           (declare (not safe))
                           (cons _g2902729034_ '()))))
                    (declare (not safe))
                    (cons __tmp32211 __tmp32210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32209 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp32208))))
                                       (declare (not safe))
                                       (cons __tmp32212 __tmp32207))))
                                (declare (not safe))
                                (cons __tmp32215 __tmp32206))))
                         (declare (not safe))
                         (cons __tmp32205 _g2902929039_)))
                     (begin
                       (gx#syntax-check-splice-targets _L27954_ _L27811_)
                       (foldr (lambda (_g2903029042_
                                       _g2903129045_
                                       _g2903229047_)
                                (let ((__tmp32216
                                       (let ((__tmp32226
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp32217
                                              (let ((__tmp32223
                                                     (let ((__tmp32225
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp32224
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2903129045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp32225 __tmp32224)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp32218
                                                     (let ((__tmp32219
                                                            (let ((__tmp32220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32222
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp32221
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2903029042_ '()))))
                             (declare (not safe))
                             (cons __tmp32222 __tmp32221))))
                      (declare (not safe))
                      (cons __tmp32220 '()))))
               (declare (not safe))
               (cons ':: __tmp32219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32223 __tmp32218))))
                                         (declare (not safe))
                                         (cons __tmp32226 __tmp32217))))
                                  (declare (not safe))
                                  (cons __tmp32216 _g2903229047_)))
                              '()
                              _L27954_
                              _L27811_))
                     _L27737_
                     _L27595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32227 __tmp32204))))
                                       (declare (not safe))
                                       (_g2885329024_ __tmp32203))))
                                 _g2882728838_)))
                             (__tmp32228
                              (let ((__tmp32252 (gx#datum->syntax '#f '@list))
                                    (__tmp32229
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L27666_
                                        _L27595_)
                                       (foldr (lambda (_g2905329060_
                                                       _g2905429063_
                                                       _g2905529065_)
                                                (let ((__tmp32230
                                                       (let ((__tmp32240
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp32231
                                                              (let ((__tmp32237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp32239 (gx#datum->syntax '#f 'quote))
                                   (__tmp32238
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2905429063_ '()))))
                               (declare (not safe))
                               (cons __tmp32239 __tmp32238)))
                            (__tmp32232
                             (let ((__tmp32233
                                    (let ((__tmp32234
                                           (let ((__tmp32236
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp32235
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2905329060_ '()))))
                                             (declare (not safe))
                                             (cons __tmp32236 __tmp32235))))
                                      (declare (not safe))
                                      (cons __tmp32234 '()))))
                               (declare (not safe))
                               (cons ':: __tmp32233))))
                        (declare (not safe))
                        (cons __tmp32237 __tmp32232))))
                 (declare (not safe))
                 (cons __tmp32240 __tmp32231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp32230
                                                        _g2905529065_)))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L27883_
                                                 _L27811_)
                                                (foldr (lambda (_g2905629068_
                                                                _g2905729071_
                                                                _g2905829073_)
                                                         (let ((__tmp32241
                                                                (let ((__tmp32251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp32242
                               (let ((__tmp32248
                                      (let ((__tmp32250
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp32249
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2905729071_ '()))))
                                        (declare (not safe))
                                        (cons __tmp32250 __tmp32249)))
                                     (__tmp32243
                                      (let ((__tmp32244
                                             (let ((__tmp32245
                                                    (let ((__tmp32247
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp32246
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2905629068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp32247 __tmp32246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32245 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp32244))))
                                 (declare (not safe))
                                 (cons __tmp32248 __tmp32243))))
                          (declare (not safe))
                          (cons __tmp32251 __tmp32242))))
                   (declare (not safe))
                   (cons __tmp32241 _g2905829073_)))
               '()
               _L27883_
               _L27811_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _L27666_
                                              _L27595_))))
                                (declare (not safe))
                                (cons __tmp32252 __tmp32229))))
                        (declare (not safe))
                        (_g2882529050_ __tmp32228))))
                  _g2879928810_)))
              (__tmp32253
               (let ((__tmp32255 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp32254
                      (let () (declare (not safe)) (cons _L27500_ '()))))
                 (declare (not safe))
                 (cons __tmp32255 __tmp32254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2879729076_ __tmp32253))))
                                           _g2877128782_)))
                                       (__tmp32256
                                        (let ((__tmp32258
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp32257
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L27472_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32258 __tmp32257))))
                                  (declare (not safe))
                                  (_g2876929080_ __tmp32256))))
                            _g2874328754_)))
                        (__tmp32259
                         (let ((__tmp32261
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp32260
                                (let ()
                                  (declare (not safe))
                                  (cons _L27444_ '()))))
                           (declare (not safe))
                           (cons __tmp32261 __tmp32260))))
                   (declare (not safe))
                   (_g2874129084_ __tmp32259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2871528726_)))
                                                 (__tmp32262
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _type-constructor28315_))
                                                      '#f
                                                      (let* ((_g2909229107_
                                                              (lambda (_g2909329103_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2909329103_)))
                     (_g2909129155_
                      (lambda (_g2909329111_)
                        (if (gx#stx-pair? _g2909329111_)
                            (let ((_e2909729114_ (gx#syntax-e _g2909329111_)))
                              (let ((_hd2909629118_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2909729114_)))
                                    (_tl2909529121_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2909729114_))))
                                (if (gx#stx-datum? _hd2909629118_)
                                    (let ((_e2909829124_
                                           (gx#stx-e _hd2909629118_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2909829124_
                                                    'constructor:))
                                          (if (gx#stx-pair? _tl2909529121_)
                                              (let ((_e2910129128_
                                                     (gx#syntax-e
                                                      _tl2909529121_)))
                                                (let ((_hd2910029132_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2910129128_)))
                                                      (_tl2909929135_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2910129128_))))
                                                  (if (gx#stx-null?
                                                       _tl2909929135_)
                                                      ((lambda (_L29138_)
                                                         (let ()
                                                           (let ((__tmp32264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp32263
                          (let () (declare (not safe)) (cons _L29138_ '()))))
                     (declare (not safe))
                     (cons __tmp32264 __tmp32263))))
               _hd2910029132_)
              (let () (declare (not safe)) (_g2909229107_ _g2909329111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2909229107_ _g2909329111_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2909229107_ _g2909329111_))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2909229107_ _g2909329111_)))))
                            (let ()
                              (declare (not safe))
                              (_g2909229107_ _g2909329111_))))))
                (declare (not safe))
                (_g2909129155_ _type-constructor28315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g2871329088_ __tmp32262))))
                                      _g2868728698_)))
                                  (__tmp32265
                                   (if _metaclass28400_
                                       (let* ((_g2916329171_
                                               (lambda (_g2916429167_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g2916429167_)))
                                              (_g2916229190_
                                               (lambda (_g2916429175_)
                                                 ((lambda (_L29178_)
                                                    (let ()
                                                      (let ((__tmp32267
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp32266
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L29178_ '()))))
                (declare (not safe))
                (cons __tmp32267 __tmp32266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2916429175_))))
                                         (declare (not safe))
                                         (_g2916229190_ _metaclass28400_))
                                       '#f)))
                             (declare (not safe))
                             (_g2868529159_ __tmp32265))))
                       _g2865928670_))))
              (declare (not safe))
              (_g2865729194_ _final?28406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2863128642_))))
                                       (declare (not safe))
                                       (_g2862929198_ _struct?27395_))))
                                 _g2860328614_)))
                             (__tmp32268
                              (let ((__tmp32271 (gx#datum->syntax '#f 'quote))
                                    (__tmp32269
                                     (let ((__tmp32270
                                            (foldr (lambda (_g2920529208_
                                                            _g2920629211_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2920529208_
                                                             _g2920629211_)))
                                                   '()
                                                   _L27595_)))
                                       (declare (not safe))
                                       (cons __tmp32270 '()))))
                                (declare (not safe))
                                (cons __tmp32271 __tmp32269))))
                        (declare (not safe))
                        (_g2860129202_ __tmp32268))))
                  _g2857528586_)))
              (__tmp32272
               (let* ((_g2921829235_
                       (lambda (_g2921929231_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2921929231_)))
                      (_g2921729296_
                       (lambda (_g2921929239_)
                         (if (gx#stx-pair/null? _g2921929239_)
                             (let ((_g32273_
                                    (gx#syntax-split-splice _g2921929239_ '0)))
                               (begin
                                 (let ((_g32274_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g32273_)
                                              (##vector-length _g32273_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g32274_ 2)))
                                       (error "Context expects 2 values"
                                              _g32274_)))
                                 (let ((_target2922129242_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g32273_ 0)))
                                       (_tl2922329245_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g32273_ 1))))
                                   (if (gx#stx-null? _tl2922329245_)
                                       (letrec ((_loop2922429248_
                                                 (lambda (_hd2922229252_
                                                          _super-id2922829255_)
                                                   (if (gx#stx-pair?
                                                        _hd2922229252_)
                                                       (let ((_e2922529258_
                                                              (gx#syntax-e
                                                               _hd2922229252_)))
                                                         (let ((_lp-hd2922629262_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2922529258_)))
                       (_lp-tl2922729265_
                        (let () (declare (not safe)) (##cdr _e2922529258_))))
                   (let ((__tmp32280
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2922629262_ _super-id2922829255_))))
                     (declare (not safe))
                     (_loop2922429248_ _lp-tl2922729265_ __tmp32280))))
               (let ((_super-id2922929268_ (reverse _super-id2922829255_)))
                 ((lambda (_L29272_)
                    (let ()
                      (let ((__tmp32279 (gx#datum->syntax '#f '@list))
                            (__tmp32275
                             (foldr (lambda (_g2928729290_ _g2928829293_)
                                      (let ((__tmp32276
                                             (let ((__tmp32278
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp32277
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2928729290_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp32278 __tmp32277))))
                                        (declare (not safe))
                                        (cons __tmp32276 _g2928829293_)))
                                    '()
                                    _L29272_)))
                        (declare (not safe))
                        (cons __tmp32279 __tmp32275))))
                  _super-id2922929268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop2922429248_
                                            _target2922129242_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g2921829235_ _g2921929239_))))))
                             (let ()
                               (declare (not safe))
                               (_g2921829235_ _g2921929239_))))))
                 (declare (not safe))
                 (_g2921729296_ _super-ref27379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2857329214_ __tmp32272))))
                                           _g2854728558_)))
                                       (__tmp32281
                                        (let* ((_g2930429312_
                                                (lambda (_g2930529308_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2930529308_)))
                                               (_g2930329331_
                                                (lambda (_g2930529316_)
                                                  ((lambda (_L29319_)
                                                     (let ()
                                                       (let ((__tmp32283
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp32282
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29319_ '()))))
                 (declare (not safe))
                 (cons __tmp32283 __tmp32282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2930529316_)))
                                               (__tmp32284
                                                (cadr _type-name28293_)))
                                          (declare (not safe))
                                          (_g2930329331_ __tmp32284))))
                                  (declare (not safe))
                                  (_g2854529300_ __tmp32281))))
                            _g2851928530_)))
                        (__tmp32285
                         (let* ((_g2933929354_
                                 (lambda (_g2934029350_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2934029350_)))
                                (_g2933829402_
                                 (lambda (_g2934029358_)
                                   (if (gx#stx-pair? _g2934029358_)
                                       (let ((_e2934429361_
                                              (gx#syntax-e _g2934029358_)))
                                         (let ((_hd2934329365_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2934429361_)))
                                               (_tl2934229368_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2934429361_))))
                                           (if (gx#stx-datum? _hd2934329365_)
                                               (let ((_e2934529371_
                                                      (gx#stx-e
                                                       _hd2934329365_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2934529371_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2934229368_)
                                                         (let ((_e2934829375_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2934229368_)))
                   (let ((_hd2934729379_
                          (let () (declare (not safe)) (##car _e2934829375_)))
                         (_tl2934629382_
                          (let () (declare (not safe)) (##cdr _e2934829375_))))
                     (if (gx#stx-null? _tl2934629382_)
                         ((lambda (_L29385_)
                            (let ()
                              (let ((__tmp32287 (gx#datum->syntax '#f 'quote))
                                    (__tmp32286
                                     (let ()
                                       (declare (not safe))
                                       (cons _L29385_ '()))))
                                (declare (not safe))
                                (cons __tmp32287 __tmp32286))))
                          _hd2934729379_)
                         (let ()
                           (declare (not safe))
                           (_g2933929354_ _g2934029358_)))))
                 (let () (declare (not safe)) (_g2933929354_ _g2934029358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2933929354_
                                                        _g2934029358_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2933929354_
                                                  _g2934029358_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2933929354_ _g2934029358_))))))
                           (declare (not safe))
                           (_g2933829402_ _type-id28300_))))
                   (declare (not safe))
                   (_g2851729335_ __tmp32285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2849128502_)))
                                                 (__tmp32288
                                                  (let ((__tmp32289
                                                         (let ((__tmp32295
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp32290
                        (let ((__tmp32291
                               (let ((__tmp32292
                                      (let ((__tmp32293
                                             (let ((__tmp32294
                                                    (foldr (lambda (_g2940929412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2941029415_)
                     (let ()
                       (declare (not safe))
                       (cons _g2940929412_ _g2941029415_)))
                   '()
                   _L28469_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L27500_ __tmp32294))))
                                        (declare (not safe))
                                        (cons _L27472_ __tmp32293))))
                                 (declare (not safe))
                                 (cons _L27528_ __tmp32292))))
                          (declare (not safe))
                          (cons _L27444_ __tmp32291))))
                   (declare (not safe))
                   (cons __tmp32295 __tmp32290))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27383_ __tmp32289))))
                                            (declare (not safe))
                                            (_g2848929406_ __tmp32288))))
                                      _type-body2842628465_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2842128445_ _target2841828439_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2841528432_ _g2841628436_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2841528432_
                                                    _g2841628436_)))))
                                          (__tmp32297
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _type-mixin-slots28286_
                                                           _type-slots28269_)
                                                    _type-properties28390_)
                                             _type-metaclass28403_)
                                      _type-final28412_)
                               _type-struct28409_)
                        _type-constructor28315_)
                 _type-name28293_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-id28300_)))
                                     (declare (not safe))
                                     (_g2841429418_ __tmp32297))))
                               _mixin-usetf2819528234_))))))
              (let ()
                (declare (not safe))
                (_loop2819028214_ _target2818728208_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2818428201_
                                                       _g2818528205_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2818428201_ _g2818528205_)))))
                                   (__tmp32299
                                    (gx#stx-map
                                     (lambda (_g2942529427_)
                                       (_make-id27385_ '"&" _g2942529427_))
                                     (foldr (lambda (_g2943029433_
                                                     _g2943129436_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2943029433_
                                                      _g2943129436_)))
                                            '()
                                            _L27954_))))
                              (declare (not safe))
                              (_g2818329422_ __tmp32299))))
                        _mixin-ugetf2812428163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_loop2811928143_
                                                  _target2811628137_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_g2811328130_
                                                _g2811428134_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2811328130_ _g2811428134_)))))
                            (__tmp32301
                             (gx#stx-map
                              (lambda (_g2944229444_)
                                (_make-id27385_ '"&" _g2944229444_))
                              (foldr (lambda (_g2944729450_ _g2944829453_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2944729450_ _g2944829453_)))
                                     '()
                                     _L27883_))))
                       (declare (not safe))
                       (_g2811229439_ __tmp32301))))
                 _usetf2805328092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2804828072_
                                           _target2804528066_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2804228059_ _g2804328063_))))))
                            (let ()
                              (declare (not safe))
                              (_g2804228059_ _g2804328063_)))))
                     (__tmp32303
                      (gx#stx-map
                       (lambda (_g2945929461_)
                         (_make-id27385_ '"&" _g2945929461_))
                       (foldr (lambda (_g2946429467_ _g2946529470_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2946429467_ _g2946529470_)))
                              '()
                              _L27737_))))
                (declare (not safe))
                (_g2804129456_ __tmp32303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ugetf2798228021_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2797728001_ _target2797427995_ '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2797127988_ _g2797227992_))))))
                     (let ()
                       (declare (not safe))
                       (_g2797127988_ _g2797227992_)))))
              (__tmp32305
               (gx#stx-map
                (lambda (_g2947629478_) (_make-id27385_ '"&" _g2947629478_))
                (foldr (lambda (_g2948129484_ _g2948229487_)
                         (let ()
                           (declare (not safe))
                           (cons _g2948129484_ _g2948229487_)))
                       '()
                       _L27666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2797029473_ __tmp32305))))
                                           _mixin-setf2791127950_))))))
                          (let ()
                            (declare (not safe))
                            (_loop2790627930_ _target2790327924_ '())))
                        (let ()
                          (declare (not safe))
                          (_g2790027917_ _g2790127921_))))))
              (let () (declare (not safe)) (_g2790027917_ _g2790127921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp32307
                                                (gx#stx-map
                                                 (lambda (_g2949329495_)
                                                   (_make-id27385_
                                                    _name27389_
                                                    '"-"
                                                    _g2949329495_
                                                    '"-set!"))
                                                 _mixin-slots27754_)))
                                          (declare (not safe))
                                          (_g2789929490_ __tmp32307))))
                                    _mixin-getf2784027879_))))))
                   (let ()
                     (declare (not safe))
                     (_loop2783527859_ _target2783227853_ '())))
                 (let ()
                   (declare (not safe))
                   (_g2782927846_ _g2783027850_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2782927846_
                                                  _g2783027850_)))))
                                        (__tmp32309
                                         (gx#stx-map
                                          (lambda (_g2950229504_)
                                            (_make-id27385_
                                             _name27389_
                                             '"-"
                                             _g2950229504_))
                                          _mixin-slots27754_)))
                                   (declare (not safe))
                                   (_g2782829499_ __tmp32309))))
                             _mixin-slot2776827807_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop2776327787_
                                                       _target2776027781_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2775727774_
                                                     _g2775827778_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2775727774_ _g2775827778_))))))
                            (declare (not safe))
                            (_g2775629508_ _mixin-slots27754_))))
                      _setf2769427733_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop2768927713_
                                                _target2768627707_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g2768327700_ _g2768427704_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2768327700_ _g2768427704_)))))
                          (__tmp32312
                           (gx#stx-map
                            (lambda (_g2951529517_)
                              (_make-id27385_
                               _name27389_
                               '"-"
                               _g2951529517_
                               '"-set!"))
                            _slots27380_)))
                     (declare (not safe))
                     (_g2768229512_ __tmp32312))))
               _getf2762327662_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop2761827642_
                                         _target2761527636_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g2761227629_ _g2761327633_))))))
                          (let ()
                            (declare (not safe))
                            (_g2761227629_ _g2761327633_)))))
                   (__tmp32314
                    (gx#stx-map
                     (lambda (_g2952429526_)
                       (_make-id27385_ _name27389_ '"-" _g2952429526_))
                     _slots27380_)))
              (declare (not safe))
              (_g2761129521_ __tmp32314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _slot2755227591_))))))
                               (let ()
                                 (declare (not safe))
                                 (_loop2754727571_ _target2754427565_ '())))
                             (let ()
                               (declare (not safe))
                               (_g2754127558_ _g2754227562_))))))
                   (let ()
                     (declare (not safe))
                     (_g2754127558_ _g2754227562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g2754029530_ _slots27380_))))
                                         _g2751427525_)))
                                     (__tmp32316
                                      (map gerbil/core/mop$<MOP:2>#!class-type-descriptor
                                           _super27392_)))
                                (declare (not safe))
                                (_g2751229534_ __tmp32316))))
                          _g2748627497_)))
                      (__tmp32317 (_make-id27385_ _name27389_ '"?")))
                 (declare (not safe))
                 (_g2748429538_ __tmp32317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2745827469_)))
                                               (__tmp32318
                                                (_make-id27385_
                                                 '"make-"
                                                 _name27389_)))
                                          (declare (not safe))
                                          (_g2745629542_ __tmp32318))))
                                    _g2743027441_)))
                                (__tmp32319
                                 (_make-id27385_ _name27389_ '"::t")))
                           (declare (not safe))
                           (_g2742829546_ __tmp32319))))
                     _g2739927410_))))
            (declare (not safe))
            (_g2739729550_ _id27378_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defstruct|
      (lambda (_$stx29614_)
        (let* ((_g2961829637_
                (lambda (_g2961929633_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2961929633_)))
               (_g2961729694_
                (lambda (_g2961929641_)
                  (if (gx#stx-pair? _g2961929641_)
                      (let ((_e2962529644_ (gx#syntax-e _g2961929641_)))
                        (let ((_hd2962429648_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2962529644_)))
                              (_tl2962329651_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2962529644_))))
                          (if (gx#stx-pair? _tl2962329651_)
                              (let ((_e2962829654_
                                     (gx#syntax-e _tl2962329651_)))
                                (let ((_hd2962729658_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2962829654_)))
                                      (_tl2962629661_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2962829654_))))
                                  (if (gx#stx-pair? _tl2962629661_)
                                      (let ((_e2963129664_
                                             (gx#syntax-e _tl2962629661_)))
                                        (let ((_hd2963029668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2963129664_)))
                                              (_tl2962929671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2963129664_))))
                                          ((lambda (_L29674_ _L29676_ _L29677_)
                                             (let ((__tmp32324
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp32320
                                                    (let ((__tmp32321
                                                           (let ((__tmp32322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32323
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L29674_))))
                            (declare (not safe))
                            (cons 'struct: __tmp32323))))
                     (declare (not safe))
                     (cons _L29676_ __tmp32322))))
              (declare (not safe))
              (cons _L29677_ __tmp32321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32324 __tmp32320)))
                                           _tl2962929671_
                                           _hd2963029668_
                                           _hd2962729658_)))
                                      (_g2961829637_ _g2961929641_))))
                              (_g2961829637_ _g2961929641_))))
                      (_g2961829637_ _g2961929641_)))))
          (_g2961729694_ _$stx29614_))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defclass|
      (lambda (_stx29698_)
        (letrec ((_generate29701_
                  (lambda (_hd29785_ _slots29787_ _body29788_)
                    (let* ((___stx3130631307_ _hd29785_)
                           (_g2979129803_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3130631307_))))
                      (let ((___kont3130931310_
                             (lambda (_L29831_ _L29833_)
                               (let ((__tmp32325 (gx#syntax->list _L29831_)))
                                 (declare (not safe))
                                 (|gerbil/core/mop$<MOP:4>[1]#generate-defclass|
                                  _stx29698_
                                  _L29833_
                                  __tmp32325
                                  _slots29787_
                                  _body29788_))))
                            (___kont3131131312_
                             (lambda ()
                               (if (gx#identifier? _hd29785_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/mop$<MOP:4>[1]#generate-defclass|
                                      _stx29698_
                                      _hd29785_
                                      '()
                                      _slots29787_
                                      _body29788_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx29698_
                                    _hd29785_)))))
                        (let ((___match3131931320_
                               (lambda (_e2979729821_
                                        _hd2979629825_
                                        _tl2979529828_)
                                 (let ((_L29831_ _tl2979529828_)
                                       (_L29833_ _hd2979629825_))
                                   (if (and (gx#stx-list? _L29831_)
                                            (gx#stx-andmap
                                             gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
                                             _L29831_))
                                       (___kont3130931310_ _L29831_ _L29833_)
                                       (___kont3131131312_))))))
                          (if (gx#stx-pair? ___stx3130631307_)
                              (let ((_e2979729821_
                                     (gx#syntax-e ___stx3130631307_)))
                                (let ((_tl2979529828_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2979729821_)))
                                      (_hd2979629825_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2979729821_))))
                                  (___match3131931320_
                                   _e2979729821_
                                   _hd2979629825_
                                   _tl2979529828_)))
                              (___kont3131131312_))))))))
          (let* ((_g2970429723_
                  (lambda (_g2970529719_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2970529719_)))
                 (_g2970329781_
                  (lambda (_g2970529727_)
                    (if (gx#stx-pair? _g2970529727_)
                        (let ((_e2971129730_ (gx#syntax-e _g2970529727_)))
                          (let ((_hd2971029734_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2971129730_)))
                                (_tl2970929737_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2971129730_))))
                            (if (gx#stx-pair? _tl2970929737_)
                                (let ((_e2971429740_
                                       (gx#syntax-e _tl2970929737_)))
                                  (let ((_hd2971329744_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2971429740_)))
                                        (_tl2971229747_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2971429740_))))
                                    (if (gx#stx-pair? _tl2971229747_)
                                        (let ((_e2971729750_
                                               (gx#syntax-e _tl2971229747_)))
                                          (let ((_hd2971629754_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2971729750_)))
                                                (_tl2971529757_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2971729750_))))
                                            ((lambda (_L29760_
                                                      _L29762_
                                                      _L29763_)
                                               (if (and (gx#identifier-list?
                                                         _L29762_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core/mop$<MOP:4>[1]#typedef-body?|
                                                           _L29760_)))
                                                   (_generate29701_
                                                    _L29763_
                                                    _L29762_
                                                    _L29760_)
                                                   (_g2970429723_
                                                    _g2970529727_)))
                                             _tl2971529757_
                                             _hd2971629754_
                                             _hd2971329744_)))
                                        (_g2970429723_ _g2970529727_))))
                                (_g2970429723_ _g2970529727_))))
                        (_g2970429723_ _g2970529727_)))))
            (_g2970329781_ _stx29698_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defmethod|
      (lambda (_stx29850_)
        (letrec ((_wrap29853_
                  (lambda (_e-stx30190_)
                    (gx#stx-wrap-source
                     _e-stx30190_
                     (gx#stx-source _stx29850_))))
                 (_method-opt?29855_
                  (lambda (_x30187_) (memq (gx#stx-e _x30187_) '(rebind:)))))
          (let* ((_g2985729886_
                  (lambda (_g2985829882_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2985829882_)))
                 (_g2985630183_
                  (lambda (_g2985829890_)
                    (if (gx#stx-pair? _g2985829890_)
                        (let ((_e2986529893_ (gx#syntax-e _g2985829890_)))
                          (let ((_hd2986429897_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2986529893_)))
                                (_tl2986329900_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2986529893_))))
                            (if (gx#stx-pair? _tl2986329900_)
                                (let ((_e2986829903_
                                       (gx#syntax-e _tl2986329900_)))
                                  (let ((_hd2986729907_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2986829903_)))
                                        (_tl2986629910_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2986829903_))))
                                    (if (gx#stx-pair? _hd2986729907_)
                                        (let ((_e2987129913_
                                               (gx#syntax-e _hd2986729907_)))
                                          (let ((_hd2987029917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2987129913_)))
                                                (_tl2986929920_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2987129913_))))
                                            (if (gx#identifier? _hd2987029917_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop$<MOP:4>[1]#_g32376_|
                                                     _hd2987029917_)
                                                    (if (gx#stx-pair?
                                                         _tl2986929920_)
                                                        (let ((_e2987429923_
                                                               (gx#syntax-e
                                                                _tl2986929920_)))
                                                          (let ((_hd2987329927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2987429923_)))
                        (_tl2987229930_
                         (let () (declare (not safe)) (##cdr _e2987429923_))))
                    (if (gx#stx-pair? _tl2987229930_)
                        (let ((_e2987729933_ (gx#syntax-e _tl2987229930_)))
                          (let ((_hd2987629937_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2987729933_)))
                                (_tl2987529940_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2987729933_))))
                            (if (gx#stx-null? _tl2987529940_)
                                (if (gx#stx-pair? _tl2986629910_)
                                    (let ((_e2988029943_
                                           (gx#syntax-e _tl2986629910_)))
                                      (let ((_hd2987929947_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2988029943_)))
                                            (_tl2987829950_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2988029943_))))
                                        ((lambda (_L29953_
                                                  _L29955_
                                                  _L29956_
                                                  _L29957_)
                                           (if (and (gx#identifier? _L29957_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                                                       _L29956_))
                                                    (gx#stx-plist?
                                                     _L29953_
                                                     _method-opt?29855_))
                                               (let* ((_klass29982_
                                                       (gx#syntax-local-value
                                                        _L29956_))
                                                      (_rebind?29985_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _L29953_)))
                                                      (_g2998829996_
                                                       (lambda (_g2998929992_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2998929992_)))
                                                      (_g2998730179_
                                                       (lambda (_g2998930000_)
                                                         ((lambda (_L30003_)
                                                            (let ()
                                                              (let* ((_g3001730025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3001830021_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3001830021_)))
                             (_g3001630175_
                              (lambda (_g3001830029_)
                                ((lambda (_L30032_)
                                   (let ()
                                     (let* ((_g3004530053_
                                             (lambda (_g3004630049_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3004630049_)))
                                            (_g3004430171_
                                             (lambda (_g3004630057_)
                                               ((lambda (_L30060_)
                                                  (let ()
                                                    (let* ((_g3007330081_
                                                            (lambda (_g3007430077_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g3007430077_)))
                                                           (_g3007230167_
                                                            (lambda (_g3007430085_)
                                                              ((lambda (_L30088_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g3010130109_
                                   (lambda (_g3010230105_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3010230105_)))
                                  (_g3010030163_
                                   (lambda (_g3010230113_)
                                     ((lambda (_L30116_)
                                        (let ()
                                          (let* ((_g3012930137_
                                                  (lambda (_g3013030133_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3013030133_)))
                                                 (_g3012830159_
                                                  (lambda (_g3013030141_)
                                                    ((lambda (_L30144_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap29853_
                                                            (let ((__tmp32330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp32328
                           (let ((__tmp32329
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30144_ '()))))
                             (declare (not safe))
                             (cons _L30088_ __tmp32329))))
                      (declare (not safe))
                      (cons __tmp32330 __tmp32328))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3013030141_))))
                                            (_g3012830159_
                                             (_wrap29853_
                                              (let ((__tmp32338
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp32331
                                                     (let ((__tmp32332
                                                            (let ((__tmp32335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32337 (gx#datum->syntax '#f 'quote))
                                 (__tmp32336
                                  (let ()
                                    (declare (not safe))
                                    (cons _L29957_ '()))))
                             (declare (not safe))
                             (cons __tmp32337 __tmp32336)))
                          (__tmp32333
                           (let ((__tmp32334
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30116_ '()))))
                             (declare (not safe))
                             (cons _L30032_ __tmp32334))))
                      (declare (not safe))
                      (cons __tmp32335 __tmp32333))))
               (declare (not safe))
               (cons _L30003_ __tmp32332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32338
                                                      __tmp32331)))))))
                                      _g3010230113_))))
                             (_g3010030163_ _rebind?29985_))))
                       _g3007430085_))))
              (_g3007230167_
               (_wrap29853_
                (let ((__tmp32375 (gx#datum->syntax '#f 'def))
                      (__tmp32339
                       (let ((__tmp32340
                              (let ((__tmp32341
                                     (let ((__tmp32374
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp32342
                                            (let ((__tmp32344
                                                   (let ((__tmp32345
                                                          (let ((__tmp32346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp32347
                                (let ((__tmp32373
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp32348
                                       (let ((__tmp32349
                                              (let ((__tmp32350
                                                     (let ((__tmp32365
                                                            (let ((__tmp32372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp32366
                           (let ((__tmp32371 (gx#datum->syntax '#f 'obj))
                                 (__tmp32367
                                  (let ((__tmp32370
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp32368
                                         (let ((__tmp32369
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp32369 '()))))
                                    (declare (not safe))
                                    (cons __tmp32370 __tmp32368))))
                             (declare (not safe))
                             (cons __tmp32371 __tmp32367))))
                      (declare (not safe))
                      (cons __tmp32372 __tmp32366)))
                   (__tmp32351
                    (let ((__tmp32352
                           (let ((__tmp32364
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp32353
                                  (let ((__tmp32354
                                         (let ((__tmp32363
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp32355
                                                (let ((__tmp32360
                                                       (let ((__tmp32362
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp32361
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29957_ '()))))
                 (declare (not safe))
                 (cons __tmp32362 __tmp32361)))
              (__tmp32356
               (let ((__tmp32359 (gx#datum->syntax '#f 'arg))
                     (__tmp32357
                      (let ((__tmp32358 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp32358 '()))))
                 (declare (not safe))
                 (cons __tmp32359 __tmp32357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp32360
                                                        __tmp32356))))
                                           (declare (not safe))
                                           (cons __tmp32363 __tmp32355))))
                                    (declare (not safe))
                                    (cons _L30003_ __tmp32354))))
                             (declare (not safe))
                             (cons __tmp32364 __tmp32353))))
                      (declare (not safe))
                      (cons __tmp32352 '()))))
               (declare (not safe))
               (cons __tmp32365 __tmp32351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32350 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp32349))))
                                  (declare (not safe))
                                  (cons __tmp32373 __tmp32348))))
                           (declare (not safe))
                           (cons __tmp32347 '()))))
                    (declare (not safe))
                    (cons _L30060_ __tmp32346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32345 '())))
                                                  (__tmp32343
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L29955_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32344 __tmp32343))))
                                       (declare (not safe))
                                       (cons __tmp32374 __tmp32342))))
                                (declare (not safe))
                                (cons __tmp32341 '()))))
                         (declare (not safe))
                         (cons _L30032_ __tmp32340))))
                  (declare (not safe))
                  (cons __tmp32375 __tmp32339)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3004630057_))))
                                       (_g3004430171_
                                        (gx#stx-identifier
                                         _L29956_
                                         '@next-method)))))
                                 _g3001830029_))))
                        (_g3001630175_
                         (gx#stx-identifier
                          _L29956_
                          _L29956_
                          '"::"
                          _L29957_)))))
                  _g2998930000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2998730179_
                                                  (let ((__obj31583
                                                         _klass29982_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj31583
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj31583
                                                           '9
                                                           gerbil/core/mop$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop$<MOP:2>#class-type-info::t
                                                         __obj31583
                                                         'type-descriptor)))))
                                               (if (let ((__tmp32327
                                                          (gx#identifier?
                                                           _L29957_)))
                                                     (declare (not safe))
                                                     (not __tmp32327))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx29850_
                                                    _L29957_)
                                                   (if (let ((__tmp32326
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                         _L29956_))))
                 (declare (not safe))
                 (not __tmp32326))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx29850_
                _L29956_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx29850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2987829950_
                                         _hd2987929947_
                                         _hd2987629937_
                                         _hd2987329927_)))
                                    (_g2985729886_ _g2985829890_))
                                (_g2985729886_ _g2985829890_))))
                        (_g2985729886_ _g2985829890_))))
                (_g2985729886_ _g2985829890_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2985729886_
                                                     _g2985829890_))
                                                (_g2985729886_
                                                 _g2985829890_))))
                                        (_g2985729886_ _g2985829890_))))
                                (_g2985729886_ _g2985829890_))))
                        (_g2985729886_ _g2985829890_)))))
            (_g2985630183_ _stx29850_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@method|
      (lambda (_stx30193_)
        (letrec ((_dotted-identifier?30196_
                  (lambda (_id30829_)
                    (if (gx#identifier? _id30829_)
                        (let ((_id-str30832_
                               (symbol->string (gx#stx-e _id30829_))))
                          (if (string-index _id-str30832_ '#\.)
                              (let ((_split30835_
                                     (string-split _id-str30832_ '#\.)))
                                (fx= (length _split30835_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted30198_
                  (lambda (_id30818_)
                    (let* ((_id-str30821_
                            (symbol->string (gx#stx-e _id30818_)))
                           (_split30824_ (string-split _id-str30821_ '#\.)))
                      (let ((__tmp32379
                             (gx#stx-identifier _id30818_ (car _split30824_)))
                            (__tmp32377
                             (let ((__tmp32378
                                    (gx#stx-identifier
                                     _id30818_
                                     (cadr _split30824_))))
                               (declare (not safe))
                               (cons __tmp32378 '()))))
                        (declare (not safe))
                        (cons __tmp32379 __tmp32377))))))
          (let* ((___stx3132231323_ _stx30193_)
                 (_g3020330290_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3132231323_))))
            (let ((___kont3132531326_
                   (lambda (_L30711_ _L30713_ _L30714_)
                     (let* ((_g3074230757_
                             (lambda (_g3074330753_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3074330753_)))
                            (_g3074130810_
                             (lambda (_g3074330761_)
                               (if (gx#stx-pair? _g3074330761_)
                                   (let ((_e3074830764_
                                          (gx#syntax-e _g3074330761_)))
                                     (let ((_hd3074730768_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3074830764_)))
                                           (_tl3074630771_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3074830764_))))
                                       (if (gx#stx-pair? _tl3074630771_)
                                           (let ((_e3075130774_
                                                  (gx#syntax-e
                                                   _tl3074630771_)))
                                             (let ((_hd3075030778_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3075130774_)))
                                                   (_tl3074930781_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3075130774_))))
                                               (if (gx#stx-null?
                                                    _tl3074930781_)
                                                   ((lambda (_L30784_ _L30786_)
                                                      (let ()
                                                        (let ((__tmp32391
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp32380
                                                               (let ((__tmp32390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp32381
                              (let ((__tmp32382
                                     (let ((__tmp32387
                                            (let ((__tmp32389
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32388
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L30784_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32389 __tmp32388)))
                                           (__tmp32383
                                            (let ((__tmp32384
                                                   (let ((__tmp32386
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp32385
                                                          (foldr (lambda (_g3080130804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3080230807_)
                           (let ()
                             (declare (not safe))
                             (cons _g3080130804_ _g3080230807_)))
                         '()
                         _L30713_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32386
                                                           __tmp32385))))
                                              (declare (not safe))
                                              (cons __tmp32384 '()))))
                                       (declare (not safe))
                                       (cons __tmp32387 __tmp32383))))
                                (declare (not safe))
                                (cons _L30786_ __tmp32382))))
                         (declare (not safe))
                         (cons __tmp32390 __tmp32381))))
                  (declare (not safe))
                  (cons __tmp32391 __tmp32380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3075030778_
                                                    _hd3074730768_)
                                                   (_g3074230757_
                                                    _g3074330761_))))
                                           (_g3074230757_ _g3074330761_))))
                                   (_g3074230757_ _g3074330761_)))))
                       (_g3074130810_ (_split-dotted30198_ _L30714_)))))
                  (___kont3132931330_
                   (lambda (_L30553_ _L30555_)
                     (let* ((_g3057230587_
                             (lambda (_g3057330583_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3057330583_)))
                            (_g3057130640_
                             (lambda (_g3057330591_)
                               (if (gx#stx-pair? _g3057330591_)
                                   (let ((_e3057830594_
                                          (gx#syntax-e _g3057330591_)))
                                     (let ((_hd3057730598_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3057830594_)))
                                           (_tl3057630601_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3057830594_))))
                                       (if (gx#stx-pair? _tl3057630601_)
                                           (let ((_e3058130604_
                                                  (gx#syntax-e
                                                   _tl3057630601_)))
                                             (let ((_hd3058030608_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3058130604_)))
                                                   (_tl3057930611_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3058130604_))))
                                               (if (gx#stx-null?
                                                    _tl3057930611_)
                                                   ((lambda (_L30614_ _L30616_)
                                                      (let ()
                                                        (let ((__tmp32398
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp32392
                                                               (let ((__tmp32393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp32395
                                     (let ((__tmp32397
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp32396
                                            (let ()
                                              (declare (not safe))
                                              (cons _L30614_ '()))))
                                       (declare (not safe))
                                       (cons __tmp32397 __tmp32396)))
                                    (__tmp32394
                                     (foldr (lambda (_g3063130634_
                                                     _g3063230637_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3063130634_
                                                      _g3063230637_)))
                                            '()
                                            _L30553_)))
                                (declare (not safe))
                                (cons __tmp32395 __tmp32394))))
                         (declare (not safe))
                         (cons _L30616_ __tmp32393))))
                  (declare (not safe))
                  (cons __tmp32398 __tmp32392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3058030608_
                                                    _hd3057730598_)
                                                   (_g3057230587_
                                                    _g3057330591_))))
                                           (_g3057230587_ _g3057330591_))))
                                   (_g3057230587_ _g3057330591_)))))
                       (_g3057130640_ (_split-dotted30198_ _L30555_)))))
                  (___kont3133331334_
                   (lambda (_L30457_ _L30459_ _L30460_)
                     (let ((__tmp32410 (gx#datum->syntax '#f 'apply))
                           (__tmp32399
                            (let ((__tmp32409
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp32400
                                   (let ((__tmp32401
                                          (let ((__tmp32406
                                                 (let ((__tmp32408
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp32407
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L30460_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32408
                                                         __tmp32407)))
                                                (__tmp32402
                                                 (let ((__tmp32403
                                                        (let ((__tmp32405
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp32404
                                                               (foldr (lambda (_g3048730490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3048830493_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3048730490_ _g3048830493_)))
                              '()
                              _L30457_)))
                  (declare (not safe))
                  (cons __tmp32405 __tmp32404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp32403 '()))))
                                            (declare (not safe))
                                            (cons __tmp32406 __tmp32402))))
                                     (declare (not safe))
                                     (cons _L30459_ __tmp32401))))
                              (declare (not safe))
                              (cons __tmp32409 __tmp32400))))
                       (declare (not safe))
                       (cons __tmp32410 __tmp32399))))
                  (___kont3133731338_
                   (lambda (_L30357_ _L30359_ _L30360_)
                     (let ((__tmp32417 (gx#datum->syntax '#f 'call-method))
                           (__tmp32411
                            (let ((__tmp32412
                                   (let ((__tmp32414
                                          (let ((__tmp32416
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp32415
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30360_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32416 __tmp32415)))
                                         (__tmp32413
                                          (foldr (lambda (_g3038130384_
                                                          _g3038230387_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g3038130384_
                                                           _g3038230387_)))
                                                 '()
                                                 _L30357_)))
                                     (declare (not safe))
                                     (cons __tmp32414 __tmp32413))))
                              (declare (not safe))
                              (cons _L30359_ __tmp32412))))
                       (declare (not safe))
                       (cons __tmp32417 __tmp32411)))))
              (let* ((___match3144131442_
                      (lambda (_e3026930297_
                               _hd3026830301_
                               _tl3026730304_
                               _e3027230307_
                               _hd3027130311_
                               _tl3027030314_
                               _e3027530317_
                               _hd3027430321_
                               _tl3027330324_
                               ___splice3133931340_
                               _target3027630327_
                               _tl3027830330_)
                        (letrec ((_loop3027930333_
                                  (lambda (_hd3027730337_ _arg3028330340_)
                                    (if (gx#stx-pair? _hd3027730337_)
                                        (let ((_e3028030343_
                                               (gx#syntax-e _hd3027730337_)))
                                          (let ((_lp-tl3028230350_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3028030343_)))
                                                (_lp-hd3028130347_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3028030343_))))
                                            (_loop3027930333_
                                             _lp-tl3028230350_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3028130347_
                                                     _arg3028330340_)))))
                                        (let ((_arg3028430353_
                                               (reverse _arg3028330340_)))
                                          (let ((_L30357_ _arg3028430353_)
                                                (_L30359_ _hd3027430321_)
                                                (_L30360_ _hd3027130311_))
                                            (if (gx#identifier? _L30360_)
                                                (___kont3133731338_
                                                 _L30357_
                                                 _L30359_
                                                 _L30360_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3020330290_)))))))))
                          (_loop3027930333_ _target3027630327_ '()))))
                     (___match3141531416_
                      (lambda (_e3024830397_
                               _hd3024730401_
                               _tl3024630404_
                               _e3025130407_
                               _hd3025030411_
                               _tl3024930414_
                               _e3025430417_
                               _hd3025330421_
                               _tl3025230424_
                               ___splice3133531336_
                               _target3025530427_
                               _tl3025730430_)
                        (letrec ((_loop3025830433_
                                  (lambda (_hd3025630437_ _arg3026230440_)
                                    (if (gx#stx-pair? _hd3025630437_)
                                        (let ((_e3025930443_
                                               (gx#syntax-e _hd3025630437_)))
                                          (let ((_lp-tl3026130450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3025930443_)))
                                                (_lp-hd3026030447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3025930443_))))
                                            (_loop3025830433_
                                             _lp-tl3026130450_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3026030447_
                                                     _arg3026230440_)))))
                                        (let ((_arg3026330453_
                                               (reverse _arg3026230440_)))
                                          (let ((_L30457_ _arg3026330453_)
                                                (_L30459_ _hd3025330421_)
                                                (_L30460_ _hd3025030411_))
                                            (if (and (gx#identifier? _L30460_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g3047930482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3048030485_)
                       (let ()
                         (declare (not safe))
                         (cons _g3047930482_ _g3048030485_)))
                     '()
                     _L30457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3133331334_
                                                 _L30457_
                                                 _L30459_
                                                 _L30460_)
                                                (___match3144131442_
                                                 _e3024830397_
                                                 _hd3024730401_
                                                 _tl3024630404_
                                                 _e3025130407_
                                                 _hd3025030411_
                                                 _tl3024930414_
                                                 _e3025430417_
                                                 _hd3025330421_
                                                 _tl3025230424_
                                                 ___splice3133531336_
                                                 _target3025530427_
                                                 _tl3025730430_))))))))
                          (_loop3025830433_ _target3025530427_ '()))))
                     (___match3140131402_
                      (lambda (_e3024830397_
                               _hd3024730401_
                               _tl3024630404_
                               _e3025130407_
                               _hd3025030411_
                               _tl3024930414_)
                        (if (gx#stx-pair? _tl3024930414_)
                            (let ((_e3025430417_ (gx#syntax-e _tl3024930414_)))
                              (let ((_tl3025230424_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3025430417_)))
                                    (_hd3025330421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3025430417_))))
                                (if (gx#stx-pair/null? _tl3025230424_)
                                    (let ((___splice3133531336_
                                           (gx#syntax-split-splice
                                            _tl3025230424_
                                            '0)))
                                      (let ((_tl3025730430_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3133531336_
                                                '1)))
                                            (_target3025530427_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3133531336_
                                                '0))))
                                        (if (gx#stx-null? _tl3025730430_)
                                            (___match3141531416_
                                             _e3024830397_
                                             _hd3024730401_
                                             _tl3024630404_
                                             _e3025130407_
                                             _hd3025030411_
                                             _tl3024930414_
                                             _e3025430417_
                                             _hd3025330421_
                                             _tl3025230424_
                                             ___splice3133531336_
                                             _target3025530427_
                                             _tl3025730430_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3020330290_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3020330290_)))))
                            (let () (declare (not safe)) (_g3020330290_)))))
                     (___match3138931390_
                      (lambda (_e3023030503_
                               _hd3022930507_
                               _tl3022830510_
                               _e3023330513_
                               _hd3023230517_
                               _tl3023130520_
                               ___splice3133131332_
                               _target3023430523_
                               _tl3023630526_)
                        (letrec ((_loop3023730529_
                                  (lambda (_hd3023530533_ _arg3024130536_)
                                    (if (gx#stx-pair? _hd3023530533_)
                                        (let ((_e3023830539_
                                               (gx#syntax-e _hd3023530533_)))
                                          (let ((_lp-tl3024030546_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3023830539_)))
                                                (_lp-hd3023930543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3023830539_))))
                                            (_loop3023730529_
                                             _lp-tl3024030546_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3023930543_
                                                     _arg3024130536_)))))
                                        (let ((_arg3024230549_
                                               (reverse _arg3024130536_)))
                                          (let ((_L30553_ _arg3024230549_)
                                                (_L30555_ _hd3023230517_))
                                            (if (_dotted-identifier?30196_
                                                 _L30555_)
                                                (___kont3132931330_
                                                 _L30553_
                                                 _L30555_)
                                                (___match3140131402_
                                                 _e3023030503_
                                                 _hd3022930507_
                                                 _tl3022830510_
                                                 _e3023330513_
                                                 _hd3023230517_
                                                 _tl3023130520_))))))))
                          (_loop3023730529_ _target3023430523_ '()))))
                     (___match3138731388_
                      (lambda (_e3023030503_
                               _hd3022930507_
                               _tl3022830510_
                               _e3023330513_
                               _hd3023230517_
                               _tl3023130520_
                               ___splice3133131332_
                               _target3023430523_
                               _tl3023630526_)
                        (if (gx#stx-null? _tl3023630526_)
                            (___match3138931390_
                             _e3023030503_
                             _hd3022930507_
                             _tl3022830510_
                             _e3023330513_
                             _hd3023230517_
                             _tl3023130520_
                             ___splice3133131332_
                             _target3023430523_
                             _tl3023630526_)
                            (if (gx#stx-pair? _tl3023130520_)
                                (let ((_e3025430417_
                                       (gx#syntax-e _tl3023130520_)))
                                  (let ((_tl3025230424_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3025430417_)))
                                        (_hd3025330421_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3025430417_))))
                                    (if (gx#stx-pair/null? _tl3025230424_)
                                        (let ((___splice3133531336_
                                               (gx#syntax-split-splice
                                                _tl3025230424_
                                                '0)))
                                          (let ((_tl3025730430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3133531336_
                                                    '1)))
                                                (_target3025530427_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3133531336_
                                                    '0))))
                                            (if (gx#stx-null? _tl3025730430_)
                                                (___match3141531416_
                                                 _e3023030503_
                                                 _hd3022930507_
                                                 _tl3022830510_
                                                 _e3023330513_
                                                 _hd3023230517_
                                                 _tl3023130520_
                                                 _e3025430417_
                                                 _hd3025330421_
                                                 _tl3025230424_
                                                 ___splice3133531336_
                                                 _target3025530427_
                                                 _tl3025730430_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3020330290_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3020330290_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3020330290_))))))
                     (___match3136931370_
                      (lambda (_e3021030651_
                               _hd3020930655_
                               _tl3020830658_
                               _e3021330661_
                               _hd3021230665_
                               _tl3021130668_
                               ___splice3132731328_
                               _target3021430671_
                               _tl3021630674_
                               _e3022530677_
                               _hd3022430681_
                               _tl3022330684_)
                        (letrec ((_loop3021730687_
                                  (lambda (_hd3021530691_ _arg3022130694_)
                                    (if (gx#stx-pair? _hd3021530691_)
                                        (let ((_e3021830697_
                                               (gx#syntax-e _hd3021530691_)))
                                          (let ((_lp-tl3022030704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3021830697_)))
                                                (_lp-hd3021930701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3021830697_))))
                                            (_loop3021730687_
                                             _lp-tl3022030704_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3021930701_
                                                     _arg3022130694_)))))
                                        (let ((_arg3022230707_
                                               (reverse _arg3022130694_)))
                                          (let ((_L30711_ _hd3022430681_)
                                                (_L30713_ _arg3022230707_)
                                                (_L30714_ _hd3021230665_))
                                            (if (and (_dotted-identifier?30196_
                                                      _L30714_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g3073330736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3073430739_)
                       (let ()
                         (declare (not safe))
                         (cons _g3073330736_ _g3073430739_)))
                     '()
                     _L30713_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3132531326_
                                                 _L30711_
                                                 _L30713_
                                                 _L30714_)
                                                (let ((___splice3133131332_
                                                       (gx#syntax-split-splice
                                                        _tl3021130668_
                                                        '0)))
                                                  (let ((_tl3023630526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3133131332_
                                                            '1)))
                                                        (_target3023430523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3133131332_
                                                            '0))))
                                                    (___match3138731388_
                                                     _e3021030651_
                                                     _hd3020930655_
                                                     _tl3020830658_
                                                     _e3021330661_
                                                     _hd3021230665_
                                                     _tl3021130668_
                                                     ___splice3133131332_
                                                     _target3023430523_
                                                     _tl3023630526_))))))))))
                          (_loop3021730687_ _target3021430671_ '())))))
                (if (gx#stx-pair? ___stx3132231323_)
                    (let ((_e3021030651_ (gx#syntax-e ___stx3132231323_)))
                      (let ((_tl3020830658_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3021030651_)))
                            (_hd3020930655_
                             (let ()
                               (declare (not safe))
                               (##car _e3021030651_))))
                        (if (gx#stx-pair? _tl3020830658_)
                            (let ((_e3021330661_ (gx#syntax-e _tl3020830658_)))
                              (let ((_tl3021130668_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3021330661_)))
                                    (_hd3021230665_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3021330661_))))
                                (if (gx#stx-pair/null? _tl3021130668_)
                                    (if (fx>= (gx#stx-length _tl3021130668_)
                                              '1)
                                        (let ((___splice3132731328_
                                               (gx#syntax-split-splice
                                                _tl3021130668_
                                                '1)))
                                          (let ((_tl3021630674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3132731328_
                                                    '1)))
                                                (_target3021430671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3132731328_
                                                    '0))))
                                            (if (gx#stx-pair? _tl3021630674_)
                                                (let ((_e3022530677_
                                                       (gx#syntax-e
                                                        _tl3021630674_)))
                                                  (let ((_tl3022330684_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3022530677_)))
                                                        (_hd3022430681_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3022530677_))))
                                                    (if (gx#stx-null?
                                                         _tl3022330684_)
                                                        (___match3136931370_
                                                         _e3021030651_
                                                         _hd3020930655_
                                                         _tl3020830658_
                                                         _e3021330661_
                                                         _hd3021230665_
                                                         _tl3021130668_
                                                         ___splice3132731328_
                                                         _target3021430671_
                                                         _tl3021630674_
                                                         _e3022530677_
                                                         _hd3022430681_
                                                         _tl3022330684_)
                                                        (let ((___splice3133131332_
                                                               (gx#syntax-split-splice
                                                                _tl3021130668_
                                                                '0)))
                                                          (let ((_tl3023630526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3133131332_ '1)))
                        (_target3023430523_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3133131332_ '0))))
                    (if (gx#stx-null? _tl3023630526_)
                        (___match3138931390_
                         _e3021030651_
                         _hd3020930655_
                         _tl3020830658_
                         _e3021330661_
                         _hd3021230665_
                         _tl3021130668_
                         ___splice3133131332_
                         _target3023430523_
                         _tl3023630526_)
                        (if (gx#stx-pair? _tl3021130668_)
                            (let ((_e3025430417_ (gx#syntax-e _tl3021130668_)))
                              (let ((_tl3025230424_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3025430417_)))
                                    (_hd3025330421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3025430417_))))
                                (if (gx#stx-pair/null? _tl3025230424_)
                                    (let ((___splice3133531336_
                                           (gx#syntax-split-splice
                                            _tl3025230424_
                                            '0)))
                                      (let ((_tl3025730430_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3133531336_
                                                '1)))
                                            (_target3025530427_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3133531336_
                                                '0))))
                                        (if (gx#stx-null? _tl3025730430_)
                                            (___match3141531416_
                                             _e3021030651_
                                             _hd3020930655_
                                             _tl3020830658_
                                             _e3021330661_
                                             _hd3021230665_
                                             _tl3021130668_
                                             _e3025430417_
                                             _hd3025330421_
                                             _tl3025230424_
                                             ___splice3133531336_
                                             _target3025530427_
                                             _tl3025730430_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3020330290_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3020330290_)))))
                            (let ()
                              (declare (not safe))
                              (_g3020330290_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice3133131332_
                                                       (gx#syntax-split-splice
                                                        _tl3021130668_
                                                        '0)))
                                                  (let ((_tl3023630526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3133131332_
                                                            '1)))
                                                        (_target3023430523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3133131332_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3023630526_)
                                                        (___match3138931390_
                                                         _e3021030651_
                                                         _hd3020930655_
                                                         _tl3020830658_
                                                         _e3021330661_
                                                         _hd3021230665_
                                                         _tl3021130668_
                                                         ___splice3133131332_
                                                         _target3023430523_
                                                         _tl3023630526_)
                                                        (if (gx#stx-pair?
                                                             _tl3021130668_)
                                                            (let ((_e3025430417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3021130668_)))
                      (let ((_tl3025230424_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3025430417_)))
                            (_hd3025330421_
                             (let ()
                               (declare (not safe))
                               (##car _e3025430417_))))
                        (if (gx#stx-pair/null? _tl3025230424_)
                            (let ((___splice3133531336_
                                   (gx#syntax-split-splice _tl3025230424_ '0)))
                              (let ((_tl3025730430_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3133531336_ '1)))
                                    (_target3025530427_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3133531336_
                                        '0))))
                                (if (gx#stx-null? _tl3025730430_)
                                    (___match3141531416_
                                     _e3021030651_
                                     _hd3020930655_
                                     _tl3020830658_
                                     _e3021330661_
                                     _hd3021230665_
                                     _tl3021130668_
                                     _e3025430417_
                                     _hd3025330421_
                                     _tl3025230424_
                                     ___splice3133531336_
                                     _target3025530427_
                                     _tl3025730430_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3020330290_)))))
                            (let () (declare (not safe)) (_g3020330290_)))))
                    (let () (declare (not safe)) (_g3020330290_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice3133131332_
                                               (gx#syntax-split-splice
                                                _tl3021130668_
                                                '0)))
                                          (let ((_tl3023630526_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3133131332_
                                                    '1)))
                                                (_target3023430523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3133131332_
                                                    '0))))
                                            (if (gx#stx-null? _tl3023630526_)
                                                (___match3138931390_
                                                 _e3021030651_
                                                 _hd3020930655_
                                                 _tl3020830658_
                                                 _e3021330661_
                                                 _hd3021230665_
                                                 _tl3021130668_
                                                 ___splice3133131332_
                                                 _target3023430523_
                                                 _tl3023630526_)
                                                (if (gx#stx-pair?
                                                     _tl3021130668_)
                                                    (let ((_e3025430417_
                                                           (gx#syntax-e
                                                            _tl3021130668_)))
                                                      (let ((_tl3025230424_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3025430417_)))
                    (_hd3025330421_
                     (let () (declare (not safe)) (##car _e3025430417_))))
                (if (gx#stx-pair/null? _tl3025230424_)
                    (let ((___splice3133531336_
                           (gx#syntax-split-splice _tl3025230424_ '0)))
                      (let ((_tl3025730430_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3133531336_ '1)))
                            (_target3025530427_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3133531336_ '0))))
                        (if (gx#stx-null? _tl3025730430_)
                            (___match3141531416_
                             _e3021030651_
                             _hd3020930655_
                             _tl3020830658_
                             _e3021330661_
                             _hd3021230665_
                             _tl3021130668_
                             _e3025430417_
                             _hd3025330421_
                             _tl3025230424_
                             ___splice3133531336_
                             _target3025530427_
                             _tl3025730430_)
                            (let () (declare (not safe)) (_g3020330290_)))))
                    (let () (declare (not safe)) (_g3020330290_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3020330290_)))))))
                                    (if (gx#stx-pair? _tl3021130668_)
                                        (let ((_e3025430417_
                                               (gx#syntax-e _tl3021130668_)))
                                          (let ((_tl3025230424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3025430417_)))
                                                (_hd3025330421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3025430417_))))
                                            (if (gx#stx-pair/null?
                                                 _tl3025230424_)
                                                (let ((___splice3133531336_
                                                       (gx#syntax-split-splice
                                                        _tl3025230424_
                                                        '0)))
                                                  (let ((_tl3025730430_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3133531336_
                                                            '1)))
                                                        (_target3025530427_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3133531336_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3025730430_)
                                                        (___match3141531416_
                                                         _e3021030651_
                                                         _hd3020930655_
                                                         _tl3020830658_
                                                         _e3021330661_
                                                         _hd3021230665_
                                                         _tl3021130668_
                                                         _e3025430417_
                                                         _hd3025330421_
                                                         _tl3025230424_
                                                         ___splice3133531336_
                                                         _target3025530427_
                                                         _tl3025730430_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3020330290_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3020330290_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3020330290_))))))
                            (let () (declare (not safe)) (_g3020330290_)))))
                    (let () (declare (not safe)) (_g3020330290_)))))))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@|
      (lambda (_$stx30842_)
        (let* ((___stx3144431445_ _$stx30842_)
               (_g3084730887_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3144431445_))))
          (let ((___kont3144731448_
                 (lambda (_L31025_ _L31027_)
                   (let ((__tmp32423 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp32418
                          (let ((__tmp32419
                                 (let ((__tmp32420
                                        (let ((__tmp32422
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp32421
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31025_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32422 __tmp32421))))
                                   (declare (not safe))
                                   (cons __tmp32420 '()))))
                            (declare (not safe))
                            (cons _L31027_ __tmp32419))))
                     (declare (not safe))
                     (cons __tmp32423 __tmp32418))))
                (___kont3144931450_
                 (lambda (_L30954_ _L30956_ _L30957_ _L30958_)
                   (let ((__tmp32424
                          (let ((__tmp32426
                                 (let ((__tmp32427
                                        (let ((__tmp32428
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L30956_ '()))))
                                          (declare (not safe))
                                          (cons _L30957_ __tmp32428))))
                                   (declare (not safe))
                                   (cons _L30958_ __tmp32427)))
                                (__tmp32425
                                 (foldr (lambda (_g3097930982_ _g3098030985_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3097930982_
                                                  _g3098030985_)))
                                        '()
                                        _L30954_)))
                            (declare (not safe))
                            (cons __tmp32426 __tmp32425))))
                     (declare (not safe))
                     (cons _L30958_ __tmp32424)))))
            (let* ((___match3149931500_
                    (lambda (_e3086630894_
                             _hd3086530898_
                             _tl3086430901_
                             _e3086930904_
                             _hd3086830908_
                             _tl3086730911_
                             _e3087230914_
                             _hd3087130918_
                             _tl3087030921_
                             ___splice3145131452_
                             _target3087330924_
                             _tl3087530927_)
                      (letrec ((_loop3087630930_
                                (lambda (_hd3087430934_ _rest3088030937_)
                                  (if (gx#stx-pair? _hd3087430934_)
                                      (let ((_e3087730940_
                                             (gx#syntax-e _hd3087430934_)))
                                        (let ((_lp-tl3087930947_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3087730940_)))
                                              (_lp-hd3087830944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3087730940_))))
                                          (_loop3087630930_
                                           _lp-tl3087930947_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3087830944_
                                                   _rest3088030937_)))))
                                      (let ((_rest3088130950_
                                             (reverse _rest3088030937_)))
                                        (___kont3144931450_
                                         _rest3088130950_
                                         _hd3087130918_
                                         _hd3086830908_
                                         _hd3086530898_))))))
                        (_loop3087630930_ _target3087330924_ '()))))
                   (___match3147331474_
                    (lambda (_e3085330995_
                             _hd3085230999_
                             _tl3085131002_
                             _e3085631005_
                             _hd3085531009_
                             _tl3085431012_
                             _e3085931015_
                             _hd3085831019_
                             _tl3085731022_)
                      (let ((_L31025_ _hd3085831019_)
                            (_L31027_ _hd3085531009_))
                        (if (gx#identifier? _L31025_)
                            (___kont3144731448_ _L31025_ _L31027_)
                            (if (gx#stx-pair/null? _tl3085731022_)
                                (let ((___splice3145131452_
                                       (gx#syntax-split-splice
                                        _tl3085731022_
                                        '0)))
                                  (let ((_tl3087530927_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3145131452_
                                            '1)))
                                        (_target3087330924_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3145131452_
                                            '0))))
                                    (if (gx#stx-null? _tl3087530927_)
                                        (___match3149931500_
                                         _e3085330995_
                                         _hd3085230999_
                                         _tl3085131002_
                                         _e3085631005_
                                         _hd3085531009_
                                         _tl3085431012_
                                         _e3085931015_
                                         _hd3085831019_
                                         _tl3085731022_
                                         ___splice3145131452_
                                         _target3087330924_
                                         _tl3087530927_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3084730887_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3084730887_))))))))
              (if (gx#stx-pair? ___stx3144431445_)
                  (let ((_e3085330995_ (gx#syntax-e ___stx3144431445_)))
                    (let ((_tl3085131002_
                           (let () (declare (not safe)) (##cdr _e3085330995_)))
                          (_hd3085230999_
                           (let ()
                             (declare (not safe))
                             (##car _e3085330995_))))
                      (if (gx#stx-pair? _tl3085131002_)
                          (let ((_e3085631005_ (gx#syntax-e _tl3085131002_)))
                            (let ((_tl3085431012_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3085631005_)))
                                  (_hd3085531009_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3085631005_))))
                              (if (gx#stx-pair? _tl3085431012_)
                                  (let ((_e3085931015_
                                         (gx#syntax-e _tl3085431012_)))
                                    (let ((_tl3085731022_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3085931015_)))
                                          (_hd3085831019_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3085931015_))))
                                      (if (gx#stx-null? _tl3085731022_)
                                          (___match3147331474_
                                           _e3085330995_
                                           _hd3085230999_
                                           _tl3085131002_
                                           _e3085631005_
                                           _hd3085531009_
                                           _tl3085431012_
                                           _e3085931015_
                                           _hd3085831019_
                                           _tl3085731022_)
                                          (if (gx#stx-pair/null?
                                               _tl3085731022_)
                                              (let ((___splice3145131452_
                                                     (gx#syntax-split-splice
                                                      _tl3085731022_
                                                      '0)))
                                                (let ((_tl3087530927_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3145131452_
                                                          '1)))
                                                      (_target3087330924_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3145131452_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3087530927_)
                                                      (___match3149931500_
                                                       _e3085330995_
                                                       _hd3085230999_
                                                       _tl3085131002_
                                                       _e3085631005_
                                                       _hd3085531009_
                                                       _tl3085431012_
                                                       _e3085931015_
                                                       _hd3085831019_
                                                       _tl3085731022_
                                                       ___splice3145131452_
                                                       _target3087330924_
                                                       _tl3087530927_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3084730887_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3084730887_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3084730887_)))))
                          (let () (declare (not safe)) (_g3084730887_)))))
                  (let () (declare (not safe)) (_g3084730887_))))))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@-set!|
      (lambda (_$stx31047_)
        (let* ((___stx3150231503_ _$stx31047_)
               (_g3105231104_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3150231503_))))
          (let ((___kont3150531506_
                 (lambda (_L31280_ _L31282_ _L31283_)
                   (let ((__tmp32435 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp32429
                          (let ((__tmp32430
                                 (let ((__tmp32432
                                        (let ((__tmp32434
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp32433
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31282_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32434 __tmp32433)))
                                       (__tmp32431
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31280_ '()))))
                                   (declare (not safe))
                                   (cons __tmp32432 __tmp32431))))
                            (declare (not safe))
                            (cons _L31283_ __tmp32430))))
                     (declare (not safe))
                     (cons __tmp32435 __tmp32429))))
                (___kont3150731508_
                 (lambda (_L31191_
                          _L31193_
                          _L31194_
                          _L31195_
                          _L31196_
                          _L31197_)
                   (let ((__tmp32436
                          (let ((__tmp32439
                                 (let ((__tmp32443 (gx#datum->syntax '#f '@))
                                       (__tmp32440
                                        (let ((__tmp32441
                                               (let ((__tmp32442
                                                      (foldr (lambda (_g3122431227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3122531230_)
                       (let ()
                         (declare (not safe))
                         (cons _g3122431227_ _g3122531230_)))
                     '()
                     _L31194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31195_ __tmp32442))))
                                          (declare (not safe))
                                          (cons _L31196_ __tmp32441))))
                                   (declare (not safe))
                                   (cons __tmp32443 __tmp32440)))
                                (__tmp32437
                                 (let ((__tmp32438
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31191_ '()))))
                                   (declare (not safe))
                                   (cons _L31193_ __tmp32438))))
                            (declare (not safe))
                            (cons __tmp32439 __tmp32437))))
                     (declare (not safe))
                     (cons _L31197_ __tmp32436)))))
            (let* ((___match3157731578_
                    (lambda (_e3107731111_
                             _hd3107631115_
                             _tl3107531118_
                             _e3108031121_
                             _hd3107931125_
                             _tl3107831128_
                             _e3108331131_
                             _hd3108231135_
                             _tl3108131138_
                             ___splice3150931510_
                             _target3108431141_
                             _tl3108631144_
                             _e3109531147_
                             _hd3109431151_
                             _tl3109331154_
                             _e3109831157_
                             _hd3109731161_
                             _tl3109631164_)
                      (letrec ((_loop3108731167_
                                (lambda (_hd3108531171_ _path3109131174_)
                                  (if (gx#stx-pair? _hd3108531171_)
                                      (let ((_e3108831177_
                                             (gx#syntax-e _hd3108531171_)))
                                        (let ((_lp-tl3109031184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3108831177_)))
                                              (_lp-hd3108931181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3108831177_))))
                                          (_loop3108731167_
                                           _lp-tl3109031184_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3108931181_
                                                   _path3109131174_)))))
                                      (let ((_path3109231187_
                                             (reverse _path3109131174_)))
                                        (___kont3150731508_
                                         _hd3109731161_
                                         _hd3109431151_
                                         _path3109231187_
                                         _hd3108231135_
                                         _hd3107931125_
                                         _hd3107631115_))))))
                        (_loop3108731167_ _target3108431141_ '()))))
                   (___match3153731538_
                    (lambda (_e3105931240_
                             _hd3105831244_
                             _tl3105731247_
                             _e3106231250_
                             _hd3106131254_
                             _tl3106031257_
                             _e3106531260_
                             _hd3106431264_
                             _tl3106331267_
                             _e3106831270_
                             _hd3106731274_
                             _tl3106631277_)
                      (let ((_L31280_ _hd3106731274_)
                            (_L31282_ _hd3106431264_)
                            (_L31283_ _hd3106131254_))
                        (if (gx#identifier? _L31282_)
                            (___kont3150531506_ _L31280_ _L31282_ _L31283_)
                            (if (gx#stx-pair/null? _tl3106331267_)
                                (if (fx>= (gx#stx-length _tl3106331267_) '2)
                                    (let ((___splice3150931510_
                                           (gx#syntax-split-splice
                                            _tl3106331267_
                                            '2)))
                                      (let ((_tl3108631144_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3150931510_
                                                '1)))
                                            (_target3108431141_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3150931510_
                                                '0))))
                                        (if (gx#stx-pair? _tl3108631144_)
                                            (let ((_e3109531147_
                                                   (gx#syntax-e
                                                    _tl3108631144_)))
                                              (let ((_tl3109331154_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3109531147_)))
                                                    (_hd3109431151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3109531147_))))
                                                (if (gx#stx-pair?
                                                     _tl3109331154_)
                                                    (let ((_e3109831157_
                                                           (gx#syntax-e
                                                            _tl3109331154_)))
                                                      (let ((_tl3109631164_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3109831157_)))
                    (_hd3109731161_
                     (let () (declare (not safe)) (##car _e3109831157_))))
                (if (gx#stx-null? _tl3109631164_)
                    (___match3157731578_
                     _e3105931240_
                     _hd3105831244_
                     _tl3105731247_
                     _e3106231250_
                     _hd3106131254_
                     _tl3106031257_
                     _e3106531260_
                     _hd3106431264_
                     _tl3106331267_
                     ___splice3150931510_
                     _target3108431141_
                     _tl3108631144_
                     _e3109531147_
                     _hd3109431151_
                     _tl3109331154_
                     _e3109831157_
                     _hd3109731161_
                     _tl3109631164_)
                    (let () (declare (not safe)) (_g3105231104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3105231104_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3105231104_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3105231104_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3105231104_))))))))
              (if (gx#stx-pair? ___stx3150231503_)
                  (let ((_e3105931240_ (gx#syntax-e ___stx3150231503_)))
                    (let ((_tl3105731247_
                           (let () (declare (not safe)) (##cdr _e3105931240_)))
                          (_hd3105831244_
                           (let ()
                             (declare (not safe))
                             (##car _e3105931240_))))
                      (if (gx#stx-pair? _tl3105731247_)
                          (let ((_e3106231250_ (gx#syntax-e _tl3105731247_)))
                            (let ((_tl3106031257_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3106231250_)))
                                  (_hd3106131254_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3106231250_))))
                              (if (gx#stx-pair? _tl3106031257_)
                                  (let ((_e3106531260_
                                         (gx#syntax-e _tl3106031257_)))
                                    (let ((_tl3106331267_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3106531260_)))
                                          (_hd3106431264_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3106531260_))))
                                      (if (gx#stx-pair? _tl3106331267_)
                                          (let ((_e3106831270_
                                                 (gx#syntax-e _tl3106331267_)))
                                            (let ((_tl3106631277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3106831270_)))
                                                  (_hd3106731274_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3106831270_))))
                                              (if (gx#stx-null? _tl3106631277_)
                                                  (___match3153731538_
                                                   _e3105931240_
                                                   _hd3105831244_
                                                   _tl3105731247_
                                                   _e3106231250_
                                                   _hd3106131254_
                                                   _tl3106031257_
                                                   _e3106531260_
                                                   _hd3106431264_
                                                   _tl3106331267_
                                                   _e3106831270_
                                                   _hd3106731274_
                                                   _tl3106631277_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3106331267_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3106331267_)
                        '2)
                  (let ((___splice3150931510_
                         (gx#syntax-split-splice _tl3106331267_ '2)))
                    (let ((_tl3108631144_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3150931510_ '1)))
                          (_target3108431141_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3150931510_ '0))))
                      (if (gx#stx-pair? _tl3108631144_)
                          (let ((_e3109531147_ (gx#syntax-e _tl3108631144_)))
                            (let ((_tl3109331154_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3109531147_)))
                                  (_hd3109431151_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3109531147_))))
                              (if (gx#stx-pair? _tl3109331154_)
                                  (let ((_e3109831157_
                                         (gx#syntax-e _tl3109331154_)))
                                    (let ((_tl3109631164_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3109831157_)))
                                          (_hd3109731161_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3109831157_))))
                                      (if (gx#stx-null? _tl3109631164_)
                                          (___match3157731578_
                                           _e3105931240_
                                           _hd3105831244_
                                           _tl3105731247_
                                           _e3106231250_
                                           _hd3106131254_
                                           _tl3106031257_
                                           _e3106531260_
                                           _hd3106431264_
                                           _tl3106331267_
                                           ___splice3150931510_
                                           _target3108431141_
                                           _tl3108631144_
                                           _e3109531147_
                                           _hd3109431151_
                                           _tl3109331154_
                                           _e3109831157_
                                           _hd3109731161_
                                           _tl3109631164_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3105231104_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3105231104_)))))
                          (let () (declare (not safe)) (_g3105231104_)))))
                  (let () (declare (not safe)) (_g3105231104_)))
              (let () (declare (not safe)) (_g3105231104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl3106331267_)
                                              (if (fx>= (gx#stx-length
                                                         _tl3106331267_)
                                                        '2)
                                                  (let ((___splice3150931510_
                                                         (gx#syntax-split-splice
                                                          _tl3106331267_
                                                          '2)))
                                                    (let ((_tl3108631144_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3150931510_
                                                              '1)))
                                                          (_target3108431141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3150931510_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl3108631144_)
                                                          (let ((_e3109531147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3108631144_)))
                    (let ((_tl3109331154_
                           (let () (declare (not safe)) (##cdr _e3109531147_)))
                          (_hd3109431151_
                           (let ()
                             (declare (not safe))
                             (##car _e3109531147_))))
                      (if (gx#stx-pair? _tl3109331154_)
                          (let ((_e3109831157_ (gx#syntax-e _tl3109331154_)))
                            (let ((_tl3109631164_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3109831157_)))
                                  (_hd3109731161_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3109831157_))))
                              (if (gx#stx-null? _tl3109631164_)
                                  (___match3157731578_
                                   _e3105931240_
                                   _hd3105831244_
                                   _tl3105731247_
                                   _e3106231250_
                                   _hd3106131254_
                                   _tl3106031257_
                                   _e3106531260_
                                   _hd3106431264_
                                   _tl3106331267_
                                   ___splice3150931510_
                                   _target3108431141_
                                   _tl3108631144_
                                   _e3109531147_
                                   _hd3109431151_
                                   _tl3109331154_
                                   _e3109831157_
                                   _hd3109731161_
                                   _tl3109631164_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3105231104_)))))
                          (let () (declare (not safe)) (_g3105231104_)))))
                  (let () (declare (not safe)) (_g3105231104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3105231104_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3105231104_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3105231104_)))))
                          (let () (declare (not safe)) (_g3105231104_)))))
                  (let () (declare (not safe)) (_g3105231104_))))))))))
