(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop$<MOP:4>[1]#_g32705_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop$<MOP:4>[1]#typedef-body?|
      (lambda (_stx29594_)
        (letrec ((_body-opt?29597_
                  (lambda (_key29600_)
                    (memq (gx#stx-e _key29600_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:
                            metaclass:)))))
          (gx#stx-plist? _stx29594_ _body-opt?29597_))))
    (define |gerbil/core/mop$<MOP:4>[1]#generate-defclass|
      (lambda (_stx27378_ _id27380_ _super-ref27381_ _slots27382_ _body27383_)
        (letrec* ((_wrap27385_
                   (lambda (_e-stx29591_)
                     (gx#stx-wrap-source
                      _e-stx29591_
                      (gx#stx-source _stx27378_))))
                  (_make-id27387_
                   (if (uninterned-symbol? (gx#stx-e _id27380_))
                       (lambda _g32388_ (gx#genident _id27380_))
                       (lambda _args29588_
                         (apply gx#stx-identifier _id27380_ _args29588_))))
                  (_get-mixin-slots27388_
                   (lambda (_super29562_ _slots29564_)
                     (letrec* ((_tab29566_ (make-hash-table-eq))
                               (_dedup29568_
                                (lambda (_mixins29573_)
                                  (let _lp29576_ ((_rest29579_ _mixins29573_)
                                                  (_r29581_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest29579_))
                                        (let ((_slot29583_ (car _rest29579_)))
                                          (if (hash-get _tab29566_ _slot29583_)
                                              (let ((__tmp32391
                                                     (cdr _rest29579_)))
                                                (declare (not safe))
                                                (_lp29576_
                                                 __tmp32391
                                                 _r29581_))
                                              (begin
                                                (hash-put!
                                                 _tab29566_
                                                 _slot29583_
                                                 '#t)
                                                (let ((__tmp32390
                                                       (cdr _rest29579_))
                                                      (__tmp32389
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot29583_
                                                               _r29581_))))
                                                  (declare (not safe))
                                                  (_lp29576_
                                                   __tmp32390
                                                   __tmp32389)))))
                                        (reverse _r29581_))))))
                       (gx#stx-for-each
                        (lambda (_slot29570_)
                          (hash-put! _tab29566_ (gx#stx-e _slot29570_) '#t))
                        _slots29564_)
                       (if (let () (declare (not safe)) (not _super29562_))
                           '()
                           (if (gx#identifier? _super29562_)
                               (let ((__tmp32393
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r27389_
                                         _super29562_))))
                                 (declare (not safe))
                                 (_dedup29568_ __tmp32393))
                               (let ((__tmp32392
                                      (concatenate
                                       (map _get-mixin-slots-r27389_
                                            _super29562_))))
                                 (declare (not safe))
                                 (_dedup29568_ __tmp32392)))))))
                  (_get-mixin-slots-r27389_
                   (lambda (_type-id29556_)
                     (let ((_info29559_
                            (gx#syntax-local-value _type-id29556_)))
                       (append (let ((__obj31821 _info29559_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj31821
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj31821
                                        '4
                                        gerbil/core/mop$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/mop$<MOP:2>#class-type-info::t
                                      __obj31821
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r27389_
                                     (let ((__obj31822 _info29559_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj31822
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj31822
                                              '3
                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                            __obj31822
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots27382_ _stx27378_)
          (let* ((_name27391_ (symbol->string (gx#stx-e _id27380_)))
                 (_super27394_ (map gx#syntax-local-value _super-ref27381_))
                 (_struct?27397_ (gx#stx-getq 'struct: _body27383_))
                 (_g2740027408_
                  (lambda (_g2740127404_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2740127404_)))
                 (_g2739929552_
                  (lambda (_g2740127412_)
                    ((lambda (_L27415_)
                       (let ()
                         (let* ((_g2743127439_
                                 (lambda (_g2743227435_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2743227435_)))
                                (_g2743029548_
                                 (lambda (_g2743227443_)
                                   ((lambda (_L27446_)
                                      (let ()
                                        (let* ((_g2745927467_
                                                (lambda (_g2746027463_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2746027463_)))
                                               (_g2745829544_
                                                (lambda (_g2746027471_)
                                                  ((lambda (_L27474_)
                                                     (let ()
                                                       (let* ((_g2748727495_
                                                               (lambda (_g2748827491_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2748827491_)))
                      (_g2748629540_
                       (lambda (_g2748827499_)
                         ((lambda (_L27502_)
                            (let ()
                              (let* ((_g2751527523_
                                      (lambda (_g2751627519_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2751627519_)))
                                     (_g2751429536_
                                      (lambda (_g2751627527_)
                                        ((lambda (_L27530_)
                                           (let ()
                                             (let* ((_g2754327560_
                                                     (lambda (_g2754427556_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g2754427556_)))
                                                    (_g2754229532_
                                                     (lambda (_g2754427564_)
                                                       (if (gx#stx-pair/null?
                                                            _g2754427564_)
                                                           (let ((_g32394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g2754427564_ '0)))
                     (begin
                       (let ((_g32395_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g32394_)
                                    (##vector-length _g32394_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g32395_ 2)))
                             (error "Context expects 2 values" _g32395_)))
                       (let ((_target2754627567_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g32394_ 0)))
                             (_tl2754827570_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g32394_ 1))))
                         (if (gx#stx-null? _tl2754827570_)
                             (letrec ((_loop2754927573_
                                       (lambda (_hd2754727577_
                                                _slot2755327580_)
                                         (if (gx#stx-pair? _hd2754727577_)
                                             (let ((_e2755027583_
                                                    (gx#syntax-e
                                                     _hd2754727577_)))
                                               (let ((_lp-hd2755127587_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2755027583_)))
                                                     (_lp-tl2755227590_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2755027583_))))
                                                 (let ((__tmp32644
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd2755127587_
                                                                _slot2755327580_))))
                                                   (declare (not safe))
                                                   (_loop2754927573_
                                                    _lp-tl2755227590_
                                                    __tmp32644))))
                                             (let ((_slot2755427593_
                                                    (reverse _slot2755327580_)))
                                               ((lambda (_L27597_)
                                                  (let ()
                                                    (let* ((_g2761427631_
                                                            (lambda (_g2761527627_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2761527627_)))
                                                           (_g2761329523_
                                                            (lambda (_g2761527635_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2761527635_)
                          (let ((_g32396_
                                 (gx#syntax-split-splice _g2761527635_ '0)))
                            (begin
                              (let ((_g32397_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g32396_)
                                           (##vector-length _g32396_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g32397_ 2)))
                                    (error "Context expects 2 values"
                                           _g32397_)))
                              (let ((_target2761727638_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32396_ 0)))
                                    (_tl2761927641_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32396_ 1))))
                                (if (gx#stx-null? _tl2761927641_)
                                    (letrec ((_loop2762027644_
                                              (lambda (_hd2761827648_
                                                       _getf2762427651_)
                                                (if (gx#stx-pair?
                                                     _hd2761827648_)
                                                    (let ((_e2762127654_
                                                           (gx#syntax-e
                                                            _hd2761827648_)))
                                                      (let ((_lp-hd2762227658_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2762127654_)))
                    (_lp-tl2762327661_
                     (let () (declare (not safe)) (##cdr _e2762127654_))))
                (let ((__tmp32642
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd2762227658_ _getf2762427651_))))
                  (declare (not safe))
                  (_loop2762027644_ _lp-tl2762327661_ __tmp32642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_getf2762527664_
                                                           (reverse _getf2762427651_)))
                                                      ((lambda (_L27668_)
                                                         (let ()
                                                           (let* ((_g2768527702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2768627698_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2768627698_)))
                          (_g2768429514_
                           (lambda (_g2768627706_)
                             (if (gx#stx-pair/null? _g2768627706_)
                                 (let ((_g32398_
                                        (gx#syntax-split-splice
                                         _g2768627706_
                                         '0)))
                                   (begin
                                     (let ((_g32399_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g32398_)
                                                  (##vector-length _g32398_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g32399_ 2)))
                                           (error "Context expects 2 values"
                                                  _g32399_)))
                                     (let ((_target2768827709_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32398_ 0)))
                                           (_tl2769027712_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32398_ 1))))
                                       (if (gx#stx-null? _tl2769027712_)
                                           (letrec ((_loop2769127715_
                                                     (lambda (_hd2768927719_
                                                              _setf2769527722_)
                                                       (if (gx#stx-pair?
                                                            _hd2768927719_)
                                                           (let ((_e2769227725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2768927719_)))
                     (let ((_lp-hd2769327729_
                            (let ()
                              (declare (not safe))
                              (##car _e2769227725_)))
                           (_lp-tl2769427732_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2769227725_))))
                       (let ((__tmp32640
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd2769327729_ _setf2769527722_))))
                         (declare (not safe))
                         (_loop2769127715_ _lp-tl2769427732_ __tmp32640))))
                   (let ((_setf2769627735_ (reverse _setf2769527722_)))
                     ((lambda (_L27739_)
                        (let ()
                          (let* ((_mixin-slots27756_
                                  (let ()
                                    (declare (not safe))
                                    (_get-mixin-slots27388_
                                     _super-ref27381_
                                     _slots27382_)))
                                 (_g2775927776_
                                  (lambda (_g2776027772_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2776027772_)))
                                 (_g2775829510_
                                  (lambda (_g2776027780_)
                                    (if (gx#stx-pair/null? _g2776027780_)
                                        (let ((_g32400_
                                               (gx#syntax-split-splice
                                                _g2776027780_
                                                '0)))
                                          (begin
                                            (let ((_g32401_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g32400_)
                                                         (##vector-length
                                                          _g32400_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g32401_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g32401_)))
                                            (let ((_target2776227783_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32400_
                                                      0)))
                                                  (_tl2776427786_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32400_
                                                      1))))
                                              (if (gx#stx-null? _tl2776427786_)
                                                  (letrec ((_loop2776527789_
                                                            (lambda (_hd2776327793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _mixin-slot2776927796_)
                      (if (gx#stx-pair? _hd2776327793_)
                          (let ((_e2776627799_ (gx#syntax-e _hd2776327793_)))
                            (let ((_lp-hd2776727803_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2776627799_)))
                                  (_lp-tl2776827806_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2776627799_))))
                              (let ((__tmp32639
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2776727803_
                                             _mixin-slot2776927796_))))
                                (declare (not safe))
                                (_loop2776527789_
                                 _lp-tl2776827806_
                                 __tmp32639))))
                          (let ((_mixin-slot2777027809_
                                 (reverse _mixin-slot2776927796_)))
                            ((lambda (_L27813_)
                               (let ()
                                 (let* ((_g2783127848_
                                         (lambda (_g2783227844_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2783227844_)))
                                        (_g2783029501_
                                         (lambda (_g2783227852_)
                                           (if (gx#stx-pair/null?
                                                _g2783227852_)
                                               (let ((_g32402_
                                                      (gx#syntax-split-splice
                                                       _g2783227852_
                                                       '0)))
                                                 (begin
                                                   (let ((_g32403_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g32402_)
                        (##vector-length _g32402_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g32403_ 2)))
                 (error "Context expects 2 values" _g32403_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target2783427855_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32402_
                                                             0)))
                                                         (_tl2783627858_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32402_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl2783627858_)
                                                         (letrec ((_loop2783727861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2783527865_ _mixin-getf2784127868_)
                             (if (gx#stx-pair? _hd2783527865_)
                                 (let ((_e2783827871_
                                        (gx#syntax-e _hd2783527865_)))
                                   (let ((_lp-hd2783927875_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2783827871_)))
                                         (_lp-tl2784027878_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2783827871_))))
                                     (let ((__tmp32637
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd2783927875_
                                                    _mixin-getf2784127868_))))
                                       (declare (not safe))
                                       (_loop2783727861_
                                        _lp-tl2784027878_
                                        __tmp32637))))
                                 (let ((_mixin-getf2784227881_
                                        (reverse _mixin-getf2784127868_)))
                                   ((lambda (_L27885_)
                                      (let ()
                                        (let* ((_g2790227919_
                                                (lambda (_g2790327915_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2790327915_)))
                                               (_g2790129492_
                                                (lambda (_g2790327923_)
                                                  (if (gx#stx-pair/null?
                                                       _g2790327923_)
                                                      (let ((_g32404_
                                                             (gx#syntax-split-splice
                                                              _g2790327923_
                                                              '0)))
                                                        (begin
                                                          (let ((_g32405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g32404_)
                               (##vector-length _g32404_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g32405_ 2)))
                        (error "Context expects 2 values" _g32405_)))
                  (let ((_target2790527926_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32404_ 0)))
                        (_tl2790727929_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32404_ 1))))
                    (if (gx#stx-null? _tl2790727929_)
                        (letrec ((_loop2790827932_
                                  (lambda (_hd2790627936_
                                           _mixin-setf2791227939_)
                                    (if (gx#stx-pair? _hd2790627936_)
                                        (let ((_e2790927942_
                                               (gx#syntax-e _hd2790627936_)))
                                          (let ((_lp-hd2791027946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2790927942_)))
                                                (_lp-tl2791127949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2790927942_))))
                                            (let ((__tmp32635
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd2791027946_
                                                           _mixin-setf2791227939_))))
                                              (declare (not safe))
                                              (_loop2790827932_
                                               _lp-tl2791127949_
                                               __tmp32635))))
                                        (let ((_mixin-setf2791327952_
                                               (reverse _mixin-setf2791227939_)))
                                          ((lambda (_L27956_)
                                             (let ()
                                               (let* ((_g2797327990_
                                                       (lambda (_g2797427986_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2797427986_)))
                                                      (_g2797229475_
                                                       (lambda (_g2797427994_)
                                                         (if (gx#stx-pair/null?
                                                              _g2797427994_)
                                                             (let ((_g32406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2797427994_ '0)))
                       (begin
                         (let ((_g32407_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g32406_)
                                      (##vector-length _g32406_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g32407_ 2)))
                               (error "Context expects 2 values" _g32407_)))
                         (let ((_target2797627997_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32406_ 0)))
                               (_tl2797828000_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32406_ 1))))
                           (if (gx#stx-null? _tl2797828000_)
                               (letrec ((_loop2797928003_
                                         (lambda (_hd2797728007_
                                                  _ugetf2798328010_)
                                           (if (gx#stx-pair? _hd2797728007_)
                                               (let ((_e2798028013_
                                                      (gx#syntax-e
                                                       _hd2797728007_)))
                                                 (let ((_lp-hd2798128017_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2798028013_)))
                                                       (_lp-tl2798228020_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2798028013_))))
                                                   (let ((__tmp32633
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _lp-hd2798128017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ugetf2798328010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop2797928003_
                                                      _lp-tl2798228020_
                                                      __tmp32633))))
                                               (let ((_ugetf2798428023_
                                                      (reverse _ugetf2798328010_)))
                                                 ((lambda (_L28027_)
                                                    (let ()
                                                      (let* ((_g2804428061_
                                                              (lambda (_g2804528057_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2804528057_)))
                     (_g2804329458_
                      (lambda (_g2804528065_)
                        (if (gx#stx-pair/null? _g2804528065_)
                            (let ((_g32408_
                                   (gx#syntax-split-splice _g2804528065_ '0)))
                              (begin
                                (let ((_g32409_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g32408_)
                                             (##vector-length _g32408_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g32409_ 2)))
                                      (error "Context expects 2 values"
                                             _g32409_)))
                                (let ((_target2804728068_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32408_ 0)))
                                      (_tl2804928071_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32408_ 1))))
                                  (if (gx#stx-null? _tl2804928071_)
                                      (letrec ((_loop2805028074_
                                                (lambda (_hd2804828078_
                                                         _usetf2805428081_)
                                                  (if (gx#stx-pair?
                                                       _hd2804828078_)
                                                      (let ((_e2805128084_
                                                             (gx#syntax-e
                                                              _hd2804828078_)))
                                                        (let ((_lp-hd2805228088_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2805128084_)))
                      (_lp-tl2805328091_
                       (let () (declare (not safe)) (##cdr _e2805128084_))))
                  (let ((__tmp32631
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2805228088_ _usetf2805428081_))))
                    (declare (not safe))
                    (_loop2805028074_ _lp-tl2805328091_ __tmp32631))))
              (let ((_usetf2805528094_ (reverse _usetf2805428081_)))
                ((lambda (_L28098_)
                   (let ()
                     (let* ((_g2811528132_
                             (lambda (_g2811628128_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2811628128_)))
                            (_g2811429441_
                             (lambda (_g2811628136_)
                               (if (gx#stx-pair/null? _g2811628136_)
                                   (let ((_g32410_
                                          (gx#syntax-split-splice
                                           _g2811628136_
                                           '0)))
                                     (begin
                                       (let ((_g32411_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g32410_)
                                                    (##vector-length _g32410_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g32411_ 2)))
                                             (error "Context expects 2 values"
                                                    _g32411_)))
                                       (let ((_target2811828139_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32410_ 0)))
                                             (_tl2812028142_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32410_ 1))))
                                         (if (gx#stx-null? _tl2812028142_)
                                             (letrec ((_loop2812128145_
                                                       (lambda (_hd2811928149_
                                                                _mixin-ugetf2812528152_)
                                                         (if (gx#stx-pair?
                                                              _hd2811928149_)
                                                             (let ((_e2812228155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd2811928149_)))
                       (let ((_lp-hd2812328159_
                              (let ()
                                (declare (not safe))
                                (##car _e2812228155_)))
                             (_lp-tl2812428162_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2812228155_))))
                         (let ((__tmp32629
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2812328159_
                                        _mixin-ugetf2812528152_))))
                           (declare (not safe))
                           (_loop2812128145_ _lp-tl2812428162_ __tmp32629))))
                     (let ((_mixin-ugetf2812628165_
                            (reverse _mixin-ugetf2812528152_)))
                       ((lambda (_L28169_)
                          (let ()
                            (let* ((_g2818628203_
                                    (lambda (_g2818728199_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2818728199_)))
                                   (_g2818529424_
                                    (lambda (_g2818728207_)
                                      (if (gx#stx-pair/null? _g2818728207_)
                                          (let ((_g32412_
                                                 (gx#syntax-split-splice
                                                  _g2818728207_
                                                  '0)))
                                            (begin
                                              (let ((_g32413_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g32412_)
                                                           (##vector-length
                                                            _g32412_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g32413_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g32413_)))
                                              (let ((_target2818928210_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32412_
                                                        0)))
                                                    (_tl2819128213_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32412_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl2819128213_)
                                                    (letrec ((_loop2819228216_
                                                              (lambda (_hd2819028220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _mixin-usetf2819628223_)
                        (if (gx#stx-pair? _hd2819028220_)
                            (let ((_e2819328226_ (gx#syntax-e _hd2819028220_)))
                              (let ((_lp-hd2819428230_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2819328226_)))
                                    (_lp-tl2819528233_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2819328226_))))
                                (let ((__tmp32627
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2819428230_
                                               _mixin-usetf2819628223_))))
                                  (declare (not safe))
                                  (_loop2819228216_
                                   _lp-tl2819528233_
                                   __tmp32627))))
                            (let ((_mixin-usetf2819728236_
                                   (reverse _mixin-usetf2819628223_)))
                              ((lambda (_L28240_)
                                 (let ()
                                   (let* ((_type-slots28271_
                                           (if (gx#stx-null? _slots27382_)
                                               '()
                                               (let ((__tmp32414
                                                      (let ((__tmp32415
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L27739_
                                                                _L27668_
                                                                _L27597_)
                                                               (foldr (lambda (_g2825628261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2825728264_
                                       _g2825828266_
                                       _g2825928268_)
                                (let ((__tmp32416
                                       (let ((__tmp32417
                                              (let ((__tmp32418
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2825628261_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2825728264_
                                                      __tmp32418))))
                                         (declare (not safe))
                                         (cons _g2825828266_ __tmp32417))))
                                  (declare (not safe))
                                  (cons __tmp32416 _g2825928268_)))
                              '()
                              _L27739_
                              _L27668_
                              _L27597_))))
                (declare (not safe))
                (cons __tmp32415 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp32414))))
                                          (_type-mixin-slots28288_
                                           (if (gx#stx-null?
                                                _mixin-slots27756_)
                                               '()
                                               (let ((__tmp32419
                                                      (let ((__tmp32420
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L27956_
                                                                _L27885_
                                                                _L27813_)
                                                               (foldr (lambda (_g2827328278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2827428281_
                                       _g2827528283_
                                       _g2827628285_)
                                (let ((__tmp32421
                                       (let ((__tmp32422
                                              (let ((__tmp32423
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2827328278_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2827428281_
                                                      __tmp32423))))
                                         (declare (not safe))
                                         (cons _g2827528283_ __tmp32422))))
                                  (declare (not safe))
                                  (cons __tmp32421 _g2827628285_)))
                              '()
                              _L27956_
                              _L27885_
                              _L27813_))))
                (declare (not safe))
                (cons __tmp32420 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp32419))))
                                          (_type-name28295_
                                           (let ((__tmp32424
                                                  (let ((__tmp32425
                                                         (let ((_$e28291_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body27383_)))
                   (if _$e28291_ _$e28291_ _id27380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32425 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp32424)))
                                          (_type-id28302_
                                           (let ((__tmp32426
                                                  (let ((__tmp32427
                                                         (let ((_$e28298_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'id:
                         _body27383_)))
                   (if _$e28298_
                       _$e28298_
                       (let ()
                         (declare (not safe))
                         (|gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
                          _L27415_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32427 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp32426)))
                                          (_type-constructor28317_
                                           (let ((_$e28313_
                                                  (let ((_e2830428306_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body27383_)))
                                                    (if _e2830428306_
                                                        (let* ((_e28310_
                                                                _e2830428306_)
                                                               (__tmp32428
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e28310_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp32428))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e28313_ _$e28313_ '())))
                                          (_properties28351_
                                           (let* ((_properties28320_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body27383_))
                                                       (let ((__tmp32429
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp32429 '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties28333_
                                                   (let ((_$e28323_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _body27383_))))
                                                     (if _$e28323_
                                                         ((lambda (_print28327_)
                                                            (let* ((_print28330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _print28327_ '#t))
                                _slots27382_
                                _print28327_))
                           (__tmp32430
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print28330_))))
                      (declare (not safe))
                      (cons __tmp32430 _properties28320_)))
                  _$e28323_)
                 _properties28320_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties28346_
                                                   (let ((_$e28336_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _body27383_))))
                                                     (if _$e28336_
                                                         ((lambda (_equal28340_)
                                                            (let* ((_equal28343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _equal28340_ '#t))
                                _slots27382_
                                _equal28340_))
                           (__tmp32431
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal28343_))))
                      (declare (not safe))
                      (cons __tmp32431 _properties28333_)))
                  _$e28336_)
                 _properties28333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _properties28346_))
                                          (_type-properties28392_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _properties28351_))
                                               '()
                                               (let* ((_g2835428362_
                                                       (lambda (_g2835528358_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2835528358_)))
                                                      (_g2835328388_
                                                       (lambda (_g2835528366_)
                                                         ((lambda (_L28369_)
                                                            (let ()
                                                              (let ((__tmp32432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp32433
                                    (let ((__tmp32435
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp32434
                                           (let ()
                                             (declare (not safe))
                                             (cons _L28369_ '()))))
                                      (declare (not safe))
                                      (cons __tmp32435 __tmp32434))))
                               (declare (not safe))
                               (cons __tmp32433 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp32432))))
                  _g2835528366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2835328388_
                                                  _properties28351_))))
                                          (_metaclass28402_
                                           (let ((_$e28395_
                                                  (gx#stx-getq
                                                   'metaclass:
                                                   _body27383_)))
                                             (if _$e28395_
                                                 ((lambda (_metaclass28399_)
                                                    (if (gx#identifier?
                                                         _metaclass28399_)
                                                        _metaclass28399_
                                                        '#f))
                                                  _$e28395_)
                                                 '#f)))
                                          (_type-metaclass28405_
                                           (if _metaclass28402_
                                               (let ((__tmp32436
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass28402_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp32436))
                                               '()))
                                          (_final?28408_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body27383_)))
                                          (_type-struct28411_
                                           (let ((__tmp32437
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?27397_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp32437)))
                                          (_type-final28414_
                                           (let ((__tmp32438
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?28408_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp32438)))
                                          (_g2841728434_
                                           (lambda (_g2841828430_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2841828430_)))
                                          (_g2841629420_
                                           (lambda (_g2841828438_)
                                             (if (gx#stx-pair/null?
                                                  _g2841828438_)
                                                 (let ((_g32439_
                                                        (gx#syntax-split-splice
                                                         _g2841828438_
                                                         '0)))
                                                   (begin
                                                     (let ((_g32440_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g32439_)
                          (##vector-length _g32439_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g32440_ 2)))
                   (error "Context expects 2 values" _g32440_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2842028441_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32439_
                                                               0)))
                                                           (_tl2842228444_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32439_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2842228444_)
                                                           (letrec ((_loop2842328447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2842128451_ _type-body2842728454_)
                               (if (gx#stx-pair? _hd2842128451_)
                                   (let ((_e2842428457_
                                          (gx#syntax-e _hd2842128451_)))
                                     (let ((_lp-hd2842528461_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2842428457_)))
                                           (_lp-tl2842628464_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2842428457_))))
                                       (let ((__tmp32625
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2842528461_
                                                      _type-body2842728454_))))
                                         (declare (not safe))
                                         (_loop2842328447_
                                          _lp-tl2842628464_
                                          __tmp32625))))
                                   (let ((_type-body2842828467_
                                          (reverse _type-body2842728454_)))
                                     ((lambda (_L28471_)
                                        (let ()
                                          (let* ((_g2849228500_
                                                  (lambda (_g2849328496_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2849328496_)))
                                                 (_g2849129408_
                                                  (lambda (_g2849328504_)
                                                    ((lambda (_L28507_)
                                                       (let ()
                                                         (let* ((_g2852028528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2852128524_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2852128524_)))
                        (_g2851929337_
                         (lambda (_g2852128532_)
                           ((lambda (_L28535_)
                              (let ()
                                (let* ((_g2854828556_
                                        (lambda (_g2854928552_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2854928552_)))
                                       (_g2854729302_
                                        (lambda (_g2854928560_)
                                          ((lambda (_L28563_)
                                             (let ()
                                               (let* ((_g2857628584_
                                                       (lambda (_g2857728580_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2857728580_)))
                                                      (_g2857529216_
                                                       (lambda (_g2857728588_)
                                                         ((lambda (_L28591_)
                                                            (let ()
                                                              (let* ((_g2860428612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2860528608_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2860528608_)))
                             (_g2860329204_
                              (lambda (_g2860528616_)
                                ((lambda (_L28619_)
                                   (let ()
                                     (let* ((_g2863228640_
                                             (lambda (_g2863328636_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2863328636_)))
                                            (_g2863129200_
                                             (lambda (_g2863328644_)
                                               ((lambda (_L28647_)
                                                  (let ()
                                                    (let* ((_g2866028668_
                                                            (lambda (_g2866128664_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2866128664_)))
                                                           (_g2865929196_
                                                            (lambda (_g2866128672_)
                                                              ((lambda (_L28675_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2868828696_
                                   (lambda (_g2868928692_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2868928692_)))
                                  (_g2868729161_
                                   (lambda (_g2868928700_)
                                     ((lambda (_L28703_)
                                        (let ()
                                          (let* ((_g2871628724_
                                                  (lambda (_g2871728720_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2871728720_)))
                                                 (_g2871529090_
                                                  (lambda (_g2871728728_)
                                                    ((lambda (_L28731_)
                                                       (let ()
                                                         (let* ((_g2874428752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2874528748_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2874528748_)))
                        (_g2874329086_
                         (lambda (_g2874528756_)
                           ((lambda (_L28759_)
                              (let ()
                                (let* ((_g2877228780_
                                        (lambda (_g2877328776_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2877328776_)))
                                       (_g2877129082_
                                        (lambda (_g2877328784_)
                                          ((lambda (_L28787_)
                                             (let ()
                                               (let* ((_g2880028808_
                                                       (lambda (_g2880128804_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2880128804_)))
                                                      (_g2879929078_
                                                       (lambda (_g2880128812_)
                                                         ((lambda (_L28815_)
                                                            (let ()
                                                              (let* ((_g2882828836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2882928832_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2882928832_)))
                             (_g2882729052_
                              (lambda (_g2882928840_)
                                ((lambda (_L28843_)
                                   (let ()
                                     (let* ((_g2885628864_
                                             (lambda (_g2885728860_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2885728860_)))
                                            (_g2885529026_
                                             (lambda (_g2885728868_)
                                               ((lambda (_L28871_)
                                                  (let ()
                                                    (let* ((_g2888428892_
                                                            (lambda (_g2888528888_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2888528888_)))
                                                           (_g2888329000_
                                                            (lambda (_g2888528896_)
                                                              ((lambda (_L28899_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2891228920_
                                   (lambda (_g2891328916_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2891328916_)))
                                  (_g2891128974_
                                   (lambda (_g2891328924_)
                                     ((lambda (_L28927_)
                                        (let ()
                                          (let* ((_g2894028948_
                                                  (lambda (_g2894128944_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2894128944_)))
                                                 (_g2893928970_
                                                  (lambda (_g2894128952_)
                                                    ((lambda (_L28955_)
                                                       (let ()
                                                         (let ()
                                                           (let ((__tmp32441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32444 (gx#datum->syntax '#f 'begin))
                                (__tmp32442
                                 (let ((__tmp32443
                                        (let ()
                                          (declare (not safe))
                                          (cons _L28955_ '()))))
                                   (declare (not safe))
                                   (cons _L28507_ __tmp32443))))
                            (declare (not safe))
                            (cons __tmp32444 __tmp32442))))
                     (declare (not safe))
                     (_wrap27385_ __tmp32441)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2894128952_)))
                                                 (__tmp32445
                                                  (let ((__tmp32446
                                                         (let ((__tmp32481
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp32447
                        (let ((__tmp32448
                               (let ((__tmp32449
                                      (let ((__tmp32480
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp32450
                                             (let ((__tmp32451
                                                    (let ((__tmp32452
                                                           (let ((__tmp32453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32454
                                 (let ((__tmp32455
                                        (let ((__tmp32456
                                               (let ((__tmp32457
                                                      (let ((__tmp32458
                                                             (let ((__tmp32459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32460
                                   (let ((__tmp32461
                                          (let ((__tmp32462
                                                 (let ((__tmp32463
                                                        (let ((__tmp32464
                                                               (let ((__tmp32465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp32466
                                     (let ((__tmp32467
                                            (let ((__tmp32468
                                                   (let ((__tmp32469
                                                          (let ((__tmp32470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp32471
                                (let ((__tmp32472
                                       (let ((__tmp32473
                                              (let ((__tmp32474
                                                     (let ((__tmp32475
                                                            (let ((__tmp32476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32477
                                  (let ((__tmp32478
                                         (let ((__tmp32479
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L28927_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp32479))))
                                    (declare (not safe))
                                    (cons _L28899_ __tmp32478))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp32477))))
                      (declare (not safe))
                      (cons _L28871_ __tmp32476))))
               (declare (not safe))
               (cons 'mutators: __tmp32475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L28843_ __tmp32474))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp32473))))
                                  (declare (not safe))
                                  (cons _L28815_ __tmp32472))))
                           (declare (not safe))
                           (cons 'predicate: __tmp32471))))
                    (declare (not safe))
                    (cons _L28787_ __tmp32470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp32469))))
                                              (declare (not safe))
                                              (cons _L28759_ __tmp32468))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp32467))))
                                (declare (not safe))
                                (cons _L28731_ __tmp32466))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp32465))))
                  (declare (not safe))
                  (cons _L28703_ __tmp32464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp32463))))
                                            (declare (not safe))
                                            (cons _L28675_ __tmp32462))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp32461))))
                              (declare (not safe))
                              (cons _L28647_ __tmp32460))))
                       (declare (not safe))
                       (cons 'struct?: __tmp32459))))
                (declare (not safe))
                (cons _L28591_ __tmp32458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp32457))))
                                          (declare (not safe))
                                          (cons _L28619_ __tmp32456))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp32455))))
                            (declare (not safe))
                            (cons _L28563_ __tmp32454))))
                     (declare (not safe))
                     (cons 'name: __tmp32453))))
              (declare (not safe))
              (cons _L28535_ __tmp32452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp32451))))
                                        (declare (not safe))
                                        (cons __tmp32480 __tmp32450))))
                                 (declare (not safe))
                                 (cons __tmp32449 '()))))
                          (declare (not safe))
                          (cons _L27415_ __tmp32448))))
                   (declare (not safe))
                   (cons __tmp32481 __tmp32447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27385_ __tmp32446))))
                                            (declare (not safe))
                                            (_g2893928970_ __tmp32445))))
                                      _g2891328924_)))
                                  (__tmp32482
                                   (let ((__tmp32506
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp32483
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L28098_
                                             _L27597_)
                                            (foldr (lambda (_g2897728984_
                                                            _g2897828987_
                                                            _g2897928989_)
                                                     (let ((__tmp32484
                                                            (let ((__tmp32494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp32485
                           (let ((__tmp32491
                                  (let ((__tmp32493
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp32492
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2897828987_ '()))))
                                    (declare (not safe))
                                    (cons __tmp32493 __tmp32492)))
                                 (__tmp32486
                                  (let ((__tmp32487
                                         (let ((__tmp32488
                                                (let ((__tmp32490
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp32489
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2897728984_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp32490
                                                        __tmp32489))))
                                           (declare (not safe))
                                           (cons __tmp32488 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp32487))))
                             (declare (not safe))
                             (cons __tmp32491 __tmp32486))))
                      (declare (not safe))
                      (cons __tmp32494 __tmp32485))))
               (declare (not safe))
               (cons __tmp32484 _g2897928989_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L28240_
                                                      _L27813_)
                                                     (foldr (lambda (_g2898028992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2898128995_
                             _g2898228997_)
                      (let ((__tmp32495
                             (let ((__tmp32505 (gx#datum->syntax '#f '@list))
                                   (__tmp32496
                                    (let ((__tmp32502
                                           (let ((__tmp32504
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp32503
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2898128995_ '()))))
                                             (declare (not safe))
                                             (cons __tmp32504 __tmp32503)))
                                          (__tmp32497
                                           (let ((__tmp32498
                                                  (let ((__tmp32499
                                                         (let ((__tmp32501
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp32500
                        (let ()
                          (declare (not safe))
                          (cons _g2898028992_ '()))))
                   (declare (not safe))
                   (cons __tmp32501 __tmp32500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32499 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp32498))))
                                      (declare (not safe))
                                      (cons __tmp32502 __tmp32497))))
                               (declare (not safe))
                               (cons __tmp32505 __tmp32496))))
                        (declare (not safe))
                        (cons __tmp32495 _g2898228997_)))
                    '()
                    _L28240_
                    _L27813_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _L28098_
                                                   _L27597_))))
                                     (declare (not safe))
                                     (cons __tmp32506 __tmp32483))))
                             (declare (not safe))
                             (_g2891128974_ __tmp32482))))
                       _g2888528896_)))
                   (__tmp32507
                    (let ((__tmp32531 (gx#datum->syntax '#f '@list))
                          (__tmp32508
                           (begin
                             (gx#syntax-check-splice-targets _L28027_ _L27597_)
                             (foldr (lambda (_g2900329010_
                                             _g2900429013_
                                             _g2900529015_)
                                      (let ((__tmp32509
                                             (let ((__tmp32519
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32510
                                                    (let ((__tmp32516
                                                           (let ((__tmp32518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp32517
                          (let ()
                            (declare (not safe))
                            (cons _g2900429013_ '()))))
                     (declare (not safe))
                     (cons __tmp32518 __tmp32517)))
                  (__tmp32511
                   (let ((__tmp32512
                          (let ((__tmp32513
                                 (let ((__tmp32515
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp32514
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2900329010_ '()))))
                                   (declare (not safe))
                                   (cons __tmp32515 __tmp32514))))
                            (declare (not safe))
                            (cons __tmp32513 '()))))
                     (declare (not safe))
                     (cons ':: __tmp32512))))
              (declare (not safe))
              (cons __tmp32516 __tmp32511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32519 __tmp32510))))
                                        (declare (not safe))
                                        (cons __tmp32509 _g2900529015_)))
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L28169_
                                       _L27813_)
                                      (foldr (lambda (_g2900629018_
                                                      _g2900729021_
                                                      _g2900829023_)
                                               (let ((__tmp32520
                                                      (let ((__tmp32530
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp32521
                                                             (let ((__tmp32527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32529 (gx#datum->syntax '#f 'quote))
                                  (__tmp32528
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2900729021_ '()))))
                              (declare (not safe))
                              (cons __tmp32529 __tmp32528)))
                           (__tmp32522
                            (let ((__tmp32523
                                   (let ((__tmp32524
                                          (let ((__tmp32526
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp32525
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2900629018_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32526 __tmp32525))))
                                     (declare (not safe))
                                     (cons __tmp32524 '()))))
                              (declare (not safe))
                              (cons ':: __tmp32523))))
                       (declare (not safe))
                       (cons __tmp32527 __tmp32522))))
                (declare (not safe))
                (cons __tmp32530 __tmp32521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp32520
                                                       _g2900829023_)))
                                             '()
                                             _L28169_
                                             _L27813_))
                                    _L28027_
                                    _L27597_))))
                      (declare (not safe))
                      (cons __tmp32531 __tmp32508))))
              (declare (not safe))
              (_g2888329000_ __tmp32507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2885728868_)))
                                            (__tmp32532
                                             (let ((__tmp32556
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32533
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L27739_
                                                       _L27597_)
                                                      (foldr (lambda (_g2902929036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2903029039_
                              _g2903129041_)
                       (let ((__tmp32534
                              (let ((__tmp32544 (gx#datum->syntax '#f '@list))
                                    (__tmp32535
                                     (let ((__tmp32541
                                            (let ((__tmp32543
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32542
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2903029039_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp32543 __tmp32542)))
                                           (__tmp32536
                                            (let ((__tmp32537
                                                   (let ((__tmp32538
                                                          (let ((__tmp32540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp32539
                         (let ()
                           (declare (not safe))
                           (cons _g2902929036_ '()))))
                    (declare (not safe))
                    (cons __tmp32540 __tmp32539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32538 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp32537))))
                                       (declare (not safe))
                                       (cons __tmp32541 __tmp32536))))
                                (declare (not safe))
                                (cons __tmp32544 __tmp32535))))
                         (declare (not safe))
                         (cons __tmp32534 _g2903129041_)))
                     (begin
                       (gx#syntax-check-splice-targets _L27956_ _L27813_)
                       (foldr (lambda (_g2903229044_
                                       _g2903329047_
                                       _g2903429049_)
                                (let ((__tmp32545
                                       (let ((__tmp32555
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp32546
                                              (let ((__tmp32552
                                                     (let ((__tmp32554
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp32553
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2903329047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp32554 __tmp32553)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp32547
                                                     (let ((__tmp32548
                                                            (let ((__tmp32549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32551
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp32550
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2903229044_ '()))))
                             (declare (not safe))
                             (cons __tmp32551 __tmp32550))))
                      (declare (not safe))
                      (cons __tmp32549 '()))))
               (declare (not safe))
               (cons ':: __tmp32548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32552 __tmp32547))))
                                         (declare (not safe))
                                         (cons __tmp32555 __tmp32546))))
                                  (declare (not safe))
                                  (cons __tmp32545 _g2903429049_)))
                              '()
                              _L27956_
                              _L27813_))
                     _L27739_
                     _L27597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32556 __tmp32533))))
                                       (declare (not safe))
                                       (_g2885529026_ __tmp32532))))
                                 _g2882928840_)))
                             (__tmp32557
                              (let ((__tmp32581 (gx#datum->syntax '#f '@list))
                                    (__tmp32558
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L27668_
                                        _L27597_)
                                       (foldr (lambda (_g2905529062_
                                                       _g2905629065_
                                                       _g2905729067_)
                                                (let ((__tmp32559
                                                       (let ((__tmp32569
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp32560
                                                              (let ((__tmp32566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp32568 (gx#datum->syntax '#f 'quote))
                                   (__tmp32567
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2905629065_ '()))))
                               (declare (not safe))
                               (cons __tmp32568 __tmp32567)))
                            (__tmp32561
                             (let ((__tmp32562
                                    (let ((__tmp32563
                                           (let ((__tmp32565
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp32564
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2905529062_ '()))))
                                             (declare (not safe))
                                             (cons __tmp32565 __tmp32564))))
                                      (declare (not safe))
                                      (cons __tmp32563 '()))))
                               (declare (not safe))
                               (cons ':: __tmp32562))))
                        (declare (not safe))
                        (cons __tmp32566 __tmp32561))))
                 (declare (not safe))
                 (cons __tmp32569 __tmp32560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp32559
                                                        _g2905729067_)))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L27885_
                                                 _L27813_)
                                                (foldr (lambda (_g2905829070_
                                                                _g2905929073_
                                                                _g2906029075_)
                                                         (let ((__tmp32570
                                                                (let ((__tmp32580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp32571
                               (let ((__tmp32577
                                      (let ((__tmp32579
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp32578
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2905929073_ '()))))
                                        (declare (not safe))
                                        (cons __tmp32579 __tmp32578)))
                                     (__tmp32572
                                      (let ((__tmp32573
                                             (let ((__tmp32574
                                                    (let ((__tmp32576
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp32575
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2905829070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp32576 __tmp32575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32574 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp32573))))
                                 (declare (not safe))
                                 (cons __tmp32577 __tmp32572))))
                          (declare (not safe))
                          (cons __tmp32580 __tmp32571))))
                   (declare (not safe))
                   (cons __tmp32570 _g2906029075_)))
               '()
               _L27885_
               _L27813_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _L27668_
                                              _L27597_))))
                                (declare (not safe))
                                (cons __tmp32581 __tmp32558))))
                        (declare (not safe))
                        (_g2882729052_ __tmp32557))))
                  _g2880128812_)))
              (__tmp32582
               (let ((__tmp32584 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp32583
                      (let () (declare (not safe)) (cons _L27502_ '()))))
                 (declare (not safe))
                 (cons __tmp32584 __tmp32583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2879929078_ __tmp32582))))
                                           _g2877328784_)))
                                       (__tmp32585
                                        (let ((__tmp32587
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp32586
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L27474_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32587 __tmp32586))))
                                  (declare (not safe))
                                  (_g2877129082_ __tmp32585))))
                            _g2874528756_)))
                        (__tmp32588
                         (let ((__tmp32590
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp32589
                                (let ()
                                  (declare (not safe))
                                  (cons _L27446_ '()))))
                           (declare (not safe))
                           (cons __tmp32590 __tmp32589))))
                   (declare (not safe))
                   (_g2874329086_ __tmp32588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2871728728_)))
                                                 (__tmp32591
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _type-constructor28317_))
                                                      '#f
                                                      (let* ((_g2909429109_
                                                              (lambda (_g2909529105_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2909529105_)))
                     (_g2909329157_
                      (lambda (_g2909529113_)
                        (if (gx#stx-pair? _g2909529113_)
                            (let ((_e2909929116_ (gx#syntax-e _g2909529113_)))
                              (let ((_hd2909829120_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2909929116_)))
                                    (_tl2909729123_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2909929116_))))
                                (if (gx#stx-datum? _hd2909829120_)
                                    (let ((_e2910029126_
                                           (gx#stx-e _hd2909829120_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2910029126_
                                                    'constructor:))
                                          (if (gx#stx-pair? _tl2909729123_)
                                              (let ((_e2910329130_
                                                     (gx#syntax-e
                                                      _tl2909729123_)))
                                                (let ((_hd2910229134_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2910329130_)))
                                                      (_tl2910129137_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2910329130_))))
                                                  (if (gx#stx-null?
                                                       _tl2910129137_)
                                                      ((lambda (_L29140_)
                                                         (let ()
                                                           (let ((__tmp32593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp32592
                          (let () (declare (not safe)) (cons _L29140_ '()))))
                     (declare (not safe))
                     (cons __tmp32593 __tmp32592))))
               _hd2910229134_)
              (let () (declare (not safe)) (_g2909429109_ _g2909529113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2909429109_ _g2909529113_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2909429109_ _g2909529113_))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2909429109_ _g2909529113_)))))
                            (let ()
                              (declare (not safe))
                              (_g2909429109_ _g2909529113_))))))
                (declare (not safe))
                (_g2909329157_ _type-constructor28317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g2871529090_ __tmp32591))))
                                      _g2868928700_)))
                                  (__tmp32594
                                   (if _metaclass28402_
                                       (let* ((_g2916529173_
                                               (lambda (_g2916629169_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g2916629169_)))
                                              (_g2916429192_
                                               (lambda (_g2916629177_)
                                                 ((lambda (_L29180_)
                                                    (let ()
                                                      (let ((__tmp32596
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp32595
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L29180_ '()))))
                (declare (not safe))
                (cons __tmp32596 __tmp32595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2916629177_))))
                                         (declare (not safe))
                                         (_g2916429192_ _metaclass28402_))
                                       '#f)))
                             (declare (not safe))
                             (_g2868729161_ __tmp32594))))
                       _g2866128672_))))
              (declare (not safe))
              (_g2865929196_ _final?28408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2863328644_))))
                                       (declare (not safe))
                                       (_g2863129200_ _struct?27397_))))
                                 _g2860528616_)))
                             (__tmp32597
                              (let ((__tmp32600 (gx#datum->syntax '#f 'quote))
                                    (__tmp32598
                                     (let ((__tmp32599
                                            (foldr (lambda (_g2920729210_
                                                            _g2920829213_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2920729210_
                                                             _g2920829213_)))
                                                   '()
                                                   _L27597_)))
                                       (declare (not safe))
                                       (cons __tmp32599 '()))))
                                (declare (not safe))
                                (cons __tmp32600 __tmp32598))))
                        (declare (not safe))
                        (_g2860329204_ __tmp32597))))
                  _g2857728588_)))
              (__tmp32601
               (let* ((_g2922029237_
                       (lambda (_g2922129233_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2922129233_)))
                      (_g2921929298_
                       (lambda (_g2922129241_)
                         (if (gx#stx-pair/null? _g2922129241_)
                             (let ((_g32602_
                                    (gx#syntax-split-splice _g2922129241_ '0)))
                               (begin
                                 (let ((_g32603_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g32602_)
                                              (##vector-length _g32602_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g32603_ 2)))
                                       (error "Context expects 2 values"
                                              _g32603_)))
                                 (let ((_target2922329244_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g32602_ 0)))
                                       (_tl2922529247_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g32602_ 1))))
                                   (if (gx#stx-null? _tl2922529247_)
                                       (letrec ((_loop2922629250_
                                                 (lambda (_hd2922429254_
                                                          _super-id2923029257_)
                                                   (if (gx#stx-pair?
                                                        _hd2922429254_)
                                                       (let ((_e2922729260_
                                                              (gx#syntax-e
                                                               _hd2922429254_)))
                                                         (let ((_lp-hd2922829264_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2922729260_)))
                       (_lp-tl2922929267_
                        (let () (declare (not safe)) (##cdr _e2922729260_))))
                   (let ((__tmp32609
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2922829264_ _super-id2923029257_))))
                     (declare (not safe))
                     (_loop2922629250_ _lp-tl2922929267_ __tmp32609))))
               (let ((_super-id2923129270_ (reverse _super-id2923029257_)))
                 ((lambda (_L29274_)
                    (let ()
                      (let ((__tmp32608 (gx#datum->syntax '#f '@list))
                            (__tmp32604
                             (foldr (lambda (_g2928929292_ _g2929029295_)
                                      (let ((__tmp32605
                                             (let ((__tmp32607
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp32606
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2928929292_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp32607 __tmp32606))))
                                        (declare (not safe))
                                        (cons __tmp32605 _g2929029295_)))
                                    '()
                                    _L29274_)))
                        (declare (not safe))
                        (cons __tmp32608 __tmp32604))))
                  _super-id2923129270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop2922629250_
                                            _target2922329244_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g2922029237_ _g2922129241_))))))
                             (let ()
                               (declare (not safe))
                               (_g2922029237_ _g2922129241_))))))
                 (declare (not safe))
                 (_g2921929298_ _super-ref27381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2857529216_ __tmp32601))))
                                           _g2854928560_)))
                                       (__tmp32610
                                        (let* ((_g2930629314_
                                                (lambda (_g2930729310_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2930729310_)))
                                               (_g2930529333_
                                                (lambda (_g2930729318_)
                                                  ((lambda (_L29321_)
                                                     (let ()
                                                       (let ((__tmp32612
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp32611
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29321_ '()))))
                 (declare (not safe))
                 (cons __tmp32612 __tmp32611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2930729318_)))
                                               (__tmp32613
                                                (cadr _type-name28295_)))
                                          (declare (not safe))
                                          (_g2930529333_ __tmp32613))))
                                  (declare (not safe))
                                  (_g2854729302_ __tmp32610))))
                            _g2852128532_)))
                        (__tmp32614
                         (let* ((_g2934129356_
                                 (lambda (_g2934229352_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2934229352_)))
                                (_g2934029404_
                                 (lambda (_g2934229360_)
                                   (if (gx#stx-pair? _g2934229360_)
                                       (let ((_e2934629363_
                                              (gx#syntax-e _g2934229360_)))
                                         (let ((_hd2934529367_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2934629363_)))
                                               (_tl2934429370_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2934629363_))))
                                           (if (gx#stx-datum? _hd2934529367_)
                                               (let ((_e2934729373_
                                                      (gx#stx-e
                                                       _hd2934529367_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2934729373_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2934429370_)
                                                         (let ((_e2935029377_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2934429370_)))
                   (let ((_hd2934929381_
                          (let () (declare (not safe)) (##car _e2935029377_)))
                         (_tl2934829384_
                          (let () (declare (not safe)) (##cdr _e2935029377_))))
                     (if (gx#stx-null? _tl2934829384_)
                         ((lambda (_L29387_)
                            (let ()
                              (let ((__tmp32616 (gx#datum->syntax '#f 'quote))
                                    (__tmp32615
                                     (let ()
                                       (declare (not safe))
                                       (cons _L29387_ '()))))
                                (declare (not safe))
                                (cons __tmp32616 __tmp32615))))
                          _hd2934929381_)
                         (let ()
                           (declare (not safe))
                           (_g2934129356_ _g2934229360_)))))
                 (let () (declare (not safe)) (_g2934129356_ _g2934229360_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2934129356_
                                                        _g2934229360_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2934129356_
                                                  _g2934229360_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2934129356_ _g2934229360_))))))
                           (declare (not safe))
                           (_g2934029404_ _type-id28302_))))
                   (declare (not safe))
                   (_g2851929337_ __tmp32614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2849328504_)))
                                                 (__tmp32617
                                                  (let ((__tmp32618
                                                         (let ((__tmp32624
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp32619
                        (let ((__tmp32620
                               (let ((__tmp32621
                                      (let ((__tmp32622
                                             (let ((__tmp32623
                                                    (foldr (lambda (_g2941129414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2941229417_)
                     (let ()
                       (declare (not safe))
                       (cons _g2941129414_ _g2941229417_)))
                   '()
                   _L28471_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L27502_ __tmp32623))))
                                        (declare (not safe))
                                        (cons _L27474_ __tmp32622))))
                                 (declare (not safe))
                                 (cons _L27530_ __tmp32621))))
                          (declare (not safe))
                          (cons _L27446_ __tmp32620))))
                   (declare (not safe))
                   (cons __tmp32624 __tmp32619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27385_ __tmp32618))))
                                            (declare (not safe))
                                            (_g2849129408_ __tmp32617))))
                                      _type-body2842828467_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2842328447_ _target2842028441_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2841728434_ _g2841828438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2841728434_
                                                    _g2841828438_)))))
                                          (__tmp32626
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _type-mixin-slots28288_
                                                           _type-slots28271_)
                                                    _type-properties28392_)
                                             _type-metaclass28405_)
                                      _type-final28414_)
                               _type-struct28411_)
                        _type-constructor28317_)
                 _type-name28295_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-id28302_)))
                                     (declare (not safe))
                                     (_g2841629420_ __tmp32626))))
                               _mixin-usetf2819728236_))))))
              (let ()
                (declare (not safe))
                (_loop2819228216_ _target2818928210_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2818628203_
                                                       _g2818728207_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2818628203_ _g2818728207_)))))
                                   (__tmp32628
                                    (gx#stx-map
                                     (lambda (_g2942729429_)
                                       (_make-id27387_ '"&" _g2942729429_))
                                     (foldr (lambda (_g2943229435_
                                                     _g2943329438_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2943229435_
                                                      _g2943329438_)))
                                            '()
                                            _L27956_))))
                              (declare (not safe))
                              (_g2818529424_ __tmp32628))))
                        _mixin-ugetf2812628165_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_loop2812128145_
                                                  _target2811828139_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_g2811528132_
                                                _g2811628136_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2811528132_ _g2811628136_)))))
                            (__tmp32630
                             (gx#stx-map
                              (lambda (_g2944429446_)
                                (_make-id27387_ '"&" _g2944429446_))
                              (foldr (lambda (_g2944929452_ _g2945029455_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2944929452_ _g2945029455_)))
                                     '()
                                     _L27885_))))
                       (declare (not safe))
                       (_g2811429441_ __tmp32630))))
                 _usetf2805528094_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2805028074_
                                           _target2804728068_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2804428061_ _g2804528065_))))))
                            (let ()
                              (declare (not safe))
                              (_g2804428061_ _g2804528065_)))))
                     (__tmp32632
                      (gx#stx-map
                       (lambda (_g2946129463_)
                         (_make-id27387_ '"&" _g2946129463_))
                       (foldr (lambda (_g2946629469_ _g2946729472_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2946629469_ _g2946729472_)))
                              '()
                              _L27739_))))
                (declare (not safe))
                (_g2804329458_ __tmp32632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ugetf2798428023_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2797928003_ _target2797627997_ '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2797327990_ _g2797427994_))))))
                     (let ()
                       (declare (not safe))
                       (_g2797327990_ _g2797427994_)))))
              (__tmp32634
               (gx#stx-map
                (lambda (_g2947829480_) (_make-id27387_ '"&" _g2947829480_))
                (foldr (lambda (_g2948329486_ _g2948429489_)
                         (let ()
                           (declare (not safe))
                           (cons _g2948329486_ _g2948429489_)))
                       '()
                       _L27668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2797229475_ __tmp32634))))
                                           _mixin-setf2791327952_))))))
                          (let ()
                            (declare (not safe))
                            (_loop2790827932_ _target2790527926_ '())))
                        (let ()
                          (declare (not safe))
                          (_g2790227919_ _g2790327923_))))))
              (let () (declare (not safe)) (_g2790227919_ _g2790327923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp32636
                                                (gx#stx-map
                                                 (lambda (_g2949529497_)
                                                   (_make-id27387_
                                                    _name27391_
                                                    '"-"
                                                    _g2949529497_
                                                    '"-set!"))
                                                 _mixin-slots27756_)))
                                          (declare (not safe))
                                          (_g2790129492_ __tmp32636))))
                                    _mixin-getf2784227881_))))))
                   (let ()
                     (declare (not safe))
                     (_loop2783727861_ _target2783427855_ '())))
                 (let ()
                   (declare (not safe))
                   (_g2783127848_ _g2783227852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2783127848_
                                                  _g2783227852_)))))
                                        (__tmp32638
                                         (gx#stx-map
                                          (lambda (_g2950429506_)
                                            (_make-id27387_
                                             _name27391_
                                             '"-"
                                             _g2950429506_))
                                          _mixin-slots27756_)))
                                   (declare (not safe))
                                   (_g2783029501_ __tmp32638))))
                             _mixin-slot2777027809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop2776527789_
                                                       _target2776227783_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2775927776_
                                                     _g2776027780_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2775927776_ _g2776027780_))))))
                            (declare (not safe))
                            (_g2775829510_ _mixin-slots27756_))))
                      _setf2769627735_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop2769127715_
                                                _target2768827709_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g2768527702_ _g2768627706_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2768527702_ _g2768627706_)))))
                          (__tmp32641
                           (gx#stx-map
                            (lambda (_g2951729519_)
                              (_make-id27387_
                               _name27391_
                               '"-"
                               _g2951729519_
                               '"-set!"))
                            _slots27382_)))
                     (declare (not safe))
                     (_g2768429514_ __tmp32641))))
               _getf2762527664_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop2762027644_
                                         _target2761727638_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g2761427631_ _g2761527635_))))))
                          (let ()
                            (declare (not safe))
                            (_g2761427631_ _g2761527635_)))))
                   (__tmp32643
                    (gx#stx-map
                     (lambda (_g2952629528_)
                       (_make-id27387_ _name27391_ '"-" _g2952629528_))
                     _slots27382_)))
              (declare (not safe))
              (_g2761329523_ __tmp32643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _slot2755427593_))))))
                               (let ()
                                 (declare (not safe))
                                 (_loop2754927573_ _target2754627567_ '())))
                             (let ()
                               (declare (not safe))
                               (_g2754327560_ _g2754427564_))))))
                   (let ()
                     (declare (not safe))
                     (_g2754327560_ _g2754427564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g2754229532_ _slots27382_))))
                                         _g2751627527_)))
                                     (__tmp32645
                                      (map gerbil/core/mop$<MOP:2>#!class-type-descriptor
                                           _super27394_)))
                                (declare (not safe))
                                (_g2751429536_ __tmp32645))))
                          _g2748827499_)))
                      (__tmp32646 (_make-id27387_ _name27391_ '"?")))
                 (declare (not safe))
                 (_g2748629540_ __tmp32646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2746027471_)))
                                               (__tmp32647
                                                (_make-id27387_
                                                 '"make-"
                                                 _name27391_)))
                                          (declare (not safe))
                                          (_g2745829544_ __tmp32647))))
                                    _g2743227443_)))
                                (__tmp32648
                                 (_make-id27387_ _name27391_ '"::t")))
                           (declare (not safe))
                           (_g2743029548_ __tmp32648))))
                     _g2740127412_))))
            (declare (not safe))
            (_g2739929552_ _id27380_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defstruct|
      (lambda (_$stx29616_)
        (let* ((_g2962029639_
                (lambda (_g2962129635_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2962129635_)))
               (_g2961929696_
                (lambda (_g2962129643_)
                  (if (gx#stx-pair? _g2962129643_)
                      (let ((_e2962729646_ (gx#syntax-e _g2962129643_)))
                        (let ((_hd2962629650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2962729646_)))
                              (_tl2962529653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2962729646_))))
                          (if (gx#stx-pair? _tl2962529653_)
                              (let ((_e2963029656_
                                     (gx#syntax-e _tl2962529653_)))
                                (let ((_hd2962929660_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2963029656_)))
                                      (_tl2962829663_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2963029656_))))
                                  (if (gx#stx-pair? _tl2962829663_)
                                      (let ((_e2963329666_
                                             (gx#syntax-e _tl2962829663_)))
                                        (let ((_hd2963229670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2963329666_)))
                                              (_tl2963129673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2963329666_))))
                                          ((lambda (_L29676_ _L29678_ _L29679_)
                                             (let ((__tmp32653
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp32649
                                                    (let ((__tmp32650
                                                           (let ((__tmp32651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32652
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L29676_))))
                            (declare (not safe))
                            (cons 'struct: __tmp32652))))
                     (declare (not safe))
                     (cons _L29678_ __tmp32651))))
              (declare (not safe))
              (cons _L29679_ __tmp32650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32653 __tmp32649)))
                                           _tl2963129673_
                                           _hd2963229670_
                                           _hd2962929660_)))
                                      (_g2962029639_ _g2962129643_))))
                              (_g2962029639_ _g2962129643_))))
                      (_g2962029639_ _g2962129643_)))))
          (_g2961929696_ _$stx29616_))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defclass|
      (lambda (_stx29700_)
        (letrec ((_generate29703_
                  (lambda (_hd29787_ _slots29789_ _body29790_)
                    (let* ((___stx3154631547_ _hd29787_)
                           (_g2979329805_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3154631547_))))
                      (let ((___kont3154931550_
                             (lambda (_L29833_ _L29835_)
                               (let ((__tmp32654 (gx#syntax->list _L29833_)))
                                 (declare (not safe))
                                 (|gerbil/core/mop$<MOP:4>[1]#generate-defclass|
                                  _stx29700_
                                  _L29835_
                                  __tmp32654
                                  _slots29789_
                                  _body29790_))))
                            (___kont3155131552_
                             (lambda ()
                               (if (gx#identifier? _hd29787_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/mop$<MOP:4>[1]#generate-defclass|
                                      _stx29700_
                                      _hd29787_
                                      '()
                                      _slots29789_
                                      _body29790_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx29700_
                                    _hd29787_)))))
                        (let ((___match3155931560_
                               (lambda (_e2979929823_
                                        _hd2979829827_
                                        _tl2979729830_)
                                 (let ((_L29833_ _tl2979729830_)
                                       (_L29835_ _hd2979829827_))
                                   (if (and (gx#stx-list? _L29833_)
                                            (gx#stx-andmap
                                             gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
                                             _L29833_))
                                       (___kont3154931550_ _L29833_ _L29835_)
                                       (___kont3155131552_))))))
                          (if (gx#stx-pair? ___stx3154631547_)
                              (let ((_e2979929823_
                                     (gx#syntax-e ___stx3154631547_)))
                                (let ((_tl2979729830_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2979929823_)))
                                      (_hd2979829827_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2979929823_))))
                                  (___match3155931560_
                                   _e2979929823_
                                   _hd2979829827_
                                   _tl2979729830_)))
                              (___kont3155131552_))))))))
          (let* ((_g2970629725_
                  (lambda (_g2970729721_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2970729721_)))
                 (_g2970529783_
                  (lambda (_g2970729729_)
                    (if (gx#stx-pair? _g2970729729_)
                        (let ((_e2971329732_ (gx#syntax-e _g2970729729_)))
                          (let ((_hd2971229736_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2971329732_)))
                                (_tl2971129739_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2971329732_))))
                            (if (gx#stx-pair? _tl2971129739_)
                                (let ((_e2971629742_
                                       (gx#syntax-e _tl2971129739_)))
                                  (let ((_hd2971529746_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2971629742_)))
                                        (_tl2971429749_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2971629742_))))
                                    (if (gx#stx-pair? _tl2971429749_)
                                        (let ((_e2971929752_
                                               (gx#syntax-e _tl2971429749_)))
                                          (let ((_hd2971829756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2971929752_)))
                                                (_tl2971729759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2971929752_))))
                                            ((lambda (_L29762_
                                                      _L29764_
                                                      _L29765_)
                                               (if (and (gx#identifier-list?
                                                         _L29764_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core/mop$<MOP:4>[1]#typedef-body?|
                                                           _L29762_)))
                                                   (_generate29703_
                                                    _L29765_
                                                    _L29764_
                                                    _L29762_)
                                                   (_g2970629725_
                                                    _g2970729729_)))
                                             _tl2971729759_
                                             _hd2971829756_
                                             _hd2971529746_)))
                                        (_g2970629725_ _g2970729729_))))
                                (_g2970629725_ _g2970729729_))))
                        (_g2970629725_ _g2970729729_)))))
            (_g2970529783_ _stx29700_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defmethod|
      (lambda (_stx29852_)
        (letrec ((_wrap29855_
                  (lambda (_e-stx30192_)
                    (gx#stx-wrap-source
                     _e-stx30192_
                     (gx#stx-source _stx29852_))))
                 (_method-opt?29857_
                  (lambda (_x30189_) (memq (gx#stx-e _x30189_) '(rebind:)))))
          (let* ((_g2985929888_
                  (lambda (_g2986029884_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2986029884_)))
                 (_g2985830185_
                  (lambda (_g2986029892_)
                    (if (gx#stx-pair? _g2986029892_)
                        (let ((_e2986729895_ (gx#syntax-e _g2986029892_)))
                          (let ((_hd2986629899_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2986729895_)))
                                (_tl2986529902_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2986729895_))))
                            (if (gx#stx-pair? _tl2986529902_)
                                (let ((_e2987029905_
                                       (gx#syntax-e _tl2986529902_)))
                                  (let ((_hd2986929909_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2987029905_)))
                                        (_tl2986829912_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2987029905_))))
                                    (if (gx#stx-pair? _hd2986929909_)
                                        (let ((_e2987329915_
                                               (gx#syntax-e _hd2986929909_)))
                                          (let ((_hd2987229919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2987329915_)))
                                                (_tl2987129922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2987329915_))))
                                            (if (gx#identifier? _hd2987229919_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop$<MOP:4>[1]#_g32705_|
                                                     _hd2987229919_)
                                                    (if (gx#stx-pair?
                                                         _tl2987129922_)
                                                        (let ((_e2987629925_
                                                               (gx#syntax-e
                                                                _tl2987129922_)))
                                                          (let ((_hd2987529929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2987629925_)))
                        (_tl2987429932_
                         (let () (declare (not safe)) (##cdr _e2987629925_))))
                    (if (gx#stx-pair? _tl2987429932_)
                        (let ((_e2987929935_ (gx#syntax-e _tl2987429932_)))
                          (let ((_hd2987829939_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2987929935_)))
                                (_tl2987729942_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2987929935_))))
                            (if (gx#stx-null? _tl2987729942_)
                                (if (gx#stx-pair? _tl2986829912_)
                                    (let ((_e2988229945_
                                           (gx#syntax-e _tl2986829912_)))
                                      (let ((_hd2988129949_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2988229945_)))
                                            (_tl2988029952_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2988229945_))))
                                        ((lambda (_L29955_
                                                  _L29957_
                                                  _L29958_
                                                  _L29959_)
                                           (if (and (gx#identifier? _L29959_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                                                       _L29958_))
                                                    (gx#stx-plist?
                                                     _L29955_
                                                     _method-opt?29857_))
                                               (let* ((_klass29984_
                                                       (gx#syntax-local-value
                                                        _L29958_))
                                                      (_rebind?29987_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _L29955_)))
                                                      (_g2999029998_
                                                       (lambda (_g2999129994_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2999129994_)))
                                                      (_g2998930181_
                                                       (lambda (_g2999130002_)
                                                         ((lambda (_L30005_)
                                                            (let ()
                                                              (let* ((_g3001930027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3002030023_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3002030023_)))
                             (_g3001830177_
                              (lambda (_g3002030031_)
                                ((lambda (_L30034_)
                                   (let ()
                                     (let* ((_g3004730055_
                                             (lambda (_g3004830051_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3004830051_)))
                                            (_g3004630173_
                                             (lambda (_g3004830059_)
                                               ((lambda (_L30062_)
                                                  (let ()
                                                    (let* ((_g3007530083_
                                                            (lambda (_g3007630079_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g3007630079_)))
                                                           (_g3007430169_
                                                            (lambda (_g3007630087_)
                                                              ((lambda (_L30090_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g3010330111_
                                   (lambda (_g3010430107_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3010430107_)))
                                  (_g3010230165_
                                   (lambda (_g3010430115_)
                                     ((lambda (_L30118_)
                                        (let ()
                                          (let* ((_g3013130139_
                                                  (lambda (_g3013230135_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3013230135_)))
                                                 (_g3013030161_
                                                  (lambda (_g3013230143_)
                                                    ((lambda (_L30146_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap29855_
                                                            (let ((__tmp32659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp32657
                           (let ((__tmp32658
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30146_ '()))))
                             (declare (not safe))
                             (cons _L30090_ __tmp32658))))
                      (declare (not safe))
                      (cons __tmp32659 __tmp32657))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3013230143_))))
                                            (_g3013030161_
                                             (_wrap29855_
                                              (let ((__tmp32667
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp32660
                                                     (let ((__tmp32661
                                                            (let ((__tmp32664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32666 (gx#datum->syntax '#f 'quote))
                                 (__tmp32665
                                  (let ()
                                    (declare (not safe))
                                    (cons _L29959_ '()))))
                             (declare (not safe))
                             (cons __tmp32666 __tmp32665)))
                          (__tmp32662
                           (let ((__tmp32663
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30118_ '()))))
                             (declare (not safe))
                             (cons _L30034_ __tmp32663))))
                      (declare (not safe))
                      (cons __tmp32664 __tmp32662))))
               (declare (not safe))
               (cons _L30005_ __tmp32661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32667
                                                      __tmp32660)))))))
                                      _g3010430115_))))
                             (_g3010230165_ _rebind?29987_))))
                       _g3007630087_))))
              (_g3007430169_
               (_wrap29855_
                (let ((__tmp32704 (gx#datum->syntax '#f 'def))
                      (__tmp32668
                       (let ((__tmp32669
                              (let ((__tmp32670
                                     (let ((__tmp32703
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp32671
                                            (let ((__tmp32673
                                                   (let ((__tmp32674
                                                          (let ((__tmp32675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp32676
                                (let ((__tmp32702
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp32677
                                       (let ((__tmp32678
                                              (let ((__tmp32679
                                                     (let ((__tmp32694
                                                            (let ((__tmp32701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp32695
                           (let ((__tmp32700 (gx#datum->syntax '#f 'obj))
                                 (__tmp32696
                                  (let ((__tmp32699
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp32697
                                         (let ((__tmp32698
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp32698 '()))))
                                    (declare (not safe))
                                    (cons __tmp32699 __tmp32697))))
                             (declare (not safe))
                             (cons __tmp32700 __tmp32696))))
                      (declare (not safe))
                      (cons __tmp32701 __tmp32695)))
                   (__tmp32680
                    (let ((__tmp32681
                           (let ((__tmp32693
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp32682
                                  (let ((__tmp32683
                                         (let ((__tmp32692
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp32684
                                                (let ((__tmp32689
                                                       (let ((__tmp32691
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp32690
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29959_ '()))))
                 (declare (not safe))
                 (cons __tmp32691 __tmp32690)))
              (__tmp32685
               (let ((__tmp32688 (gx#datum->syntax '#f 'arg))
                     (__tmp32686
                      (let ((__tmp32687 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp32687 '()))))
                 (declare (not safe))
                 (cons __tmp32688 __tmp32686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp32689
                                                        __tmp32685))))
                                           (declare (not safe))
                                           (cons __tmp32692 __tmp32684))))
                                    (declare (not safe))
                                    (cons _L30005_ __tmp32683))))
                             (declare (not safe))
                             (cons __tmp32693 __tmp32682))))
                      (declare (not safe))
                      (cons __tmp32681 '()))))
               (declare (not safe))
               (cons __tmp32694 __tmp32680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32679 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp32678))))
                                  (declare (not safe))
                                  (cons __tmp32702 __tmp32677))))
                           (declare (not safe))
                           (cons __tmp32676 '()))))
                    (declare (not safe))
                    (cons _L30062_ __tmp32675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32674 '())))
                                                  (__tmp32672
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L29957_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32673 __tmp32672))))
                                       (declare (not safe))
                                       (cons __tmp32703 __tmp32671))))
                                (declare (not safe))
                                (cons __tmp32670 '()))))
                         (declare (not safe))
                         (cons _L30034_ __tmp32669))))
                  (declare (not safe))
                  (cons __tmp32704 __tmp32668)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3004830059_))))
                                       (_g3004630173_
                                        (gx#stx-identifier
                                         _L29958_
                                         '@next-method)))))
                                 _g3002030031_))))
                        (_g3001830177_
                         (gx#stx-identifier
                          _L29958_
                          _L29958_
                          '"::"
                          _L29959_)))))
                  _g2999130002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2998930181_
                                                  (let ((__obj31823
                                                         _klass29984_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj31823
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj31823
                                                           '10
                                                           gerbil/core/mop$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop$<MOP:2>#class-type-info::t
                                                         __obj31823
                                                         'type-descriptor)))))
                                               (if (let ((__tmp32656
                                                          (gx#identifier?
                                                           _L29959_)))
                                                     (declare (not safe))
                                                     (not __tmp32656))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx29852_
                                                    _L29959_)
                                                   (if (let ((__tmp32655
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                         _L29958_))))
                 (declare (not safe))
                 (not __tmp32655))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx29852_
                _L29958_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx29852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2988029952_
                                         _hd2988129949_
                                         _hd2987829939_
                                         _hd2987529929_)))
                                    (_g2985929888_ _g2986029892_))
                                (_g2985929888_ _g2986029892_))))
                        (_g2985929888_ _g2986029892_))))
                (_g2985929888_ _g2986029892_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2985929888_
                                                     _g2986029892_))
                                                (_g2985929888_
                                                 _g2986029892_))))
                                        (_g2985929888_ _g2986029892_))))
                                (_g2985929888_ _g2986029892_))))
                        (_g2985929888_ _g2986029892_)))))
            (_g2985830185_ _stx29852_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@method|
      (lambda (_stx30195_)
        (letrec ((_dotted-identifier?30198_
                  (lambda (_id30831_)
                    (if (gx#identifier? _id30831_)
                        (let ((_id-str30834_
                               (symbol->string (gx#stx-e _id30831_))))
                          (if (string-index _id-str30834_ '#\.)
                              (let ((_split30837_
                                     (string-split _id-str30834_ '#\.)))
                                (fx= (length _split30837_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted30200_
                  (lambda (_id30820_)
                    (let* ((_id-str30823_
                            (symbol->string (gx#stx-e _id30820_)))
                           (_split30826_ (string-split _id-str30823_ '#\.)))
                      (let ((__tmp32708
                             (gx#stx-identifier _id30820_ (car _split30826_)))
                            (__tmp32706
                             (let ((__tmp32707
                                    (gx#stx-identifier
                                     _id30820_
                                     (cadr _split30826_))))
                               (declare (not safe))
                               (cons __tmp32707 '()))))
                        (declare (not safe))
                        (cons __tmp32708 __tmp32706))))))
          (let* ((___stx3156231563_ _stx30195_)
                 (_g3020530292_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3156231563_))))
            (let ((___kont3156531566_
                   (lambda (_L30713_ _L30715_ _L30716_)
                     (let* ((_g3074430759_
                             (lambda (_g3074530755_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3074530755_)))
                            (_g3074330812_
                             (lambda (_g3074530763_)
                               (if (gx#stx-pair? _g3074530763_)
                                   (let ((_e3075030766_
                                          (gx#syntax-e _g3074530763_)))
                                     (let ((_hd3074930770_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3075030766_)))
                                           (_tl3074830773_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3075030766_))))
                                       (if (gx#stx-pair? _tl3074830773_)
                                           (let ((_e3075330776_
                                                  (gx#syntax-e
                                                   _tl3074830773_)))
                                             (let ((_hd3075230780_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3075330776_)))
                                                   (_tl3075130783_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3075330776_))))
                                               (if (gx#stx-null?
                                                    _tl3075130783_)
                                                   ((lambda (_L30786_ _L30788_)
                                                      (let ()
                                                        (let ((__tmp32720
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp32709
                                                               (let ((__tmp32719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp32710
                              (let ((__tmp32711
                                     (let ((__tmp32716
                                            (let ((__tmp32718
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32717
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L30786_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32718 __tmp32717)))
                                           (__tmp32712
                                            (let ((__tmp32713
                                                   (let ((__tmp32715
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp32714
                                                          (foldr (lambda (_g3080330806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3080430809_)
                           (let ()
                             (declare (not safe))
                             (cons _g3080330806_ _g3080430809_)))
                         '()
                         _L30715_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32715
                                                           __tmp32714))))
                                              (declare (not safe))
                                              (cons __tmp32713 '()))))
                                       (declare (not safe))
                                       (cons __tmp32716 __tmp32712))))
                                (declare (not safe))
                                (cons _L30788_ __tmp32711))))
                         (declare (not safe))
                         (cons __tmp32719 __tmp32710))))
                  (declare (not safe))
                  (cons __tmp32720 __tmp32709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3075230780_
                                                    _hd3074930770_)
                                                   (_g3074430759_
                                                    _g3074530763_))))
                                           (_g3074430759_ _g3074530763_))))
                                   (_g3074430759_ _g3074530763_)))))
                       (_g3074330812_ (_split-dotted30200_ _L30716_)))))
                  (___kont3156931570_
                   (lambda (_L30555_ _L30557_)
                     (let* ((_g3057430589_
                             (lambda (_g3057530585_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3057530585_)))
                            (_g3057330642_
                             (lambda (_g3057530593_)
                               (if (gx#stx-pair? _g3057530593_)
                                   (let ((_e3058030596_
                                          (gx#syntax-e _g3057530593_)))
                                     (let ((_hd3057930600_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3058030596_)))
                                           (_tl3057830603_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3058030596_))))
                                       (if (gx#stx-pair? _tl3057830603_)
                                           (let ((_e3058330606_
                                                  (gx#syntax-e
                                                   _tl3057830603_)))
                                             (let ((_hd3058230610_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3058330606_)))
                                                   (_tl3058130613_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3058330606_))))
                                               (if (gx#stx-null?
                                                    _tl3058130613_)
                                                   ((lambda (_L30616_ _L30618_)
                                                      (let ()
                                                        (let ((__tmp32727
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp32721
                                                               (let ((__tmp32722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp32724
                                     (let ((__tmp32726
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp32725
                                            (let ()
                                              (declare (not safe))
                                              (cons _L30616_ '()))))
                                       (declare (not safe))
                                       (cons __tmp32726 __tmp32725)))
                                    (__tmp32723
                                     (foldr (lambda (_g3063330636_
                                                     _g3063430639_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3063330636_
                                                      _g3063430639_)))
                                            '()
                                            _L30555_)))
                                (declare (not safe))
                                (cons __tmp32724 __tmp32723))))
                         (declare (not safe))
                         (cons _L30618_ __tmp32722))))
                  (declare (not safe))
                  (cons __tmp32727 __tmp32721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3058230610_
                                                    _hd3057930600_)
                                                   (_g3057430589_
                                                    _g3057530593_))))
                                           (_g3057430589_ _g3057530593_))))
                                   (_g3057430589_ _g3057530593_)))))
                       (_g3057330642_ (_split-dotted30200_ _L30557_)))))
                  (___kont3157331574_
                   (lambda (_L30459_ _L30461_ _L30462_)
                     (let ((__tmp32739 (gx#datum->syntax '#f 'apply))
                           (__tmp32728
                            (let ((__tmp32738
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp32729
                                   (let ((__tmp32730
                                          (let ((__tmp32735
                                                 (let ((__tmp32737
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp32736
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L30462_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32737
                                                         __tmp32736)))
                                                (__tmp32731
                                                 (let ((__tmp32732
                                                        (let ((__tmp32734
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp32733
                                                               (foldr (lambda (_g3048930492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3049030495_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3048930492_ _g3049030495_)))
                              '()
                              _L30459_)))
                  (declare (not safe))
                  (cons __tmp32734 __tmp32733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp32732 '()))))
                                            (declare (not safe))
                                            (cons __tmp32735 __tmp32731))))
                                     (declare (not safe))
                                     (cons _L30461_ __tmp32730))))
                              (declare (not safe))
                              (cons __tmp32738 __tmp32729))))
                       (declare (not safe))
                       (cons __tmp32739 __tmp32728))))
                  (___kont3157731578_
                   (lambda (_L30359_ _L30361_ _L30362_)
                     (let ((__tmp32746 (gx#datum->syntax '#f 'call-method))
                           (__tmp32740
                            (let ((__tmp32741
                                   (let ((__tmp32743
                                          (let ((__tmp32745
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp32744
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30362_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32745 __tmp32744)))
                                         (__tmp32742
                                          (foldr (lambda (_g3038330386_
                                                          _g3038430389_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g3038330386_
                                                           _g3038430389_)))
                                                 '()
                                                 _L30359_)))
                                     (declare (not safe))
                                     (cons __tmp32743 __tmp32742))))
                              (declare (not safe))
                              (cons _L30361_ __tmp32741))))
                       (declare (not safe))
                       (cons __tmp32746 __tmp32740)))))
              (let* ((___match3168131682_
                      (lambda (_e3027130299_
                               _hd3027030303_
                               _tl3026930306_
                               _e3027430309_
                               _hd3027330313_
                               _tl3027230316_
                               _e3027730319_
                               _hd3027630323_
                               _tl3027530326_
                               ___splice3157931580_
                               _target3027830329_
                               _tl3028030332_)
                        (letrec ((_loop3028130335_
                                  (lambda (_hd3027930339_ _arg3028530342_)
                                    (if (gx#stx-pair? _hd3027930339_)
                                        (let ((_e3028230345_
                                               (gx#syntax-e _hd3027930339_)))
                                          (let ((_lp-tl3028430352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3028230345_)))
                                                (_lp-hd3028330349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3028230345_))))
                                            (_loop3028130335_
                                             _lp-tl3028430352_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3028330349_
                                                     _arg3028530342_)))))
                                        (let ((_arg3028630355_
                                               (reverse _arg3028530342_)))
                                          (let ((_L30359_ _arg3028630355_)
                                                (_L30361_ _hd3027630323_)
                                                (_L30362_ _hd3027330313_))
                                            (if (gx#identifier? _L30362_)
                                                (___kont3157731578_
                                                 _L30359_
                                                 _L30361_
                                                 _L30362_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3020530292_)))))))))
                          (_loop3028130335_ _target3027830329_ '()))))
                     (___match3165531656_
                      (lambda (_e3025030399_
                               _hd3024930403_
                               _tl3024830406_
                               _e3025330409_
                               _hd3025230413_
                               _tl3025130416_
                               _e3025630419_
                               _hd3025530423_
                               _tl3025430426_
                               ___splice3157531576_
                               _target3025730429_
                               _tl3025930432_)
                        (letrec ((_loop3026030435_
                                  (lambda (_hd3025830439_ _arg3026430442_)
                                    (if (gx#stx-pair? _hd3025830439_)
                                        (let ((_e3026130445_
                                               (gx#syntax-e _hd3025830439_)))
                                          (let ((_lp-tl3026330452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3026130445_)))
                                                (_lp-hd3026230449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3026130445_))))
                                            (_loop3026030435_
                                             _lp-tl3026330452_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3026230449_
                                                     _arg3026430442_)))))
                                        (let ((_arg3026530455_
                                               (reverse _arg3026430442_)))
                                          (let ((_L30459_ _arg3026530455_)
                                                (_L30461_ _hd3025530423_)
                                                (_L30462_ _hd3025230413_))
                                            (if (and (gx#identifier? _L30462_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g3048130484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3048230487_)
                       (let ()
                         (declare (not safe))
                         (cons _g3048130484_ _g3048230487_)))
                     '()
                     _L30459_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3157331574_
                                                 _L30459_
                                                 _L30461_
                                                 _L30462_)
                                                (___match3168131682_
                                                 _e3025030399_
                                                 _hd3024930403_
                                                 _tl3024830406_
                                                 _e3025330409_
                                                 _hd3025230413_
                                                 _tl3025130416_
                                                 _e3025630419_
                                                 _hd3025530423_
                                                 _tl3025430426_
                                                 ___splice3157531576_
                                                 _target3025730429_
                                                 _tl3025930432_))))))))
                          (_loop3026030435_ _target3025730429_ '()))))
                     (___match3164131642_
                      (lambda (_e3025030399_
                               _hd3024930403_
                               _tl3024830406_
                               _e3025330409_
                               _hd3025230413_
                               _tl3025130416_)
                        (if (gx#stx-pair? _tl3025130416_)
                            (let ((_e3025630419_ (gx#syntax-e _tl3025130416_)))
                              (let ((_tl3025430426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3025630419_)))
                                    (_hd3025530423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3025630419_))))
                                (if (gx#stx-pair/null? _tl3025430426_)
                                    (let ((___splice3157531576_
                                           (gx#syntax-split-splice
                                            _tl3025430426_
                                            '0)))
                                      (let ((_tl3025930432_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3157531576_
                                                '1)))
                                            (_target3025730429_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3157531576_
                                                '0))))
                                        (if (gx#stx-null? _tl3025930432_)
                                            (___match3165531656_
                                             _e3025030399_
                                             _hd3024930403_
                                             _tl3024830406_
                                             _e3025330409_
                                             _hd3025230413_
                                             _tl3025130416_
                                             _e3025630419_
                                             _hd3025530423_
                                             _tl3025430426_
                                             ___splice3157531576_
                                             _target3025730429_
                                             _tl3025930432_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3020530292_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3020530292_)))))
                            (let () (declare (not safe)) (_g3020530292_)))))
                     (___match3162931630_
                      (lambda (_e3023230505_
                               _hd3023130509_
                               _tl3023030512_
                               _e3023530515_
                               _hd3023430519_
                               _tl3023330522_
                               ___splice3157131572_
                               _target3023630525_
                               _tl3023830528_)
                        (letrec ((_loop3023930531_
                                  (lambda (_hd3023730535_ _arg3024330538_)
                                    (if (gx#stx-pair? _hd3023730535_)
                                        (let ((_e3024030541_
                                               (gx#syntax-e _hd3023730535_)))
                                          (let ((_lp-tl3024230548_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3024030541_)))
                                                (_lp-hd3024130545_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3024030541_))))
                                            (_loop3023930531_
                                             _lp-tl3024230548_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3024130545_
                                                     _arg3024330538_)))))
                                        (let ((_arg3024430551_
                                               (reverse _arg3024330538_)))
                                          (let ((_L30555_ _arg3024430551_)
                                                (_L30557_ _hd3023430519_))
                                            (if (_dotted-identifier?30198_
                                                 _L30557_)
                                                (___kont3156931570_
                                                 _L30555_
                                                 _L30557_)
                                                (___match3164131642_
                                                 _e3023230505_
                                                 _hd3023130509_
                                                 _tl3023030512_
                                                 _e3023530515_
                                                 _hd3023430519_
                                                 _tl3023330522_))))))))
                          (_loop3023930531_ _target3023630525_ '()))))
                     (___match3162731628_
                      (lambda (_e3023230505_
                               _hd3023130509_
                               _tl3023030512_
                               _e3023530515_
                               _hd3023430519_
                               _tl3023330522_
                               ___splice3157131572_
                               _target3023630525_
                               _tl3023830528_)
                        (if (gx#stx-null? _tl3023830528_)
                            (___match3162931630_
                             _e3023230505_
                             _hd3023130509_
                             _tl3023030512_
                             _e3023530515_
                             _hd3023430519_
                             _tl3023330522_
                             ___splice3157131572_
                             _target3023630525_
                             _tl3023830528_)
                            (if (gx#stx-pair? _tl3023330522_)
                                (let ((_e3025630419_
                                       (gx#syntax-e _tl3023330522_)))
                                  (let ((_tl3025430426_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3025630419_)))
                                        (_hd3025530423_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3025630419_))))
                                    (if (gx#stx-pair/null? _tl3025430426_)
                                        (let ((___splice3157531576_
                                               (gx#syntax-split-splice
                                                _tl3025430426_
                                                '0)))
                                          (let ((_tl3025930432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157531576_
                                                    '1)))
                                                (_target3025730429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157531576_
                                                    '0))))
                                            (if (gx#stx-null? _tl3025930432_)
                                                (___match3165531656_
                                                 _e3023230505_
                                                 _hd3023130509_
                                                 _tl3023030512_
                                                 _e3023530515_
                                                 _hd3023430519_
                                                 _tl3023330522_
                                                 _e3025630419_
                                                 _hd3025530423_
                                                 _tl3025430426_
                                                 ___splice3157531576_
                                                 _target3025730429_
                                                 _tl3025930432_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3020530292_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3020530292_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3020530292_))))))
                     (___match3160931610_
                      (lambda (_e3021230653_
                               _hd3021130657_
                               _tl3021030660_
                               _e3021530663_
                               _hd3021430667_
                               _tl3021330670_
                               ___splice3156731568_
                               _target3021630673_
                               _tl3021830676_
                               _e3022730679_
                               _hd3022630683_
                               _tl3022530686_)
                        (letrec ((_loop3021930689_
                                  (lambda (_hd3021730693_ _arg3022330696_)
                                    (if (gx#stx-pair? _hd3021730693_)
                                        (let ((_e3022030699_
                                               (gx#syntax-e _hd3021730693_)))
                                          (let ((_lp-tl3022230706_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3022030699_)))
                                                (_lp-hd3022130703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3022030699_))))
                                            (_loop3021930689_
                                             _lp-tl3022230706_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3022130703_
                                                     _arg3022330696_)))))
                                        (let ((_arg3022430709_
                                               (reverse _arg3022330696_)))
                                          (let ((_L30713_ _hd3022630683_)
                                                (_L30715_ _arg3022430709_)
                                                (_L30716_ _hd3021430667_))
                                            (if (and (_dotted-identifier?30198_
                                                      _L30716_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g3073530738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3073630741_)
                       (let ()
                         (declare (not safe))
                         (cons _g3073530738_ _g3073630741_)))
                     '()
                     _L30715_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3156531566_
                                                 _L30713_
                                                 _L30715_
                                                 _L30716_)
                                                (let ((___splice3157131572_
                                                       (gx#syntax-split-splice
                                                        _tl3021330670_
                                                        '0)))
                                                  (let ((_tl3023830528_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157131572_
                                                            '1)))
                                                        (_target3023630525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157131572_
                                                            '0))))
                                                    (___match3162731628_
                                                     _e3021230653_
                                                     _hd3021130657_
                                                     _tl3021030660_
                                                     _e3021530663_
                                                     _hd3021430667_
                                                     _tl3021330670_
                                                     ___splice3157131572_
                                                     _target3023630525_
                                                     _tl3023830528_))))))))))
                          (_loop3021930689_ _target3021630673_ '())))))
                (if (gx#stx-pair? ___stx3156231563_)
                    (let ((_e3021230653_ (gx#syntax-e ___stx3156231563_)))
                      (let ((_tl3021030660_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3021230653_)))
                            (_hd3021130657_
                             (let ()
                               (declare (not safe))
                               (##car _e3021230653_))))
                        (if (gx#stx-pair? _tl3021030660_)
                            (let ((_e3021530663_ (gx#syntax-e _tl3021030660_)))
                              (let ((_tl3021330670_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3021530663_)))
                                    (_hd3021430667_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3021530663_))))
                                (if (gx#stx-pair/null? _tl3021330670_)
                                    (if (fx>= (gx#stx-length _tl3021330670_)
                                              '1)
                                        (let ((___splice3156731568_
                                               (gx#syntax-split-splice
                                                _tl3021330670_
                                                '1)))
                                          (let ((_tl3021830676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3156731568_
                                                    '1)))
                                                (_target3021630673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3156731568_
                                                    '0))))
                                            (if (gx#stx-pair? _tl3021830676_)
                                                (let ((_e3022730679_
                                                       (gx#syntax-e
                                                        _tl3021830676_)))
                                                  (let ((_tl3022530686_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3022730679_)))
                                                        (_hd3022630683_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3022730679_))))
                                                    (if (gx#stx-null?
                                                         _tl3022530686_)
                                                        (___match3160931610_
                                                         _e3021230653_
                                                         _hd3021130657_
                                                         _tl3021030660_
                                                         _e3021530663_
                                                         _hd3021430667_
                                                         _tl3021330670_
                                                         ___splice3156731568_
                                                         _target3021630673_
                                                         _tl3021830676_
                                                         _e3022730679_
                                                         _hd3022630683_
                                                         _tl3022530686_)
                                                        (let ((___splice3157131572_
                                                               (gx#syntax-split-splice
                                                                _tl3021330670_
                                                                '0)))
                                                          (let ((_tl3023830528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3157131572_ '1)))
                        (_target3023630525_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3157131572_ '0))))
                    (if (gx#stx-null? _tl3023830528_)
                        (___match3162931630_
                         _e3021230653_
                         _hd3021130657_
                         _tl3021030660_
                         _e3021530663_
                         _hd3021430667_
                         _tl3021330670_
                         ___splice3157131572_
                         _target3023630525_
                         _tl3023830528_)
                        (if (gx#stx-pair? _tl3021330670_)
                            (let ((_e3025630419_ (gx#syntax-e _tl3021330670_)))
                              (let ((_tl3025430426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3025630419_)))
                                    (_hd3025530423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3025630419_))))
                                (if (gx#stx-pair/null? _tl3025430426_)
                                    (let ((___splice3157531576_
                                           (gx#syntax-split-splice
                                            _tl3025430426_
                                            '0)))
                                      (let ((_tl3025930432_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3157531576_
                                                '1)))
                                            (_target3025730429_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3157531576_
                                                '0))))
                                        (if (gx#stx-null? _tl3025930432_)
                                            (___match3165531656_
                                             _e3021230653_
                                             _hd3021130657_
                                             _tl3021030660_
                                             _e3021530663_
                                             _hd3021430667_
                                             _tl3021330670_
                                             _e3025630419_
                                             _hd3025530423_
                                             _tl3025430426_
                                             ___splice3157531576_
                                             _target3025730429_
                                             _tl3025930432_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3020530292_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3020530292_)))))
                            (let ()
                              (declare (not safe))
                              (_g3020530292_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice3157131572_
                                                       (gx#syntax-split-splice
                                                        _tl3021330670_
                                                        '0)))
                                                  (let ((_tl3023830528_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157131572_
                                                            '1)))
                                                        (_target3023630525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157131572_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3023830528_)
                                                        (___match3162931630_
                                                         _e3021230653_
                                                         _hd3021130657_
                                                         _tl3021030660_
                                                         _e3021530663_
                                                         _hd3021430667_
                                                         _tl3021330670_
                                                         ___splice3157131572_
                                                         _target3023630525_
                                                         _tl3023830528_)
                                                        (if (gx#stx-pair?
                                                             _tl3021330670_)
                                                            (let ((_e3025630419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3021330670_)))
                      (let ((_tl3025430426_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3025630419_)))
                            (_hd3025530423_
                             (let ()
                               (declare (not safe))
                               (##car _e3025630419_))))
                        (if (gx#stx-pair/null? _tl3025430426_)
                            (let ((___splice3157531576_
                                   (gx#syntax-split-splice _tl3025430426_ '0)))
                              (let ((_tl3025930432_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3157531576_ '1)))
                                    (_target3025730429_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3157531576_
                                        '0))))
                                (if (gx#stx-null? _tl3025930432_)
                                    (___match3165531656_
                                     _e3021230653_
                                     _hd3021130657_
                                     _tl3021030660_
                                     _e3021530663_
                                     _hd3021430667_
                                     _tl3021330670_
                                     _e3025630419_
                                     _hd3025530423_
                                     _tl3025430426_
                                     ___splice3157531576_
                                     _target3025730429_
                                     _tl3025930432_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3020530292_)))))
                            (let () (declare (not safe)) (_g3020530292_)))))
                    (let () (declare (not safe)) (_g3020530292_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice3157131572_
                                               (gx#syntax-split-splice
                                                _tl3021330670_
                                                '0)))
                                          (let ((_tl3023830528_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157131572_
                                                    '1)))
                                                (_target3023630525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157131572_
                                                    '0))))
                                            (if (gx#stx-null? _tl3023830528_)
                                                (___match3162931630_
                                                 _e3021230653_
                                                 _hd3021130657_
                                                 _tl3021030660_
                                                 _e3021530663_
                                                 _hd3021430667_
                                                 _tl3021330670_
                                                 ___splice3157131572_
                                                 _target3023630525_
                                                 _tl3023830528_)
                                                (if (gx#stx-pair?
                                                     _tl3021330670_)
                                                    (let ((_e3025630419_
                                                           (gx#syntax-e
                                                            _tl3021330670_)))
                                                      (let ((_tl3025430426_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3025630419_)))
                    (_hd3025530423_
                     (let () (declare (not safe)) (##car _e3025630419_))))
                (if (gx#stx-pair/null? _tl3025430426_)
                    (let ((___splice3157531576_
                           (gx#syntax-split-splice _tl3025430426_ '0)))
                      (let ((_tl3025930432_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3157531576_ '1)))
                            (_target3025730429_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3157531576_ '0))))
                        (if (gx#stx-null? _tl3025930432_)
                            (___match3165531656_
                             _e3021230653_
                             _hd3021130657_
                             _tl3021030660_
                             _e3021530663_
                             _hd3021430667_
                             _tl3021330670_
                             _e3025630419_
                             _hd3025530423_
                             _tl3025430426_
                             ___splice3157531576_
                             _target3025730429_
                             _tl3025930432_)
                            (let () (declare (not safe)) (_g3020530292_)))))
                    (let () (declare (not safe)) (_g3020530292_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3020530292_)))))))
                                    (if (gx#stx-pair? _tl3021330670_)
                                        (let ((_e3025630419_
                                               (gx#syntax-e _tl3021330670_)))
                                          (let ((_tl3025430426_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3025630419_)))
                                                (_hd3025530423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3025630419_))))
                                            (if (gx#stx-pair/null?
                                                 _tl3025430426_)
                                                (let ((___splice3157531576_
                                                       (gx#syntax-split-splice
                                                        _tl3025430426_
                                                        '0)))
                                                  (let ((_tl3025930432_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157531576_
                                                            '1)))
                                                        (_target3025730429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157531576_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3025930432_)
                                                        (___match3165531656_
                                                         _e3021230653_
                                                         _hd3021130657_
                                                         _tl3021030660_
                                                         _e3021530663_
                                                         _hd3021430667_
                                                         _tl3021330670_
                                                         _e3025630419_
                                                         _hd3025530423_
                                                         _tl3025430426_
                                                         ___splice3157531576_
                                                         _target3025730429_
                                                         _tl3025930432_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3020530292_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3020530292_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3020530292_))))))
                            (let () (declare (not safe)) (_g3020530292_)))))
                    (let () (declare (not safe)) (_g3020530292_)))))))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@|
      (lambda (_$stx30844_)
        (let* ((___stx3168431685_ _$stx30844_)
               (_g3084930889_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3168431685_))))
          (let ((___kont3168731688_
                 (lambda (_L31027_ _L31029_)
                   (let ((__tmp32752 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp32747
                          (let ((__tmp32748
                                 (let ((__tmp32749
                                        (let ((__tmp32751
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp32750
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31027_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32751 __tmp32750))))
                                   (declare (not safe))
                                   (cons __tmp32749 '()))))
                            (declare (not safe))
                            (cons _L31029_ __tmp32748))))
                     (declare (not safe))
                     (cons __tmp32752 __tmp32747))))
                (___kont3168931690_
                 (lambda (_L30956_ _L30958_ _L30959_ _L30960_)
                   (let ((__tmp32753
                          (let ((__tmp32755
                                 (let ((__tmp32756
                                        (let ((__tmp32757
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L30958_ '()))))
                                          (declare (not safe))
                                          (cons _L30959_ __tmp32757))))
                                   (declare (not safe))
                                   (cons _L30960_ __tmp32756)))
                                (__tmp32754
                                 (foldr (lambda (_g3098130984_ _g3098230987_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3098130984_
                                                  _g3098230987_)))
                                        '()
                                        _L30956_)))
                            (declare (not safe))
                            (cons __tmp32755 __tmp32754))))
                     (declare (not safe))
                     (cons _L30960_ __tmp32753)))))
            (let* ((___match3173931740_
                    (lambda (_e3086830896_
                             _hd3086730900_
                             _tl3086630903_
                             _e3087130906_
                             _hd3087030910_
                             _tl3086930913_
                             _e3087430916_
                             _hd3087330920_
                             _tl3087230923_
                             ___splice3169131692_
                             _target3087530926_
                             _tl3087730929_)
                      (letrec ((_loop3087830932_
                                (lambda (_hd3087630936_ _rest3088230939_)
                                  (if (gx#stx-pair? _hd3087630936_)
                                      (let ((_e3087930942_
                                             (gx#syntax-e _hd3087630936_)))
                                        (let ((_lp-tl3088130949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3087930942_)))
                                              (_lp-hd3088030946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3087930942_))))
                                          (_loop3087830932_
                                           _lp-tl3088130949_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3088030946_
                                                   _rest3088230939_)))))
                                      (let ((_rest3088330952_
                                             (reverse _rest3088230939_)))
                                        (___kont3168931690_
                                         _rest3088330952_
                                         _hd3087330920_
                                         _hd3087030910_
                                         _hd3086730900_))))))
                        (_loop3087830932_ _target3087530926_ '()))))
                   (___match3171331714_
                    (lambda (_e3085530997_
                             _hd3085431001_
                             _tl3085331004_
                             _e3085831007_
                             _hd3085731011_
                             _tl3085631014_
                             _e3086131017_
                             _hd3086031021_
                             _tl3085931024_)
                      (let ((_L31027_ _hd3086031021_)
                            (_L31029_ _hd3085731011_))
                        (if (gx#identifier? _L31027_)
                            (___kont3168731688_ _L31027_ _L31029_)
                            (if (gx#stx-pair/null? _tl3085931024_)
                                (let ((___splice3169131692_
                                       (gx#syntax-split-splice
                                        _tl3085931024_
                                        '0)))
                                  (let ((_tl3087730929_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3169131692_
                                            '1)))
                                        (_target3087530926_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3169131692_
                                            '0))))
                                    (if (gx#stx-null? _tl3087730929_)
                                        (___match3173931740_
                                         _e3085530997_
                                         _hd3085431001_
                                         _tl3085331004_
                                         _e3085831007_
                                         _hd3085731011_
                                         _tl3085631014_
                                         _e3086131017_
                                         _hd3086031021_
                                         _tl3085931024_
                                         ___splice3169131692_
                                         _target3087530926_
                                         _tl3087730929_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3084930889_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3084930889_))))))))
              (if (gx#stx-pair? ___stx3168431685_)
                  (let ((_e3085530997_ (gx#syntax-e ___stx3168431685_)))
                    (let ((_tl3085331004_
                           (let () (declare (not safe)) (##cdr _e3085530997_)))
                          (_hd3085431001_
                           (let ()
                             (declare (not safe))
                             (##car _e3085530997_))))
                      (if (gx#stx-pair? _tl3085331004_)
                          (let ((_e3085831007_ (gx#syntax-e _tl3085331004_)))
                            (let ((_tl3085631014_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3085831007_)))
                                  (_hd3085731011_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3085831007_))))
                              (if (gx#stx-pair? _tl3085631014_)
                                  (let ((_e3086131017_
                                         (gx#syntax-e _tl3085631014_)))
                                    (let ((_tl3085931024_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3086131017_)))
                                          (_hd3086031021_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3086131017_))))
                                      (if (gx#stx-null? _tl3085931024_)
                                          (___match3171331714_
                                           _e3085530997_
                                           _hd3085431001_
                                           _tl3085331004_
                                           _e3085831007_
                                           _hd3085731011_
                                           _tl3085631014_
                                           _e3086131017_
                                           _hd3086031021_
                                           _tl3085931024_)
                                          (if (gx#stx-pair/null?
                                               _tl3085931024_)
                                              (let ((___splice3169131692_
                                                     (gx#syntax-split-splice
                                                      _tl3085931024_
                                                      '0)))
                                                (let ((_tl3087730929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3169131692_
                                                          '1)))
                                                      (_target3087530926_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3169131692_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3087730929_)
                                                      (___match3173931740_
                                                       _e3085530997_
                                                       _hd3085431001_
                                                       _tl3085331004_
                                                       _e3085831007_
                                                       _hd3085731011_
                                                       _tl3085631014_
                                                       _e3086131017_
                                                       _hd3086031021_
                                                       _tl3085931024_
                                                       ___splice3169131692_
                                                       _target3087530926_
                                                       _tl3087730929_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3084930889_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3084930889_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3084930889_)))))
                          (let () (declare (not safe)) (_g3084930889_)))))
                  (let () (declare (not safe)) (_g3084930889_))))))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@-set!|
      (lambda (_$stx31049_)
        (let* ((___stx3174231743_ _$stx31049_)
               (_g3105431106_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3174231743_))))
          (let ((___kont3174531746_
                 (lambda (_L31282_ _L31284_ _L31285_)
                   (let ((__tmp32764 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp32758
                          (let ((__tmp32759
                                 (let ((__tmp32761
                                        (let ((__tmp32763
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp32762
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31284_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32763 __tmp32762)))
                                       (__tmp32760
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31282_ '()))))
                                   (declare (not safe))
                                   (cons __tmp32761 __tmp32760))))
                            (declare (not safe))
                            (cons _L31285_ __tmp32759))))
                     (declare (not safe))
                     (cons __tmp32764 __tmp32758))))
                (___kont3174731748_
                 (lambda (_L31193_
                          _L31195_
                          _L31196_
                          _L31197_
                          _L31198_
                          _L31199_)
                   (let ((__tmp32765
                          (let ((__tmp32768
                                 (let ((__tmp32772 (gx#datum->syntax '#f '@))
                                       (__tmp32769
                                        (let ((__tmp32770
                                               (let ((__tmp32771
                                                      (foldr (lambda (_g3122631229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3122731232_)
                       (let ()
                         (declare (not safe))
                         (cons _g3122631229_ _g3122731232_)))
                     '()
                     _L31196_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31197_ __tmp32771))))
                                          (declare (not safe))
                                          (cons _L31198_ __tmp32770))))
                                   (declare (not safe))
                                   (cons __tmp32772 __tmp32769)))
                                (__tmp32766
                                 (let ((__tmp32767
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31193_ '()))))
                                   (declare (not safe))
                                   (cons _L31195_ __tmp32767))))
                            (declare (not safe))
                            (cons __tmp32768 __tmp32766))))
                     (declare (not safe))
                     (cons _L31199_ __tmp32765)))))
            (let* ((___match3181731818_
                    (lambda (_e3107931113_
                             _hd3107831117_
                             _tl3107731120_
                             _e3108231123_
                             _hd3108131127_
                             _tl3108031130_
                             _e3108531133_
                             _hd3108431137_
                             _tl3108331140_
                             ___splice3174931750_
                             _target3108631143_
                             _tl3108831146_
                             _e3109731149_
                             _hd3109631153_
                             _tl3109531156_
                             _e3110031159_
                             _hd3109931163_
                             _tl3109831166_)
                      (letrec ((_loop3108931169_
                                (lambda (_hd3108731173_ _path3109331176_)
                                  (if (gx#stx-pair? _hd3108731173_)
                                      (let ((_e3109031179_
                                             (gx#syntax-e _hd3108731173_)))
                                        (let ((_lp-tl3109231186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3109031179_)))
                                              (_lp-hd3109131183_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3109031179_))))
                                          (_loop3108931169_
                                           _lp-tl3109231186_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3109131183_
                                                   _path3109331176_)))))
                                      (let ((_path3109431189_
                                             (reverse _path3109331176_)))
                                        (___kont3174731748_
                                         _hd3109931163_
                                         _hd3109631153_
                                         _path3109431189_
                                         _hd3108431137_
                                         _hd3108131127_
                                         _hd3107831117_))))))
                        (_loop3108931169_ _target3108631143_ '()))))
                   (___match3177731778_
                    (lambda (_e3106131242_
                             _hd3106031246_
                             _tl3105931249_
                             _e3106431252_
                             _hd3106331256_
                             _tl3106231259_
                             _e3106731262_
                             _hd3106631266_
                             _tl3106531269_
                             _e3107031272_
                             _hd3106931276_
                             _tl3106831279_)
                      (let ((_L31282_ _hd3106931276_)
                            (_L31284_ _hd3106631266_)
                            (_L31285_ _hd3106331256_))
                        (if (gx#identifier? _L31284_)
                            (___kont3174531746_ _L31282_ _L31284_ _L31285_)
                            (if (gx#stx-pair/null? _tl3106531269_)
                                (if (fx>= (gx#stx-length _tl3106531269_) '2)
                                    (let ((___splice3174931750_
                                           (gx#syntax-split-splice
                                            _tl3106531269_
                                            '2)))
                                      (let ((_tl3108831146_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3174931750_
                                                '1)))
                                            (_target3108631143_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3174931750_
                                                '0))))
                                        (if (gx#stx-pair? _tl3108831146_)
                                            (let ((_e3109731149_
                                                   (gx#syntax-e
                                                    _tl3108831146_)))
                                              (let ((_tl3109531156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3109731149_)))
                                                    (_hd3109631153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3109731149_))))
                                                (if (gx#stx-pair?
                                                     _tl3109531156_)
                                                    (let ((_e3110031159_
                                                           (gx#syntax-e
                                                            _tl3109531156_)))
                                                      (let ((_tl3109831166_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3110031159_)))
                    (_hd3109931163_
                     (let () (declare (not safe)) (##car _e3110031159_))))
                (if (gx#stx-null? _tl3109831166_)
                    (___match3181731818_
                     _e3106131242_
                     _hd3106031246_
                     _tl3105931249_
                     _e3106431252_
                     _hd3106331256_
                     _tl3106231259_
                     _e3106731262_
                     _hd3106631266_
                     _tl3106531269_
                     ___splice3174931750_
                     _target3108631143_
                     _tl3108831146_
                     _e3109731149_
                     _hd3109631153_
                     _tl3109531156_
                     _e3110031159_
                     _hd3109931163_
                     _tl3109831166_)
                    (let () (declare (not safe)) (_g3105431106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3105431106_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3105431106_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3105431106_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3105431106_))))))))
              (if (gx#stx-pair? ___stx3174231743_)
                  (let ((_e3106131242_ (gx#syntax-e ___stx3174231743_)))
                    (let ((_tl3105931249_
                           (let () (declare (not safe)) (##cdr _e3106131242_)))
                          (_hd3106031246_
                           (let ()
                             (declare (not safe))
                             (##car _e3106131242_))))
                      (if (gx#stx-pair? _tl3105931249_)
                          (let ((_e3106431252_ (gx#syntax-e _tl3105931249_)))
                            (let ((_tl3106231259_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3106431252_)))
                                  (_hd3106331256_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3106431252_))))
                              (if (gx#stx-pair? _tl3106231259_)
                                  (let ((_e3106731262_
                                         (gx#syntax-e _tl3106231259_)))
                                    (let ((_tl3106531269_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3106731262_)))
                                          (_hd3106631266_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3106731262_))))
                                      (if (gx#stx-pair? _tl3106531269_)
                                          (let ((_e3107031272_
                                                 (gx#syntax-e _tl3106531269_)))
                                            (let ((_tl3106831279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3107031272_)))
                                                  (_hd3106931276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3107031272_))))
                                              (if (gx#stx-null? _tl3106831279_)
                                                  (___match3177731778_
                                                   _e3106131242_
                                                   _hd3106031246_
                                                   _tl3105931249_
                                                   _e3106431252_
                                                   _hd3106331256_
                                                   _tl3106231259_
                                                   _e3106731262_
                                                   _hd3106631266_
                                                   _tl3106531269_
                                                   _e3107031272_
                                                   _hd3106931276_
                                                   _tl3106831279_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3106531269_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3106531269_)
                        '2)
                  (let ((___splice3174931750_
                         (gx#syntax-split-splice _tl3106531269_ '2)))
                    (let ((_tl3108831146_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3174931750_ '1)))
                          (_target3108631143_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3174931750_ '0))))
                      (if (gx#stx-pair? _tl3108831146_)
                          (let ((_e3109731149_ (gx#syntax-e _tl3108831146_)))
                            (let ((_tl3109531156_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3109731149_)))
                                  (_hd3109631153_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3109731149_))))
                              (if (gx#stx-pair? _tl3109531156_)
                                  (let ((_e3110031159_
                                         (gx#syntax-e _tl3109531156_)))
                                    (let ((_tl3109831166_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3110031159_)))
                                          (_hd3109931163_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3110031159_))))
                                      (if (gx#stx-null? _tl3109831166_)
                                          (___match3181731818_
                                           _e3106131242_
                                           _hd3106031246_
                                           _tl3105931249_
                                           _e3106431252_
                                           _hd3106331256_
                                           _tl3106231259_
                                           _e3106731262_
                                           _hd3106631266_
                                           _tl3106531269_
                                           ___splice3174931750_
                                           _target3108631143_
                                           _tl3108831146_
                                           _e3109731149_
                                           _hd3109631153_
                                           _tl3109531156_
                                           _e3110031159_
                                           _hd3109931163_
                                           _tl3109831166_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3105431106_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3105431106_)))))
                          (let () (declare (not safe)) (_g3105431106_)))))
                  (let () (declare (not safe)) (_g3105431106_)))
              (let () (declare (not safe)) (_g3105431106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl3106531269_)
                                              (if (fx>= (gx#stx-length
                                                         _tl3106531269_)
                                                        '2)
                                                  (let ((___splice3174931750_
                                                         (gx#syntax-split-splice
                                                          _tl3106531269_
                                                          '2)))
                                                    (let ((_tl3108831146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3174931750_
                                                              '1)))
                                                          (_target3108631143_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3174931750_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl3108831146_)
                                                          (let ((_e3109731149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3108831146_)))
                    (let ((_tl3109531156_
                           (let () (declare (not safe)) (##cdr _e3109731149_)))
                          (_hd3109631153_
                           (let ()
                             (declare (not safe))
                             (##car _e3109731149_))))
                      (if (gx#stx-pair? _tl3109531156_)
                          (let ((_e3110031159_ (gx#syntax-e _tl3109531156_)))
                            (let ((_tl3109831166_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3110031159_)))
                                  (_hd3109931163_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3110031159_))))
                              (if (gx#stx-null? _tl3109831166_)
                                  (___match3181731818_
                                   _e3106131242_
                                   _hd3106031246_
                                   _tl3105931249_
                                   _e3106431252_
                                   _hd3106331256_
                                   _tl3106231259_
                                   _e3106731262_
                                   _hd3106631266_
                                   _tl3106531269_
                                   ___splice3174931750_
                                   _target3108631143_
                                   _tl3108831146_
                                   _e3109731149_
                                   _hd3109631153_
                                   _tl3109531156_
                                   _e3110031159_
                                   _hd3109931163_
                                   _tl3109831166_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3105431106_)))))
                          (let () (declare (not safe)) (_g3105431106_)))))
                  (let () (declare (not safe)) (_g3105431106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3105431106_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3105431106_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3105431106_)))))
                          (let () (declare (not safe)) (_g3105431106_)))))
                  (let () (declare (not safe)) (_g3105431106_))))))))))
